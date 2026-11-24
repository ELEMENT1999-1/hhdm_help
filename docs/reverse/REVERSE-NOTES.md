# HH DM 二进制静态分析笔记（REVERSE-NOTES）

> 目标：`C:\Program Files\HH Development\HH Data Management`  
> 版本：全部 HHDev 程序集 **26.2.1.4487**，目标框架 **.NETCoreApp v9.0**  
> 方法：REA `inspect_managed_artifact` + Mono.Cecil 元数据读取（**不执行**程序集）  
> 生成：2026-11-24  

## 1. 覆盖范围（本次「全量」的定义）

| 维度 | 状态 |
|------|------|
| HHDev*.dll **全部 28 个** 托管元数据摘要 | ✅ 完成 |
| 28 个程序集 **TypeDef 全量 CSV**（类型名/种类/基类/接口/方法字段数） | ✅ **24,718 个类型** |
| 命名空间频次 Top80 / 共 404 命名空间 | ✅ `namespaces-top80.txt` |
| 标识符启发式抽样（Client.Core） | ✅ `client-core-identifiers.txt`（500 条） |
| 本地 `client.db` 表结构（571 表） | ✅ 此前 REA SQLite |
| 插件接口 ABI 样例 | ✅ 此前 REA + 官方示例仓库 |
| **每个方法体反编译 C#** | ❌ 未做（24k 类型 × 数十万方法，非本阶段目标） |
| 服务端 / 运行时协议全量 | ❌ 不可离线 100% |

**诚实结论**：对 **已发布客户端托管程序集的类型系统** 达到 100% 枚举；对 **方法逻辑** 是抽样与结构级，不是逐行 100%。

---

## 2. 程序集地图（按职责）

### 2.1 基础库
| 程序集 | Types | 职责（由命名空间/名称推断） |
|--------|------:|---------------------------|
| HHDev.Core | 29 | 极薄核心 |
| HHDev.Core.NETStandard | 969 | 跨平台工具、SQL builder、通信 |
| HHDev.Core.Windows | 14 | Windows 互操作 |
| HHDev.Core.WPF | 456 | WPF 布局/控件/转换器、插件宿主辅助 |

### 2.2 领域与数据
| 程序集 | Types | 职责 |
|--------|------:|------|
| HHDev.DataManagement.Core | 2760 | 实体、消息、领域逻辑 |
| HHDev.DataManagement.Core.Database | 884 | EF 实体更新器、共享库结构 |
| HHDev.DataManagement.Client.Core | **7182** | 客户端最大：FlatModels、Caches、定义、表达式、组件 |
| HHDev.DataManagement.Client.Core.Database | 193 | 客户端 DbContext 抽象 |
| HHDev.DataManagement.Client.Core.Database.Concrete | 1225 | **EF 编译模型 + 迁移**（生成代码多、字段 4.3 万） |
| HHDev.DataManagement.Api.Models | 406 | REST DTO |
| HHDev.DataManagement.ApiClientWrapper | **6347** | 官方 API 客户端包装（体量最大之一） |

### 2.3 UI / 入口
| 程序集 | Types | 职责 |
|--------|------:|------|
| HHDev.DataManagement.Client.Wpf | **3157** | 视图、CGD、Ribbon、报告 UI |
| HHDev.DataManagement.Client.HHDataManagement | 10 | **托管入口**（与 native apphost 配对） |
| HHDev.DataManagement.Client.Authentication | 38 | OIDC/登录 |
| HHDev.ReportGeneration | 74 | 报表（大量嵌入资源） |

### 2.4 同步 / KPI / DMI / 遥测
| 程序集 | Types | 职责 |
|--------|------:|------|
| HHDev.Sync.Core / .Client / *.Database | 96/59/55+30 | 同步协议与本地队列 |
| HHDev.DataManagement.LapKpiProcessing.Core | 274 | KPI 表达式处理 |
| HHDev.DataManagement.DMI.Definitions | 41 | DMI 消息定义 |
| HHDev.DataFileAccess.* (Core/HDF5/HHD/MM/Motec/Pi/WinDarab) | 39+9+33+97+51+113+77 | 遥测文件读取器插件族 |

---

## 3. 关键命名空间（类型数）

| 命名空间 | Types | 含义 |
|----------|------:|------|
| （global） | 13086 | 泛型/嵌套生成类型占多数 |
| Client.Core.Models.FlatModels | 1963 | **FlatModel** 行模型（绑定核心） |
| Client.Core.Caches | 1703 | Management/Event/EventCar 缓存 |
| Core.Messages | 1161 | 同步/内部消息 |
| Core.Entities | 611 | 领域实体 |
| Client.Core.Database.Concrete.CompiledModel | 569 | EF Compiled Model |
| Api.Models | 394 | API DTO |
| Core.Database.EntityUpdaters | 323 | 实体更新 |
| Client.Core.Components.AttachedFiles | 269 | 附件组件 |
| Client.Wpf.Views | 134 | 视图 |
| Client.Core.Components.ExpressionProcessing.Nodes.Functions | 89 | **数学表达式函数** |
| LapKpiProcessing.Core.ExpressionProcessing.Nodes | 75 | **KPI 表达式节点** |

