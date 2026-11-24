# hhdm-help installer (Windows PowerShell)
# Usage:
#   irm https://raw.githubusercontent.com/ELEMENT1999-1/hhdm_help/main/install.ps1 | iex
#   or: .\install.ps1 -Repo https://github.com/ELEMENT1999-1/hhdm_help -Branch main
param(
  [string]$Repo = "https://github.com/ELEMENT1999-1/hhdm_help",
  [string]$Branch = "main",
  [string]$SkillName = "hhdm-help",
  [string]$DestRoot = ""
)

$ErrorActionPreference = "Stop"

function Resolve-DestRoot {
  if ($DestRoot) { return $DestRoot }
  # MiMo / mimocode global skills
  $candidates = @(
    (Join-Path $env:USERPROFILE ".config\mimocode\skills"),
    (Join-Path $env:APPDATA "mimocode\skills"),
    (Join-Path $env:USERPROFILE ".mimocode\skills")
  )
  foreach ($c in $candidates) {
    $parent = Split-Path $c -Parent
    if ((Test-Path $parent) -or $true) {
      # prefer existing skills dir
      if (Test-Path $c) { return $c }
    }
  }
  # default create global
  return $candidates[0]
}

$destRoot = Resolve-DestRoot
$target = Join-Path $destRoot $SkillName
$tmp = Join-Path ([IO.Path]::GetTempPath()) ("hhdm-help-install-" + [Guid]::NewGuid().ToString("N"))

Write-Host "==> Install target: $target"

try {
  New-Item -ItemType Directory -Force -Path $destRoot | Out-Null
  New-Item -ItemType Directory -Force -Path $tmp | Out-Null

  if ($Repo) {
    Write-Host "==> Cloning $Repo ($Branch)"
    # git writes progress to stderr; do not let Stop + NativeCommandError abort
    $eap = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $cloneOut = & git clone --depth 1 --branch $Branch -- $Repo $tmp 2>&1
    $cloneCode = $LASTEXITCODE
    $ErrorActionPreference = $eap
    if ($cloneOut) { $cloneOut | ForEach-Object { Write-Host $_ } }
    if ($cloneCode -ne 0) { throw "git clone failed (exit $cloneCode)" }

    # accept either repo root is skill or contains hhdm-help/
    $src = $null
    if (Test-Path (Join-Path $tmp "SKILL.md")) { $src = $tmp }
    elseif (Test-Path (Join-Path $tmp $SkillName "SKILL.md")) { $src = Join-Path $tmp $SkillName }
    elseif (Test-Path (Join-Path $tmp "skill\hhdm-help\SKILL.md")) { $src = Join-Path $tmp "skill\hhdm-help" }
    else {
      $found = Get-ChildItem $tmp -Recurse -Filter SKILL.md -Depth 3 -ErrorAction SilentlyContinue | Select-Object -First 1
      if ($found) { $src = $found.Directory.FullName }
    }
    if (-not $src) { throw "SKILL.md not found in repo" }
  }
  else {
    # Running from already-downloaded folder (script next to skill)
    $here = Split-Path -Parent $MyInvocation.MyCommand.Path
    if (Test-Path (Join-Path $here "SKILL.md")) { $src = $here }
    elseif (Test-Path (Join-Path $here $SkillName "SKILL.md")) { $src = Join-Path $here $SkillName }
    elseif (Test-Path (Join-Path $here "hhdm-help\SKILL.md")) { $src = Join-Path $here "hhdm-help" }
    else { throw "Provide -Repo <github-url> or run from skill folder" }
  }

  Write-Host "==> Source: $src"
  if (Test-Path $target) {
    Write-Host "==> Removing existing skill at $target"
    Remove-Item $target -Recurse -Force
  }
  Copy-Item $src $target -Recurse -Force

  if (-not (Test-Path (Join-Path $target "SKILL.md"))) { throw "SKILL.md missing after copy" }

  # secret sanity: only flag UUID when line looks like a credential
  $leaks = Get-ChildItem $target -Recurse -File -Include *.md,*.json,*.txt,*.csv,*.ps1,*.sh -ErrorAction SilentlyContinue |
    Select-String -Pattern "(ApiKey|api[_-]?key|password|secret)\s*[:=]\s*[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-" -ErrorAction SilentlyContinue
  if ($leaks) { Write-Warning "Possible API key found in package — rotate and purge before publishing!" }

  Write-Host ""
  Write-Host "OK installed: $target"
  Write-Host "Next:"
  Write-Host " 1) Open a new MiMo session and ask an HH DM question."
  Write-Host " 2) For API: set HHDM_API_KEY / HHDM_ACCOUNT_ID (see SKILL.md 首次使用)."
  Write-Host " 3) Do NOT commit keys to git."
}
finally {
  if (Test-Path $tmp) { Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue }
}
