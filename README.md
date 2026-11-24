# hhdm-help — HH Data Management 知识库 Skill

MiMo Code / MiMo Desktop 可安装的 **HH DM 全能 skill**：

- **操作问答**：[help.hh-dm.com](https://help.hh-dm.com/) 全站 **131 页**离线
- **结构真相**：本机 **28 个 HHDev 程序集**静态分析（24,718 类型、实体字段 CSV、插件 ABI、Sync/DMI）
- **REST API 引导**：如何申请 ApiKey、如何配 Rule Profile 权限、读写模板
- **插件/反编译**：关键类型 C# 反编译与运行时同步结论

## 包内容

```
hhdm-help/
├── SKILL.md                 # 能力总览 + 首次 API 引导 + 路由
├── README.md
├── install.ps1              # Windows 一键安装
├── install.sh               # macOS/Linux 一键安装
├── locales/zh-CN.json, en-US.json
└── docs/
    ├── INDEX.md             # 131 页 URL ↔ 本地文件
    ├── OPERATIONS.md        # 精选操作手册
    ├── pages/*.md           # 文档全文
    └── reverse/
        ├── REVERSE-NOTES.md           # §8 插件 ABI / §9 Sync·DMI·实体·反编译
        ├── entity-fields-full.csv     # 实体字段全量
        ├── entity-fields-root-entities.md
        ├── method-decompilations.md
        ├── sync-runtime-capture.md
        ├── HHDev.*.types.csv          # 28 程序集类型
        └── …
```

## 在其他电脑安装（GitHub）

### 方式一：安装脚本（推荐）

将本仓库推送到 GitHub 后，在目标机器执行：

```powershell
# Windows（PowerShell）
irm https://raw.githubusercontent.com/ELEMENT1999-1/hhdm_help/main/install.ps1 | iex
```

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/ELEMENT1999-1/hhdm_help/main/install.sh | bash
```

或指定分支/路径：

```powershell
.\install.ps1 -Repo "https://github.com/ELEMENT1999-1/hhdm_help" -Branch main
```

### 方式二：手动

1. 下载仓库 ZIP 或 `git clone`
2. 将 `hhdm-help/` 拷到：
   - 全局：`~/.config/mimocode/skills/hhdm-help/`
   - 或项目：`<project>/.mimocode/skills/hhdm-help/`
3. 确认存在 `SKILL.md` 且 frontmatter `name: hhdm-help`
4. 新会话中提问 HH DM 即可触发

**依赖**：无第三方包；离线可用。不自动执行 HH DM。

## 首次使用 API（安装后）

skill 在**第一次需要调 API** 时会引导你：

1. 登录 https://www.hh-dev.com → **Integrations** → **Add New Api Key**
2. 获取 **AccountId**
3. 在 **Permissions → API Rules Profile** 为所需实体勾选 Create/Read/Update/Delete
4. 将 Key 放入环境变量（勿提交 git）：
   ```powershell
   setx HHDM_API_KEY "<your-key>"
   setx HHDM_ACCOUNT_ID "<account-guid>"
   ```
5. **写操作前必须确认**；对话中出现过的 key 应轮换

详见 `SKILL.md`「首次使用 / API 配置」与 `docs/pages/extensibility__api.md`。

## 能力一览

| 能力 | 说明 |
|------|------|
| 操作问答 | 131 页步骤/路径/坑 |
| 类型检索 | 28 DLL、24,718 类型 CSV |
| 实体字段 | `entity-fields-full.csv`（API ParameterUpdates） |
| 插件 ABI | PluginManager / IHHPlugin / 冲突解决 |
| Sync/DMI | 枚举、消息字段、`<EOM>` 帧 |
| 方法反编译 | 关键 21+ 类型 C#（ilspycmd） |
| REST 读/写 | 模板 + 权限引导（写前确认） |

## 更新

- 文档：重抓 sitemap → 覆盖 `docs/pages/`
- 分析：对新版本安装目录重跑类型导出 → `docs/reverse/`
- 反编译：`dotnet <ilspycmd.dll> -t <Type> <assembly>`

## 限制

- 文档为快照；方法体非全量 100% 反编译  
- 不含 UI 自动化；wire 级 sync 抓包受代理限制  
- **禁止**把 ApiKey/密码提交进本仓库  

## 许可与来源

- 操作文档内容源自官方 help 站点（供个人/团队离线使用；版权归 HH Development）  
- reverse 分析为对已安装客户端的静态阅读结果  