完整列表：`namespaces-top80.txt`；全类型：`*.types.csv`。

---

## 4. 与文档/操作的对应（已验证锚点）

| 概念 | 代码锚点（类型 CSV / 此前 REA） |
|------|--------------------------------|
| FlatModel 读写 | `GetPropertyValue` / `SetPropertyValue`（示例插件 + FlatModels 命名空间） |
| 三层缓存 | `ManagementCache` / `EventCache` / `EventCarCache`（文档 + Caches 命名空间） |
| 插件入口 | `IHhDataManagementPlugin` 等（Client.Wpf.PluginFramework.Interfaces） |
| 胎里程属性 | `CurrentMileageLaps/Kilometers/Distance/Hours/FromWear`（Client.Core 字符串） |
| TyreSet 显示开关 | `TyreSetControlOptions.ShowTyreMileage/ShowTyreLaps` |
| 同步主机默认 | user.config → `hhdm-sync.hh-dev.com:8080` |
| 本地库 | EF + SQLite `client.db`（571 表，含 `*AttachedFile`/`*CollectionItem` 模式） |
| 表达式双语言 | Math（DynamicExpresso 风格函数表）vs KPI（LapKpiProcessing 节点树） |

---

## 5. 产物文件索引（本目录）

```
reverse/
├── ASSEMBLY-INVENTORY.md          # 28 程序集摘要
├── namespaces-top80.txt
├── client-core-identifiers.txt
├── HHDev.*.types.csv              # 28 个：全量 TypeDef
└── （可选后续）*.userstrings.txt   # ldstr 全量（本次未完成）
```

CSV 列：`full_name,kind,base_type,interfaces,method_count,field_count,property_count`

**查询示例**：  
`Select-String -Path reverse\*.csv -Pattern 'PluginFramework'`

---

## 6. 复刻 / MCP / Skill 含义

1. **类型系统可检索** → 写插件、对齐 FlatModel/Cache 时可直接查 CSV，不必猜。  
2. **文档 skill（pages/）+ 本笔记（reverse/）** 合在一起 = 操作说明 + 结构真相。  
3. 方法级 100% 仍需 ILSpy/dnSpy 或 REA `inspect_managed_members` 按类型深挖；当前未纳入 zip 也可后续追加。

## 7. 局限

- Cecil 读取 **不** 解析 PDB、不还原泛型实例化细节到源码级。  
- `(global)` 1.3 万类型含大量生成/嵌套名，需用 CSV 过滤。  
- 未分析 DevExpress 第三方内部（商业组件）。  
- 未覆盖云服务端。

---

## 8. REA 深挖补记（2026-11-24 第二轮）

Evidence 会话重建后针对 **插件 ABI / FlatModel / Sync** 的托管元数据深读。

### 8.1 插件框架真实布局（文档未写全）

| 位置 | 类型 |
|------|------|
| `HHDev.Core.WPF.Plugins` | **`ICustomizeUserInterfacePlugin`**（文档常写在 Client.Wpf，实际在 Core.WPF） |
| `HHDev.DataManagement.Client.Wpf.PluginFramework.Interfaces` | 大量 `I*CustomizationPlugin`、`IHhDataManagementPlugin`（继承 **`IHHPlugin`**） |
| `HHDev.DataManagement.Client.Core.PluginFramework.Interfaces` | `ICustomFlatModelProviderPlugin`、`FlatModelInitializationDefinition`、`IScopeDefinitionCustomizerPlugin`、`IHHDMServerExtension` |
| 同命名空间 | **`PluginManager`**（static） |

**`ICustomizeUserInterfacePlugin` 成员（Core.WPF，5 methods）：**
- `event AddNewDocument : EventHandler<AddNewDocumentEventArgs>`
- `RibbonPages : List<RibbonPageModel>`
- `TypesForRegistration : List<Type>`
- `ViewModelAndViewMappings : List<ViewModelMapping>`

**`PluginManager` 关键 API（有 CIL body）：**
- `PluginsEnabled : bool`（.cctor 默认 true）
- `Plugins : List<PluginWrapper>`（`HHDev.Core.NETStandard.Plugins`）
- `LoadPlugins(string[])` / `RegisterPlugins(IWpfClientContainer)`
- `GetPluginTypeRegistrations` / `GetPluginViewModelsToMap` / `GetFlatModelInitializationDefinitions`
- `GetSplashFromPlugin` / `GetCurrentPluginInfos` / `RegisterCustomScopeDefinitionContainers`

