# HH DM Sync 运行时证据（应用日志 + 网络探测 + 提权 PktMon）

> 日期：2026-11-24  
> 方法：HH DM 本地 DEBUG 日志 + DNS/TCP 探测 + 进程连接表 + **提权 PktMon 抓包**  
> 说明：日志为应用层已反序列化消息，不是原始 wire 字节；可验证**语义与 ToString 格式**。  
> PktMon 会话级驱动需管理员；已通过 `Start-Process -Verb RunAs` 完成两次 elevated capture（约 75s / 80s），**未杀进程**。

## 1. 端点与连通性

| 目标 | 观测 |
|------|------|
| `hhdm-sync.hh-dev.com` | DNS → `35.156.40.117`（TTL 600）；**TCP :8080 成功**（`Test-NetConnection`） |
| `hhdm-api.hh-dev.com` | DNS → `63.178.159.36` / `54.93.54.125` / `3.124.165.10`；**TCP :443 成功**；**:8080 失败** |
| 本机 DMI | HH DM **PID 50788** 监听 `0.0.0.0:8090`（IPv4 only；`::1:8090` SYN → RST） |
| 出站代理 | 进程多条 Established → `127.0.0.1:7897`（**verge-mihomo** PID 44800 / clash-verge） |
| 进程路径 | `C:\Program Files\HH Development\HH Data Management\HHDev.DataManagement.Client.HHDataManagement.exe` |
| 进程状态 | 截至抓包结束仍存活；StartTime 2026/11/24 18:35:42 |

### 1.1 进程 TCP 快照（抓包前后）

```
0.0.0.0:8090          Listen     OwningProcess=50788
127.0.0.1:<ephemeral> Established → 127.0.0.1:7897  (多条；本地代理出口)
```

- HH DM **无**直接 `Local→35.156.40.117:8080` 的 Established 行；出站经 7897 代理。
- 主机侧曾见 `192.168.31.166:* → 35.156.40.117:8080` 的 `TimeWait`（OwningProcess=0，多为探测/已关闭连接）。

## 2. 认证握手（日志实证）

多条 `TO SERVER` / `FROM SERVER`（2026-11-24 多次）：

```
TO SERVER: UserAuthMessage: ClientVersion=26.2.1.4487, Username=…, DatabaseId=<id>, SyncAuthMode=Basic, ClientSoftwareKey=HHDM, TraceId=<id>
FROM SERVER: UserAuthResponseMessage: UserId=<id>, AccountIds=[<id>], Username=…, AuthenticatedWithServer=True, IsAllowedToSync=True, MessageString=, TraceId=<id>
```

与静态 `#US` / 字段表**完全一致**。  
实际模式：**`SyncAuthMode=Basic`**（非 Bearer）；`ClientSoftwareKey=HHDM`。

## 3. SyncOp 消息（日志实证）

与 `SyncOperationMessage.ToString()` 模板一致：

```
FROM SERVER: SyncOp: Count=1, IsResponse=False, IsFinal=False, Batch=0,
  DataSelId=00000000-0000-0000-0000-000000000000,
  AccountId=354114e6-3541-4583-a185-234972ba4cb2, TraceId=…
; UPDATE Tyre=01a20e00-8aa7-…, TraceId=…
```

以及：

```
… UPDATE TyreSet=01a20e00-4a61-75d9-aedb-11366666682a, TraceId=…
```

对应此前 API 写入的 tyre set `482-SH8-01` 四角胎 —— **服务端→客户端同步链路在真实流量中验证**。

## 4. 本地库应用（日志实证）

同步消息处理后立即出现 SQL：

- `INSERT INTO "EventCarTyre" …`
- `UPDATE "TyreSet" SET "FLTyreId"=…, "FRTyreId"=…, "RLTyreId"=…, "RRTyreId"=…`
- `UPDATE "SyncDataSelection" SET "SyncOperationTime" = MAX(…) WHERE "Id" = …`
- `Database updater processed 1 bulk sync messages in: Nms`

证实：`BulkUpdate` → MasterCache/DB updater → SQLite `client.db`。

## 5. 连接生命周期（日志）

- `Starting InitializeClientAsync: <guid>`（周期性）
- `Read length <= 0 in socket server: "127.0.0.1" <guid>`
- `Closing connection ServerClientInfo: "127.0.0.1" <guid>`
- `_hasNetworkConnection has changed to true/false`
- 本地 socket server 服务 `127.0.0.1` 客户端（约每 2–3 分钟一次 Initialize）