加载模式：遍历 Plugins → `isinst` 各定制接口 → 调对应 getter 聚合配置（IL 中 5 处相同循环骨架）。

**文档之外还存在的接口（CSV 全量）：**  
`ILapCustomizationPlugin`、`IEventCarDataCustomizationPlugin`、`ISessionCarDataCustomizationPlugin`、`IHtmlReporterPlugin`、`IIdealizedLapTimeCalculatorProviderPlugin`、`ICustomRimMileageExport`、`IScopeDefinitionCustomizerPlugin`、`IHHDMServerExtension` 等。

**`*CustomizationConfig` 族**（多实现 `IColumnCustomizationConfig`）：Car / Championship / Event / EventCarData / Lap / PlannedRun / RunSheet / SessionCarData / Setup / Track / Tyre / TyreSet / TyreSpecification。

### 8.2 FlatModel（Client.Core）

`IRunSheetFlatModel` 部分成员（接口 property/method）：
- `LapNumber`、`FullRunName`、`StartTime`/`EndTime`（**NodaTime.Instant?**）
- `BestLapTime : double?`
- **`Fl/Fr/Rl/RrTyreMileageLaps` / `…Distance` : `double?`**（四角胎里程，RunSheet 级）
- `GetLatestAdjustedTyrePressures()` → `TyrePressureContainer`
- `GetKpiStatus` / `IsKpiStatusQueued` / `GetKpiLastProcessedTime`
- `SetFullTank`、`IsLapValidForCalculation`、`AfterEventCarCacheInitialized`
- `UpdateStartStateFromPlannedRun(string, ePropertyUpdateType)`
- `RunSheetStatsUpdated` 事件、`RunSheetAmbientMeasurementsCache`

`ICustomFlatModelProviderPlugin.FlatModelDefinitions : List<FlatModelInitializationDefinition>`  
（示例插件：Setup definition Guid → 自定义 `HHDevSetupFlatModel`）

### 8.3 Sync 栈（Sync.Core / Sync.Client CSV + 元数据）

**冲突解决**（Sync.Core.ConflictResolution）：  
`ConflictDefinition(Item)`、`ConflictResolutionFunctions`、`eConflictType`、`eDeleteConflictAction`、`eResolutionType`、`InsertInsetConflict*`、`UnresolvableConflictException`

**消息协议**（Sync.Core.Messages）：  
`SyncOperationMessage`、`BulkUpdateMessage`、`UserAuthMessage/Response`、`RefreshTokenRequest/Response`、`ReceiptAcknowledgement*`、`PendingOperations*`、`SyncableMessage`、`SystemTextJsonMessageSerializer`、`HHDMGzippedJsonSerializer`（Client）

**Payload**：`CustomPropertyPayload`、`PropertyPayload`、`CustomAttachedFile*`、`CustomCollectionItem*`、`CollectionOrderUpdate`

**客户端传输**（Sync.Client）：  
`SyncClient` / `ApiSyncClient`、`SocketWrapper`（async socket + 心跳 tick）、`MessageDistributor(Async)`、`RemoteMessageManager(Async)`、`SyncClientBasicAuthManager`、`ClientConflictResolver`

**选择/订阅**：`AbstractAdd/RemoveDataSelectionMessage`、`eSyncDataSelectionStatus`、`LocalDataSelectionStatusUpdateMessage`

**实体扩展**：`HHDMSyncOperation`、`HHDMSyncDataSelection`（DataManagement.Core）

### 8.4 Evidence IDs（本轮）

| 主题 | parent evidence |
|------|-----------------|
| Wpf 插件接口+方法 | `ev_520a8f57…` / methods `ev_608906cb…` |
| Core.WPF ICustomizeUserInterfacePlugin | `ev_ff7e591e…` |
| PluginManager + Lap/EventCarData 接口 | `ev_28391b35…` |
| FlatModel 方法页 | parent `ev_b0e58640…` |
| Sync.Core 类型选择 | `ev_13510ef4…`（全名匹配 0：正确类型名在 CSV） |

### 8.5 仍未做

- ~~全量 `#US` 用户字符串导出~~ → §9 已按类型选择导出  
- ~~Sync.Core 正确 type_names 的成员签名~~ → §9.1–9.3 已完成  
- 方法级 C# 反编译（需 ILSpy 或逐 `analyze_function`）  
- 运行时 socket 协议抓包

---

## 9. REA 深挖补记（2026-11-24 第三轮）

方法：`inspect_managed_members` + `inspect_analysis_view`（fields / methods / user_strings）。  
**不执行**程序集；字段常量来自 Constant 表，不是运行时反射。

### 9.1 Sync.Core 协议常量与枚举

| 枚举 | 值 |
|------|-----|
| `eSyncDataSelectionStatus` | Sent=0, Accepted=1, Rejected=2, Failed=3, Ignored=4, Completed=5, RequestDelete=6 |
| `eSyncAuthMode` | Bearer=0, Basic=1 |
| `eBatchOperation` | Add=0, Delete=1 |
| `eDatabaseError` | Unhandled=0, FailedLocalOperation=1, FailedLocalPush=2 |
| `eTokenRefreshFailure` | None=0, Permanent=1, Transient=2 |
| `eConflictType` | None=0, UpdateUpdate=1, DeleteUpdate=2, UpdateDelete=3, DeleteDelete=4, InsertDelete=5, DeleteInsert=6, InsertInsert=7 |
| `eResolutionType` | None=0, RemoveLocal=1, IgnoreIncoming=2, ReplaceLocalPayload=4, ReplaceIncomingPayload=8, ResolveLocalPayload=16, ResolveIncomingPayload=32（**位标志**） |
| `eDeleteConflictAction` | UpdatePayload=0, IgnoreNonDelete=1 |
| `eInsertInsetConflictResultType` | Error=0, IgnoreMessages=1 |

**`SyncGlobals` 静态常量：**

| 名 | 值 |
|----|-----|
| `DATETIME_FORMAT` | `yyyy-MM-dd HH:mm:ss.FFFFFFF` |
| `MSG_DELIMITER` | `<EOM>` |
| `HEARTBEAT_STR` | `heartbeat` |
| `HEARTBEAT_MSG` | `heartbeat<EOM>` |
| `SYNC_DATA_SELECTION_TABLE_NAME` | `SyncDataSelection` |
| `GRACEFUL_SHUTDOWN_HANDSHAKE_FLAG` | `GracefulShutdownHandshake` |
| `ServerMessageId`（ldstr） | `dbceaee9-07fa-4561-a09f-35442060d066` |
| `MessageSerializer` | 静态属性 `IMessageSerializer` |
| `DelimiterBytes` / `HeartbeatBytes` / `HeartbeatMessageBytes` | 由上述字符串编码的 `byte[]`（.cctor） |

**套接字帧格式（由常量推断，未抓包验证）：**  
消息体文本 + 分隔符 `<EOM>`；心跳为字面 `heartbeat<EOM>`。Client 侧另有 `HHDMGzippedJsonSerializer`（gzip JSON over socket）。

### 9.2 消息层成员（property backing）

**`BaseMessage`：** `SenderId:Guid`, `TargetId:Guid`, `TargetControlIds:Guid[]`, `BlacklistedIds:Guid[]`, `TraceId:Guid`

**`SyncableMessage`（IMessage/IItemIdMessage/IPropertyPayloadMessage/ISyncableMessage）：**  
`_senderId/_targetId/_traceId/_userId/_accountId/_sourceDatabaseId/_syncOperationId:Guid`, `_itemId:string`, `_syncOperationTime:DateTime`, `RawPayload:object`, `ParentTraceId:Guid?`, `TargetControlIds/BlacklistedIds:Guid[]`  
校验 #US：`SenderId/ItemId/SyncOperationId/UserId/AccountId/SyncOperationTime/SourceDatabaseId` 不得空/空串。

**`SyncOperationMessage`：**  
`SyncMessages:IReadOnlyList<SyncableMessage>`, `IsPendingOperationsResponse:bool`, `IsFinalBatch:bool`, `IsLimitReached:bool`, `BatchIndex:int`, `DataSelectionId:Guid`, `AccountId:Guid`  
ToString #US：`SyncOp: Count=…, IsResponse=…, IsFinal=…, Batch=…, DataSelId=…, AccountId=…`

**`BulkUpdateMessage`：** `Messages:List<IMessage>`  
**`ReceiptAcknowledgementMessage`：** `AcknowledgementItems:List<ReceiptAcknowledgementItem>`  
**`RequestPendingSyncOperationsMessage`：** `BatchSize:int?`, `LimitMessagesSent:bool`, `MessageSendLimit:int`, `RequestPendingSyncOperationsDataSelections:List<IPendingOperationDataSelection>`

**`UserAuthMessage`：** `SyncAuthMode`, `Username`, `Password`, `JwtToken`, `ClientSoftwareKey`, `ClientVersion`, `DatabaseId`, `ClientFlags:List<string>`  
**`UserAuthResponseMessage`：** `UserId`, `AccountIds:string[]`, `Username`, `AuthenticatedWithServer:bool`, `IsAllowedToSync:bool`, `MessageString`