## 6. TLS / HTTP

- 日志上报路径：`System.Net.Security.SslStream` + `HttpClient`（LogPostService）→ **HTTPS 日志上报**
- Sync 业务消息：`TO SERVER`/`FROM SERVER` 文本形态；**日志未出现明文 `hhdm-sync` 主机名或 `heartbeat` 字面量**
- 原始 sync socket 是否 TLS：**日志无法证明**；进程经 `127.0.0.1:7897` 代理时，client↔proxy 为本机 TCP，proxy↔origin 的封装不可见于本机进程表
- PktMon 流计数器出现 `Edge Ssl` 组件，但本窗口 **Packets In/Out = 0**（无该路径业务包）

## 7. 提权 PktMon 抓包（本次补充）

### 7.1 方法

| 项 | 值 |
|----|-----|
| 权限 | 非 elevated shell 下 `pktmon status` → **Access is denied**；经 `Start-Process cmd -Verb RunAs` 提权 |
| Capture 1 | 23:32:13–23:33:30（~75s）；filters：TCP 8080 / 8090 / 7897 / IP 35.156.40.117；`--pkt-size 0` |
| Capture 2 | 23:38:32–23:39:54（~80s）；filters：IP 35.156.40.117 / port 8080 / port 8090；`--flags 0x12` |
| 工件目录 | `…\hhdm-kb\capture\` → `hhdm1.etl` / `hhdm1.txt` / `hhdm21.etl` / `hhdm2.txt` |
| etl2txt | ✅ 成功（1141 / 974 events） |
| etl2pcap | ⚠️ **Packets total = 0**；仅 drop 计数（211 / 45）→ pcapng 无业务帧 |

### 7.2 抓包窗口内观测到的 TCP

1. **本机 `127.0.0.1:* → 127.0.0.1:8080` / `::1:* → ::1:8080` SYN + RST**  
   - 本机 **无** :8080 Listener；HH DM 只听 8090。  
   - 属本机其它组件/探测对 **loopback 8080** 的连接尝试被 RST，**不是** hhdm-sync 远端 8080。
2. **本机 → :8090**：`::1` SYN → RST（HH DM 仅绑定 IPv4 `0.0.0.0`）；`127.0.0.1` 可见 ACK/控制段。
3. **大量 `127.0.0.1:7897` ↔ 客户端 ephemeral** 的 drop 记录（duplicate segment / FIN-WAIT2 / endpoint not found），长度多为 0–1 字节控制段 —— **代理心跳/重传噪声**，非 sync 应用层 payload。
4. **未出现** `35.156.40.117:8080` 的方向性数据帧（窗口内无直连业务；出口在代理内部）。

### 7.3 Drop 原因摘要

| Capture | 主要 DropReason |
|---------|-----------------|
| hhdm1 | `INET: duplicate segment`×168，`endpoint was not found`×18，`received RST`×9，`FIN-WAIT2`×7，`Arbitration unhandled`×9 |
| hhdm2 | `endpoint was not found`×22，`received RST`×11，`Arbitration unhandled`×11，`FIN-WAIT2`×1 |

### 7.4 结论（wire 层）

| 假设 | 本次 wire 结论 |
|------|----------------|
| 帧分隔符 `<EOM>` | ❌ **未在 packet 字节中观测到**（0 个完整 payload 帧进入 etl2pcap） |
| 心跳 `heartbeat<EOM>` | ❌ **未在 wire 观测**；仅有 7897 上 1 字节 TCP 段（非应用层 heartbeat 字面量） |
| gzip JSON socket | ❌ **未在 wire 观测**；静态类型存在但本窗口无 payload |
| sync 走 :8080 | ⚠️ **远端可达**（TNC True）；**本机进程未直连**，经 7897；wire 抓不到 origin 侧 |
| 本地 DMI :8090 | ✅ Listen 确认；窗口内无应用层业务 payload 进入 pcap |

**限制**：PktMon 在本机 loopback/代理路径上大量记为 Drop，且过滤后 **0 条完整 packet 写入 pcap**。要证明 `<EOM>`/gzip，需要：  
(a) 关闭/绕过 Clash Verge 使 HH DM **直连** 35.156.40.117:8080 后再抓；或  
(b) 在代理侧/远端抓；或  
(c) 继续依赖应用日志 + 静态 `#US`（见 §7.5）。