**`RefreshTokenRequestMessage`：** `CorrelationId:Guid`, `RefreshToken`, `ClientId`, `Scope`  
**`RefreshTokenResponseMessage`：** `CorrelationId`, `Success:bool`, `AccessToken`, `RefreshToken`, `IdentityToken`, `AccessTokenExpiry:DateTime`, `Error`, `FailureKind:eTokenRefreshFailure`

**`SyncMessageBuilder` 字段：** `SenderId/TargetId/SyncOperationId/UserId/AccountId/SourceDatabaseId:Guid`, `ItemId:string`, `SyncOperationTime:DateTime?`

### 9.3 Sync 实体与冲突

**`AbstractSyncDataSelection`：** `Id/DatabaseId/AccountId/SyncOperationTime:string`, `SyncDataSelectionStatus`  
**`SyncInfo`：** `Key`, `Value`  
**`SyncOperation`：** `Id`, `Sequence:int`, `MessageTypeShort`, `UpdateType:eUpdateType`（Core.NETStandard）, `ItemId`, `Payload`, `SyncOperationTime:DateTime`, `UserId`, `AccountId`, `SourceDatabaseId`, `IsPlaceHolder:bool`

**`ConflictDefinition`：** `MessageType:System.Type`, `Items:List<ConflictDefinitionItem>`, `UpdateType:eUpdateType`  
**`ConflictDefinitionItem`：** `OtherMessageType:System.Type`, `MessageProperty`, `OtherMessageProperty`, `UpdateType`, `DeleteConflictAction`, `CustomConflictResolver:Func<SyncableMessage,SyncableMessage,ConflictAnalysisResult>`  
**`ConflictResolutionFunctions`：** `_logger:ExtendedLogger` + 5 个静态解析方法

### 9.4 Sync.Client 传输层（字段级）

| 类型 | 关键成员 |
|------|----------|
| `MessageDistributor` | `Queue<IMessage>` ×2、`SemaphoreSlim`、`List<IMessageReceiver>`、`IRemoteMessageManager`、`IMessageProcessor`、`Timer` ×2、`Id:Guid`、`SynchronizationContext` |
| `RemoteMessageManagerBase` | `IClientSocketWrapper<IMessage>`、`ISyncClient`、`ISyncClientAuthManager`、`_authenticatedWithServer`、`_serverMessagingDisabled`、`BatchSizeFunc:Func<int>`、`DatabaseError`/`ConnectionStatusChanged` 事件 |
| `RemoteMessageManagerOptions` | `SyncClientAuthManager`, `TimeoutDuration:int`, `ServerMessagingDisabled:bool`, `BatchSizeFunc`, `SocketConnectionInformationFunc:Func<SocketConnectionInformation>`, `StoreUserIdAndAccountIds:bool` |
| `SyncClient` | `AccountIds:Guid[]`, `UserId:Guid`, `DatabaseId:Guid`, `TargetServer:string`, `TargetPort:int` |
| `ApiSyncClient` | `AccountIds:Guid[]`, `TargetServer`, `TargetPort` |
| `SyncClientBasicAuthManager` | `_username/_password/_clientVersion/_clientSoftwareKey/_databaseId`, `_authFlags:List<string>` |
| `BaseSyncClientAuthManager` | `RequestSendUserAuthMessage`/`RequestSendMessage`/`AuthStatusChanged` 事件；`_authFailed` volatile |
| `HHDMGzippedJsonSerializer` | 实现 `ISocketMessageSerializer\`1`；`MetricsLogger` |

**注意：** `HHDev.Sync.Client.SocketWrapper` **不存在**；async 状态机名来自 `RemoteMessageManager*` 内嵌方法（`SocketWrapper_FlushConnection2` 等）。真正 socket 在 **`HHDev.Core.NETStandard.Communication`**（`IClientSocketWrapper\`1`, `SocketConnectionInformation`）。

### 9.5 DMI 消息定义（HHT / 端口 8090 语义）

程序集 `HHDev.DataManagement.DMI.Definitions`（41 TypeDef，本轮 16 类成员完整）。

**`BaseHhtDataMessage`：** `AccountId`, `ChampionshipId`, `EventId`, `SessionId`, `CarId`（均为 string）  
继承 `BaseHhtMessage`；可排队实现 `IQueueableMessage`。

| 消息 | 额外字段 |
|------|----------|
| `HhtHandshakeMessage` | `HHDMVersion:int`, `Success:bool`, `Reason`, `SoftwareName` |
| `HhtPitInMessage` | `ShouldCreateNextRun:bool`, `RunIndex:int`, `PitInTime`, `PitInSessionTime` |
| `HhtPitOutMessage` | `RunIndex`, `PitOutTime`, `PitOutSessionTime` |
| `HhtUpdateLapMessage` | `DriverId`, `RunIndex`, `StintLapNumber`, `IsFuelComingFromTelemetry:bool`, `Properties:List<UpdateProperty>`, `KeyedCollectionItemUpdates:List<UpdateKeyedCollectionItem>` |
| `HhtUpdateSectorMessage` | 同上 + `SectorId` |
| `HhtUpdateSpeedTrapMessage` | `DriverId`, `RunIndex`, `StintLapNumber`, `SpeedTrapId`, fuel 标志, Properties |
| `HhtUpdatePositionMessage` | `Position:int?`, `PositionInClass:int?` |
| `HhtUpdateRunMessage` | `RunIndex`, `Properties`, **`TyreSet:DmiTyreSetModel`** |
| `HhtUpdateSessionMessage` | `Properties` |
| `HhtUpdateSessionStatusMessage` | `ZoneToUpdate`, `ZoneStatus`, `StartTime:double?`, `EndTime:double?` |
| `HhtUpdateWeatherMessage` | `SessionTime/DayTime:double`, `WindSpeed/WindDirection/AirTemperature/AirPressure/Humidity/TrackTemperature:double?` |
| `UpdateProperty` | `Name`, `Value`（均 string；IEquatable） |
| `UpdateKeyedCollectionItem` | `CollectionName`, `KeyName`, `KeyValue`, `Properties` |
| `DmiTyreSetModel` | `Name`, `FlTyre/FrTyre/RlTyre/RrTyre:DmiTyreModel` |
| `DmiTyreModel` | `TyreSpecName` |

**兼容性 #US：** `DMI.Definitions v… is not compatible with the DMI … Please update the DMI from hh-dev.com.`  
握手 ToString：`HhtHandshakeMessage HHDM Version: …, SoftwareName: …, Success: …, Reason: …`

### 9.6 Core.Entities 关键字段（#US / fields）

选中 14/15 类型（`SessionCar` 未匹配 → 实际为 `SessionCarData` 等）；fields 367 / methods 902 / user_strings 47。

**通用审计字段：** `Id`, `UserId`, `CreatedBy`, `CreatedDate:NodaTime.Instant`, `LastModifiedBy`, `LastModifiedDate`, `AccountId`, `CustomPropertyDefinitionId`, `CustomProperties:CustomPropertiesContainer`, `*AttachedFiles`, `*CollectionItems`, `SyncDataSelections`  
**外键 #US：** `CarId`, `ChampionshipId`, `EventId`, `SessionId`, `DriverId`, `RunSheetId`, `SetupId`, `TyreSetId`, `TyreSpecificationId`, `FLTyreId/FRTyreId/RLTyreId/RRTyreId`, `TrackId`, `DefaultTrackConfigurationId`, `PlannedRunId`, `FrontBrakeSetId`, `RearBrakeSetId`, `SessionTypeId`, `DataAnalysisProfileId`, `SetupDefinitionId`, `DefaultSetupDefinitionId`, `CategoryId`, `CarModelId`, `TeamId`, `Number`, `MileageLastUpdatedDate`, `MileageVersion`, `KpiStatus`, `WeatherCondition`, `TrackCondition`, `TyreSpecPosition`, `Order`, `Condition`, `LapMarkerId`, `LapTrackStatusMarkerId`

**`Car` 导航集合：**  
`EventCars`, `Setups`, `TyreSets`, `RunSheets`, `RunPlans`, `SessionCarDatas`, `EventCarDatas`, `ReferencePressureRuns`, `TyreWearMeasurements/Sheets`, `BrakePad/DiscWear*`, `CarsTyres/BrakeDiscs/BrakePads/BrakeSets`, `CarsAssemblyIterations`, `CarsNamedAssemblies`, `CarsIssueListIssues`, `EventCarSetups{Manual,Predictive}Mileage`, `SessionCarSetups*`, `LapMarkers*`, `SessionObjectIssues/Jobs`, `BrakeWearSheets`, `EventNotes`, `DefaultSetupDefinition`, `AccountOptions`, `SyncDataSelections`