### 7.5 静态二进制对协议常量的支撑（非 wire，但加强假设）

| 证据 | 位置 | 内容 |
|------|------|------|
| `#US` UTF-16 堆 | `HHDev.Sync.Core.dll` | 连续串：`<EOM>` · `heartbeat` · `heartbeat<EOM>` · `{"i":"…","v":"…"}` |
| ASCII 配置 | `HHDev.DataManagement.Client.Wpf.dll` | `hhdm-sync.hh-dev.com` · `8080` 相邻配置块 |
| ASCII 主机表 | `HHDev.DataManagement.Client.Core.dll` | `hhdm-sync.hh-dev.com` 等主机列表 |
| 符号/字段名 | `HHDev.DataManagement.Client.Wpf.dll` | `HeartbeatMessageBytes` |
| 传输类型 | `HHDev.Sync.Client.types.csv` | `SocketWrapper_*`、`HHDMGzippedJsonSerializer : ISocketMessageSerializer`、`ApiSyncClient` |
| 序列化 | `HHDev.Sync.Core.types.csv` | `SystemTextJsonMessageSerializer`、`SyncGlobals` |

→ **`<EOM>` / `heartbeat<EOM>` / gzip JSON 序列化器在程序集元数据中确认**；wire 布局仍待直连抓包或反编译 `SocketWrapper` 读循环。

## 8. 对静态假设的结论

| 假设 | 运行时结论 |
|------|------------|
| `SyncOp: Count=…` ToString | ✅ **确认**（大量 FROM/TOD SERVER） |
| UserAuth 字段集 | ✅ **确认**（Basic + ClientSoftwareKey=HHDM） |
| Bulk → SQLite | ✅ **确认**（INSERT/UPDATE SyncDataSelection） |
| AccountId = Climax Racing | ✅ **确认** `354114e6-…` |
| 帧分隔符 `<EOM>` | ⚠️ **日志未确认**；**静态 `#US` 确认常量存在**；**wire 未观测**（pktmon 0 payload） |
| 心跳 `heartbeat<EOM>` | ⚠️ **日志 0 命中**；**静态确认常量**；**wire 未观测** |
| gzip JSON socket | ⚠️ **类型 `HHDMGzippedJsonSerializer` 确认**；日志/wire 均无 gzip 标记 |
| 端口 8080 | ✅ **TCP 可达**；进程出口经 **7897 代理**，非直连 |
| 本地 8090 DMI | ✅ **Listen 0.0.0.0:8090**（PID 50788） |

## 9. 证据文件

- 模式摘要：`sync-log-patterns.txt`（同目录）
- 样本：`sync-log-samples.txt`
- 源日志：`%LOCALAPPDATA%\HH Development\HH Data Management\Logs\2026-11-24\Log.txt`（约 9.4 MB）
- PktMon：`…\hhdm-kb\capture\`  
  - `hhdm1.etl` / `hhdm1.txt` / `elevated.log` / `run-capture.bat`  
  - `hhdm21.etl` / `hhdm2.txt` / `elevated2.log` / `run-capture2.bat`  
  - pcapng 输出为空帧（`hhdm1` / `hhdm2`，仅头部）
- 提权脚本可复现：`run-capture.bat` / `run-capture2.bat`（不修改系统代理、不结束 HH DM）

## 10. 方法反编译交叉引用

见 `method-decompilations.md`：`PluginManager`、`ClientConflictResolver`、`ConflictResolutionFunctions`、`SyncMessageBuilder`、`SyncableMessage`、`CustomPropertyPayload` 等 11 个类型 C# 反编译（ilspycmd 9.1.0.7988）。

### 后续建议（wire 级证明）

1. 临时禁用 Clash Verge 系统代理 / 将 `hhdm-sync.hh-dev.com` 设为 DIRECT，再 elevated pktmon 抓 **直连 35.156.40.117:8080**。  
2. 或反编译 `HHDev.Sync.Client.SocketWrapper` + `HHDMGzippedJsonSerializer` 的 send/recv 边界，对照 `SyncGlobals.DelimiterBytes`。  
3. 不要在未确认前把 wire 结论写成“已证实 gzip/`<EOM>` 在线上出现”。