**`Driver`：** `PlannedRuns`, `RunSheets`, `EventCarDrivers`, `AccountOptions`, …  
**`EventCar`：** `EventId/Event`, `CarId/Car`, `DataAnalysisProfileId`, `SetupDefinitionId`, `MileageLastUpdatedDate:Instant?`, `MileageVersion`, …  
**`RunSheet`：** `Laps`, `TyreSetId/TyreSet`, `SetupId/Setup`, `FrontBrakeSetId/RearBrakeSetId`, `DriverId`, `PlannedRunId`, `KpiStatus:eKpiStatus`, `SessionId/CarId`, `Order`, `WeatherCondition:eWeatherCondition?`, `TrackCondition:eTrackCondition?`, `RunSheetsAmbientMeasurements`, `TyreWearSheets`, `EngineerRunSheetNotes`  
**`Session`：** `EventId`, `TrackConfigurationId`, `SessionTypeId`, `Name`, `RunPlans`, `RunSheets`, `SessionCarDatas`, `SessionObjectIssues/Jobs`, `LapMarkers*`, `SessionData`, `SessionStatuses`, `SessionCarSetups*`  
**`Lap`：** `RunSheetId`, `LapSectors`, `LapSpeedTraps`, `LapMarkerId`, `LapTrackStatusMarkerId`, `Order`  
**`Setup`：** `EventId/Event`, `CarId/Car`, `Name`, `Order`, `RunSheets`, `EventCarSetups*`, `SessionCarSetups*`, `PlannedRuns`  
**`Track`：** `TrackConfigurations`, `Events`, `AccountOptions`, `Name`  
**`Tyre`：** `TyreSpecificationId/TyreSpecification`, `TyreWearMeasurements`, `FL/FR/RL/RRTyreTyreSets`, `FL/FR/RL/RRTyreTyreWearSheets`, `EventServiceReturns`, `Condition:eTyreCondition`, `EventsTyres`, `EventsCarsTyres`, `ChampionshipsTyres`, `CarsTyres`, `TyreTransactionTyreItems`, `Name`  
**`TyreSet`：** `TyreSetPressureAdjustments`, **`FLTyreId/FRTyreId/RLTyreId/RRTyreId`** + 对应 `FLTyre/FrTyre/...:Tyre` 导航，`PlannedRuns`, …（与 API 写路径一致）  
**`AmbientMeasurement`：** `RunSheetsAmbientMeasurement`, `AmbientMeasurementDataSource:eAmbientMeasurementDataSource`, `EventId/Event`

**`Event` 导航：** `ChampionshipId/Championship`, `Sessions`, `EventsTyreSpecifications`, `SyncDataSelections`, …

### 9.7 ApiClientWrapper 与表达式函数（CSV 级）

**API 包装：**  
`ApiClient`（2837 methods）、`ApiClientV2`（2858）实现 `IApiClient`/`IApiClientV2`；`ApiUrls`(30)、`ApiResult`/`ApiResult\`1`、`eApiResultStatus`；  
`Models.Payload` / `Models.SyncableMessage` / `CustomProperty` / `EntityProperty`；大量 `Enums.e*`（与文档枚举对齐，如 `eTyrePosition`, `eMileageComputationMode`, `ePropertyUpdateType`…）。

**Math 表达式节点（Client.Core `…Nodes.Functions.*`，共 ~90）：**  
Abs/ACos/ASin/ATan/Average/BestX/BestXPercent/Concatenate/Contains/Cos/Count/Degrees/DoubleToString/FirstNotNull/FirstQuartil/If/Interpolate/LinFit/Lookup/LookupClosest/Lower/Max/Median/Mid/Min/Now/Outliers/Pi/PolyFit/Power/Proper/Radians/Round/Sign/Sin/Split/Sqrt/StdDev/StringToDouble/Substitute/Sum/Tan/TextJoin/ThirdQuartil/ToString/Truncate/Upper/UpperWhisker/Where/Select/GetMileage/GetMeasurement/GetPropertyValue/GetCurrentUser/…  
注册容器：`FunctionNodeDefinitionsContainer`、`GeneratedFunctionNodeDefinitionsContainer`。

### 9.8 Evidence IDs（第三轮）

| 主题 | parent evidence |
|------|-----------------|
| Sync.Core 全选中类型 | `ev_93e51a87…`（methods `ev_62125246…`, fields `ev_45fb6fa3…`, #US `ev_925478e6…`） |
| Sync.Core 冲突/实体选择 | `ev_e30558b0…`（fields `ev_af822fe1…`, #US `ev_28849114…`） |
| Sync.Client | `ev_141eb63f…`（fields `ev_223bde9c…`） |
| DMI.Definitions | `ev_4d94fe8b…`（fields `ev_db0b8a93…`, #US `ev_cf1233b2…`） |
| DataManagement.Core 实体 | `ev_6b08c9cf…`（fields `ev_9f23b742…` / page2 `ev_cbe874e1…`, #US `ev_af235988…`） |

程序集 SHA-256：  
Sync.Core `ef3aeb1a4573…` · Sync.Client `c9d92be895a4…` · DMI `15d35ea6787b…` · DM.Core `97da0cfab001…` · Client.Wpf `6acb98c83d88…`

### 9.9 覆盖结论（第三轮后）

| 维度 | 状态 |
|------|------|
| Sync 协议枚举/常量/消息字段 | ✅ 类型选择内完整（Constant 表） |
| Sync.Client 传输字段 | ✅ 除 SocketWrapper 名错误外完整 |
| DMI 16 类消息字段 + #US | ✅ |
| Core.Entities 14 类字段名 #US + fields 两页 | ✅（属性名层；非全部 2760 类型） |
| ApiClientWrapper / 表达式函数 | ✅ CSV 级全量 |
| 方法体 C# 源码级 | ❌ 未做 |
| 运行时 wire 抓包 | ❌ 未做 |
| 未匹配类型名 | SessionCar→SessionCarData；Sync.Client.SocketWrapper→Core.NETStandard.Communication |

### 9.10 补强：Payload 层次与 SyncMessageBuilder（explore 合并）

**Payload 继承：** `SyncPayload` → `PropertyPayload` → `CustomPropertyPayload`

| 类型 | 关键成员 |
|------|----------|
| `SyncPayload` | `Properties:List<PayloadProperty>`；`AddProperty(string,string)`；`ResolveConflict(SyncPayload)`；`RemoveConflictProperty(IPayloadProperty)` |
| `PropertyPayload` | `_logger`；覆写 `ResolveConflict` / `RemoveConflictProperty` |
| `CustomPropertyPayload` | `CustomPropertyDefinitionId`；`CustomProperties:List<SyncPayloadCustomProperty>`；`CollectionItemsAdded/Updated/Deleted`；`CollectionOrderUpdates`；`CollectionItemAttachedFilesAdded/Updated/Deleted`；`ResolveAttachedFilesUpdateUpdateConflict` / `ResolveAttachedFilesUpdateDeleteConflict` / `ResolveUpdateDeleteConflict` |

**`SyncMessageBuilder` 流式 API：**  
`NewMessage()` → `WithSenderId/WithAccountId/WithTargetId/WithItemId/WithOperationId/WithUserId/WithOperationTime/WithSourceDatabaseId`（均返回 builder）→ `SyncableMessage.ctor(SyncMessageBuilder)`

**`ConflictDefinition` 静态工厂：**  
`CreateForUpdate(Type, Type)` / `CreateForDelete(Type, Type)` / `AddConflictDefinitionItem(...)`

**`SyncOperationMessage.Clone(IReadOnlyList<SyncableMessage>)`**  
**`SyncableMessage.Clone()` / `Clone(Guid)` / `Clone(Guid,DateTime)` / `Clone(Guid,Guid,DateTime)` / `GetClone(SyncableMessage)`**

**冲突解析 GUID 字面量（#US）：**  
`{F4D43F26-B274-4A47-B6EA-4694D20EFE01}` · `{C72D9D53-40CC-4DC7-A674-9C027E72171E}` · `{453313F7-6C36-442A-BF43-3B8F0539AB90}`  
（可能为自定义属性/冲突策略标识；未在文档中对照，标为推断）

**#US 异常：** 4 条 GUID 字面量 terminal flag 非 ECMA-335 标准值（`0x70000001` 等）；UTF-16 可读，运行时接受度未评估。

### 9.11 第四轮完成（2026-11-24 晚）

| 项 | 状态 | 产物 |
|----|------|------|
| 方法反编译 | ✅ 21+ 类型 C# | `method-decompilations.md`（ilspycmd 9.1.0.7988） |
| 运行时同步证据 | ✅ 应用日志 + 提权 PktMon | `sync-runtime-capture.md`、`capture/` ETL |
| Core.Entities 全量 fields | ✅ **0 个有字段类型缺失** | `entity-fields-full.csv`（~14.4k 行 / 630 类型） |
| 根实体字段摘要 | ✅ | `entity-fields-root-entities.md`（258 根类型） |

**字段覆盖说明：** 625 个 Entities* 类型中，25 个无实例字段（19 接口 + 6 JsonConverter）不产生 field 行，属预期；其余全部有字段类型已入 CSV。

**反编译要点：**
- `PluginManager` 实际在 `Client.Wpf.PluginFramework`，委托 `HhdmPluginFrameworkHelpers`
- `ClientConflictResolver` / `ConflictResolutionFunctions` 冲突规则已还原
- `SyncMessageBuilder` 流式 With* API、`SyncableMessage` 校验与 Clone

**抓包要点：**
- 出站全走 `127.0.0.1:7897` 代理；`hhdm-sync:8080` TCP 可达但 wire 载荷未在 pcap 中出现
- 应用日志确认 UserAuth Basic、SyncOp ToString、BulkUpdate→SQLite
- `<EOM>`/`heartbeat` 由 #US 静态确认；wire 层未见字节（代理掩盖）

**工具复用：** `%TEMP%\hhdm-tools\ilspycmd\tools\net8.0\any\ilspycmd.dll` → `dotnet <dll> -t <Type> <assembly>`