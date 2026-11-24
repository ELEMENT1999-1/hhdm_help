# HH DM Managed Method Decompilations (RE Notes)

- **Tool**: `ilspycmd` 9.1.0.7988 (portable, from `ilspycmd.9.1.0.7988.nupkg` under `%TEMP%\hhdm-tools`), run via `dotnet ilspycmd.dll -t <type>` against the .NET 8 runtime (`C:\Program Files\dotnet\shared\Microsoft.NETCore.App\8.0.x`).
- **Install dir**: `C:\Program Files\HH Development\HH Data Management`
- **Date**: 2026-11-24

## Assembly map (priority types)

| Type | Assembly |
|---|---|
| `PluginManager` (see note) | `HHDev.DataManagement.Client.Wpf.dll` |
| `HHDev.Sync.Client.ClientConflictResolver` | `HHDev.Sync.Client.dll` |
| `HHDev.Sync.Core.ConflictResolution.ConflictResolutionFunctions` | `HHDev.Sync.Core.dll` |
| `HHDev.Sync.Core.Messages.SyncMessageBuilder` | `HHDev.Sync.Core.dll` |
| `HHDev.Sync.Core.SyncGlobals` | `HHDev.Sync.Core.dll` |
| `...ExpressionProcessing.Nodes.Functions.FunctionNodeDefinitionsContainer` | `HHDev.DataManagement.Client.Core.dll` |

> **Note on PluginManager**: the requested FQN `HHDev.DataManagement.Client.Core.PluginFramework.Interfaces.PluginManager` does not exist. The Core assembly's `PluginFramework.Interfaces` namespace holds only plugin *interfaces* (`ICustomFlatModelProviderPlugin`, `IHHDMServerExtension`, `IScopeDefinitionCustomizerPlugin`, …) and definition types. The actual `PluginManager` class with `LoadPlugins` / `RegisterPlugins` lives in **`HHDev.DataManagement.Client.Wpf.PluginFramework.PluginManager`** (static class).

---

## 1. `HHDev.DataManagement.Client.Wpf.PluginFramework.PluginManager`

**Assembly**: `HHDev.DataManagement.Client.Wpf.dll`
**Kind**: `public static class`

### Signatures

```csharp
public static bool PluginsEnabled { get; set; } = true;
public static List<PluginWrapper> Plugins { get; }

public static void LoadPlugins(params string[] directories);
public static void RegisterPlugins(IWpfClientContainer clientContainer);
public static List<Type> GetPluginTypeRegistrations();
public static List<ViewModelMapping> GetPluginViewModelsToMap();
public static BitmapImage GetSplashFromPlugin();
public static List<FlatModelInitializationDefinition> GetFlatModelInitializationDefinitions();
public static List<CurrentVersionInformation> GetCurrentPluginInfos();
public static void RegisterCustomScopeDefinitionContainers();
```

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Imaging;
using HHDev.Core.NETStandard.Plugins;
using HHDev.Core.WPF.Plugins;
using HHDev.DataManagement.Client.Core.Components.Intellisense;
using HHDev.DataManagement.Client.Core.PluginFramework.Interfaces;
using HHDev.DataManagement.Client.Wpf.PluginFramework.Interfaces;
using HHDev.DataManagement.Core.Messages;

namespace HHDev.DataManagement.Client.Wpf.PluginFramework;

public static class PluginManager
{
    public static bool PluginsEnabled { get; set; } = true;

    public static List<PluginWrapper> Plugins { get; } = new List<PluginWrapper>();

    public static void LoadPlugins(params string[] directories)
    {
        HhdmPluginFrameworkHelpers.LoadPlugins(Plugins, directories);
    }

    public static List<Type> GetPluginTypeRegistrations()
    {
        List<Type> list = new List<Type>();
        foreach (PluginWrapper plugin in Plugins)
        {
            if (plugin.Plugin is ICustomizeUserInterfacePlugin { TypesForRegistration: { } typesForRegistration })
            {
                list.AddRange(typesForRegistration);
            }
        }
        return list;
    }

    public static List<ViewModelMapping> GetPluginViewModelsToMap()
    {
        List<ViewModelMapping> list = new List<ViewModelMapping>();
        foreach (PluginWrapper plugin in Plugins)
        {
            if (plugin.Plugin is ICustomizeUserInterfacePlugin { ViewModelAndViewMappings: { } viewModelAndViewMappings })
            {
                list.AddRange(viewModelAndViewMappings);
            }
        }
        return list;
    }

    public static BitmapImage GetSplashFromPlugin()
    {
        IHHPlugin iHHPlugin = Plugins.FirstOrDefault((PluginWrapper x) => x.Plugin is ISplashScreenCustomizationPlugin)?.Plugin;
        if (iHHPlugin == null)
        {
            return null;
        }
        return ((ISplashScreenCustomizationPlugin)iHHPlugin).SplashImage;
    }

    public static List<FlatModelInitializationDefinition> GetFlatModelInitializationDefinitions()
    {
        List<FlatModelInitializationDefinition> list = new List<FlatModelInitializationDefinition>();
        foreach (PluginWrapper plugin in Plugins)
        {
            if (plugin.Plugin is ICustomFlatModelProviderPlugin { FlatModelDefinitions: { } flatModelDefinitions })
            {
                list.AddRange(flatModelDefinitions);
            }
        }
        return list;
    }

    public static void RegisterPlugins(IWpfClientContainer clientContainer)
    {
        HhdmPluginFrameworkHelpers.RegisterPlugins(Guid.Empty, Plugins, clientContainer);
    }

    public static List<CurrentVersionInformation> GetCurrentPluginInfos()
    {
        return (from x in Plugins
                where !string.IsNullOrEmpty(x.Plugin.AutoUpdateKey)
                select new CurrentVersionInformation(x.Plugin.AutoUpdateKey, x.VersionNumber)).ToList();
    }

    public static void RegisterCustomScopeDefinitionContainers()
    {
        foreach (PluginWrapper plugin in Plugins)
        {
            if (plugin.Plugin is IScopeDefinitionCustomizerPlugin scopeDefinitionCustomizerPlugin)
            {
                List<Tuple<string, Action<CustomizeScopeDefinitionContainerInput>>> scopeDefinitionCustomizationCallbacks =
                    scopeDefinitionCustomizerPlugin.GetScopeDefinitionCustomizationCallbacks();
                if (scopeDefinitionCustomizationCallbacks != null)
                {
                    ScopeDefinitionContainers.CustomizeScopeDefinitionContainerCallbacks.AddRange(scopeDefinitionCustomizationCallbacks);
                }
            }
        }
    }
}
```

**RE notes**:
- `LoadPlugins` / `RegisterPlugins` are thin wrappers over `HhdmPluginFrameworkHelpers` (same assembly). `RegisterPlugins` always passes `Guid.Empty` as an id/namespace argument.
- Plugin discovery/scan logic itself is in `HhdmPluginFrameworkHelpers` — decompile that next if the load path matters.

---

## 2. `HHDev.Sync.Client.ClientConflictResolver`

**Assembly**: `HHDev.Sync.Client.dll`
**Kind**: `public static class`

### Signatures

```csharp
public static ConflictAnalysisResult IsConflict(SyncableMessage localSyncMessage, SyncableMessage incomingMessage, Dictionary<Type, ConflictDefinition> definitions);
public static bool HasProperty(string propertyName, SyncableMessage message);
private static ConflictDefinitionItem GetConflictDefinitionItem(IEnumerable<ConflictDefinitionItem> matchingItems, SyncableMessage incomingMessage, SyncableMessage localMessage);
private static eConflictType GetConflictType(SyncableMessage localSyncMessage, SyncableMessage incomingMessage);
```

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using HHDev.Core.NETStandard.Enums;
using HHDev.Core.NETStandard.Helpers;
using HHDev.Core.NETStandard.Messaging.Interfaces;
using HHDev.Core.NETStandard.Messaging.Payloads;
using HHDev.Sync.Core.ConflictResolution;
using HHDev.Sync.Core.Messages;
using HHDev.Sync.Core.Messages.Payloads;
using HHDev.Sync.Core.Models;

namespace HHDev.Sync.Client;

public static class ClientConflictResolver
{
    public static ConflictAnalysisResult IsConflict(SyncableMessage localSyncMessage, SyncableMessage incomingMessage, Dictionary<Type, ConflictDefinition> definitions)
    {
        if (definitions == null)
        {
            return null;
        }
        if (incomingMessage.SyncOperationId == localSyncMessage.SyncOperationId)
        {
            return null; // same operation echoed back — not a conflict
        }
        eConflictType conflictType = GetConflictType(localSyncMessage, incomingMessage);

        // Same item, both inserts → drop local, keep incoming
        if (incomingMessage.ItemId == localSyncMessage.ItemId && conflictType == eConflictType.InsertInsert)
        {
            return new ConflictAnalysisResult(conflictType, eResolutionType.RemoveLocal | eResolutionType.IgnoreIncoming, null);
        }

        // Local update vs incoming delete/update on same item
        if (localSyncMessage.UpdateType == eUpdateType.Update && incomingMessage.ItemId == localSyncMessage.ItemId)
        {
            if (incomingMessage.UpdateType == eUpdateType.Delete)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.RemoveLocal, null);
            }
            if (incomingMessage.UpdateType == eUpdateType.Update && localSyncMessage.GetType() == incomingMessage.GetType())
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.ResolveIncomingPayload, null);
            }
        }

        // Local delete vs incoming delete/update on same item
        if (localSyncMessage.UpdateType == eUpdateType.Delete && incomingMessage.ItemId == localSyncMessage.ItemId)
        {
            if (incomingMessage.UpdateType == eUpdateType.Delete)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.RemoveLocal | eResolutionType.IgnoreIncoming, null);
            }
            if (incomingMessage.UpdateType == eUpdateType.Update)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.IgnoreIncoming, null);
            }
        }

        // Definition-driven conflicts (cross-type / different items)
        if (!definitions.TryGetValue(localSyncMessage.GetType(), out var value))
        {
            return null;
        }
        List<ConflictDefinitionItem> list = value.Items
            .Where((ConflictDefinitionItem x) => incomingMessage.GetType() == x.OtherMessageType).ToList();
        if (list.Count == 0)
        {
            return null;
        }

        // Custom resolvers take priority (called as custom(incoming, local))
        foreach (ConflictDefinitionItem item in list.Where((ConflictDefinitionItem x) => x.CustomConflictResolver != null))
        {
            if (item.CustomConflictResolver != null)
            {
                ConflictAnalysisResult conflictAnalysisResult = item.CustomConflictResolver(incomingMessage, localSyncMessage);
                if (conflictAnalysisResult != null)
                {
                    return conflictAnalysisResult;
                }
            }
        }

        // Fall back to property-equality matching among non-custom items
        ConflictDefinitionItem conflictDefinitionItem = GetConflictDefinitionItem(
            list.Where((ConflictDefinitionItem x) => x.CustomConflictResolver == null), incomingMessage, localSyncMessage);
        if (conflictDefinitionItem == null)
        {
            return null;
        }
        IPayloadProperty property = ConflictResolutionFunctions.GetProperty(conflictDefinitionItem.MessageProperty, localSyncMessage);
        IPayloadProperty property2 = ConflictResolutionFunctions.GetProperty(conflictDefinitionItem.OtherMessageProperty, incomingMessage);

        if (localSyncMessage.UpdateType == eUpdateType.Delete)
        {
            if (conflictDefinitionItem.DeleteConflictAction == eDeleteConflictAction.IgnoreNonDelete)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.IgnoreIncoming, null);
            }
            if (conflictDefinitionItem.DeleteConflictAction == eDeleteConflictAction.UpdatePayload)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.ReplaceIncomingPayload, property2);
            }
            throw new NotImplementedException("New eDeleteConflictAction not implemented properly");
        }
        if (incomingMessage.UpdateType == eUpdateType.Delete)
        {
            if (conflictDefinitionItem.DeleteConflictAction == eDeleteConflictAction.IgnoreNonDelete)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.RemoveLocal, null);
            }
            if (conflictDefinitionItem.DeleteConflictAction == eDeleteConflictAction.UpdatePayload)
            {
                return new ConflictAnalysisResult(conflictType, eResolutionType.ReplaceLocalPayload, property);
            }
            throw new NotImplementedException("New eDeleteConflictAction not implemented properly");
        }
        return null;
    }

    private static ConflictDefinitionItem GetConflictDefinitionItem(
        IEnumerable<ConflictDefinitionItem> matchingItems, SyncableMessage incomingMessage, SyncableMessage localMessage)
    {
        foreach (ConflictDefinitionItem matchingItem in matchingItems)
        {
            if (HasProperty(matchingItem.MessageProperty, localMessage) && HasProperty(matchingItem.OtherMessageProperty, incomingMessage))
            {
                IPayloadProperty property = ConflictResolutionFunctions.GetProperty(matchingItem.MessageProperty, localMessage);
                IPayloadProperty property2 = ConflictResolutionFunctions.GetProperty(matchingItem.OtherMessageProperty, incomingMessage);
                if (property != null && property2 != null && property.Value == property2.Value)
                {
                    return matchingItem;
                }
            }
        }
        return null;
    }

    private static eConflictType GetConflictType(SyncableMessage localSyncMessage, SyncableMessage incomingMessage)
    {
        // Note: implemented as string concatenation + switch on "LocalIncoming"
        return (localSyncMessage.UpdateType.ToString() + incomingMessage.UpdateType) switch
        {
            "UpdateUpdate" => eConflictType.UpdateUpdate,
            "UpdateDelete" => eConflictType.UpdateDelete,
            "DeleteUpdate" => eConflictType.DeleteUpdate,
            "DeleteDelete" => eConflictType.DeleteDelete,
            "InsertDelete" => eConflictType.InsertDelete,
            "DeleteInsert" => eConflictType.DeleteInsert,
            "InsertInsert" => eConflictType.InsertInsert,
            _ => eConflictType.None,
        };
    }

    public static bool HasProperty(string propertyName, SyncableMessage message)
    {
        if (propertyName == "ItemId")
        {
            return true;
        }
        if (message.Payload is CustomPropertyPayload customPropertyPayload)
        {
            if (customPropertyPayload.CustomProperties != null &&
                customPropertyPayload.CustomProperties.FirstOrDefault((SyncPayloadCustomProperty x) => x.Key == propertyName) != null)
            {
                return true;
            }
            if (customPropertyPayload.Properties != null &&
                customPropertyPayload.Properties.FirstOrDefault((PayloadProperty x) => x.Key == propertyName) != null)
            {
                return true;
            }
        }
        else if (message.Payload is PropertyPayload propertyPayload &&
                 propertyPayload.Properties.FirstOrDefault((PayloadProperty x) => x.Key == propertyName) != null)
        {
            return true;
        }
        if (PropertyHelper.ClassContainsProperty(message.Payload.GetType(), propertyName))
        {
            return true;
        }
        return false;
    }
}
```

**RE notes**:
- Hard-coded fast paths: `InsertInsert` on same item → `RemoveLocal | IgnoreIncoming`; `Update/Update` same type → `ResolveIncomingPayload`; delete-vs-nondelete rules keyed on `eDeleteConflictAction` (`IgnoreNonDelete` / `UpdatePayload`); unknown action values throw `NotImplementedException`.
- Definition-driven path matches on `local.GetType()` key → items filtered by `OtherMessageType == incoming.GetType()`, then property-value equality (`MessageProperty` on local vs `OtherMessageProperty` on incoming, compared as strings via `IPayloadProperty.Value`).
- `HasProperty` special-cases the literal `"ItemId"`, then probes `CustomPropertyPayload.CustomProperties` / `.Properties`, `PropertyPayload.Properties`, and finally reflection (`PropertyHelper.ClassContainsProperty`).

---

## 3. `HHDev.Sync.Core.ConflictResolution.ConflictResolutionFunctions`

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public static class`

### Signatures

```csharp
private static readonly ExtendedLogger _logger;

public static async Task<bool> ShouldIgnoreIncomingMessageDueToDeleteConflictAsync(SyncableMessage syncMessage, Func<string, Task<bool>> isItemDeletedAsync, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions);
public static bool ShouldIgnoreIncomingMessageDueToDeleteConflict(SyncableMessage syncMessage, Func<string, bool> isItemDeleted, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions);
private static async Task<bool> ShouldIgnoreIncomingMessageDueToDeleteConflictCore(SyncableMessage syncMessage, Func<string, Task<bool>> isItemDeletedAsync, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions);
public static IPayloadProperty GetProperty(string propertyName, SyncableMessage message);
```

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HHDev.Core.NETStandard.Enums;
using HHDev.Core.NETStandard.Helpers;
using HHDev.Core.NETStandard.Logging;
using HHDev.Core.NETStandard.Messaging.Interfaces;
using HHDev.Core.NETStandard.Messaging.Payloads;
using HHDev.Sync.Core.Messages;
using HHDev.Sync.Core.Messages.Payloads;
using HHDev.Sync.Core.Models;
using NLog;

namespace HHDev.Sync.Core.ConflictResolution;

public static class ConflictResolutionFunctions
{
    private static readonly ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

    public static async Task<bool> ShouldIgnoreIncomingMessageDueToDeleteConflictAsync(
        SyncableMessage syncMessage, Func<string, Task<bool>> isItemDeletedAsync, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions)
    {
        return await ShouldIgnoreIncomingMessageDueToDeleteConflictCore(syncMessage, isItemDeletedAsync, conflictDefinitions);
    }

    public static bool ShouldIgnoreIncomingMessageDueToDeleteConflict(
        SyncableMessage syncMessage, Func<string, bool> isItemDeleted, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions)
    {
        // Sync-over-async wrapper around the core
        return ShouldIgnoreIncomingMessageDueToDeleteConflictCore(
            syncMessage, (string id) => Task.FromResult(isItemDeleted(id)), conflictDefinitions).GetAwaiter().GetResult();
    }

    private static async Task<bool> ShouldIgnoreIncomingMessageDueToDeleteConflictCore(
        SyncableMessage syncMessage, Func<string, Task<bool>> isItemDeletedAsync, IReadOnlyDictionary<Type, ConflictDefinition> conflictDefinitions)
    {
        if (conflictDefinitions != null)
        {
            DateTime startTime = DateTime.Now;
            bool flag = syncMessage.UpdateType == eUpdateType.Update || syncMessage.UpdateType == eUpdateType.Delete;
            if (flag)
            {
                flag = await isItemDeletedAsync(syncMessage.ItemId);
            }
            if (flag)
            {
                return true; // the item itself was deleted → ignore incoming
            }
            Type syncMessageType = syncMessage.GetType();
            if (conflictDefinitions.TryGetValue(syncMessageType, out var value))
            {
                // Items that delete-match on the other message's ItemId
                List<ConflictDefinitionItem> list = value.Items
                    .Where((ConflictDefinitionItem x) => x.UpdateType == eUpdateType.Delete && x.OtherMessageProperty == "ItemId")
                    .ToList();
                _logger.DebugExt("{141848B6-7A35-484B-8F93-FC4EC7B3F03B}",
                    "Located {Count} delete conflict items for incoming {SyncMessageType}", list.Count, syncMessageType);

                foreach (ConflictDefinitionItem item in list)
                {
                    IPayloadProperty prop = GetProperty(item.MessageProperty, syncMessage);
                    _logger.DebugExt("{141848B6-7A35-484B-8F93-FC4EC7B3F03B}",
                        "Property value of {ItemMessageProperty} is {PropValue}",
                        item.MessageProperty, (prop == null) ? "NULL" : prop.Value);

                    if (prop == null || string.IsNullOrEmpty(prop.Value) || !(await isItemDeletedAsync(prop.Value)))
                    {
                        continue; // referenced item not deleted → not a delete conflict
                    }
                    if (item.DeleteConflictAction == eDeleteConflictAction.IgnoreNonDelete)
                    {
                        _logger.DebugExt("{3E752D4A-1FAA-49C1-BBFA-4FEF74F32558}",
                            "Ignoring syncable message: {SyncableMessage}", syncMessage);
                        return true;
                    }
                    _logger.DebugExt("{7E4FDB38-4856-45C9-AC91-984C8EEED1DB}",
                        "Handling conflict for {SyncMessageType}", syncMessageType);
                    syncMessage.Payload.RemoveConflictProperty(prop);

                    // Dump remaining payload properties for diagnostics
                    if (syncMessage.Payload is PropertyPayload propertyPayload)
                    {
                        foreach (PayloadProperty property in propertyPayload.Properties)
                        {
                            _logger.DebugExt("{DFEC58B7-E14F-4A86-B5B4-DDBF34EAA284}",
                                "{ProppName} {ProppValue}", property.Key, property.Value);
                        }
                    }
                    else
                    {
                        if (!(syncMessage.Payload is CustomPropertyPayload customPropertyPayload))
                        {
                            continue;
                        }
                        foreach (PayloadProperty property2 in customPropertyPayload.Properties)
                        {
                            _logger.DebugExt("{E13E88DF-0AEA-46BA-93C5-AE3D19172F33}",
                                "{ProppName} {ProppValue}", property2.Key, property2.Value);
                        }
                        foreach (SyncPayloadCustomProperty customProperty in customPropertyPayload.CustomProperties)
                        {
                            _logger.DebugExt("{F5FEDE28-65D1-4ED2-820C-3004E3122D4E}",
                                "{ProppId} {ProppValue}", customProperty.Key, customProperty.Value);
                        }
                    }
                }
            }
            DateTime now = DateTime.Now;
            _logger.DebugExt("{44FDCF8F-DC2D-4A52-9A77-F3DB8A2D1261}",
                "Time for server conflict resolution: {TotalSeconds}", (now - startTime).TotalSeconds);
        }
        return false;
    }

    public static IPayloadProperty GetProperty(string propertyName, SyncableMessage message)
    {
        if (propertyName == "ItemId")
        {
            return new PayloadProperty("ItemId", message.ItemId);
        }
        if (message.Payload is CustomPropertyPayload customPropertyPayload)
        {
            if (customPropertyPayload.CustomProperties != null)
            {
                SyncPayloadCustomProperty syncPayloadCustomProperty = customPropertyPayload.CustomProperties
                    .FirstOrDefault((SyncPayloadCustomProperty x) => x.Key == propertyName);
                if (syncPayloadCustomProperty != null)
                {
                    return syncPayloadCustomProperty;
                }
            }
            if (customPropertyPayload.Properties != null)
            {
                PayloadProperty payloadProperty = customPropertyPayload.Properties
                    .FirstOrDefault((PayloadProperty x) => x.Key == propertyName);
                if (payloadProperty != null)
                {
                    return payloadProperty;
                }
            }
        }
        else if (message.Payload is PropertyPayload propertyPayload)
        {
            PayloadProperty payloadProperty2 = propertyPayload.Properties
                .FirstOrDefault((PayloadProperty x) => x.Key == propertyName);
            if (payloadProperty2 != null)
            {
                return payloadProperty2;
            }
        }
        if (PropertyHelper.ClassContainsProperty(message.Payload.GetType(), propertyName))
        {
            return new PayloadProperty(propertyName, PropertyHelper.GetPropertyStringValue(message.Payload, propertyName));
        }
        return null;
    }
}
```

**RE notes**:
- Delete-conflict core: if incoming message is Update/Delete and the item id itself is already deleted → ignore. Otherwise, for each `ConflictDefinitionItem` with `UpdateType == Delete` and `OtherMessageProperty == "ItemId"`, resolve `MessageProperty` on the incoming payload; if that referenced id is also deleted, either ignore the message (`IgnoreNonDelete`) or strip the conflict property from the payload (`RemoveConflictAction` path — `RemoveConflictProperty`) and continue. Non-`IgnoreNonDelete` actions fall through without returning true (i.e., message is processed with property removed).
- The sync overload wraps async with `Task.FromResult` + `GetAwaiter().GetResult()` (sync-over-async).
- `GetProperty` mirrors `ClientConflictResolver.HasProperty` resolution order: literal `"ItemId"` → `CustomPropertyPayload.CustomProperties` → `CustomPropertyPayload.Properties` → `PropertyPayload.Properties` → reflection stringification via `PropertyHelper`.

---

## 4. `HHDev.Sync.Core.Messages.SyncMessageBuilder`

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public class` (fluent builder)

### Signatures

```csharp
public Guid SenderId { get; protected set; }
public Guid TargetId { get; protected set; }
public string ItemId { get; protected set; }
public Guid SyncOperationId { get; protected set; }
public DateTime? SyncOperationTime { get; protected set; }
public Guid UserId { get; protected set; }
public Guid AccountId { get; protected set; }
public Guid SourceDatabaseId { get; protected set; }

public static SyncMessageBuilder NewMessage();
public SyncMessageBuilder WithSenderId(Guid aSenderId);
public SyncMessageBuilder WithAccountId(Guid anAccountId);
public SyncMessageBuilder WithTargetId(Guid aTargetId);
public SyncMessageBuilder WithItemId(string anItemId);
public SyncMessageBuilder WithOperationId(Guid aSyncOperationid);
public SyncMessageBuilder WithUserId(Guid aUserId);
public SyncMessageBuilder WithOperationTime(DateTime aSyncOperationTime);
public SyncMessageBuilder WithSourceDatabaseId(Guid sourceDatabaseId);
```

### Decompiled C#

```csharp
using System;

namespace HHDev.Sync.Core.Messages;

public class SyncMessageBuilder
{
    public Guid SenderId { get; protected set; }
    public Guid TargetId { get; protected set; }
    public string ItemId { get; protected set; }
    public Guid SyncOperationId { get; protected set; }
    public DateTime? SyncOperationTime { get; protected set; }
    public Guid UserId { get; protected set; }
    public Guid AccountId { get; protected set; }
    public Guid SourceDatabaseId { get; protected set; }

    public static SyncMessageBuilder NewMessage()
    {
        return new SyncMessageBuilder();
    }

    public SyncMessageBuilder WithSenderId(Guid aSenderId)
    {
        SenderId = aSenderId;
        return this;
    }

    public SyncMessageBuilder WithAccountId(Guid anAccountId)
    {
        AccountId = anAccountId;
        return this;
    }

    public SyncMessageBuilder WithTargetId(Guid aTargetId)
    {
        TargetId = aTargetId;
        return this;
    }

    public SyncMessageBuilder WithItemId(string anItemId)
    {
        ItemId = anItemId;
        return this;
    }

    public SyncMessageBuilder WithOperationId(Guid aSyncOperationid)
    {
        SyncOperationId = aSyncOperationid;
        return this;
    }

    public SyncMessageBuilder WithUserId(Guid aUserId)
    {
        UserId = aUserId;
        return this;
    }

    public SyncMessageBuilder WithOperationTime(DateTime aSyncOperationTime)
    {
        SyncOperationTime = aSyncOperationTime;
        return this;
    }

    public SyncMessageBuilder WithSourceDatabaseId(Guid sourceDatabaseId)
    {
        SourceDatabaseId = sourceDatabaseId;
        return this;
    }
}
```

**RE notes**: pure fluent setter bag; no validation. `WithOperationTime` takes non-nullable `DateTime` into a `DateTime?` property.

---

## 5. `HHDev.Sync.Core.SyncGlobals`

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public static class`

### Decompiled C#

```csharp
using System;
using System.Text;
using HHDev.Sync.Core.Messages.Interfaces;

namespace HHDev.Sync.Core;

public static class SyncGlobals
{
    public const string DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss.FFFFFFF";

    public const string MSG_DELIMITER = "<EOM>";

    public static byte[] DelimiterBytes = Encoding.UTF8.GetBytes("<EOM>");

    public const string HEARTBEAT_STR = "heartbeat";

    public const string HEARTBEAT_MSG = "heartbeat<EOM>";

    public static byte[] HeartbeatBytes = Encoding.UTF8.GetBytes("heartbeat");

    public static byte[] HeartbeatMessageBytes = Encoding.UTF8.GetBytes("heartbeat<EOM>");

    public const string SYNC_DATA_SELECTION_TABLE_NAME = "SyncDataSelection";

    public const string GRACEFUL_SHUTDOWN_HANDSHAKE_FLAG = "GracefulShutdownHandshake";

    public static Guid ServerMessageId => Guid.Parse("dbceaee9-07fa-4561-a09f-35442060d066");

    public static IMessageSerializer MessageSerializer { get; set; }
}
```

**RE notes**:
- Wire framing: UTF-8 `<EOM>` delimiter; heartbeat is the literal string `heartbeat` (optionally with delimiter appended).
- Fixed server identity GUID: `dbceaee9-07fa-4561-a09f-35442060d066`.
- `MessageSerializer` is a mutable static service-locator-style slot (set at startup).

---

## 6. `HHDev.DataManagement.Client.Core.Components.ExpressionProcessing.Nodes.Functions.FunctionNodeDefinitionsContainer`

**Assembly**: `HHDev.DataManagement.Client.Core.dll`
**Kind**: `public static class`

### Signatures

```csharp
private static bool _isBuilt;
public static Dictionary<string, FunctionNodeDefinition> FunctionDefinitions { get; }
static FunctionNodeDefinitionsContainer();  // cctor: init + Build()
private static void Build();
```

### Decompiled C#

```csharp
using System.Collections.Generic;

namespace HHDev.DataManagement.Client.Core.Components.ExpressionProcessing.Nodes.Functions;

public static class FunctionNodeDefinitionsContainer
{
    private static bool _isBuilt;

    public static Dictionary<string, FunctionNodeDefinition> FunctionDefinitions { get; }

    static FunctionNodeDefinitionsContainer()
    {
        _isBuilt = false;
        FunctionDefinitions = new Dictionary<string, FunctionNodeDefinition>();
        Build();
    }

    private static void Build()
    {
        if (!_isBuilt)
        {
            GeneratedFunctionNodeDefinitionsContainer.Build(FunctionDefinitions);
            _isBuilt = true;
        }
    }
}
```

**RE notes**: static lazy registry of expression-language function nodes; population is delegated to `GeneratedFunctionNodeDefinitionsContainer.Build(dict)` (generated code, same namespace — decompile that for the full function catalog).

---

## Method coverage summary

| # | Type | Methods in doc |
|---|---|---|
| 1 | PluginManager | LoadPlugins, RegisterPlugins, GetPluginTypeRegistrations, GetPluginViewModelsToMap, GetSplashFromPlugin, GetFlatModelInitializationDefinitions, GetCurrentPluginInfos, RegisterCustomScopeDefinitionContainers (+2 properties) |
| 2 | ClientConflictResolver | IsConflict, HasProperty, GetConflictDefinitionItem (priv), GetConflictType (priv) |
| 3 | ConflictResolutionFunctions | ShouldIgnoreIncomingMessageDueToDeleteConflictAsync, …DueToDeleteConflict (sync), …DueToDeleteConflictCore (priv), GetProperty |
| 4 | SyncMessageBuilder | NewMessage + 8 With* fluent setters (+8 properties) |
| 5 | SyncGlobals | constants + static fields/properties (no methods) |
| 6 | FunctionNodeDefinitionsContainer | static cctor, Build (priv) (+FunctionDefinitions property) |

## Limitations

- Decompiled with ILSpy **9.1.0.7988** (tool itself reports 11.2.0 available); output is ILSpy reconstruction, not original source — compiler-generated names, LINQ lambda shapes, and string-switch lowering may differ from shipped source.
- PDBs / source link not available; no original line numbers.
- The requested `…Client.Core.PluginFramework.Interfaces.PluginManager` FQN does not exist; the real class is `…Client.Wpf.PluginFramework.PluginManager` (documented above).
- Dependent helper types (`HhdmPluginFrameworkHelpers`, `GeneratedFunctionNodeDefinitionsContainer`, `ConflictDefinition(Item)`, `SyncableMessage`, `PropertyHelper`) were not decompiled here — needed for full behavior tracing.
- `FunctionNodeDefinitionsContainer.Build` decompiles to a trivial guard; actual function catalog lives in generated sibling `GeneratedFunctionNodeDefinitionsContainer`.

# 附加反编译（第二批）

## HHDev.Sync.Client.MessageDistributor

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using HHDev.Core.NETStandard.Communication;
using HHDev.Core.NETStandard.Logging;
using HHDev.Sync.Core;
using HHDev.Sync.Core.Messages;
using HHDev.Sync.Core.Messages.Interfaces;
using NLog;

namespace HHDev.Sync.Client;

public class MessageDistributor : IMessageDistributor, IRemoteMessageReceiver
{
	protected static readonly ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

	protected readonly SynchronizationContext _uiSyncContext;

	protected readonly Queue<IMessage> _messageQueue;

	private Queue<IMessage> _messageQueueProcessed;

	private readonly Queue<IMessage> _remoteMessageQueue;

	private readonly Lock _remoteMessageQueueLock = new Lock();

	protected readonly SemaphoreSlim _messageQueueSemaphore = new SemaphoreSlim(1, 1);

	private readonly Lock _messageQueueProcessedLock = new Lock();

	protected readonly Lock _messageReceiverLock = new Lock();

	protected readonly List<IMessageReceiver> _messageReceivers;

	private readonly IRemoteMessageManager _remoteMessageManager;

	protected readonly Timer _messageQueueTimer;

	protected readonly Timer _messageQueueProcessedTimer;

	protected readonly IMessageProcessor _messageProcessor;

	public Guid Id { get; } = Guid.NewGuid();

	public MessageDistributor(IMessageProcessor aMessageProcessor, IRemoteMessageManager aRemoteMessageManager, SynchronizationContext uiSyncContext = null)
	{
		_uiSyncContext = uiSyncContext;
		_messageProcessor = aMessageProcessor;
		_messageProcessor.DatabaseError += _messageProcessor_DatabaseError;
		_messageReceivers = new List<IMessageReceiver>();
		_remoteMessageManager = aRemoteMessageManager;
		_remoteMessageManager.DatabaseError += _messageProcessor_DatabaseError;
		_messageProcessor.ProcessedMessages += _messageProcessor_ProcessedMessages;
		_messageQueue = new Queue<IMessage>();
		_messageQueueProcessed = new Queue<IMessage>();
		_remoteMessageQueue = new Queue<IMessage>();
		_messageQueueTimer = new Timer(_messageQueueTimer_Tick, null, 100, -1);
		_messageQueueProcessedTimer = new Timer(_messageQueueProcessedTimer_Tick, null, 100, -1);
		_remoteMessageManager.ConnectionStatusChanged += _remoteMessageManager_ConnectionStatusChanged;
	}

	protected virtual void _messageProcessor_DatabaseError(object sender, DatabaseErrorEventArgs e)
	{
		using (_messageReceiverLock.EnterScope())
		{
			_messageReceivers.RemoveAll((IMessageReceiver x) => x.RequestDeregistration);
		}
		DatabaseErrorMessage item = new DatabaseErrorMessage(Id, e.ErrorCode, e.Explanation);
		BroadcastMessages(new global::<>z__ReadOnlySingleElementList<IMessage>(item));
	}

	public void ReceiveRemoteMessage(IMessage msg)
	{
		_messageQueueSemaphore.Wait();
		try
		{
			_messageQueue.Enqueue(msg);
		}
		finally
		{
			_messageQueueSemaphore.Release();
		}
	}

	protected virtual void _messageQueueTimer_Tick(object state)
	{
		GetLocalBroadcastMessagesFromMessageReceivers(forceUnregister: false);
		ProcessMessagesInMessageQueue();
		_messageQueueTimer.Change(100, -1);
	}

	private void ProcessMessagesInMessageQueue()
	{
		_messageQueueSemaphore.Wait();
		try
		{
			if (_messageQueue.Count <= 0)
			{
				return;
			}
			IMessageProcessor messageProcessor = _messageProcessor;
			Queue<IMessage> messageQueue = _messageQueue;
			int num = 0;
			IMessage[] array = new IMessage[messageQueue.Count];
			foreach (IMessage item in messageQueue)
			{
				array[num] = item;
				num++;
			}
			messageProcessor.ProcessMessages(new global::<>z__ReadOnlyArray<IMessage>(array));
			_messageQueue.Clear();
		}
		finally
		{
			_messageQueueSemaphore.Release();
		}
	}

	protected void GetLocalBroadcastMessagesFromMessageReceivers(bool forceUnregister)
	{
		using (_messageReceiverLock.EnterScope())
		{
			if (forceUnregister)
			{
				_messageReceivers.ForEach(delegate(IMessageReceiver x)
				{
					x.RequestDeregistration = true;
				});
				_messageReceivers.Clear();
				return;
			}
			_messageReceivers.RemoveAll((IMessageReceiver x) => x.RequestDeregistration);
			foreach (IMessageReceiver messageReceiver in _messageReceivers)
			{
				List<IMessage> localBroadcastMessages = messageReceiver.GetLocalBroadcastMessages();
				if (localBroadcastMessages == null || localBroadcastMessages.Count <= 0)
				{
					continue;
				}
				_messageQueueSemaphore.Wait();
				try
				{
					foreach (IMessage item in localBroadcastMessages)
					{
						_messageQueue.Enqueue(item);
					}
				}
				finally
				{
					_messageQueueSemaphore.Release();
				}
			}
		}
	}

	public void Close()
	{
		GetLocalBroadcastMessagesFromMessageReceivers(forceUnregister: true);
		ProcessMessagesInMessageQueue();
	}

	protected static bool VerifyTargetReceiver(IMessageReceiver aReceiver, IMessage aMessage)
	{
		if (aReceiver.Id != aMessage.SenderId && (aMessage.BlacklistedIds == null || aMessage.BlacklistedIds.Length == 0 || !aMessage.BlacklistedIds.Contains(aReceiver.Id)) && (aMessage.TargetControlIds == null || aMessage.TargetControlIds.Length == 0 || aMessage.TargetControlIds.Contains(aReceiver.Id)))
		{
			return true;
		}
		return false;
	}

	protected virtual void HandleMissingUiSyncContext(IReadOnlyCollection<IMessageReceiver> aListOfMessageReceivers, IReadOnlyCollection<IMessage> aListOfMessages)
	{
	}

	private void BroadcastOnUIThread(IReadOnlyCollection<IMessageReceiver> aListOfMessageReceivers, IReadOnlyCollection<IMessage> aListOfMessages)
	{
		if (_uiSyncContext == null)
		{
			HandleMissingUiSyncContext(aListOfMessageReceivers, aListOfMessages);
			return;
		}
		foreach (IMessage aListOfMessage in aListOfMessages)
		{
			foreach (IMessageReceiver aListOfMessageReceiver in aListOfMessageReceivers)
			{
				if (VerifyTargetReceiver(aListOfMessageReceiver, aListOfMessage))
				{
					try
					{
						SendToReceiver(aListOfMessageReceiver, aListOfMessage);
					}
					catch (Exception exception)
					{
						_logger.Error(exception, "{E557E22D-4FE2-47DF-81A8-BDEAF1731014}", "Error ReceiveMessage in BroadcastOnUIThread");
						throw;
					}
				}
			}
		}
	}

	protected void SendToReceiver(IMessageReceiver receiver, IMessage message)
	{
		(IMessageReceiver, IMessage) tuple = (receiver, message);
		_uiSyncContext.Send(delegate(object? state)
		{
			(IMessageReceiver, IMessage) tuple2 = ((IMessageReceiver, IMessage))state;
			tuple2.Item1.ReceiveMessage(tuple2.Item2);
		}, tuple);
	}

	protected virtual void BroadcastOnBgThread(IReadOnlyCollection<IMessageReceiver> aListOfMessageReceivers, IReadOnlyCollection<IMessage> aListOfMessages)
	{
		foreach (IMessageReceiver aListOfMessageReceiver in aListOfMessageReceivers)
		{
			foreach (IMessage aListOfMessage in aListOfMessages)
			{
				if (VerifyTargetReceiver(aListOfMessageReceiver, aListOfMessage))
				{
					aListOfMessageReceiver.ReceiveMessage(aListOfMessage);
				}
			}
		}
	}

	protected IReadOnlyDictionary<bool, IReadOnlyCollection<IMessageReceiver>> GetGroupedMessageReceivers()
	{
		using (_messageReceiverLock.EnterScope())
		{
			_messageReceivers.RemoveAll((IMessageReceiver x) => x.RequestDeregistration);
			return (from m in _messageReceivers
				group m by m.ReceiveMessagesOnUIThread).ToDictionary((Func<IGrouping<bool, IMessageReceiver>, bool>)((IGrouping<bool, IMessageReceiver> x) => x.Key), (Func<IGrouping<bool, IMessageReceiver>, IReadOnlyCollection<IMessageReceiver>>)delegate(IGrouping<bool, IMessageReceiver> x)
			{
				List<IMessageReceiver> list = new List<IMessageReceiver>();
				list.AddRange(x);
				return new global::<>z__ReadOnlyList<IMessageReceiver>(list);
			});
		}
	}

	private void BroadcastMessages(IReadOnlyCollection<IMessage> messages)
	{
		if (messages.Count != 0)
		{
			IReadOnlyDictionary<bool, IReadOnlyCollection<IMessageReceiver>> groupedMessageReceivers = GetGroupedMessageReceivers();
			if (groupedMessageReceivers.TryGetValue(key: true, out var value))
			{
				BroadcastOnUIThread(value, messages);
			}
			if (groupedMessageReceivers.TryGetValue(key: false, out var value2))
			{
				BroadcastOnBgThread(value2, messages);
			}
		}
	}

	protected virtual void _messageQueueProcessedTimer_Tick(object state)
	{
		if (TryGetLocalMessages(out var localMessages))
		{
			BroadcastMessages(localMessages);
			_messageQueueProcessedTimer.Change(100, -1);
		}
	}

	protected bool TryGetLocalMessages(out IReadOnlyCollection<IMessage> localMessages)
	{
		using (_messageQueueProcessedLock.EnterScope())
		{
			if (_messageQueueProcessed.Count == 0)
			{
				_messageQueueProcessedTimer.Change(100, -1);
				localMessages = null;
				return false;
			}
			List<IMessage> source = _messageQueueProcessed.ToList();
			List<IMessage> list = source.Where((IMessage m) => m.TargetId == SyncGlobals.ServerMessageId).ToList();
			List<IMessage> list2 = new List<IMessage>();
			list2.AddRange(source.Where((IMessage m) => m.TargetId != SyncGlobals.ServerMessageId));
			localMessages = new global::<>z__ReadOnlyList<IMessage>(list2);
			foreach (IMessage item in list)
			{
				using (_remoteMessageQueueLock.EnterScope())
				{
					_remoteMessageQueue.Enqueue(item);
				}
			}
			_messageQueueProcessed.Clear();
		}
		return true;
	}

	private void _messageProcessor_ProcessedMessages(object sender, ProcessedMessagesEventArgs e)
	{
		using (_messageQueueProcessedLock.EnterScope())
		{
			foreach (IMessage processedMessage in e.ProcessedMessages)
			{
				_messageQueueProcessed.Enqueue(processedMessage);
			}
		}
	}

	public void RegisterMessageReceiver(IMessageReceiver aMessageReceiver)
	{
		using (_messageReceiverLock.EnterScope())
		{
			if (_messageReceivers.Contains(aMessageReceiver))
			{
				return;
			}
			List<IMessage> initiliazationMessages = aMessageReceiver.GetInitiliazationMessages();
			foreach (IMessageReceiver messageReceiver in _messageReceivers)
			{
				if (initiliazationMessages != null)
				{
					foreach (IMessage item in initiliazationMessages)
					{
						messageReceiver.ReceiveMessage(item);
					}
				}
				List<IMessage> initiliazationMessages2 = messageReceiver.GetInitiliazationMessages();
				if (initiliazationMessages2 == null)
				{
					continue;
				}
				foreach (IMessage item2 in initiliazationMessages2)
				{
					aMessageReceiver.ReceiveMessage(item2);
				}
			}
			List<IMessage> initializationMessages = _messageProcessor.GetInitializationMessages();
			if (initializationMessages != null && initializationMessages.Count > 0)
			{
				foreach (IMessage item3 in initializationMessages)
				{
					aMessageReceiver.ReceiveMessage(item3);
				}
			}
			_messageReceivers.Add(aMessageReceiver);
		}
	}

	private void _remoteMessageManager_ConnectionStatusChanged(object sender, ConnectionStatusChangedEventArgs e)
	{
		using (_remoteMessageQueueLock.EnterScope())
		{
			_remoteMessageQueue.Clear();
		}
		using (_messageQueueProcessedLock.EnterScope())
		{
			List<IMessage> list = new List<IMessage>();
			list.AddRange(_messageQueueProcessed.Where((IMessage x) => x.TargetId != SyncGlobals.ServerMessageId));
			_messageQueueProcessed = new Queue<IMessage>(new global::<>z__ReadOnlyList<IMessage>(list));
		}
		_messageProcessor.HandleReconnect(e);
	}

	public List<IMessage> GetRemoteBroadcastMessages()
	{
		using (_remoteMessageQueueLock.EnterScope())
		{
			List<IMessage> result = _remoteMessageQueue.ToList();
			_remoteMessageQueue.Clear();
			return result;
		}
	}

	public void ClearIncomingMessagesToProcess()
	{
		int num = EnqueueClientDisconnectedMessage();
		while (num > 0)
		{
			Thread.Sleep(1000);
			_messageQueueSemaphore.Wait();
			try
			{
				num = _messageQueue.Count;
			}
			finally
			{
				_messageQueueSemaphore.Release();
			}
		}
		_messageProcessor.ClearIncomingMessagesToProcess();
	}

	public virtual Task ClearIncomingMessagesToProcessAsync()
	{
		ClearIncomingMessagesToProcess();
		return Task.CompletedTask;
	}

	protected int EnqueueClientDisconnectedMessage()
	{
		_messageQueueSemaphore.Wait();
		try
		{
			_messageQueue.Enqueue(new ClientDisconnectedMessage());
			return _messageQueue.Count;
		}
		finally
		{
			_messageQueueSemaphore.Release();
		}
	}

	public IReadOnlyCollection<T> GetRegisteredMessageReceivers<T>()
	{
		using (_messageReceiverLock.EnterScope())
		{
			List<T> list = new List<T>();
			list.AddRange(_messageReceivers.OfType<T>());
			return new global::<>z__ReadOnlyList<T>(list);
		}
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Client.RemoteMessageManagerBase

```csharp
using System;
using System.Collections.Generic;
using System.Threading;
using HHDev.Core.NETStandard.Communication;
using HHDev.Core.NETStandard.Logging;
using HHDev.Core.NETStandard.Monitoring;
using HHDev.Sync.Core;
using HHDev.Sync.Core.Messages.Interfaces;
using NLog;

namespace HHDev.Sync.Client;

public abstract class RemoteMessageManagerBase
{
	protected static ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

	protected Lock _messageReceiverLock = new Lock();

	protected List<IRemoteMessageReceiver> _msgReceivers;

	protected Timer _msgProcessingTimer;

	protected TimerMonitor _timerMonitor;

	protected bool _authenticatedWithServer;

	protected bool _serverMessagingDisabled;

	protected Func<int> _batchSizeFunc;

	protected ISyncClientAuthManager _syncClientAuthManager;

	protected IClientSocketWrapper<IMessage> _clientSocketWrapper;

	protected bool _storeUserIdAndAccountIds;

	protected ISyncClient _syncClient;

	public eSocketConnectionStatus ConnectionStatus => _clientSocketWrapper?.ConnectionStatus ?? eSocketConnectionStatus.NotConnected;

	public ISyncClientAuthManager SyncClientAuthManager => _syncClientAuthManager;

	public event EventHandler<DatabaseErrorEventArgs> DatabaseError;

	public event EventHandler<ConnectionStatusChangedEventArgs> ConnectionStatusChanged;

	protected RemoteMessageManagerBase(ISyncClient syncClient)
	{
		_msgReceivers = new List<IRemoteMessageReceiver>();
		_syncClient = syncClient;
	}

	protected virtual ClientSocket2WrapperInitializationObject<IMessage> StartInternal(RemoteMessageManagerOptions options)
	{
		_serverMessagingDisabled = options.ServerMessagingDisabled;
		_batchSizeFunc = options.BatchSizeFunc;
		_storeUserIdAndAccountIds = options.StoreUserIdAndAccountIds;
		_syncClientAuthManager = options.SyncClientAuthManager;
		_syncClientAuthManager.RequestSendUserAuthMessage += _syncClientAuthManager_RequestSendUserAuthMessage;
		_syncClientAuthManager.RequestSendMessage += _syncClientAuthManager_RequestSendMessage;
		return new ClientSocket2WrapperInitializationObject<IMessage>(options.SocketConnectionInformationFunc, options.TimeoutDuration, resetConnectionIfMessageDeserializationFailure: true, SyncGlobals.HeartbeatBytes, SyncGlobals.DelimiterBytes, new HHDMGzippedJsonSerializer());
	}

	protected void SetUpTimer(TimerCallback timerCallback)
	{
		if (!_serverMessagingDisabled)
		{
			_msgProcessingTimer = new Timer(timerCallback, null, 100, -1);
			_timerMonitor = new TimerMonitor(GetType().Name + " msgProcessingTimer", 60000);
		}
	}

	protected void RaiseDatabaseError(eDatabaseError errorCode = eDatabaseError.Unhandled, string explanation = null)
	{
		this.DatabaseError?.Invoke(this, new DatabaseErrorEventArgs(errorCode, explanation));
	}

	protected abstract void _syncClientAuthManager_RequestSendUserAuthMessage(object sender, RequestSendAuthMessageEventArgs e);

	protected virtual void _syncClientAuthManager_RequestSendMessage(object sender, RequestSendMessageEventArgs e)
	{
	}

	protected virtual void SocketWrapper_ConnectionStatusChanged(object sender, ConnectionStatusChangedEventArgs e)
	{
		this.ConnectionStatusChanged?.Invoke(this, e);
	}

	public void RegisterRemoteMessageReceiver(IRemoteMessageReceiver aMessageReceiver)
	{
		using (_messageReceiverLock.EnterScope())
		{
			if (!_msgReceivers.Contains(aMessageReceiver))
			{
				_msgReceivers.Add(aMessageReceiver);
			}
		}
	}

	public void RemoveRemoteMessageReceiver(IRemoteMessageReceiver aMessageReceiver)
	{
		using (_messageReceiverLock.EnterScope())
		{
			_msgReceivers.Remove(aMessageReceiver);
		}
	}

	protected bool CanPushRemoteMessages(out ReadOnlySpan<char> reason)
	{
		if (_clientSocketWrapper.ConnectionStatus != eSocketConnectionStatus.Connected)
		{
			reason = $"_clientSocket2Wrapper.ConnectionStatus = {_clientSocketWrapper.ConnectionStatus}".AsSpan();
			return false;
		}
		if (!_authenticatedWithServer)
		{
			reason = "_authenticatedWithServer is false".AsSpan();
			return false;
		}
		if (!_syncClientAuthManager.IsAuthValid)
		{
			reason = "_syncClientAuthManager.IsAuthValid is false".AsSpan();
			return false;
		}
		reason = null;
		return true;
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Client.SyncClient

```csharp
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace HHDev.Sync.Client;

public class SyncClient : ISyncClient, INotifyPropertyChanged
{
	[CompilerGenerated]
	private Guid[] <AccountIds>k__BackingField;

	[CompilerGenerated]
	private Guid <UserId>k__BackingField;

	[CompilerGenerated]
	private Guid <DatabaseId>k__BackingField;

	[CompilerGenerated]
	private string <TargetServer>k__BackingField;

	[CompilerGenerated]
	private int <TargetPort>k__BackingField;

	public Guid[] AccountIds
	{
		[CompilerGenerated]
		get
		{
			return <AccountIds>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!object.Equals(<AccountIds>k__BackingField, value))
			{
				<AccountIds>k__BackingField = value;
				<>OnPropertyChanged(<>PropertyChangedEventArgs.AccountIds);
			}
		}
	}

	public Guid UserId
	{
		[CompilerGenerated]
		get
		{
			return <UserId>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!(<UserId>k__BackingField == value))
			{
				<UserId>k__BackingField = value;
				<>OnPropertyChanged(<>PropertyChangedEventArgs.UserId);
			}
		}
	}

	public Guid DatabaseId
	{
		[CompilerGenerated]
		get
		{
			return <DatabaseId>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!(<DatabaseId>k__BackingField == value))
			{
				<DatabaseId>k__BackingField = value;
				<>OnPropertyChanged(<>PropertyChangedEventArgs.DatabaseId);
			}
		}
	}

	public string TargetServer
	{
		[CompilerGenerated]
		get
		{
			return <TargetServer>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!string.Equals(<TargetServer>k__BackingField, value, StringComparison.Ordinal))
			{
				<TargetServer>k__BackingField = value;
				<>OnPropertyChanged(<>PropertyChangedEventArgs.TargetServer);
			}
		}
	}

	public int TargetPort
	{
		[CompilerGenerated]
		get
		{
			return <TargetPort>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (<TargetPort>k__BackingField != value)
			{
				<TargetPort>k__BackingField = value;
				<>OnPropertyChanged(<>PropertyChangedEventArgs.TargetPort);
			}
		}
	}

	[GeneratedCode("PropertyChanged.Fody", "4.1.0.0")]
	[field: NonSerialized]
	public event PropertyChangedEventHandler PropertyChanged;

	[GeneratedCode("PropertyChanged.Fody", "4.1.0.0")]
	[DebuggerNonUserCode]
	protected void <>OnPropertyChanged(PropertyChangedEventArgs eventArgs)
	{
		this.PropertyChanged?.Invoke(this, eventArgs);
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Client.HHDMGzippedJsonSerializer

```csharp
using System;
using HHDev.Core.NETStandard;
using HHDev.Core.NETStandard.Communication;
using HHDev.Core.NETStandard.Logging;
using HHDev.Sync.Core;
using HHDev.Sync.Core.Messages.Interfaces;
using NLog;

namespace HHDev.Sync.Client;

public class HHDMGzippedJsonSerializer : ISocketMessageSerializer<IMessage>
{
	private static readonly MetricsLogger _metrics = LogManager.LogFactory.GetLogger<MetricsLogger>("MetricsLogger");

	public IMessage Deserialize(string input)
	{
		return SyncGlobals.MessageSerializer.DeserializeCompressedMessage(Convert.FromBase64String(input));
	}

	public IMessage Deserialize(ReadOnlyMemory<byte> input)
	{
		return SyncGlobals.MessageSerializer.DeserializeCompressedMessage(input);
	}

	public IReadOnlyMemoryOwner<byte> Serialize(IMessage input, ReadOnlySpan<byte> delimiter)
	{
		return SyncGlobals.MessageSerializer.SerializeAndCompressMessage(input, delimiter);
	}

	public IReadOnlyMemoryOwner<byte> Serialize(IMessage input, ReadOnlyMemory<byte> delimiter)
	{
		return SyncGlobals.MessageSerializer.SerializeAndCompressMessage(input, delimiter.Span);
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Core.Messages.SystemTextJsonMessageSerializer

```csharp
using System;
using System.Buffers;
using System.Buffers.Text;
using System.IO;
using System.IO.Compression;
using System.Text.Json;
using HHDev.Core.NETStandard;
using HHDev.Core.NETStandard.Extensions;
using HHDev.Core.NETStandard.Services.Interfaces;
using HHDev.Sync.Core.Messages.Interfaces;
using HHDev.Sync.Core.Messages.Payloads;
using Microsoft.IO;

namespace HHDev.Sync.Core.Messages;

public class SystemTextJsonMessageSerializer : IMessageSerializer
{
	private readonly IMemoryStreamManagerService<RecyclableMemoryStream> _memoryStreamManagerService;

	private readonly IMessageSerializerOptions _messageSerializerOptions;

	private static readonly JsonWriterOptions _defaultWriterOptions = new JsonWriterOptions
	{
		Indented = false
	};

	public SystemTextJsonMessageSerializer(IMessageSerializerOptions messageSerializerOptions, IMemoryStreamManagerService<RecyclableMemoryStream> memoryStreamManagerService)
	{
		_messageSerializerOptions = messageSerializerOptions;
		_memoryStreamManagerService = memoryStreamManagerService;
	}

	public IReadOnlyMemoryOwner<byte> SerializeMessage(IMessage message)
	{
		using Stream memoryStream = SerializeMessageToStream(message);
		return memoryStream.ToPooledMemoryOwner();
	}

	private Stream SerializeMessageToStream(IMessage message)
	{
		RecyclableMemoryStream stream = _memoryStreamManagerService.GetStream();
		using Utf8JsonWriter utf8JsonWriter = new Utf8JsonWriter((Stream)stream, _defaultWriterOptions);
		SerializeMessage(utf8JsonWriter, message);
		utf8JsonWriter.Flush();
		return stream;
	}

	public void SerializeMessage(Utf8JsonWriter writer, IMessage message)
	{
		ICustomSerializer customSerializer = _messageSerializerOptions.GetCustomSerializer(message.GetType());
		if (customSerializer != null)
		{
			customSerializer.Serialize(writer, message, _messageSerializerOptions, this);
		}
		else
		{
			writer.WriteRawValue(JsonSerializer.SerializeToUtf8Bytes(message, _messageSerializerOptions.JsonSerializerOptions));
		}
	}

	public IReadOnlyMemoryOwner<byte> SerializeAndCompressMessage(IMessage message)
	{
		using Stream buffer = SerializeMessageToStream(message);
		return SerializeUtf8StreamToGzipBase64(buffer, null);
	}

	public IReadOnlyMemoryOwner<byte> SerializeAndCompressMessage(IMessage message, ReadOnlySpan<byte> delimiter)
	{
		using Stream buffer = SerializeMessageToStream(message);
		return SerializeUtf8StreamToGzipBase64(buffer, delimiter);
	}

	public IMessage DeserializeMessage(string json)
	{
		using JsonDocument document = JsonDocument.Parse(json);
		return DeserializeMessage(document);
	}

	public IMessage DeserializeMessage(ReadOnlyMemory<byte> json)
	{
		using JsonDocument document = JsonDocument.Parse(json);
		return DeserializeMessage(document);
	}

	public IMessage DeserializeMessage(JsonDocument document)
	{
		JsonElement rootElement = document.RootElement;
		return DeserializeMessage(rootElement);
	}

	public IMessage DeserializeMessage(JsonElement root)
	{
		string text = root.GetProperty("t").GetString();
		ICustomSerializer customSerializer = _messageSerializerOptions.GetCustomSerializer(text);
		if (customSerializer != null)
		{
			return customSerializer.Deserialize(root, text, _messageSerializerOptions, this);
		}
		Type messageType = _messageSerializerOptions.GetMessageType(text);
		if (messageType != null)
		{
			return (IMessage)root.Deserialize(messageType, _messageSerializerOptions.JsonSerializerOptions);
		}
		throw new NotImplementedException();
	}

	public virtual IMessage DeserializeCompressedMessage(ReadOnlyMemory<byte> compressed)
	{
		try
		{
			using JsonDocument document = DeserializeUtf8ByteArrayToGzipBase64(compressed);
			return DeserializeMessage(document);
		}
		catch (Exception)
		{
			return null;
		}
	}

	private IReadOnlyMemoryOwner<byte> SerializeUtf8StreamToGzipBase64(Stream buffer, ReadOnlySpan<byte> delimiter)
	{
		buffer.Position = 0L;
		using RecyclableMemoryStream recyclableMemoryStream = _memoryStreamManagerService.GetStream();
		using (GZipStream destination = new GZipStream(recyclableMemoryStream, CompressionLevel.Optimal, leaveOpen: true))
		{
			buffer.CopyTo(destination);
		}
		int maxEncodedToUtf8Length = Base64.GetMaxEncodedToUtf8Length((int)recyclableMemoryStream.Length);
		int num = maxEncodedToUtf8Length + delimiter.Length;
		byte[] array = ArrayPool<byte>.Shared.Rent(num);
		Base64.EncodeToUtf8(recyclableMemoryStream.GetBuffer().AsSpan(0, (int)recyclableMemoryStream.Length), array, out var _, out var bytesWritten);
		if (!delimiter.IsEmpty)
		{
			Memory<byte> memory = array.AsMemory();
			bytesWritten = maxEncodedToUtf8Length;
			delimiter.CopyTo(memory.Slice(bytesWritten, memory.Length - bytesWritten).Span);
		}
		return new PooledMemoryOwner<byte>(array, num);
	}

	private JsonDocument DeserializeUtf8ByteArrayToGzipBase64(ReadOnlyMemory<byte> input)
	{
		int maxDecodedFromUtf8Length = Base64.GetMaxDecodedFromUtf8Length(input.Length);
		byte[] array = ArrayPool<byte>.Shared.Rent(maxDecodedFromUtf8Length);
		try
		{
			Base64.DecodeFromUtf8(input.Span, array, out var _, out var bytesWritten);
			using RecyclableMemoryStream stream = _memoryStreamManagerService.GetStream(array.AsSpan(0, bytesWritten));
			using GZipStream utf8Json = new GZipStream(stream, CompressionMode.Decompress, leaveOpen: true);
			return JsonDocument.Parse(utf8Json);
		}
		finally
		{
			ArrayPool<byte>.Shared.Return(array);
		}
	}

	public string SerializePayload(SyncPayload payload)
	{
		if (payload == null)
		{
			return null;
		}
		return JsonSerializer.Serialize(payload, payload.GetType(), _messageSerializerOptions.JsonSerializerOptions);
	}

	public SyncPayload DeserializePayload(string json, Type type)
	{
		return (SyncPayload)JsonSerializer.Deserialize(json, type, _messageSerializerOptions.JsonSerializerOptions);
	}

	public SyncPayload DeserializePayload(JsonElement root, Type type)
	{
		return (SyncPayload)root.Deserialize(type, _messageSerializerOptions.JsonSerializerOptions);
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Core.Messages.SyncableMessageSerializer

```csharp
using System;
using System.Collections.Generic;
using System.Text.Json;
using HHDev.Sync.Core.Messages.Interfaces;
using HHDev.Sync.Core.Messages.Payloads;

namespace HHDev.Sync.Core.Messages;

public class SyncableMessageSerializer : ICustomSerializer
{
	private readonly Dictionary<string, Type> _payloadTypeLookup = new Dictionary<string, Type>();

	private readonly Dictionary<string, Func<SyncableMessage>> _messageCreator = new Dictionary<string, Func<SyncableMessage>>();

	public void RegisterMessage(string name, Type payloadType, Func<SyncableMessage> messageCreator)
	{
		_payloadTypeLookup.Add(name, payloadType);
		_messageCreator.Add(name, messageCreator);
	}

	public virtual IMessage Deserialize(JsonElement root, string typeName, IMessageSerializerOptions options, IMessageSerializer serializer)
	{
		SyncableMessage syncableMessage = _messageCreator[typeName]();
		syncableMessage.ItemId = root.GetProperty("iid").GetString();
		syncableMessage.SyncOperationId = root.GetProperty("soid").GetGuid();
		syncableMessage.SyncOperationTime = root.GetProperty("sot").GetDateTime();
		syncableMessage.UserId = root.GetProperty("uid").GetGuid();
		syncableMessage.AccountId = root.GetProperty("aid").GetGuid();
		syncableMessage.SourceDatabaseId = root.GetProperty("dbid").GetGuid();
		syncableMessage.SenderId = root.GetProperty("sid").GetGuid();
		syncableMessage.TargetId = root.GetProperty("tid").GetGuid();
		if (root.TryGetProperty("p", out var value))
		{
			Type type = _payloadTypeLookup[typeName];
			syncableMessage.RawPayload = serializer.DeserializePayload(value, type);
		}
		if (root.TryGetProperty("trid", out var value2))
		{
			syncableMessage.TraceId = value2.GetGuid();
		}
		return syncableMessage;
	}

	public virtual void Serialize(Utf8JsonWriter writer, object instance, IMessageSerializerOptions options, IMessageSerializer serializer)
	{
		SyncableMessage syncableMessage = (SyncableMessage)instance;
		writer.WriteStartObject();
		writer.WriteString("t", options.GetMessageTypeString(instance.GetType()));
		writer.WriteString("iid", syncableMessage.ItemId);
		writer.WriteString("soid", syncableMessage.SyncOperationId);
		writer.WriteString("sot", syncableMessage.SyncOperationTime);
		writer.WriteString("uid", syncableMessage.UserId);
		writer.WriteString("aid", syncableMessage.AccountId);
		writer.WriteString("dbid", syncableMessage.SourceDatabaseId);
		writer.WriteString("sid", syncableMessage.SenderId);
		writer.WriteString("tid", syncableMessage.TargetId);
		writer.WriteString("trid", syncableMessage.TraceId);
		if (syncableMessage.RawPayload != null)
		{
			if (syncableMessage.RawPayload is string json)
			{
				writer.WritePropertyName("p");
				writer.WriteRawValue(json, skipInputValidation: true);
			}
			else if (syncableMessage.RawPayload is SyncPayload payload)
			{
				writer.WritePropertyName("p");
				writer.WriteRawValue(serializer.SerializePayload(payload), skipInputValidation: true);
			}
		}
		HandleAdditionalSerialization(writer, instance, options);
		writer.WriteEndObject();
	}

	protected virtual void HandleAdditionalSerialization(Utf8JsonWriter writer, object instance, IMessageSerializerOptions options)
	{
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.Sync.Core.Entities.SyncOperation

```csharp
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using HHDev.Core.NETStandard.CustomProperties;
using HHDev.Core.NETStandard.Database.Entities;
using HHDev.Core.NETStandard.Enums;

namespace HHDev.Sync.Core.Entities;

[Table("__SyncOperations")]
public abstract class SyncOperation : BasicEntity, IIdEntity
{
	[StringLength(36)]
	[Required]
	public string Id { get; set; }

	public int Sequence { get; set; }

	[StringLength(100)]
	public string MessageTypeShort { get; set; }

	public eUpdateType UpdateType { get; set; }

	[StringLength(200)]
	public string ItemId { get; set; }

	public string Payload { get; set; }

	public DateTime SyncOperationTime { get; set; }

	public string UserId { get; set; }

	public string AccountId { get; set; }

	[StringLength(36)]
	[Required]
	public string SourceDatabaseId { get; set; }

	public bool IsPlaceHolder { get; set; }

	public override void SetPropertyValue(string propertyName, string value)
	{
		switch (propertyName)
		{
		case "Id":
			Id = value;
			break;
		case "Sequence":
		{
			if (ParseInteger(propertyName, value, out var intValue))
			{
				Sequence = intValue;
			}
			break;
		}
		case "MessageTypeShort":
			MessageTypeShort = value;
			break;
		case "UpdateType":
		{
			if (ParseEnum<eUpdateType>(propertyName, value, out var enumValue))
			{
				UpdateType = enumValue;
			}
			break;
		}
		case "ItemId":
			ItemId = value;
			break;
		case "Payload":
			Payload = value;
			break;
		case "SyncOperationTime":
			SyncOperationTime = DateTime.Parse(value);
			break;
		case "UserId":
			UserId = value;
			break;
		case "AccountId":
			AccountId = value;
			break;
		case "SourceDatabaseId":
			SourceDatabaseId = value;
			break;
		case "IsPlaceHolder":
		{
			if (TryParseBoolean(propertyName, value, out var boolValue))
			{
				IsPlaceHolder = boolValue;
			}
			break;
		}
		default:
			base.SetPropertyValue(propertyName, value);
			break;
		}
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.DataManagement.Client.Core.Caches.ManagementCache

```csharp
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reactive.Subjects;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using AsyncAwaitBestPractices;
using HHDev.Core.NETStandard;
using HHDev.Core.NETStandard.Extensions;
using HHDev.Core.NETStandard.Logging;
using HHDev.DataManagement.Api.Models;
using HHDev.DataManagement.Client.Core.Caches.Helpers;
using HHDev.DataManagement.Client.Core.Caches.Interfaces;
using HHDev.DataManagement.Client.Core.Components.AttachedFiles;
using HHDev.DataManagement.Client.Core.Components.Exports;
using HHDev.DataManagement.Client.Core.Components.Intellisense;
using HHDev.DataManagement.Client.Core.Helpers;
using HHDev.DataManagement.Client.Core.Models.FlatModels;
using HHDev.DataManagement.Core;
using HHDev.DataManagement.Core.Entities;
using HHDev.DataManagement.Core.Messages;
using HHDev.DataManagement.Core.Messages.Initialization;
using HHDev.DataManagement.Core.Messages.Permissions;
using HHDev.DataManagement.Core.Models;
using HHDev.DataManagement.Core.Permissions;
using HHDev.Sync.Client;
using HHDev.Sync.Core.Messages;
using HHDev.Sync.Core.Messages.Interfaces;
using NLog;
using NodaTime;

namespace HHDev.DataManagement.Client.Core.Caches;

public class ManagementCache : IManagementCache, IBaseCache, INotifyPropertyChanged, IRoutedMessageReceiver, ITrackLastRequested, IRequestBroadcastMessage, IFlatModelEventHandler<IAccountOptionsFlatModel>, IBasicEntityFlatModelEventHandler<IAccountOptionsFlatModel>
{
	[CompilerGenerated]
	private ICarCache <CarCache>k__BackingField;

	[CompilerGenerated]
	private IChampionshipCache <ChampionshipCache>k__BackingField;

	[CompilerGenerated]
	private IPartCategoryCache <PartCategoryCache>k__BackingField;

	[CompilerGenerated]
	private ITrackCache <TrackCache>k__BackingField;

	[CompilerGenerated]
	private ITyreSpecificationCache <TyreSpecificationCache>k__BackingField;

	[CompilerGenerated]
	private IDriverCache <DriverCache>k__BackingField;

	[CompilerGenerated]
	private IXmlExportProfileCache <XmlExportProfileCache>k__BackingField;

	[CompilerGenerated]
	private IPivotChartProfileCache <PivotChartProfileCache>k__BackingField;

	[CompilerGenerated]
	private IExcelExportProfileCache <ExcelExportProfileCache>k__BackingField;

	[CompilerGenerated]
	private ICarManufacturerCache <CarManufacturerCache>k__BackingField;

	[CompilerGenerated]
	private ICategoryCache <CategoryCache>k__BackingField;

	[CompilerGenerated]
	private IServiceReturnClaimConditionCache <ServiceReturnClaimConditionCache>k__BackingField;

	[CompilerGenerated]
	private IIssueListCategoryCache <IssueListCategoryCache>k__BackingField;

	[CompilerGenerated]
	private IJobListCategoryCache <JobListCategoryCache>k__BackingField;

	[CompilerGenerated]
	private IJobListTemplateCache <JobListTemplateCache>k__BackingField;

	[CompilerGenerated]
	private INoteTypeCache <NoteTypeCache>k__BackingField;

	[CompilerGenerated]
	private ITeamCache <TeamCache>k__BackingField;

	[CompilerGenerated]
	private IDataAnalysisProfileCache <DataAnalysisProfileCache>k__BackingField;

	[CompilerGenerated]
	private IBrakeDiscSpecificationCache <BrakeDiscSpecificationCache>k__BackingField;

	[CompilerGenerated]
	private IBrakePadSpecificationCache <BrakePadSpecificationCache>k__BackingField;

	[CompilerGenerated]
	private IUserCache <UserCache>k__BackingField;

	[CompilerGenerated]
	private IViewCustomColumnProfileCache <ViewCustomColumnProfileCache>k__BackingField;

	[CompilerGenerated]
	private ILapMarkerCache <LapMarkerCache>k__BackingField;

	[CompilerGenerated]
	private ILapTrackStatusMarkerCache <LapTrackStatusMarkerCache>k__BackingField;

	[CompilerGenerated]
	private IIssueListWorkflowCache <IssueListWorkflowCache>k__BackingField;

	[CompilerGenerated]
	private IIssueListIssueTypeCache <IssueListIssueTypeCache>k__BackingField;

	[CompilerGenerated]
	private IChangeFormatterProfileCache <ChangeFormatterProfileCache>k__BackingField;

	[CompilerGenerated]
	private IAssemblyTypeCache <AssemblyTypeCache>k__BackingField;

	[CompilerGenerated]
	private ICustomViewDefinitionCache <CustomViewDefinitionCache>k__BackingField;

	[CompilerGenerated]
	private ISessionTypeCache <SessionTypeCache>k__BackingField;

	[CompilerGenerated]
	private IJsonExportProfileCache <JsonExportProfileCache>k__BackingField;

	[CompilerGenerated]
	private IColumnItemDisplayDefinitionCache <ColumnItemDisplayDefinitionCache>k__BackingField;

	[CompilerGenerated]
	private IEngineerNotesCategoryCache <EngineerNotesCategoryCache>k__BackingField;

	[CompilerGenerated]
	private IMainGraphProfileCache <MainGraphProfileCache>k__BackingField;

	[CompilerGenerated]
	private ICustomGridDisplayDefinitionCache <CustomGridDisplayDefinitionCache>k__BackingField;

	[CompilerGenerated]
	private IIssueListCache <IssueListCache>k__BackingField;

	[CompilerGenerated]
	private IAssemblyIterationHistoryTypeCache <AssemblyIterationHistoryTypeCache>k__BackingField;

	[CompilerGenerated]
	private IJsonImportProfileCache <JsonImportProfileCache>k__BackingField;

	[CompilerGenerated]
	private IAccountTyreCache <TyreCache>k__BackingField;

	[CompilerGenerated]
	private IAccountBrakeDiscCache <BrakeDiscCache>k__BackingField;

	[CompilerGenerated]
	private IAccountBrakePadCache <BrakePadCache>k__BackingField;

	[CompilerGenerated]
	private IAccountBrakeSetCache <BrakeSetCache>k__BackingField;

	[CompilerGenerated]
	private IAccountIssueListIssueCache <IssueListIssueCache>k__BackingField;

	[CompilerGenerated]
	private IAccountAssemblyIterationCache <AssemblyIterationCache>k__BackingField;

	[CompilerGenerated]
	private IAccountNamedAssemblyCache <NamedAssemblyCache>k__BackingField;

	private static readonly ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

	[CompilerGenerated]
	private double <TimeToLoadEntitiesFromDatabase>k__BackingField;

	[CompilerGenerated]
	private double <TimeToInitializeCache>k__BackingField;

	private readonly DataSelectionCache _dataSelectionCache;

	protected CustomPropertyDefinitionCache _customPropertyDefinitionCache;

	private long _lastTimeRequested;

	private readonly FlatModelUpdateEventManager<IAccountOptionsFlatModel> _accountEntityListManager;

	private readonly Guid _accountIdGuid;

	private static readonly TimeSpan _priorityMileageRefreshDelay = TimeSpan.FromSeconds(0.5);

	private static readonly TimeSpan _backgroundMileageRefreshDelay = TimeSpan.FromSeconds(5L);

	private static readonly TimeSpan _maxMileageRefreshDelay = TimeSpan.FromSeconds(15L);

	private readonly Lazy<IHHObservableCollection<EventCarMileagesResult>> _allMileages;

	private readonly Dictionary<string, ItemMileageRecordFlatModel> _partItemTotalMileages = new Dictionary<string, ItemMileageRecordFlatModel>();

	private readonly Dictionary<string, ItemMileageRecordFlatModel> _assemblyIterationTotalMileages = new Dictionary<string, ItemMileageRecordFlatModel>();

	private readonly Lock _mileageLock = new Lock();

	private readonly ISubject<(RefreshAllMileagesRequest Request, bool Priority)> _mileageRefreshRequests = Subject.Synchronize(new Subject<(RefreshAllMileagesRequest, bool)>());

	private readonly IDisposable _mileageRefreshSubscription;

	private volatile bool _mileageInitializationInProgress;

	[CompilerGenerated]
	private bool <IsImportRunning>k__BackingField;

	public ICarCache CarCache
	{
		[CompilerGenerated]
		get
		{
			return <CarCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<CarCache>k__BackingField, value))
			{
				<CarCache>k__BackingField = value;
				OnPropertyChanged("CarCache");
			}
		}
	}

	public IChampionshipCache ChampionshipCache
	{
		[CompilerGenerated]
		get
		{
			return <ChampionshipCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ChampionshipCache>k__BackingField, value))
			{
				<ChampionshipCache>k__BackingField = value;
				OnPropertyChanged("ChampionshipCache");
			}
		}
	}

	public IPartCategoryCache PartCategoryCache
	{
		[CompilerGenerated]
		get
		{
			return <PartCategoryCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<PartCategoryCache>k__BackingField, value))
			{
				<PartCategoryCache>k__BackingField = value;
				OnPropertyChanged("PartCategoryCache");
			}
		}
	}

	public ITrackCache TrackCache
	{
		[CompilerGenerated]
		get
		{
			return <TrackCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<TrackCache>k__BackingField, value))
			{
				<TrackCache>k__BackingField = value;
				OnPropertyChanged("TrackCache");
			}
		}
	}

	public ITyreSpecificationCache TyreSpecificationCache
	{
		[CompilerGenerated]
		get
		{
			return <TyreSpecificationCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<TyreSpecificationCache>k__BackingField, value))
			{
				<TyreSpecificationCache>k__BackingField = value;
				OnPropertyChanged("TyreSpecificationCache");
			}
		}
	}

	public IDriverCache DriverCache
	{
		[CompilerGenerated]
		get
		{
			return <DriverCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<DriverCache>k__BackingField, value))
			{
				<DriverCache>k__BackingField = value;
				OnPropertyChanged("DriverCache");
			}
		}
	}

	public IXmlExportProfileCache XmlExportProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <XmlExportProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<XmlExportProfileCache>k__BackingField, value))
			{
				<XmlExportProfileCache>k__BackingField = value;
				OnPropertyChanged("XmlExportProfileCache");
			}
		}
	}

	public IPivotChartProfileCache PivotChartProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <PivotChartProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<PivotChartProfileCache>k__BackingField, value))
			{
				<PivotChartProfileCache>k__BackingField = value;
				OnPropertyChanged("PivotChartProfileCache");
			}
		}
	}

	public IExcelExportProfileCache ExcelExportProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <ExcelExportProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ExcelExportProfileCache>k__BackingField, value))
			{
				<ExcelExportProfileCache>k__BackingField = value;
				OnPropertyChanged("ExcelExportProfileCache");
			}
		}
	}

	public ICarManufacturerCache CarManufacturerCache
	{
		[CompilerGenerated]
		get
		{
			return <CarManufacturerCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<CarManufacturerCache>k__BackingField, value))
			{
				<CarManufacturerCache>k__BackingField = value;
				OnPropertyChanged("CarManufacturerCache");
			}
		}
	}

	public ICategoryCache CategoryCache
	{
		[CompilerGenerated]
		get
		{
			return <CategoryCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<CategoryCache>k__BackingField, value))
			{
				<CategoryCache>k__BackingField = value;
				OnPropertyChanged("CategoryCache");
			}
		}
	}

	public IServiceReturnClaimConditionCache ServiceReturnClaimConditionCache
	{
		[CompilerGenerated]
		get
		{
			return <ServiceReturnClaimConditionCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ServiceReturnClaimConditionCache>k__BackingField, value))
			{
				<ServiceReturnClaimConditionCache>k__BackingField = value;
				OnPropertyChanged("ServiceReturnClaimConditionCache");
			}
		}
	}

	public IIssueListCategoryCache IssueListCategoryCache
	{
		[CompilerGenerated]
		get
		{
			return <IssueListCategoryCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<IssueListCategoryCache>k__BackingField, value))
			{
				<IssueListCategoryCache>k__BackingField = value;
				OnPropertyChanged("IssueListCategoryCache");
			}
		}
	}

	public IJobListCategoryCache JobListCategoryCache
	{
		[CompilerGenerated]
		get
		{
			return <JobListCategoryCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<JobListCategoryCache>k__BackingField, value))
			{
				<JobListCategoryCache>k__BackingField = value;
				OnPropertyChanged("JobListCategoryCache");
			}
		}
	}

	public IJobListTemplateCache JobListTemplateCache
	{
		[CompilerGenerated]
		get
		{
			return <JobListTemplateCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<JobListTemplateCache>k__BackingField, value))
			{
				<JobListTemplateCache>k__BackingField = value;
				OnPropertyChanged("JobListTemplateCache");
			}
		}
	}

	public INoteTypeCache NoteTypeCache
	{
		[CompilerGenerated]
		get
		{
			return <NoteTypeCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<NoteTypeCache>k__BackingField, value))
			{
				<NoteTypeCache>k__BackingField = value;
				OnPropertyChanged("NoteTypeCache");
			}
		}
	}

	public ITeamCache TeamCache
	{
		[CompilerGenerated]
		get
		{
			return <TeamCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<TeamCache>k__BackingField, value))
			{
				<TeamCache>k__BackingField = value;
				OnPropertyChanged("TeamCache");
			}
		}
	}

	public IDataAnalysisProfileCache DataAnalysisProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <DataAnalysisProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<DataAnalysisProfileCache>k__BackingField, value))
			{
				<DataAnalysisProfileCache>k__BackingField = value;
				OnPropertyChanged("DataAnalysisProfileCache");
			}
		}
	}

	public IBrakeDiscSpecificationCache BrakeDiscSpecificationCache
	{
		[CompilerGenerated]
		get
		{
			return <BrakeDiscSpecificationCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<BrakeDiscSpecificationCache>k__BackingField, value))
			{
				<BrakeDiscSpecificationCache>k__BackingField = value;
				OnPropertyChanged("BrakeDiscSpecificationCache");
			}
		}
	}

	public IBrakePadSpecificationCache BrakePadSpecificationCache
	{
		[CompilerGenerated]
		get
		{
			return <BrakePadSpecificationCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<BrakePadSpecificationCache>k__BackingField, value))
			{
				<BrakePadSpecificationCache>k__BackingField = value;
				OnPropertyChanged("BrakePadSpecificationCache");
			}
		}
	}

	public IUserCache UserCache
	{
		[CompilerGenerated]
		get
		{
			return <UserCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<UserCache>k__BackingField, value))
			{
				<UserCache>k__BackingField = value;
				OnPropertyChanged("UserCache");
			}
		}
	}

	public IViewCustomColumnProfileCache ViewCustomColumnProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <ViewCustomColumnProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ViewCustomColumnProfileCache>k__BackingField, value))
			{
				<ViewCustomColumnProfileCache>k__BackingField = value;
				OnPropertyChanged("ViewCustomColumnProfileCache");
			}
		}
	}

	public ILapMarkerCache LapMarkerCache
	{
		[CompilerGenerated]
		get
		{
			return <LapMarkerCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<LapMarkerCache>k__BackingField, value))
			{
				<LapMarkerCache>k__BackingField = value;
				OnPropertyChanged("LapMarkerCache");
			}
		}
	}

	public ILapTrackStatusMarkerCache LapTrackStatusMarkerCache
	{
		[CompilerGenerated]
		get
		{
			return <LapTrackStatusMarkerCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<LapTrackStatusMarkerCache>k__BackingField, value))
			{
				<LapTrackStatusMarkerCache>k__BackingField = value;
				OnPropertyChanged("LapTrackStatusMarkerCache");
			}
		}
	}

	public IIssueListWorkflowCache IssueListWorkflowCache
	{
		[CompilerGenerated]
		get
		{
			return <IssueListWorkflowCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<IssueListWorkflowCache>k__BackingField, value))
			{
				<IssueListWorkflowCache>k__BackingField = value;
				OnPropertyChanged("IssueListWorkflowCache");
			}
		}
	}

	public IIssueListIssueTypeCache IssueListIssueTypeCache
	{
		[CompilerGenerated]
		get
		{
			return <IssueListIssueTypeCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<IssueListIssueTypeCache>k__BackingField, value))
			{
				<IssueListIssueTypeCache>k__BackingField = value;
				OnPropertyChanged("IssueListIssueTypeCache");
			}
		}
	}

	public IChangeFormatterProfileCache ChangeFormatterProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <ChangeFormatterProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ChangeFormatterProfileCache>k__BackingField, value))
			{
				<ChangeFormatterProfileCache>k__BackingField = value;
				OnPropertyChanged("ChangeFormatterProfileCache");
			}
		}
	}

	public IAssemblyTypeCache AssemblyTypeCache
	{
		[CompilerGenerated]
		get
		{
			return <AssemblyTypeCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<AssemblyTypeCache>k__BackingField, value))
			{
				<AssemblyTypeCache>k__BackingField = value;
				OnPropertyChanged("AssemblyTypeCache");
			}
		}
	}

	public ICustomViewDefinitionCache CustomViewDefinitionCache
	{
		[CompilerGenerated]
		get
		{
			return <CustomViewDefinitionCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<CustomViewDefinitionCache>k__BackingField, value))
			{
				<CustomViewDefinitionCache>k__BackingField = value;
				OnPropertyChanged("CustomViewDefinitionCache");
			}
		}
	}

	public ISessionTypeCache SessionTypeCache
	{
		[CompilerGenerated]
		get
		{
			return <SessionTypeCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<SessionTypeCache>k__BackingField, value))
			{
				<SessionTypeCache>k__BackingField = value;
				OnPropertyChanged("SessionTypeCache");
			}
		}
	}

	public IJsonExportProfileCache JsonExportProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <JsonExportProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<JsonExportProfileCache>k__BackingField, value))
			{
				<JsonExportProfileCache>k__BackingField = value;
				OnPropertyChanged("JsonExportProfileCache");
			}
		}
	}

	public IColumnItemDisplayDefinitionCache ColumnItemDisplayDefinitionCache
	{
		[CompilerGenerated]
		get
		{
			return <ColumnItemDisplayDefinitionCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<ColumnItemDisplayDefinitionCache>k__BackingField, value))
			{
				<ColumnItemDisplayDefinitionCache>k__BackingField = value;
				OnPropertyChanged("ColumnItemDisplayDefinitionCache");
			}
		}
	}

	public IEngineerNotesCategoryCache EngineerNotesCategoryCache
	{
		[CompilerGenerated]
		get
		{
			return <EngineerNotesCategoryCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<EngineerNotesCategoryCache>k__BackingField, value))
			{
				<EngineerNotesCategoryCache>k__BackingField = value;
				OnPropertyChanged("EngineerNotesCategoryCache");
			}
		}
	}

	public IMainGraphProfileCache MainGraphProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <MainGraphProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<MainGraphProfileCache>k__BackingField, value))
			{
				<MainGraphProfileCache>k__BackingField = value;
				OnPropertyChanged("MainGraphProfileCache");
			}
		}
	}

	public ICustomGridDisplayDefinitionCache CustomGridDisplayDefinitionCache
	{
		[CompilerGenerated]
		get
		{
			return <CustomGridDisplayDefinitionCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<CustomGridDisplayDefinitionCache>k__BackingField, value))
			{
				<CustomGridDisplayDefinitionCache>k__BackingField = value;
				OnPropertyChanged("CustomGridDisplayDefinitionCache");
			}
		}
	}

	public IIssueListCache IssueListCache
	{
		[CompilerGenerated]
		get
		{
			return <IssueListCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<IssueListCache>k__BackingField, value))
			{
				<IssueListCache>k__BackingField = value;
				OnPropertyChanged("IssueListCache");
			}
		}
	}

	public IAssemblyIterationHistoryTypeCache AssemblyIterationHistoryTypeCache
	{
		[CompilerGenerated]
		get
		{
			return <AssemblyIterationHistoryTypeCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<AssemblyIterationHistoryTypeCache>k__BackingField, value))
			{
				<AssemblyIterationHistoryTypeCache>k__BackingField = value;
				OnPropertyChanged("AssemblyIterationHistoryTypeCache");
			}
		}
	}

	public IJsonImportProfileCache JsonImportProfileCache
	{
		[CompilerGenerated]
		get
		{
			return <JsonImportProfileCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<JsonImportProfileCache>k__BackingField, value))
			{
				<JsonImportProfileCache>k__BackingField = value;
				OnPropertyChanged("JsonImportProfileCache");
			}
		}
	}

	public IAccountTyreCache TyreCache
	{
		[CompilerGenerated]
		get
		{
			return <TyreCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<TyreCache>k__BackingField, value))
			{
				<TyreCache>k__BackingField = value;
				OnPropertyChanged("TyreCache");
			}
		}
	}

	public IAccountBrakeDiscCache BrakeDiscCache
	{
		[CompilerGenerated]
		get
		{
			return <BrakeDiscCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<BrakeDiscCache>k__BackingField, value))
			{
				<BrakeDiscCache>k__BackingField = value;
				OnPropertyChanged("BrakeDiscCache");
			}
		}
	}

	public IAccountBrakePadCache BrakePadCache
	{
		[CompilerGenerated]
		get
		{
			return <BrakePadCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<BrakePadCache>k__BackingField, value))
			{
				<BrakePadCache>k__BackingField = value;
				OnPropertyChanged("BrakePadCache");
			}
		}
	}

	public IAccountBrakeSetCache BrakeSetCache
	{
		[CompilerGenerated]
		get
		{
			return <BrakeSetCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<BrakeSetCache>k__BackingField, value))
			{
				<BrakeSetCache>k__BackingField = value;
				OnPropertyChanged("BrakeSetCache");
			}
		}
	}

	public IAccountIssueListIssueCache IssueListIssueCache
	{
		[CompilerGenerated]
		get
		{
			return <IssueListIssueCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<IssueListIssueCache>k__BackingField, value))
			{
				<IssueListIssueCache>k__BackingField = value;
				OnPropertyChanged("IssueListIssueCache");
			}
		}
	}

	public IAccountAssemblyIterationCache AssemblyIterationCache
	{
		[CompilerGenerated]
		get
		{
			return <AssemblyIterationCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<AssemblyIterationCache>k__BackingField, value))
			{
				<AssemblyIterationCache>k__BackingField = value;
				OnPropertyChanged("AssemblyIterationCache");
			}
		}
	}

	public IAccountNamedAssemblyCache NamedAssemblyCache
	{
		[CompilerGenerated]
		get
		{
			return <NamedAssemblyCache>k__BackingField;
		}
		[CompilerGenerated]
		private set
		{
			if (!object.Equals(<NamedAssemblyCache>k__BackingField, value))
			{
				<NamedAssemblyCache>k__BackingField = value;
				OnPropertyChanged("NamedAssemblyCache");
			}
		}
	}

	public double TimeToLoadEntitiesFromDatabase
	{
		[CompilerGenerated]
		get
		{
			return <TimeToLoadEntitiesFromDatabase>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!(<TimeToLoadEntitiesFromDatabase>k__BackingField == value))
			{
				<TimeToLoadEntitiesFromDatabase>k__BackingField = value;
				OnPropertyChanged("TimeToLoadEntitiesFromDatabase");
			}
		}
	}

	public double TimeToInitializeCache
	{
		[CompilerGenerated]
		get
		{
			return <TimeToInitializeCache>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (!(<TimeToInitializeCache>k__BackingField == value))
			{
				<TimeToInitializeCache>k__BackingField = value;
				OnPropertyChanged("TimeToInitializeCache");
			}
		}
	}

	public string ParentId
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public IMessageRoutingContainer MessageRoutingContainer { get; } = new MessageRoutingContainer();

	public IReadOnlyContextSelectionV2 ContextSelection { get; }

	public string AccountId => BasicAccountModel.AccountId;

	public BasicAccountModel BasicAccountModel { get; }

	public IAccountOptionsFlatModel AccountOptions { get; }

	public AccountPermissionsContainer AccountPermissions { get; }

	public DataSelectionCache DataSelectionCache => _dataSelectionCache;

	public ICustomPropertyDefinitionCache CustomPropertyDefinitionCache => _customPropertyDefinitionCache;

	public long LastTimeRequested => _lastTimeRequested;

	public IExportScopeDefinitionContainer ExportScopeDefinitionContainer { get; }

	public bool IsMileageReady => _allMileages.IsValueCreated;

	public Guid OwnerId { get; }

	public ISyncClient SyncClient { get; }

	public IClientCoreContainer ClientContainer { get; }

	public ScopeDefinitionContainer ScopeDefinitionContainer { get; }

	public List<IBasicEntityFlatModel> DetachedFlatModels { get; } = new List<IBasicEntityFlatModel>();

	public bool IsImportRunning
	{
		[CompilerGenerated]
		get
		{
			return <IsImportRunning>k__BackingField;
		}
		[CompilerGenerated]
		set
		{
			if (<IsImportRunning>k__BackingField != value)
			{
				<IsImportRunning>k__BackingField = value;
				OnPropertyChanged("IsImportRunning");
			}
		}
	}

	public event EventHandler PermissionsUpdated;

	public event PropertyChangedEventHandler PropertyChanged;

	public event EventHandler<RequestBroadcastMessageEventArgs> RequestBroadcastMessage;

	private void InitializeGeneratedCaches(ManagementCacheInitializationMessage initializationMessage, CustomPropertyDefinitionCache customPropertyDefinitionCache, ReadOnlyContextSelectionV2 contextSelectionForManagementLevelCaches, Func<ICarFlatModel, List<ParameterUpdateModel>, IReadOnlyList<ICarModelFlatModel>> carCarModelListFunc, Func<IIssueListIssueFlatModel, List<ParameterUpdateModel>, IReadOnlyList<IIssueListStateFlatModel>> issueListIssueIssueListStateListFunc)
	{
		BrakeDiscSpecificationCache = new BrakeDiscSpecificationCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.BrakeDiscSpecification), registerToReceiveMessages: true);
		BrakeDiscSpecificationCache.Initialize(initializationMessage.BrakeDiscSpecifications);
		BrakeDiscCache = new AccountBrakeDiscCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.BrakeDisc), BrakeDiscSpecificationCache);
		BrakePadSpecificationCache = new BrakePadSpecificationCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.BrakePadSpecification), registerToReceiveMessages: true);
		BrakePadSpecificationCache.Initialize(initializationMessage.BrakePadSpecifications);
		BrakePadCache = new AccountBrakePadCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.BrakePad), BrakePadSpecificationCache);
		TyreSpecificationCache = new TyreSpecificationCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.TyreSpecification), registerToReceiveMessages: true);
		TyreSpecificationCache.Initialize(initializationMessage.TyreSpecifications);
		TyreCache = new AccountTyreCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Tyre), TyreSpecificationCache);
		BrakeSetCache = new AccountBrakeSetCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.BrakeSet), BrakeDiscCache, BrakeDiscCache, BrakePadCache, BrakePadCache);
		IssueListWorkflowCache = new IssueListWorkflowCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.IssueListWorkflow), registerToReceiveMessages: true);
		IssueListWorkflowCache.Initialize(initializationMessage.IssueListWorkflows);
		IssueListCache = new IssueListCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.IssueList), registerToReceiveMessages: true);
		IssueListCache.Initialize(initializationMessage.IssueLists);
		IssueListIssueTypeCache = new IssueListIssueTypeCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.IssueListIssueType), IssueListWorkflowCache, IssueListCache, registerToReceiveMessages: true);
		IssueListIssueTypeCache.Initialize(initializationMessage.IssueListIssueTypes);
		IssueListIssueCache = new AccountIssueListIssueCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.IssueListIssue), IssueListIssueTypeCache, issueListIssueIssueListStateListFunc, UserCache, IssueListCache);
		CarManufacturerCache = new CarManufacturerCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.CarManufacturer), registerToReceiveMessages: true);
		CarManufacturerCache.Initialize(initializationMessage.CarManufacturers);
		CategoryCache = new CategoryCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Category), registerToReceiveMessages: true);
		CategoryCache.Initialize(initializationMessage.Categories);
		CustomViewDefinitionCache = new CustomViewDefinitionCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		CustomViewDefinitionCache.Initialize(initializationMessage.CustomViewDefinitions);
		DataAnalysisProfileCache = new DataAnalysisProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		DataAnalysisProfileCache.Initialize(initializationMessage.DataAnalysisProfiles);
		DriverCache = new DriverCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Driver), registerToReceiveMessages: true);
		DriverCache.Initialize(initializationMessage.Drivers);
		EngineerNotesCategoryCache = new EngineerNotesCategoryCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.EngineerNotesCategory), registerToReceiveMessages: true);
		EngineerNotesCategoryCache.Initialize(initializationMessage.EngineerNotesCategories);
		ExcelExportProfileCache = new ExcelExportProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		ExcelExportProfileCache.Initialize(initializationMessage.ExcelExportProfiles);
		IssueListCategoryCache = new IssueListCategoryCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.IssueListCategory), registerToReceiveMessages: true);
		IssueListCategoryCache.Initialize(initializationMessage.IssueListCategories);
		JobListCategoryCache = new JobListCategoryCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.JobListCategory), registerToReceiveMessages: true);
		JobListCategoryCache.Initialize(initializationMessage.JobListCategories);
		JobListTemplateCache = new JobListTemplateCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.JobListTemplate), registerToReceiveMessages: true);
		JobListTemplateCache.Initialize(initializationMessage.JobListTemplates);
		JsonExportProfileCache = new JsonExportProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		JsonExportProfileCache.Initialize(initializationMessage.JsonExportProfiles);
		JsonImportProfileCache = new JsonImportProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		JsonImportProfileCache.Initialize(initializationMessage.JsonImportProfiles);
		LapMarkerCache = new LapMarkerCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.LapMarker), registerToReceiveMessages: true);
		LapMarkerCache.Initialize(initializationMessage.LapMarkers);
		LapTrackStatusMarkerCache = new LapTrackStatusMarkerCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.LapTrackStatusMarker), registerToReceiveMessages: true);
		LapTrackStatusMarkerCache.Initialize(initializationMessage.LapTrackStatusMarkers);
		MainGraphProfileCache = new MainGraphProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		MainGraphProfileCache.Initialize(initializationMessage.MainGraphProfiles);
		NoteTypeCache = new NoteTypeCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		NoteTypeCache.Initialize(initializationMessage.NoteTypes);
		PivotChartProfileCache = new PivotChartProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		PivotChartProfileCache.Initialize(initializationMessage.PivotChartProfiles);
		ServiceReturnClaimConditionCache = new ServiceReturnClaimConditionCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		ServiceReturnClaimConditionCache.Initialize(initializationMessage.ServiceReturnClaimConditions);
		SessionTypeCache = new SessionTypeCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.SessionType), registerToReceiveMessages: true);
		SessionTypeCache.Initialize(initializationMessage.SessionTypes);
		TeamCache = new TeamCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Team), registerToReceiveMessages: true);
		TeamCache.Initialize(initializationMessage.Teams);
		TrackCache = new TrackCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Track), registerToReceiveMessages: true);
		TrackCache.Initialize(initializationMessage.Tracks);
		XmlExportProfileCache = new XmlExportProfileCache(contextSelectionForManagementLevelCaches, registerToReceiveMessages: true);
		XmlExportProfileCache.Initialize(initializationMessage.XmlExportProfiles);
		ChangeFormatterProfileCache = new ChangeFormatterProfileCache(contextSelectionForManagementLevelCaches, CustomPropertyDefinitionCache, registerToReceiveMessages: true);
		ChangeFormatterProfileCache.Initialize(initializationMessage.ChangeFormatterProfiles);
		ColumnItemDisplayDefinitionCache = new ColumnItemDisplayDefinitionCache(contextSelectionForManagementLevelCaches, CustomPropertyDefinitionCache, registerToReceiveMessages: true);
		ColumnItemDisplayDefinitionCache.Initialize(initializationMessage.ColumnItemDisplayDefinitions);
		CustomGridDisplayDefinitionCache = new CustomGridDisplayDefinitionCache(contextSelectionForManagementLevelCaches, CustomPropertyDefinitionCache, registerToReceiveMessages: true);
		CustomGridDisplayDefinitionCache.Initialize(initializationMessage.CustomGridDisplayDefinitions);
		ViewCustomColumnProfileCache = new ViewCustomColumnProfileCache(contextSelectionForManagementLevelCaches, CustomPropertyDefinitionCache, registerToReceiveMessages: true);
		ViewCustomColumnProfileCache.Initialize(initializationMessage.ViewCustomColumnProfiles);
		CarCache = new CarCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Car), CategoryCache, TeamCache, carCarModelListFunc, registerToReceiveMessages: true);
		CarCache.Initialize(initializationMessage.Cars);
		ChampionshipCache = new ChampionshipCache(contextSelectionForManagementLevelCaches, GetDefinition(eCustomPropertyDefinitionType.Championship), registerToReceiveMessages: true);
		ChampionshipCache.Initialize(initializationMessage.Championships.AsParallel().AsOrdered());
	}

	CustomPropertyPayloadMessage IFlatModelEventHandler<IAccountOptionsFlatModel>.CreateCustomUpdateMessage(HhdmSyncMessageBuilder builder, IAccountOptionsFlatModel model)
	{
		return new UpdateAccountOptionsMessage(builder);
	}

	void IBasicEntityFlatModelEventHandler<IAccountOptionsFlatModel>.OnRequestBroadcastMessage(IMessage message)
	{
		BroadcastMessage(message);
	}

	public ManagementCache(Guid ownerId, BasicAccountModel accountModel, AccountOptions accountOptions, ManagementCacheInitializationMessage initializationMessage, ISyncClient syncClient, IClientCoreContainer clientContainer)
	{
		AccountPermissions = new AccountPermissionsContainer(this);
		SyncClient = syncClient;
		ClientContainer = clientContainer;
		OwnerId = ownerId;
		TimeToLoadEntitiesFromDatabase = initializationMessage.TimeToLoadEntitiesFromDatabase;
		BasicAccountModel = accountModel;
		_accountIdGuid = Guid.Parse(BasicAccountModel.AccountId);
		ReadOnlyContextSelectionV2 readOnlyContextSelectionV = (ReadOnlyContextSelectionV2)(ContextSelection = new ReadOnlyContextSelectionV2(accountModel, this, null, null, null, null, null));
		_customPropertyDefinitionCache = GetCustomPropertyDefinitionCache(accountModel.AccountId, MessageRoutingContainer, ContextSelection);
		_customPropertyDefinitionCache.Initialize(initializationMessage.CustomPropertyDefinitions);
		AssemblyIterationHistoryTypeCache = new AssemblyIterationHistoryTypeCache(readOnlyContextSelectionV, _customPropertyDefinitionCache.GetCustomPropertyDefinition(eCustomPropertyDefinitionType.AssemblyIterationHistoryType), registerToReceiveMessages: true);
		AssemblyIterationHistoryTypeCache.Initialize(initializationMessage.AssemblyIterationHistoryTypes);
		PartCategoryCache = new PartCategoryCache(readOnlyContextSelectionV, _customPropertyDefinitionCache.GetCustomPropertyDefinition(eCustomPropertyDefinitionType.PartCategory));
		PartCategoryCache.Initialize(initializationMessage.PartCategories);
		AssemblyTypeCache = new AssemblyTypeCache(readOnlyContextSelectionV, _customPropertyDefinitionCache.GetCustomPropertyDefinition(eCustomPropertyDefinitionType.AssemblyType), _customPropertyDefinitionCache, _customPropertyDefinitionCache, _customPropertyDefinitionCache, _customPropertyDefinitionCache, registerToReceiveMessages: true);
		NamedAssemblyCache = new AccountNamedAssemblyCache(readOnlyContextSelectionV, null, AssemblyTypeCache);
		AssemblyIterationCache = new AccountAssemblyIterationCache(readOnlyContextSelectionV, null, AssemblyTypeCache, NamedAssemblyCache);
		AssemblyTypeCache.Initialize(initializationMessage.AssemblyTypes);
		Parallel.Invoke(ClientContainer.ParallelOptions, delegate
		{
			_customPropertyDefinitionCache.UpdatePartCategoryCacheReference(PartCategoryCache);
		}, delegate
		{
			_customPropertyDefinitionCache.UpdateAssemblyTypeCacheReference(AssemblyTypeCache);
		});
		NamedAssemblyCache.ReceiveMessage(initializationMessage.NamedAssemblies);
		AssemblyIterationCache.ReceiveMessage(initializationMessage.AssemblyIterations);
		UserCache = new UserCache(readOnlyContextSelectionV, _customPropertyDefinitionCache.GetCustomPropertyDefinition(eCustomPropertyDefinitionType.User), registerToReceiveMessages: true);
		UserCache.Initialize(initializationMessage.Users);
		Parallel.Invoke(ClientContainer.ParallelOptions, delegate
		{
			_customPropertyDefinitionCache.SetUsersOnAllItems();
		}, delegate
		{
			PartCategoryCache.SetUsersOnAllPartCategories();
		}, delegate
		{
			AssemblyTypeCache.SetUsersOnAllAssemblyTypes();
		}, delegate
		{
			AssemblyIterationHistoryTypeCache.SetUsersOnAllAssemblyIterationHistoryTypes();
		}, delegate
		{
			NamedAssemblyCache.SetUsersOnAllNamedAssemblies();
		}, delegate
		{
			AssemblyIterationCache.SetUsersOnAllAssemblyIterations();
		});
		ScopeDefinitionContainer = ScopeDefinitionContainers.GetScopeDefinitionContainer(accountModel.AccountId, _customPropertyDefinitionCache);
		ExportScopeDefinitionContainer = new ExportScopeDefinitionContainer(accountModel.AccountId, _customPropertyDefinitionCache, ScopeDefinitionContainer);
		AccountOptions = (IAccountOptionsFlatModel)AppGlobals.FlatModelCreationService.GetModel(new AccountOptionsFlatModelInitializationObject(accountOptions, readOnlyContextSelectionV), eFlatModelTypes.AccountOptions);
		foreach (PartCategoryFlatModel partCategory in PartCategoryCache.PartCategories)
		{
			partCategory.RaiseAccountPropertyChanged();
		}
		_accountEntityListManager = new FlatModelUpdateEventManager<IAccountOptionsFlatModel>(new HHObservableCollection<IAccountOptionsFlatModel>(), this, ContextSelection, useEntitiesLookUp: false, MessageRoutingContainer);
		_accountEntityListManager.AddFlatModelToList(AccountOptions);
		_dataSelectionCache = new DataSelectionCache(readOnlyContextSelectionV);
		InitializeGeneratedCaches(initializationMessage, _customPropertyDefinitionCache, readOnlyContextSelectionV, (ICarFlatModel x, List<ParameterUpdateModel> _) => GetCarModelForCar(x), (IIssueListIssueFlatModel x, List<ParameterUpdateModel> _) => GetIssueListStateForIssueListIssue(x));
		_dataSelectionCache.Initialize(initializationMessage.SubscribedEvents);
		IssueListIssueCache.ReceiveMessage(initializationMessage.IssueListIssues);
		IssueListIssueCache.IssueListIssues.Select((IIssueListIssueFlatModel x) => x.IssueListLinkedIssueCache).ToList().ForEach(delegate(IIssueListLinkedIssueCache x)
		{
			x.InitializeFlatModels();
		});
		Parallel.Invoke(ClientContainer.ParallelOptions, delegate
		{
			foreach (IPartItemFlatModel item in PartCategoryCache.PartCategories.SelectMany((IPartCategoryFlatModel partCategory) => partCategory.ChildPartItems))
			{
				item.InitializeCurrentMileage(AccountOptions);
				item.PartItemMeasurementCache.InitializeFlatModels();
				item.PartItemHistoryCache.InitializeFlatModels();
			}
		}, delegate
		{
			foreach (IAssemblyIterationFlatModel assemblyIteration in AssemblyIterationCache.AssemblyIterations)
			{
				assemblyIteration.InitializeCurrentMileage(AccountOptions);
				assemblyIteration.AssemblyIterationMeasurementCache.InitializeFlatModels();
				assemblyIteration.AssemblyIterationHistoryCache.InitializeFlatModels();
			}
		});
		if (initializationMessage.LatestPermissionsResponseMessage != null)
		{
			HandleLatestPermissionsResponseMessage(initializationMessage.LatestPermissionsResponseMessage);
		}
		Parallel.Invoke(ClientContainer.ParallelOptions, delegate
		{
			AssemblyIterationCache.SortAllAssociations();
		}, delegate
		{
			IssueListIssueCache.SortAllAssociations();
		}, delegate
		{
			NamedAssemblyCache.SortAllAssociations();
		}, delegate
		{
			BrakeDiscCache.SortAllAssociations();
		}, delegate
		{
			BrakePadCache.SortAllAssociations();
		}, delegate
		{
			BrakeSetCache.SortAllAssociations();
		}, delegate
		{
			TyreCache.SortAllAssociations();
		});
		MessageRoutingContainer.AddItemToContainer(BasicAccountModel.AccountId, (IRoutedMessageReceiver)this, typeof(IManagementCache));
		Parallel.ForEach(_customPropertyDefinitionCache.CustomPropertyDefinitions, ClientContainer.ParallelOptions, delegate(ICustomPropertyDefinitionFlatModel definition)
		{
			definition.InitializeMathParameters();
		});
		_allMileages = new Lazy<IHHObservableCollection<EventCarMileagesResult>>(InitializeAllMileages);
		_mileageRefreshSubscription = MileageRefreshBatcher.CreateBatches(_mileageRefreshRequests, _priorityMileageRefreshDelay, _backgroundMileageRefreshDelay, _maxMileageRefreshDelay).Subscribe(ProcessMileageRefreshBatch);
	}

	protected ICustomPropertyDefinitionFlatModel GetDefinition(eCustomPropertyDefinitionType definitionType)
	{
		return _customPropertyDefinitionCache.GetCustomPropertyDefinition(definitionType);
	}

	protected virtual CustomPropertyDefinitionCache GetCustomPropertyDefinitionCache(string accountId, IMessageRoutingContainer messageRoutingContainer, IReadOnlyContextSelectionV2 contextSelection)
	{
		return new CustomPropertyDefinitionCache(accountId, MessageRoutingContainer, ContextSelection);
	}

	public IReadOnlyHHObservableCollection<EventCarMileagesResult> GetAllMileages(bool createIfNecessary)
	{
		if (_allMileages.IsValueCreated)
		{
			return _allMileages.Value;
		}
		if (!createIfNecessary)
		{
			return null;
		}
		_mileageInitializationInProgress = true;
		try
		{
			return _allMileages.Value;
		}
		finally
		{
			_mileageInitializationInProgress = false;
		}
	}

	public void RequestMileageInitialization()
	{
		if (!_allMileages.IsValueCreated)
		{
			((Task)Task.Run(() => GetAllMileages(createIfNecessary: true))).SafeFireAndForget(in ILSpyHelper_AsRefReadOnly((Action<Exception>)null), in ILSpyHelper_AsRefReadOnly(false));
		}
		static ref readonly T ILSpyHelper_AsRefReadOnly<T>(in T temp)
		{
			//ILSpy generated this function to help ensure overload resolution can pick the overload using 'in'
			return ref temp;
		}
	}

	private IHHObservableCollection<EventCarMileagesResult> InitializeAllMileages()
	{
		using (_mileageLock.EnterScope())
		{
			HHObservableCollection<EventCarMileagesResult> hHObservableCollection = new HHObservableCollection<EventCarMileagesResult>
			{
				new InitialMileagesResult(GetAndInitializeAllInitialMileages())
			};
			hHObservableCollection.AddRange(ChampionshipCache.Championships.SelectMany((IChampionshipFlatModel c) => c.Events.SelectMany((IEventFlatModel e) => e.EventCars.Select((IEventCarFlatModel ec) => ec.Mileages.Value))));
			ComputeCurrentMileageOnPartsAndAssemblies(hHObservableCollection);
			return hHObservableCollection;
		}
	}

	private void RefreshCurrentMileageOnPartsAndAssemblies(IEnumerable<EventCarMileagesResult> allMileages)
	{
		foreach (ItemMileageRecordFlatModel value in _partItemTotalMileages.Values)
		{
			value.Reset();
		}
		foreach (ItemMileageRecordFlatModel value2 in _assemblyIterationTotalMileages.Values)
		{
			value2.Reset();
		}
		ComputeCurrentMileageOnPartsAndAssemblies(allMileages);
	}

	private void ComputeCurrentMileageOnPartsAndAssemblies(IEnumerable<EventCarMileagesResult> allMileages)
	{
		foreach (EventCarMileagesResult allMileage in allMileages)
		{
			MileagesResult[] array = allMileage.SessionMileagesCollection.ToArray();
			foreach (MileagesResult mileagesResult in array)
			{
				MileageRecordFlatModel[] array2 = mileagesResult.PartItemMileagesCollection.ToArray();
				foreach (MileageRecordFlatModel mileageRecordFlatModel in array2)
				{
					if (!mileageRecordFlatModel.IsPredictive && _partItemTotalMileages.TryGetValue(mileageRecordFlatModel.ItemId, out var value))
					{
						value.Add(mileageRecordFlatModel);
					}
				}
				array2 = mileagesResult.AssemblyIterationMileagesCollection.ToArray();
				foreach (MileageRecordFlatModel mileageRecordFlatModel2 in array2)
				{
					if (!mileageRecordFlatModel2.IsPredictive && _assemblyIterationTotalMileages.TryGetValue(mileageRecordFlatModel2.ItemId, out var value2))
					{
						value2.Add(mileageRecordFlatModel2);
					}
				}
			}
		}
		AssignCurrentMileages();
	}

	private void AssignCurrentMileages()
	{
		List<(ItemMileageRecordFlatModel Record, double MileageMeters, double TimeUsedHours, double NumberOfLaps)> assignments = (from x in _partItemTotalMileages.Values.Concat(_assemblyIterationTotalMileages.Values)
			select (Record: x, MileageMeters: x.MileageMeters, TimeUsedHours: x.TimeUsedHours, NumberOfLaps: x.NumberOfLaps)).ToList();
		if (NetStandardContainer.Instance.UiService == null)
		{
			AssignCurrentMileages(assignments);
			return;
		}
		NetStandardContainer.Instance.UiService.PostOnUiThread(delegate
		{
			AssignCurrentMileages(assignments);
		});
	}

	private static void AssignCurrentMileages(List<(ItemMileageRecordFlatModel Record, double MileageMeters, double TimeUsedHours, double NumberOfLaps)> assignments)
	{
		foreach (var assignment in assignments)
		{
			assignment.Record.AssignCurrentMileage(assignment.MileageMeters, assignment.TimeUsedHours, assignment.NumberOfLaps);
		}
	}

	public void RequestMileageRefresh(RefreshAllMileagesRequest request, bool runImmediately)
	{
		if (_allMileages == null)
		{
			return;
		}
		if (!_allMileages.IsValueCreated && !_mileageInitializationInProgress)
		{
			List<IEventCarFlatModel> eventCarMileagesToReload = request.EventCarMileagesToReload;
			if (eventCarMileagesToReload == null || eventCarMileagesToReload.Count <= 0)
			{
				return;
			}
		}
		_mileageRefreshRequests.OnNext((request, runImmediately));
	}

	private void ProcessMileageRefreshBatch(IList<(RefreshAllMileagesRequest Request, bool Priority)> batch)
	{
		try
		{
			if (_allMileages == null)
			{
				return;
			}
			using (_mileageLock.EnterScope())
			{
				if (!_allMileages.IsValueCreated)
				{
					foreach (var item2 in batch)
					{
						RefreshReloadedEventCarMileages(item2.Request);
					}
					return;
				}
				bool flag = false;
				foreach (var item3 in batch)
				{
					RefreshAllMileagesRequest item = item3.Request;
					flag |= ApplyRefreshRequest(item);
				}
				if (flag)
				{
					RefreshCurrentMileageOnPartsAndAssemblies(_allMileages.Value);
				}
			}
		}
		catch (Exception value)
		{
			_logger.ErrorExt("{3F0B60A2-9D0C-4A57-BB57-15A5C4E6D9B1}", $"Failed to process mileage refresh batch: {value}");
		}
	}

	private static void RefreshReloadedEventCarMileages(RefreshAllMileagesRequest request)
	{
		List<IEventCarFlatModel> eventCarMileagesToReload = request.EventCarMileagesToReload;
		if (eventCarMileagesToReload == null || eventCarMileagesToReload.Count <= 0)
		{
			return;
		}
		foreach (IEventCarFlatModel item in request.EventCarMileagesToReload)
		{
			if (item.Mileages.IsValueCreated)
			{
				item.Mileages.Value.Refresh();
			}
		}
	}

	private bool ApplyRefreshRequest(RefreshAllMileagesRequest request)
	{
		bool result = false;
		List<IEventCarFlatModel> eventCars = request.EventCars;
		if (eventCars != null && eventCars.Count > 0)
		{
			foreach (IEventCarFlatModel eventCar in request.EventCars)
			{
				int num = _allMileages.Value.FindIndex((EventCarMileagesResult x) => x.EventCarId == eventCar.Id);
				if (num >= 0)
				{
					_allMileages.Value[num] = eventCar.Mileages.Value;
				}
				else
				{
					_allMileages.Value.Add(eventCar.Mileages.Value);
				}
			}
			result = true;
		}
		List<IEventCarFlatModel> eventCarMileagesToReload = request.EventCarMileagesToReload;
		if (eventCarMileagesToReload != null && eventCarMileagesToReload.Count > 0)
		{
			RefreshReloadedEventCarMileages(request);
			foreach (IEventCarFlatModel eventCar2 in request.EventCarMileagesToReload)
			{
				if (_allMileages.Value.FindIndex((EventCarMileagesResult x) => x.EventCarId == eventCar2.Id) < 0)
				{
					_allMileages.Value.Add(eventCar2.Mileages.Value);
				}
			}
			result = true;
		}
		List<string> eventCarIdsToRemove = request.EventCarIdsToRemove;
		if (eventCarIdsToRemove != null && eventCarIdsToRemove.Count > 0)
		{
			_allMileages.Value.RemoveAll((EventCarMileagesResult x) => request.EventCarIdsToRemove.Any((string ecId) => x.EventCarId == ecId));
			result = true;
		}
		if (!(_allMileages.Value.FirstOrDefault((EventCarMileagesResult x) => x.EventCarId == "Initial Mileage") is InitialMileagesResult initialMileagesResult))
		{
			return result;
		}
		List<IPartItemFlatModel> partItems = request.PartItems;
		if (partItems != null && partItems.Count > 0)
		{
			foreach (IPartItemFlatModel partItem in request.PartItems)
			{
				initialMileagesResult.Refresh(GetPartItemInitialMileage(partItem), addIfNotExists: true);
				if (!_partItemTotalMileages.ContainsKey(partItem.Id))
				{
					_partItemTotalMileages.Add(partItem.Id, new ItemMileageRecordFlatModel(partItem, ContextSelection));
				}
			}
			result = true;
		}
		List<IPartItemFlatModel> partItemsToRemove = request.PartItemsToRemove;
		if (partItemsToRemove != null && partItemsToRemove.Count > 0)
		{
			foreach (IPartItemFlatModel item in request.PartItemsToRemove)
			{
				initialMileagesResult.RemovePartItem(item.Id);
				_partItemTotalMileages.Remove(item.Id);
			}
			result = true;
		}
		List<IAssemblyIterationFlatModel> assemblyIterations = request.AssemblyIterations;
		if (assemblyIterations != null && assemblyIterations.Count > 0)
		{
			foreach (IAssemblyIterationFlatModel assemblyIteration in request.AssemblyIterations)
			{
				initialMileagesResult.Refresh(GetAssemblyIterationInitialMileage(assemblyIteration), addIfNotExists: true);
				if (!_assemblyIterationTotalMileages.ContainsKey(assemblyIteration.Id))
				{
					_assemblyIterationTotalMileages.Add(assemblyIteration.Id, new ItemMileageRecordFlatModel(assemblyIteration, ContextSelection));
				}
			}
			result = true;
		}
		List<IAssemblyIterationFlatModel> assemblyIterationsToRemove = request.AssemblyIterationsToRemove;
		if (assemblyIterationsToRemove != null && assemblyIterationsToRemove.Count > 0)
		{
			foreach (IAssemblyIterationFlatModel item2 in request.AssemblyIterationsToRemove)
			{
				initialMileagesResult.RemoveAssemblyIteration(item2.Id);
				_assemblyIterationTotalMileages.Remove(item2.Id);
			}
			result = true;
		}
		return result;
	}

	public IEnumerable<EventCarMileagesResult> GetMileagesBefore(Instant? timeStamp)
	{
		IHHObservableCollection<EventCarMileagesResult> value = _allMileages.Value;
		using (_mileageLock.EnterScope())
		{
			return value.Where((EventCarMileagesResult x) => x.EventCarId == "Initial Mileage" || x.ContextSelection.SelectedEvent.DateTimes.GetPropertyValue("EndDate") <= timeStamp).ToList();
		}
	}

	private MileagesResult GetAndInitializeAllInitialMileages()
	{
		MileagesResult mileagesResult = new MileagesResult(ContextSelection, "Initial Mileage");
		foreach (IPartItemFlatModel item in PartCategoryCache.PartCategories.SelectMany((IPartCategoryFlatModel x) => x.PartCache.Parts).SelectMany((IPartFlatModel x) => x.PartItemCache.PartItems))
		{
			MileageItem partItemInitialMileage = GetPartItemInitialMileage(item);
			mileagesResult.Add(partItemInitialMileage);
			_partItemTotalMileages.Add(item.Id, new ItemMileageRecordFlatModel(item, ContextSelection));
		}
		foreach (IAssemblyIterationFlatModel assemblyIteration in AssemblyIterationCache.AssemblyIterations)
		{
			MileageItem assemblyIterationInitialMileage = GetAssemblyIterationInitialMileage(assemblyIteration);
			mileagesResult.Add(assemblyIterationInitialMileage);
			_assemblyIterationTotalMileages.Add(assemblyIteration.Id, new ItemMileageRecordFlatModel(assemblyIteration, ContextSelection));
		}
		return mileagesResult;
	}

	private static MileageItem GetPartItemInitialMileage(IPartItemFlatModel partItem)
	{
		double mileage = 0.0;
		if (partItem.Doubles.ContainsProperty("InitialMileage"))
		{
			mileage = partItem.Doubles.GetInternalPropertyValue("InitialMileage").GetValueOrDefault();
		}
		double valueOrDefault = partItem.Doubles.GetPropertyValue("InitialHours").GetValueOrDefault();
		return MileageItem.PartItemInitialMileageItem(partItem.Id, mileage, valueOrDefault);
	}

	private static MileageItem GetAssemblyIterationInitialMileage(IAssemblyIterationFlatModel assemblyIteration)
	{
		double mileage = 0.0;
		if (assemblyIteration.Doubles.ContainsProperty("InitialMileage"))
		{
			mileage = assemblyIteration.Doubles.GetInternalPropertyValue("InitialMileage").GetValueOrDefault();
		}
		double valueOrDefault = assemblyIteration.Doubles.GetPropertyValue("InitialHours").GetValueOrDefault();
		return MileageItem.AssemblyIterationInitialMileageItem(assemblyIteration.Id, mileage, valueOrDefault);
	}

	public IEventFlatModel GetEventFromAnyChampionship(string eventId)
	{
		foreach (IChampionshipFlatModel championship in ChampionshipCache.Championships)
		{
			IEventFlatModel eventFlatModel = championship.Events.FirstOrDefault((IEventFlatModel x) => x.Id == eventId);
			if (eventFlatModel != null)
			{
				return eventFlatModel;
			}
		}
		return null;
	}

	public ISessionFlatModel GetSessionFromAnyChampionship(string sessionId)
	{
		return ChampionshipCache.Championships.SelectMany((IChampionshipFlatModel x) => x.Events).SelectMany((IEventFlatModel x) => x.Sessions).FirstOrDefault((ISessionFlatModel x) => x.Id == sessionId);
	}

	public IEventCarFlatModel GetEventCarFromAnyChampionship(string eventId, string carId)
	{
		return GetEventFromAnyChampionship(eventId)?.Cars.FirstOrDefault((IEventCarFlatModel x) => x.Car.Id == carId);
	}

	public bool IsCarUsedForEvent(ICarFlatModel car)
	{
		return ChampionshipCache.Championships.Any((IChampionshipFlatModel x) => x.Events.Any((IEventFlatModel y) => y.Cars.Any((IEventCarFlatModel z) => z.Car.Id == car.Id)));
	}

	public bool IsDriverUsedForEvent(DriverFlatModel driver)
	{
		return ChampionshipCache.Championships.Any((IChampionshipFlatModel x) => x.Events.Any((IEventFlatModel y) => y.Cars.Any((IEventCarFlatModel z) => z.DriversInCar.Any((IEventCarDriverFlatModel a) => a.Driver.Id == driver.Id))));
	}

	public bool IsTrackUsedForEvent(ITrackFlatModel track)
	{
		return ChampionshipCache.Championships.Any((IChampionshipFlatModel x) => x.Events.Any((IEventFlatModel y) => y.Track.Id == track.Id));
	}

	public bool IsTrackConfigurationUsedForSession(ITrackConfigurationFlatModel trackConfig)
	{
		return ChampionshipCache.Championships.Any((IChampionshipFlatModel x) => x.Events.Any((IEventFlatModel y) => y.Sessions.Any((ISessionFlatModel z) => z.TrackConfiguration?.Id == trackConfig.Id)));
	}

	public bool IsTrackConfigurationDefaultInEvent(ITrackConfigurationFlatModel trackConfig)
	{
		return ChampionshipCache.Championships.Any((IChampionshipFlatModel x) => x.Events.Any((IEventFlatModel y) => y.DefaultTrackConfiguration?.Id == trackConfig.Id));
	}

	protected void ProcessMessage(IMessage aMessage, bool anIsBulk)
	{
		if (!(aMessage is HhdmReceiptAcknowledgementMessage) && (!(aMessage is HhdmSyncableMessage hhdmSyncableMessage) || !(hhdmSyncableMessage.AccountId != _accountIdGuid)))
		{
			if (aMessage is UpdateAccountOptionsMessage updateAccountOptionsMessage)
			{
				_accountEntityListManager.HandleUpdateMessage(AccountOptions, updateAccountOptionsMessage.AccountOptionsPayload);
			}
			else if (aMessage is LatestPermissionsResponseMessage permissionMessage)
			{
				HandleLatestPermissionsResponseMessage(permissionMessage);
			}
			else if (aMessage is ILocalAttachedFileMessage localAttachedFileMessage && localAttachedFileMessage.AccountId != _accountIdGuid)
			{
				return;
			}
			((IRoutedMessageReceiver)AccountOptions).ReceiveMessage(aMessage);
			_dataSelectionCache.ReceiveMessage(aMessage);
			MessageRoutingContainer.ProcessMessage(aMessage);
		}
	}

	protected virtual void HandleLatestPermissionsResponseMessage(LatestPermissionsResponseMessage permissionMessage)
	{
		string[] array = SyncClient.AccountIds?.Select((Guid x) => x.ToString()).ToArray();
		_logger.DebugExt("{50417E84-0D4F-494E-B174-2298314DBE6F}", "Handling {LatestPermissionsResponseMessage} for AccountId={AccountId}. SyncClient.AccountIds is null={IsNull}, values=[{SyncClientAccountIds}]", permissionMessage, AccountId, SyncClient.AccountIds == null, (array == null) ? "null" : string.Join(",", array));
		ClientAccountPermissionModel clientAccountPermissionModel = null;
		if (array != null && array.Contains(AccountId))
		{
			clientAccountPermissionModel = (ClientAccountPermissionModel)(permissionMessage.Permissions?.SingleOrDefault((IClientAccountPermissionModel x) => x.AccountId == AccountOptions.AccountId));
		}
		_logger.DebugExt("{C1979681-543F-4E7D-A0B0-44FDA9962DDF}", "Resolved permissions for AccountId={AccountId}: found={FoundPermissions}, group count={GroupCount}", AccountId, clientAccountPermissionModel != null, (clientAccountPermissionModel?.Groups?.Count).GetValueOrDefault());
		AccountPermissions.UpdatePermissions(clientAccountPermissionModel);
	}

	public void AfterPermissionsChanged()
	{
		ChampionshipCache.RefreshPermissions();
		this.PermissionsUpdated?.Invoke(this, EventArgs.Empty);
	}

	public static RuleGrantDAL CreateRuleGrantDAL(IManagementCache cache)
	{
		return new RuleGrantDAL((string eventId, string carId) => cache.GetEventCarFromAnyChampionship(eventId, carId) != null, delegate(string championshipId, string carId)
		{
			IChampionshipFlatModel championshipFlatModel = cache.ChampionshipCache.Championships.FirstOrDefault((IChampionshipFlatModel x) => x.Id == championshipId);
			if (championshipFlatModel == null)
			{
				return false;
			}
			foreach (IEventFlatModel @event in championshipFlatModel.Events)
			{
				if (@event.Cars.Any((IEventCarFlatModel x) => x.Car.Id == carId))
				{
					return true;
				}
			}
			return false;
		});
	}

	public void UpdateLastTimeRequested()
	{
		Interlocked.Exchange(ref _lastTimeRequested, Environment.TickCount64);
	}

	public void DeregisterFromMessageRouting()
	{
		throw new NotImplementedException();
	}

	public void PrepareClose()
	{
		throw new NotImplementedException();
	}

	public void RemoveHandlersFromAccountOptionsFlatModel()
	{
		_accountEntityListManager.RemoveHandlersFromFlatModel(AccountOptions);
	}

	public void AddHandlersToAccountOptionsFlatModel()
	{
		_accountEntityListManager.AddHandlersToFlatModel(AccountOptions);
	}

	public ICustomPropertyDefinitionFlatModel GetDefinition(string id)
	{
		return CustomPropertyDefinitionCache.GetCustomPropertyDefinition(id) ?? ((ICustomPropertyDefinitionFlatModel)DetachedFlatModels.FirstOrDefault((IBasicEntityFlatModel x) => x.Id == id));
	}

	public IBasicEntityFlatModel GetDetachedFlatModel(string id)
	{
		return DetachedFlatModels.FirstOrDefault((IBasicEntityFlatModel x) => x.Id == id);
	}

	public T GetDetachedFlatModel<T>(Func<T, bool> predicate)
	{
		return DetachedFlatModels.OfType<T>().FirstOrDefault(predicate);
	}

	public static IReadOnlyList<ICarModelFlatModel> GetCarModelForCar(ICarFlatModel car)
	{
		return car.ContextSelection.SelectedManagementCache.CarManufacturerCache.CarManufacturers.SelectMany((ICarManufacturerFlatModel m) => m.CarModels).ToList();
	}

	public static IReadOnlyList<IIssueListStateFlatModel> GetIssueListStateForIssueListIssue(IIssueListIssueFlatModel issue)
	{
		return issue.IssueListIssueType?.IssueListWorkflow?.IssueListStates;
	}

	public void BroadcastMessage(RequestBroadcastMessageEventArgs args)
	{
		this.RequestBroadcastMessage?.Invoke(this, args);
	}

	public void BroadcastMessage(IMessage args)
	{
		this.RequestBroadcastMessage?.Invoke(this, new RequestBroadcastMessageEventArgs(args));
	}

	public void ReceiveMessage(IMessage message)
	{
		if (message is BulkUpdateMessage bulkUpdateMessage)
		{
			{
				foreach (IMessage message2 in bulkUpdateMessage.Messages)
				{
					ProcessMessage(message2, anIsBulk: true);
				}
				return;
			}
		}
		ProcessMessage(message, anIsBulk: false);
	}

	protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
	{
		this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.DataManagement.Client.Core.Caches.EventCache

```csharp
using System;
using System.ComponentModel;
using System.Linq;
using HHDev.Core.NETStandard.Extensions;
using HHDev.Core.NETStandard.Messaging.Payloads;
using HHDev.Core.NETStandard.Services.Interfaces;
using HHDev.DataManagement.Client.Core.Caches.Helpers;
using HHDev.DataManagement.Client.Core.Caches.Interfaces;
using HHDev.DataManagement.Client.Core.Models.FlatModels;
using HHDev.DataManagement.Client.Core.Services;
using HHDev.DataManagement.Core.Entities;
using HHDev.DataManagement.Core.Messages;
using NodaTime;
using NodaTime.TimeZones;

namespace HHDev.DataManagement.Client.Core.Caches;

public class EventCache : BaseEventCache, IEventCacheInternal, IEventCache, IBaseCache, INotifyPropertyChanged, IRoutedMessageReceiver, IEntityOwnerWithDefinition
{
	public EventCache(IReadOnlyContextSelectionV2 contextSelection, ICustomPropertyDefinitionFlatModel definition, IChampionshipFlatModel parentChampionship, ITrackCache trackCache)
		: base(contextSelection, definition, parentChampionship, trackCache, registerToReceiveMessages: true)
	{
	}

	public override IEventFlatModel AddEvent(AddEventOptions options)
	{
		IEventFlatModel newEvent = base.AddEvent(options);
		if (options.AddDefaultSession)
		{
			if (base.ContextSelection.SelectedManagementCache.SessionTypeCache.SessionTypes.Count > 0)
			{
				newEvent.SessionCache.AddSession(new AddSessionOptions(base.ContextSelection.SelectedManagementCache.SessionTypeCache.SessionTypes.First().Id)
				{
					CreatedByUserId = options.CreatedByUserId,
					CustomizeFlatModel = delegate(ISessionFlatModel x)
					{
						string timeZone = newEvent.ContextSelection.TimeZone;
						ZonedDateTime zonedDateTime = newEvent.DateTimes.GetPropertyValue("StartDate").Value.InZone(DateTimeZoneProviders.Tzdb[timeZone]);
						ZonedDateTime zonedDateTime2 = zonedDateTime.Date.At(new LocalTime(0, 0, 0)).InZone(zonedDateTime.Zone, Resolvers.LenientResolver);
						Instant value = zonedDateTime2.PlusHours(14).ToInstant();
						Instant value2 = zonedDateTime2.PlusHours(16).ToInstant();
						x.DateTimes.SetPropertyValue("StartTime", value);
						x.DateTimes.SetPropertyValue("EndTime", value2);
					}
				});
			}
			else
			{
				GlobalServices.MessageBoxService.Show("A default session could not be added to the new event because there are no session types defined.", "Warning Creating Event", eMessageBoxButton.OK, eMessageBoxImage.Exclamation);
			}
		}
		return newEvent;
	}

	protected override void AddAdditionalEventHandlers(IEventFlatModel model)
	{
		base.AddAdditionalEventHandlers(model);
		model.RequestRefreshPermissionFlags += HandleEventRequestRefreshPermissionFlags;
		model.SessionCache.AfterSessionAdded += SessionCache_AfterSessionAdded;
		model.SessionCache.AfterSessionRemoved += SessionCache_AfterSessionRemoved;
	}

	private void SessionCache_AfterSessionRemoved(object sender, AfterSessionRemovedFromCacheEventArgs e)
	{
		RefreshAllViews();
	}

	private void SessionCache_AfterSessionAdded(object sender, AfterSessionAddedToCacheEventArgs e)
	{
		RefreshAllViews();
	}

	protected override void RemoveAdditionalEventHandlers(IEventFlatModel model)
	{
		base.RemoveAdditionalEventHandlers(model);
		model.RequestRefreshPermissionFlags -= HandleEventRequestRefreshPermissionFlags;
		model.SessionCache.AfterSessionAdded -= SessionCache_AfterSessionAdded;
		model.SessionCache.AfterSessionRemoved -= SessionCache_AfterSessionRemoved;
	}

	public void HandleEventRequestRefreshPermissionFlags(object sender, EventArgs e)
	{
		_parentChampionship.RaiseRequestRefreshPermissionFlags();
	}

	protected override void ParameterUpdatedByMessage(IEventFlatModel model, string parameterName)
	{
		base.ParameterUpdatedByMessage(model, parameterName);
		if (parameterName == "TrackId")
		{
			model.Track = _contextSelection.SelectedManagementCache.TrackCache.GetTrack(model.Strings.GetPropertyValue("TrackId"));
		}
	}

	protected override void AfterEntityPropertyUpdated(IEventFlatModel model, string parameterName)
	{
		base.AfterEntityPropertyUpdated(model, parameterName);
		if (parameterName == "TrackId")
		{
			model.Track = _contextSelection.SelectedManagementCache.TrackCache.GetTrack(model.Strings.GetPropertyValue("TrackId"));
		}
	}

	protected override void InitializeFlatModel(IEventFlatModel model, Event entity)
	{
		base.InitializeFlatModel(model, entity);
		model.Track = _contextSelection.SelectedManagementCache.TrackCache.GetTrack(model.Strings.GetPropertyValue("TrackId"));
	}

	protected override bool DoesMessageBelongToCache(AddEventMessage addMsg)
	{
		return addMsg.PropertyPayload.Properties.Single((PayloadProperty x) => x.Key == "ChampionshipId").Value == _parentChampionship.Id;
	}

	public IHHObservableCollection<IEventFlatModel> RegisterView(string id, FilterMatcher<IEventFlatModel> filterMatcher)
	{
		return _items.AddView(id, filterMatcher);
	}

	public void RefreshAllViews()
	{
		_items.RefreshAllViews();
	}

	protected override void AfterItemAdded(IEventFlatModel modelToAdd)
	{
		base.AfterItemAdded(modelToAdd);
		_parentChampionship.RaiseRequestRefreshPermissionFlags();
	}

	protected override void BeforeDeleteItem(IEventFlatModel item, string userId)
	{
		base.BeforeDeleteItem(item, userId);
		base.ContextSelection.SelectedManagementCache.ClientContainer.DependencyResolver.Resolve<IClientMasterCache>().RemoveEventCache(base.ContextSelection.SelectedManagementCache.AccountId, item.Id, runInBackground: false);
	}

	void IEventCacheInternal.AddExistingEvent(IEventFlatModel flatModel)
	{
		using (ScopedCacheLock.ForWriting(_rwLock, hasLock: false, "C:\\BuildAgent\\work\\e320b7d089ff653f\\data-management\\HHDev.DataManagement.Client.Core\\Caches\\Generated\\EventCache.g.cs"))
		{
			flatModel.BeforeAddingLocally(null);
			_flatModelManager.AddFlatModelToList(flatModel);
			flatModel.AfterAddingLocally(null);
		}
	}

	void IEventCacheInternal.RemoveExistingEvent(IEventFlatModel flatModel)
	{
		using (ScopedCacheLock.ForWriting(_rwLock, hasLock: false, "C:\\BuildAgent\\work\\e320b7d089ff653f\\data-management\\HHDev.DataManagement.Client.Core\\Caches\\Generated\\EventCache.g.cs"))
		{
			_flatModelManager.RemoveFlatModelFromList(flatModel);
		}
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n

## HHDev.DataManagement.Client.Core.Caches.EventCarCache

```csharp
using System;
using System.ComponentModel;
using HHDev.DataManagement.Client.Core.Caches.Helpers;
using HHDev.DataManagement.Client.Core.Caches.Interfaces;
using HHDev.DataManagement.Client.Core.Models.FlatModels;
using HHDev.DataManagement.Core.Entities;

namespace HHDev.DataManagement.Client.Core.Caches;

public class EventCarCache : BaseEventCarCache, IEventCarCache, IBaseCache, INotifyPropertyChanged, IRoutedMessageReceiver, IEntityOwnerWithDefinition
{
	public EventCarCache(IReadOnlyContextSelectionV2 contextSelection, ICustomPropertyDefinitionFlatModel definition, IEventFlatModel parentEvent, ICarCache carCache, IDataAnalysisProfileCache dataAnalysisProfileCache, ICustomPropertyDefinitionCache definitionCache)
		: base(contextSelection, definition, parentEvent, carCache, dataAnalysisProfileCache, definitionCache, registerToReceiveMessages: true)
	{
	}

	protected override EventCarFlatModelInitializationObject GetFlatModelInitializationObject(EventCar entity, bool initialLoad, eFlatModelMode flatModelMode)
	{
		return new EventCarFlatModelInitializationObject(entity, _carCache.GetCar(entity.CarId), _setupDefinitionCache.GetCustomPropertyDefinition(entity.SetupDefinitionId), Guid.Parse(base.ContextSelection.SelectedManagementCache.AccountId), _parentEvent, base.ContextSelection.SelectedManagementCache.DataSelectionCache, base.ContextSelection)
		{
			FlatModelMode = flatModelMode
		};
	}

	protected override void BeforeDeleteItem(IEventCarFlatModel item, string userId)
	{
		base.BeforeDeleteItem(item, userId);
		base.ContextSelection.SelectedManagementCache.ClientContainer.DependencyResolver.Resolve<IClientMasterCache>().RemoveEventCarCache(base.ContextSelection.SelectedManagementCache.AccountId, item.Event.Id, item.Car.Id, runInBackground: false);
	}
}
You are not using the latest version of the tool, please update.
Latest version is '11.2.0.10050' (yours is '9.1.0.7988')

```n
---

# Appendix (appended 2026-11-24 by T7 follow-up): additional types

> Append-only batch. Existing sections above untouched. Decompiled with portable ilspycmd 9.1.0.7988 (`dotnet ilspycmd.dll -t <type> <dll>`).

## HHDev.DataManagement.Client.Wpf.PluginFramework.HhdmPluginFrameworkHelpers

**Assembly**: `HHDev.DataManagement.Client.Wpf.dll`
**Kind**: `public static class` — implements the actual plugin load/register logic behind `PluginManager`.

### Signatures

```csharp
private static readonly ExtendedLogger _logger;
public static void LoadPlugins(List<PluginWrapper> allPlugins, string[] pluginDirectories);
public static void RegisterPlugins(Guid anAccountId, List<PluginWrapper> plugins, IWpfClientContainer clientContainer);
private static void RegisterPluginCustomization<TPluginInterface, TCustomizationClass>(IHhDataManagementPlugin plugin, Func<TPluginInterface, List<KeyValuePair<Guid, TCustomizationClass>>> getCustomization, IWpfClientContainer clientContainer, Action<Guid, TCustomizationClass> customRegistration = null) where TCustomizationClass : class;
```

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using HHDev.Core.NETStandard.Helpers;
using HHDev.Core.NETStandard.Logging;
using HHDev.Core.NETStandard.Plugins;
using HHDev.DataManagement.Client.Core;
using HHDev.DataManagement.Client.Core.Definitions.HHCustomGridDisplay;
using HHDev.DataManagement.Client.Core.Services;
using HHDev.DataManagement.Client.Wpf.Components.IdealLap;
using HHDev.DataManagement.Client.Wpf.PluginFramework.CustomizationConfigs;
using HHDev.DataManagement.Client.Wpf.PluginFramework.Interfaces;
using HHDev.DataManagement.Client.Wpf.Services;
using NLog;

namespace HHDev.DataManagement.Client.Wpf.PluginFramework;

public static class HhdmPluginFrameworkHelpers
{
    private static readonly ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

    public static void LoadPlugins(List<PluginWrapper> allPlugins, string[] pluginDirectories)
    {
        List<PluginWrapper> list = new List<PluginWrapper>();
        string temporaryDirectory = FileHelperFunctions.GetTemporaryDirectory("HHDataManagement");
        string[] allowedVersionNumbers = new string[1] { "26.2" };
        ICollection<IHhDataManagementPlugin> collection = PluginFrameworkHelpers.LoadPluginsWithCheckForDuplicates(
            pluginDirectories, temporaryDirectory, (IHhDataManagementPlugin x) => x.PluginId.ToString(),
            allowedVersionNumbers, strictMode: true);
        if (collection != null && collection.Count > 0)
        {
            list.AddRange(collection.Select((IHhDataManagementPlugin x) =>
                new PluginWrapper(x, Assembly.GetAssembly(x.GetType()).GetName().Version.ToString())));
        }
        foreach (PluginWrapper item in list)
        {
            _logger.InfoExt("{13572578-4BCC-4271-9BD3-F306EA19CE62}",
                "Loading " + item.Plugin.Name + " version " + item.VersionNumber);
        }
        allPlugins.AddRange(list);
    }

    public static void RegisterPlugins(Guid anAccountId, List<PluginWrapper> plugins, IWpfClientContainer clientContainer)
    {
        foreach (PluginWrapper plugin in plugins)
        {
            IHhDataManagementPlugin obj = (IHhDataManagementPlugin)plugin.Plugin;
            RegisterPluginCustomization(obj, (IRunSheetCustomizationPlugin x) => x.RunSheetCustomizationConfigs, clientContainer, delegate(Guid x, RunSheetCustomizationConfig y)
            {
                AppGlobals.RunSheetCustomizationService.AddRunSheetCustomization(x, new RunSheetCustomization(y.RunSheetCalculator));
            });
            RegisterPluginCustomization(obj, (ISetupCustomizationPlugin x) => x.SetupSheetCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (IPlannedRunCustomizationPlugin x) => x.PlannedRunCustomizationConfigs, clientContainer, delegate(Guid x, PlannedRunCustomizationConfig y)
            {
                PlannedRunCustomizationService.AddPlannedRunCustomization(x, new PlannedRunCustomization(y.RunPlanCalculator));
            });
            RegisterPluginCustomization(obj, (ITyreSpecificationCustomizationPlugin x) => x.TyreSpecificationCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (ITyreSetCustomizationPlugin x) => x.TyreSetCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (ITrackCustomizationPlugin x) => x.TrackCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (IChampionshipCustomizationPlugin x) => x.ChampionshipCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (IEventCustomizationPlugin x) => x.EventCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (ICarCustomizationPlugin x) => x.CarCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (ISessionCarDataCustomizationPlugin x) => x.SessionObjectCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (IEventCarDataCustomizationPlugin x) => x.EventCarDataCustomizationConfigs, clientContainer);
            RegisterPluginCustomization(obj, (ITyreCustomizationPlugin x) => x.TyreCustomizationConfigurations, clientContainer);
            RegisterPluginCustomization(obj, (ILapCustomizationPlugin x) => x.LapCustomizationConfigs, clientContainer);
            if (obj is IHtmlReporterPlugin htmlReporterPlugin)
            {
                htmlReporterPlugin.InitializeReporting(clientContainer.DependencyResolver.Resolve<HTMLReportingService>());
            }
            if (obj is IExcelExporterPlugin excelExporterPlugin)
            {
                excelExporterPlugin.InitializeExcelExportService(new ExcelService());
            }
            if (obj is IIdealizedLapTimeCalculatorProviderPlugin idealizedLapTimeCalculatorProviderPlugin)
            {
                IdealizedLapCalculatorContainer.Calculators.AddRange(idealizedLapTimeCalculatorProviderPlugin.CalculatorProviders);
            }
            if (!(obj is ICgdPrimitiveProviderPlugin { PrimitiveDefinitions: not null } cgdPrimitiveProviderPlugin))
            {
                continue;
            }
            foreach (PrimitiveDefinition primitiveDefinition in cgdPrimitiveProviderPlugin.PrimitiveDefinitions)
            {
                if (string.IsNullOrEmpty(primitiveDefinition.AccountId))
                {
                    PrimitiveRegistry.Register(primitiveDefinition.Id, primitiveDefinition.Type);
                }
                else
                {
                    PrimitiveRegistry.RegisterForAccount(primitiveDefinition.Id, primitiveDefinition.AccountId, primitiveDefinition.Type);
                }
            }
        }
    }

    private static void RegisterPluginCustomization<TPluginInterface, TCustomizationClass>(
        IHhDataManagementPlugin plugin, Func<TPluginInterface, List<KeyValuePair<Guid, TCustomizationClass>>> getCustomization,
        IWpfClientContainer clientContainer, Action<Guid, TCustomizationClass> customRegistration = null)
        where TCustomizationClass : class
    {
        if (!(plugin is TPluginInterface arg))
        {
            return;
        }
        List<KeyValuePair<Guid, TCustomizationClass>> list = getCustomization(arg);
        PluginCustomizationContainer<TCustomizationClass> pluginCustomizationContainer =
            clientContainer.DependencyResolver.Resolve<PluginCustomizationContainer<TCustomizationClass>>();
        if (list == null)
        {
            return;
        }
        foreach (KeyValuePair<Guid, TCustomizationClass> item in list)
        {
            pluginCustomizationContainer.AddCustomization(item.Key, item.Value);
            customRegistration?.Invoke(item.Key, item.Value);
        }
    }
}
```

**RE notes**:
- Plugin allowlist: **only plugin version `"26.2"` is accepted** (`allowedVersionNumbers`), loaded with `strictMode: true` from the given directories into a temp dir `HHDataManagement` via `HHDev.Core` `PluginFrameworkHelpers.LoadPluginsWithCheckForDuplicates` (dedupe key = `PluginId`).
- `RegisterPlugins` fans out per-interface customization configs (run sheet, setup sheet, planned run, tyre, track, championship, event, car, session/event-car data, lap) into DI `PluginCustomizationContainer<T>`; optional account-scoped service registration delegates for run sheet / planned run. Also wires HTML reporter, Excel export, idealized-lap calculators, and CGD primitive registry (account-scoped vs global).
- The `anAccountId` parameter is **unused** in the body (callers pass `Guid.Empty`).

---

## HHDev.DataManagement.ApiClientWrapper.ApiClient (partial)

**Assembly**: `HHDev.DataManagement.ApiClientWrapper.dll`
**Kind**: `public class ApiClient : IDisposable, IApiClient` — marked **`[Obsolete("Use ApiClientV2 instead")]`**.
**Scope of this section**: partial — full decompile is ~4.7 MB / 34k+ lines (hundreds of endpoint wrappers). Below: class header/fields, constructors + serialization/HTTP setup, and the core request pipeline. Endpoint methods are thin wrappers: `BuildUrl(...)` → `SendRequest[WithJsonContent]` → `DeserializeResponseAsync<T>` → `ApiGetResult<T>`.

### Key signatures

```csharp
public static double DefaultTimeoutSeconds { get; set; }           // default 100s, max clamp 1200s
public JsonSerializerSettings JsonSerializerSettings { get; private set; }

public ApiClient(AuthenticationManager authenticationManager);
public ApiClient(AuthenticationManager authenticationManager, ApiClientConfig config);
public ApiClient(AuthenticationManager authenticationManager, string apiHost);
public ApiClient(AuthenticationManager authenticationManager, HttpClient httpClient);
public ApiClient(HttpClient httpClient, AuthenticationManager authenticationManager, ApiClientConfig config);

public void UpdateAuthenticationManager(AuthenticationManager authenticationManager);
public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri);
public async Task<HttpResponseMessage> SendRequestWithJsonContent(string accountId, HttpMethod method, string requestUri, object bodyObject);
public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri, HttpContent content);
public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri, HttpContent content, double? timeoutSeconds);
protected virtual HttpResponseMessage HandleSendRequestException(Exception ex, HttpStatusCode statusCode);
private static double GetFinalTimeoutSeconds(double? timeoutSeconds);
protected static string BuildUrlParameters(ApiGetOptions options, IDictionary<string, string> additionalParameters);
protected async Task<T> DeserializeResponseAsync<T>(HttpResponseMessage response);
public async Task<ApiGetResult<T>> SendGenericGetRequest<T>(string url, string accountId) where T : class;
public async Task<ApiGetResult<T>> SendGenericGetRequest<T>(string url, string accountId, object bodyObject) where T : class;
private string BuildUrl(ApiUrl apiUrl, ApiGetOptions options = null);
public string BuildUrl(string controllerAddress, Dictionary<string, string> urlParams);
public void Dispose();
```

### Decompiled C# (header + setup)

```csharp
namespace HHDev.DataManagement.ApiClientWrapper;

[Obsolete("Use ApiClientV2 instead")]
public class ApiClient : IDisposable, IApiClient
{
    private static double _defaultTimeoutSeconds = 100.0;
    private const double MAX_TIMEOUT_SECONDS = 1200.0;
    private const int RESPONSE_BUFFER_SIZE = 16384;

    private HttpClient _httpClient;
    private bool _shouldDisposeHttpClient;
    private readonly bool _rateLimitingEnabled;
    private readonly int _maxConcurrentRequests;
    protected JsonSerializerSettings _jsonDeserializerSettings;
    private volatile AuthenticationManager _authenticationManager;
    private SemaphoreSlim _concurrencyLimiter;

    public static double DefaultTimeoutSeconds
    {
        get => _defaultTimeoutSeconds;
        set
        {
            if (value <= 0.0)
                throw new ArgumentOutOfRangeException("value", "Timeout must be greater than zero.");
            _defaultTimeoutSeconds = value;
        }
    }

    public JsonSerializerSettings JsonSerializerSettings { get; private set; }

    public ApiClient(AuthenticationManager authenticationManager)
    {
        _authenticationManager = authenticationManager;
        CreateHttpClient("https://hhdm-api.hh-dev.com/");
        ConfigureSerialization();
    }

    public ApiClient(AuthenticationManager authenticationManager, ApiClientConfig config)
    {
        _rateLimitingEnabled = config.RateLimitingEnabled;
        _maxConcurrentRequests = config.MaxConcurrentRequests;
        string apiEndpoint = ApiClientHelpers.BuildBaseAddress(config.ApiHost, config.SslEnabled)?.AbsoluteUri ?? config.ApiHost;
        _authenticationManager = authenticationManager;
        CreateHttpClient(apiEndpoint, config.SslEnabled);
        ConfigureSerialization();
        ApiClientHelpers.AddUserAgentHeader(_httpClient);
        ApiClientHelpers.AddFeatureFlagHeader(_httpClient.DefaultRequestHeaders, config?.FeatureFlag);
        SetupLimiter();
    }

    public ApiClient(AuthenticationManager authenticationManager, string apiHost)
        : this(authenticationManager, new ApiClientConfig(apiHost))
    {
    }

    public ApiClient(AuthenticationManager authenticationManager, HttpClient httpClient)
    {
        _authenticationManager = authenticationManager;
        _httpClient = httpClient;
        ConfigureSerialization();
        ApiClientHelpers.AddUserAgentHeader(_httpClient);
    }

    public ApiClient(HttpClient httpClient, AuthenticationManager authenticationManager, ApiClientConfig config)
    {
        string uriString = config.ApiHost;
        _rateLimitingEnabled = config.RateLimitingEnabled;
        _maxConcurrentRequests = config.MaxConcurrentRequests;
        if ((Uri.TryCreate(config.ApiHost, UriKind.Absolute, out Uri result) ||
             Uri.TryCreate("https://" + config.ApiHost, UriKind.Absolute, out result)) && result.Scheme == Uri.UriSchemeHttps)
        {
            uriString = new Uri(result, "/").AbsoluteUri;
        }
        httpClient.BaseAddress = new Uri(uriString);
        _authenticationManager = authenticationManager;
        _httpClient = httpClient;
        ConfigureSerialization();
        ApiClientHelpers.AddUserAgentHeader(_httpClient);
        ApiClientHelpers.AddFeatureFlagHeader(_httpClient.DefaultRequestHeaders, config?.FeatureFlag);
        SetupLimiter();
    }

    private void SetupLimiter()
    {
        if (_rateLimitingEnabled)
        {
            _concurrencyLimiter = new SemaphoreSlim(_maxConcurrentRequests, _maxConcurrentRequests);
        }
    }

    private void ConfigureSerialization()
    {
        JsonSerializerSettings = new JsonSerializerSettings
        {
            DateParseHandling = DateParseHandling.None
        };
        _jsonDeserializerSettings = new JsonSerializerSettings
        {
            TypeNameHandling = TypeNameHandling.All,
            DateParseHandling = DateParseHandling.None,
            SerializationBinder = new ModelTypesBinder()
        }.ConfigureForNodaTime(DateTimeZoneProviders.Tzdb);
    }

    private void CreateHttpClient(string apiEndpoint, bool sslEnabled = true)
    {
        SocketsHttpHandler socketsHttpHandler = new SocketsHttpHandler
        {
            PooledConnectionLifetime = TimeSpan.FromMinutes(2L),
            AutomaticDecompression = DecompressionMethods.All
        };
        if (!sslEnabled)
        {
            // accepts ANY server certificate when SSL "disabled"
            socketsHttpHandler.SslOptions.RemoteCertificateValidationCallback =
                (object message, X509Certificate? cert, X509Chain? chain, SslPolicyErrors sslPolicyErrors) => true;
        }
        _shouldDisposeHttpClient = true;
        _httpClient = new HttpClient(socketsHttpHandler);
        if (!string.IsNullOrEmpty(apiEndpoint))
        {
            _httpClient.BaseAddress = new Uri(apiEndpoint);
        }
        _httpClient.Timeout = TimeSpan.FromMinutes(21L);
    }

    public void UpdateAuthenticationManager(AuthenticationManager authenticationManager)
    {
        _authenticationManager = authenticationManager;
    }

    protected async Task<T> DeserializeResponseAsync<T>(HttpResponseMessage response)
    {
        using Stream stream = await response.Content.ReadAsStreamAsync().ConfigureAwait(false);
        using StreamReader streamReader = new StreamReader(stream, Encoding.UTF8, detectEncodingFromByteOrderMarks: true, 16384);
        using JsonTextReader jsonReader = new JsonTextReader(streamReader);
        if (!(await jsonReader.ReadAsync().ConfigureAwait(false)))
        {
            return default(T);
        }
        return JsonSerializer.Create(_jsonDeserializerSettings).Deserialize<T>(jsonReader);
    }
```

### Decompiled C# (core request pipeline)

```csharp
    public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri)
    {
        return await SendRequest(accountId, method, requestUri, null).ConfigureAwait(false);
    }

    public async Task<HttpResponseMessage> SendRequestWithJsonContent(string accountId, HttpMethod method, string requestUri, object bodyObject)
    {
        StringContent content = new StringContent(JsonConvert.SerializeObject(bodyObject, JsonSerializerSettings), Encoding.UTF8, "application/json");
        return await SendRequest(accountId, method, requestUri, content).ConfigureAwait(false);
    }

    public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri, HttpContent content)
    {
        return await SendRequest(accountId, method, requestUri, content, null).ConfigureAwait(false);
    }

    public async Task<HttpResponseMessage> SendRequest(string accountId, HttpMethod method, string requestUri, HttpContent content, double? timeoutSeconds)
    {
        try
        {
            if (_concurrencyLimiter != null)
            {
                await _concurrencyLimiter.WaitAsync().ConfigureAwait(false);
            }
            HttpRequestMessage requestMessage = new HttpRequestMessage(method, requestUri);
            requestMessage.Headers.Add("AccountId", accountId);   // custom AccountId header on every request
            AuthenticationManager authenticationManager = _authenticationManager;
            if (authenticationManager != null &&
                !(await authenticationManager.PrepareHttpRequest(requestMessage).ConfigureAwait(false)))
            {
                return new HttpResponseMessage(HttpStatusCode.Unauthorized)
                {
                    ReasonPhrase = "Client failed to prepare authentication for this request - request was not sent (see AuthenticationManager.CheckApiAuthentication)"
                };
            }
            requestMessage.Content = content;
            using CancellationTokenSource tokenSource =
                new CancellationTokenSource(TimeSpan.FromSeconds(GetFinalTimeoutSeconds(timeoutSeconds)));
            return await _httpClient.SendAsync(requestMessage, tokenSource.Token).ConfigureAwait(false);
        }
        catch (TaskCanceledException ex)
        {
            return HandleSendRequestException(ex, HttpStatusCode.GatewayTimeout);
        }
        catch (Exception ex2)
        {
            return HandleSendRequestException(ex2, HttpStatusCode.InternalServerError);
        }
        finally
        {
            if (_concurrencyLimiter != null)
            {
                _concurrencyLimiter.Release();
            }
        }
    }

    protected virtual HttpResponseMessage HandleSendRequestException(Exception ex, HttpStatusCode statusCode)
    {
        return new HttpResponseMessage(statusCode);
    }

    private static double GetFinalTimeoutSeconds(double? timeoutSeconds)
    {
        if (!timeoutSeconds.HasValue || timeoutSeconds.Value <= 0.0)
        {
            return DefaultTimeoutSeconds;
        }
        return Math.Min(1200.0, timeoutSeconds.Value);
    }

    protected static string BuildUrlParameters(ApiGetOptions options, IDictionary<string, string> additionalParameters)
    {
        IDictionary<string, string> parameters = ApiClientHelpers.CollectUrlParameters(options, additionalParameters);
        return string.Join("&", parameters.Keys.Select((string x) => x + "=" + parameters[x]));
    }

    public async Task<T> WaitForUpload<T>(T addAttachmentResult, Func<T, Task<T>> retryFunc) where T : AddAttachmentResult
    {
        if (addAttachmentResult.AddAttachmentStatus == eAddAttachmentStatus.FailedToAdd)
        {
            return addAttachmentResult;
        }
        int attempts = 1;
        while ((addAttachmentResult.AddAttachmentStatus == eAddAttachmentStatus.FailedToUpload ||
                addAttachmentResult.AddAttachmentStatus == eAddAttachmentStatus.FailedToUpdateServerStatus) &&
               attempts <= 20)
        {
            addAttachmentResult = await retryFunc(addAttachmentResult).ConfigureAwait(false);
            await Task.Delay(500).ConfigureAwait(false);
            attempts++;
        }
        return addAttachmentResult;
    }

    public async Task DownloadFile(ApiAttachmentModel attachmentModel, string destinationFilePath, bool isCompressed = true)
    {
        if (isCompressed)
            await DownloadCompressedFile(attachmentModel, destinationFilePath).ConfigureAwait(false);
        else
            await DownloadUncompressedFile(attachmentModel, destinationFilePath).ConfigureAwait(false);
    }

    public async Task DownloadUncompressedFile(ApiAttachmentModel attachmentModel, string destinationFilePath, CancellationToken ct = default)
        => await DownloadFileInternal(attachmentModel, destinationFilePath, isCompressed: false, ct).ConfigureAwait(false);

    public async Task DownloadCompressedFile(ApiAttachmentModel attachmentModel, string destinationFilePath, CancellationToken ct = default)
        => await DownloadFileInternal(attachmentModel, destinationFilePath, isCompressed: true, ct).ConfigureAwait(false);

    private async Task DownloadFileInternal(ApiAttachmentModel attachmentModel, string destinationFilePath, bool isCompressed, CancellationToken ct)
    {
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(destinationFilePath) ?? string.Empty);
            await using FileStream fileStream = new FileStream(destinationFilePath, FileMode.Create, FileAccess.Write, FileShare.None);
            using HttpResponseMessage response = await _httpClient
                .GetAsync(attachmentModel.SignedURL, HttpCompletionOption.ResponseHeadersRead, ct).ConfigureAwait(false);
            response.EnsureSuccessStatusCode();
            if (isCompressed)
            {
                await using (LZ4DecoderStream lz4 = LZ4Stream.Decode(await response.Content.ReadAsStreamAsync(ct).ConfigureAwait(false)))
                {
                    await lz4.CopyToAsync(fileStream, ct).ConfigureAwait(false);
                }
                return;
            }
            await using Stream responseStream = await response.Content.ReadAsStreamAsync(ct).ConfigureAwait(false);
            await responseStream.CopyToAsync(fileStream, ct).ConfigureAwait(false);
        }
        catch (OperationCanceledException)
        {
            File.Delete(destinationFilePath);   // cancel → cleanup partial file
        }
    }

    public async Task<ApiGetResult<T>> SendGenericGetRequest<T>(string url, string accountId) where T : class
        => await SendGenericGetRequest<T>(url, accountId, null).ConfigureAwait(false);

    public async Task<ApiGetResult<T>> SendGenericGetRequest<T>(string url, string accountId, object bodyObject) where T : class
    {
        HttpResponseMessage response = (bodyObject != null)
            ? await SendRequestWithJsonContent(accountId, HttpMethod.Get, url, bodyObject).ConfigureAwait(false)
            : await SendRequest(accountId, HttpMethod.Get, url).ConfigureAwait(false);
        using (response)
        {
            if (!response.IsSuccessStatusCode)
            {
                return new ApiGetResult<T>(null, success: false, response.StatusCode, response.ReasonPhrase);
            }
            return new ApiGetResult<T>(await DeserializeResponseAsync<T>(response).ConfigureAwait(false),
                success: true, response.StatusCode, null);
        }
    }

    private string BuildUrl(ApiUrl apiUrl, ApiGetOptions options = null)
    {
        string text = BuildUrlParameters(options, apiUrl.Parameters);
        return !string.IsNullOrEmpty(text) ? apiUrl.Path + "?" + text : apiUrl.Path;
    }

    public string BuildUrl(string controllerAddress, Dictionary<string, string> urlParams)
    {
        string text = controllerAddress ?? "";
        string text2 = BuildUrlParameters(null, urlParams);
        if (!string.IsNullOrEmpty(text2))
        {
            text = text + "?" + text2;
        }
        return text;
    }

    public void Dispose()
    {
        if (_shouldDisposeHttpClient)
        {
            _httpClient?.Dispose();
        }
    }
}
```

**RE notes**:
- Default API host hard-coded `https://hhdm-api.hh-dev.com/`. Every request carries a custom **`AccountId`** header; auth is applied via `AuthenticationManager.PrepareHttpRequest` (failure → synthetic 401 without sending).
- Rate limiting via `SemaphoreSlim(_maxConcurrentRequests)`; per-request timeout = `min(1200, timeoutSeconds ?? DefaultTimeoutSeconds=100)`; HttpClient itself has 21-minute timeout; `TaskCanceledException` maps to 504, other exceptions to 500 (virtual `HandleSendRequestException`).
- Deserialization uses Newtonsoft with **`TypeNameHandling.All`** + `ModelTypesBinder` + NodaTime tzdb — polymorphic payload typing on the wire.
- `sslEnabled=false` disables remote cert validation entirely (dev/test hook).
- Attachment downloads go to pre-signed `SignedURL` with optional LZ4 decompression; upload retry loop: max 20 attempts × 500 ms.
- The `Get` + JSON-body overload (`SendGenericGetRequest`) performs GET with a JSON body — unusual but present.
- Endpoint wrappers (definitions, setups, events, cars, mileage, ambient measurements, graph profiles, canopy simulations, attachments, expressions, …) omitted; they all funnel through the pipeline above. Full raw decompile kept at `%TEMP%\hhdm-tools\decomp\ApiClient.utf8.txt` (34,486 lines) if a specific endpoint is needed later.

---

## HHDev.DataManagement.ApiClientWrapper.ApiClientHelpers

**Assembly**: `HHDev.DataManagement.ApiClientWrapper.dll`
**Kind**: `internal static class`

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using HHDev.Core.Enums;
using HHDev.DataManagement.Api.Models;
using HHDev.DataManagement.ApiClientWrapper.Enums;

namespace HHDev.DataManagement.ApiClientWrapper;

internal static class ApiClientHelpers
{
    public static UpdateModel BuildServerStateAvailableUpdate()
    {
        UpdateModel updateModel = new UpdateModel();
        int num = 1;
        List<ParameterUpdateModel> list = new List<ParameterUpdateModel>(num);
        CollectionsMarshal.SetCount(list, num);
        Span<ParameterUpdateModel> span = CollectionsMarshal.AsSpan(list);
        span[0] = new ParameterUpdateModel("ServerAttachedFileState", "2");
        updateModel.ParameterUpdates = list;
        return updateModel;
    }

    public static List<KeyValuePair<string, string>> BuildAttachmentUploadHeaders(ApiAddAttachedFileResponse apiAddAttachedFileResponse)
    {
        int num = 2;
        List<KeyValuePair<string, string>> list = new List<KeyValuePair<string, string>>(num);
        CollectionsMarshal.SetCount(list, num);
        Span<KeyValuePair<string, string>> span = CollectionsMarshal.AsSpan(list);
        span[0] = new KeyValuePair<string, string>("x-amz-tagging",
            "AccountId=" + apiAddAttachedFileResponse.AccountId + "&UserId=" + apiAddAttachedFileResponse.UserId);
        span[1] = new KeyValuePair<string, string>("User-Agent",
            $"HHDMApiClientWrapper {Assembly.GetExecutingAssembly().GetName().Version} {apiAddAttachedFileResponse.UserId}");
        return list;
    }

    public static void RequireCompressedUpload(ApiPrepareUploadModel model)
    {
        if (!model.UseCompression)
        {
            throw new NotSupportedException("Uncompressed attached file uploads are currently not supported by this wrapper.");
        }
    }

    public static void RequireSeekableStream(Stream sourceStream)
    {
        if (!sourceStream.CanSeek)
        {
            throw new ArgumentException("Stream must support seeking.", "sourceStream");
        }
    }

    public static Uri BuildBaseAddress(string apiHost, bool sslEnabled)
    {
        if ((Uri.TryCreate(apiHost, UriKind.Absolute, out Uri result) && result.Scheme == Uri.UriSchemeHttps) ||
            (Uri.TryCreate(apiHost, UriKind.Absolute, out result) && !sslEnabled && result.Scheme == Uri.UriSchemeHttp) ||
            Uri.TryCreate("https://" + apiHost, UriKind.Absolute, out result))
        {
            return new Uri(result, "/");
        }
        return null;
    }

    public static IDictionary<string, string> CollectUrlParameters(ApiGetOptions options, IDictionary<string, string> additionalParameters)
    {
        if (additionalParameters == null)
        {
            additionalParameters = new Dictionary<string, string>();
        }
        if (options != null)
        {
            if (options.ParametersToInclude != null && options.ParametersToInclude.Count > 0)
            {
                additionalParameters.Add("parametersToInclude", string.Join(",", options.ParametersToInclude));
            }
            if (options.AdditionalUrlParameters != null)
            {
                foreach (KeyValuePair<string, string> additionalUrlParameter in options.AdditionalUrlParameters)
                {
                    additionalParameters[additionalUrlParameter.Key] = additionalUrlParameter.Value;
                }
            }
        }
        return additionalParameters;
    }

    public static string BuildCanopySimulationStatusUrl(string canopyProfileId, IEnumerable<string> setupIds)
    {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.Append("CanopySimulations/Status?canopyProfileId=").Append(Uri.EscapeDataString(canopyProfileId ?? string.Empty));
        if (setupIds != null)
        {
            foreach (string setupId in setupIds)
            {
                stringBuilder.Append("&setupIds=").Append(Uri.EscapeDataString(setupId ?? string.Empty));
            }
        }
        return stringBuilder.ToString();
    }

    public static bool IsListReturnType(eEquationNodeReturnTypes returnType)
    {
        switch (returnType)
        {
        case eEquationNodeReturnTypes.ListOfFlatModel:
        case eEquationNodeReturnTypes.ListOfDouble:
        case eEquationNodeReturnTypes.ListOfString:
        case eEquationNodeReturnTypes.ListOfBoolean:
            return true;
        default:
            return false;
        }
    }

    public static IReadOnlyList<string> ValidateDefinitionUpdate(UpdateCustomPropertyDefinitionModel updateModel)
    {
        HashSet<ePropertyType> allowedPropertyTypes = new HashSet<ePropertyType>
        {
            ePropertyType.Double, ePropertyType.Text, ePropertyType.DateTime, ePropertyType.Boolean
        };
        List<string> list = new List<string>();
        foreach (AddParameterModel item in updateModel.ParametersToAdd.Where((AddParameterModel x) => !allowedPropertyTypes.Contains(x.PropertyType)))
        {
            list.Add($"The property type '{item.PropertyType}' is not supported for parameter '{item.Name}'. Supported types are: Double (0), Text (1), DateTime (3), Boolean (4). For Part parameters, use PartParametersToAdd.");
        }
        foreach (AddPartParameterModel item2 in updateModel.PartParametersToAdd.Where((AddPartParameterModel x) => string.IsNullOrEmpty(x.PartCategoryId)))
        {
            list.Add("PartCategoryId is required for part parameter '" + item2.Name + "'.");
        }
        foreach (AddAssemblyParameterModel item3 in updateModel.AssemblyParametersToAdd.Where((AddAssemblyParameterModel x) => string.IsNullOrEmpty(x.AssemblyTypeId)))
        {
            list.Add("AssemblyTypeId is required for assembly parameter '" + item3.Name + "'.");
        }
        foreach (AddMathParameterModel item4 in updateModel.MathParametersToAdd.Where((AddMathParameterModel x) => !Enum.IsDefined(typeof(eEquationNodeReturnTypes), x.IntendedReturnType)))
        {
            list.Add($"The IntendedReturnType value '{item4.IntendedReturnType}' is not valid for math parameter '{item4.Name}'. Use a single valid enum value, not a combination.");
        }
        foreach (DefinitionParameterUpdateModel item5 in updateModel.MathParametersToUpdate)
        {
            ParameterUpdateModel parameterUpdateModel = item5.ParameterUpdates?.FirstOrDefault((ParameterUpdateModel x) => x.Name == "IntendedReturnType");
            if (parameterUpdateModel != null && int.TryParse(parameterUpdateModel.Value, out var result) && !Enum.IsDefined(typeof(eEquationNodeReturnTypes), result))
            {
                list.Add($"The IntendedReturnType value '{result}' is not valid for math parameter '{item5.Id}'. Use a single valid enum value, not a combination.");
            }
        }
        return list;
    }

    public static IReadOnlyList<string> ValidateDefinitionCreate(string accountId, DefinitionCreateModel model)
    {
        List<string> list = new List<string>();
        if (string.IsNullOrEmpty(accountId))
        {
            list.Add("Required parameter 'accountId' cannot be null or empty.");
        }
        if (string.IsNullOrWhiteSpace(model.Name))
        {
            list.Add("Name is required.");
        }
        if (string.IsNullOrEmpty(model.CustomPropertyDefinitionType))
        {
            list.Add("CustomPropertyDefinitionType is required.");
            return list;
        }
        List<eCustomPropertyDefinitionType> list2 = DefinitionsHelper.BuildListOfAllowedDefinitionTypes();
        if (!Enum.TryParse<eCustomPropertyDefinitionType>(model.CustomPropertyDefinitionType, out var result) || !list2.Contains(result))
        {
            list.Add($"CustomPropertyDefinitionType '{model.CustomPropertyDefinitionType}' is not valid. Allowed types: {string.Join(", ", list2)}.");
        }
        return list;
    }

    public static void ThrowIfDefinitionInvalid(IReadOnlyList<string> validationErrors)
    {
        if (validationErrors.Count > 0)
        {
            throw new ArgumentException(string.Join(Environment.NewLine, validationErrors));
        }
    }

    public static void AddFeatureFlagHeader(HttpHeaders headers, string featureFlag)
    {
        if (!string.IsNullOrEmpty(featureFlag))
        {
            headers.Add("FeatureFlag", featureFlag);
        }
    }

    public static void AddUserAgentHeader(HttpClient httpClient)
    {
        Version version = Assembly.GetExecutingAssembly().GetName().Version;
        httpClient.DefaultRequestHeaders.UserAgent.Add(
            new ProductInfoHeaderValue(new ProductHeaderValue("HHDev.DataManagement.ApiClientWrapper", version.ToString())));
        httpClient.DefaultRequestHeaders.UserAgent.Add(
            new ProductInfoHeaderValue("(" + Environment.OSVersion.ToString().Replace(" ", "_") + ")"));
    }
}
```

**RE notes**: S3-style attachment upload headers (`x-amz-tagging` with AccountId/UserId), compressed-upload-only policy, URL building (`parametersToInclude` + extra params), definition create/update validation rules, custom `FeatureFlag` header.

---

## HHDev.Sync.Core.Messages.SyncableMessage

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public abstract class SyncableMessage : IMessage, IItemIdMessage, IPropertyPayloadMessage, ISyncableMessage`

### Decompiled C#

```csharp
using System;
using System.Text.Json.Serialization;
using HHDev.Core.NETStandard;
using HHDev.Core.NETStandard.Enums;
using HHDev.Core.NETStandard.Messaging.Interfaces;
using HHDev.Sync.Core.Messages.Interfaces;
using HHDev.Sync.Core.Messages.Payloads;

namespace HHDev.Sync.Core.Messages;

public abstract class SyncableMessage : IMessage, IItemIdMessage, IPropertyPayloadMessage, ISyncableMessage
{
    protected Guid _senderId;
    protected Guid _targetId;
    protected Guid _traceId = Guid.NewGuid();
    protected string _itemId;
    protected Guid _userId;
    protected Guid _accountId;
    protected Guid _sourceDatabaseId;
    protected Guid _syncOperationId;
    protected DateTime _syncOperationTime;

    [JsonPropertyName("p")]
    public object RawPayload { get; set; }

    IMessagePayload IPropertyPayloadMessage.Payload => Payload;

    [JsonIgnore]
    public SyncPayload Payload
    {
        get
        {
            if (RawPayload == null) return null;
            if (RawPayload is SyncPayload result) return result;
            throw new NotSupportedException();
        }
        set { RawPayload = value; }
    }

    [JsonPropertyName("iid")]    public string ItemId { get; internal set; }          // backing _itemId, no-op set if unchanged
    [JsonPropertyName("soid")]   public Guid SyncOperationId { get; internal set; }
    [JsonPropertyName("sot")]    public DateTime SyncOperationTime { get; internal set; }
    [JsonPropertyName("uid")]    public Guid UserId { get; internal set; }
    [JsonPropertyName("aid")]    public Guid AccountId { get; internal set; }
    [JsonPropertyName("dbid")]   public Guid SourceDatabaseId { get; internal set; }
    [JsonPropertyName("sid")]    public Guid SenderId { get; internal set; }
    [JsonPropertyName("tid")]    public Guid TargetId { get; internal set; }
    [JsonPropertyName("trid")]   public Guid TraceId { get; internal set; }

    [JsonIgnore] public Guid? ParentTraceId { get; set; }
    [JsonIgnore]
    public string LogTraceId => !ParentTraceId.HasValue ? TraceId.ToString() : $"{ParentTraceId}/{TraceId}";

    [JsonIgnore] public abstract eUpdateType UpdateType { get; }
    [JsonIgnore] public Guid[] TargetControlIds { get; set; }
    [JsonIgnore] public Guid[] BlacklistedIds { get; set; }

    protected SyncableMessage() { }

    public virtual SyncableMessage Clone() => GetClone(this);
    public virtual SyncableMessage Clone(Guid aSenderId)
    {
        SyncableMessage clone = GetClone(this);
        clone.SenderId = aSenderId;
        return clone;
    }
    public virtual SyncableMessage Clone(Guid aSenderId, DateTime aSyncOperationTime)
    {
        SyncableMessage clone = GetClone(this);
        clone.SenderId = aSenderId;
        clone.SyncOperationTime = aSyncOperationTime;
        return clone;
    }
    public virtual SyncableMessage Clone(Guid aSenderId, Guid aUserId, DateTime aSyncOperationTime)
    {
        SyncableMessage clone = GetClone(this);
        clone.SenderId = aSenderId;
        clone.UserId = aUserId;
        clone.SyncOperationTime = aSyncOperationTime;
        return clone;
    }

    private SyncableMessage GetClone(SyncableMessage msg)
    {
        // deep clone via serialize/deserialize round-trip through the global serializer
        using IReadOnlyMemoryOwner<byte> readOnlyMemoryOwner = SyncGlobals.MessageSerializer.SerializeMessage(msg);
        return (SyncableMessage)SyncGlobals.MessageSerializer.DeserializeMessage(readOnlyMemoryOwner.Memory);
    }

    public SyncableMessage(SyncMessageBuilder builder)
    {
        if (builder == null) throw new Exception("SyncableMessage builder cannot be null");
        if (builder.SenderId == Guid.Empty) throw new Exception("SyncableMessage SenderId cannot be empty");
        if (builder.ItemId == null) throw new Exception("SyncableMessage ItemId cannot be null");
        if (builder.SyncOperationId == Guid.Empty) throw new Exception("SyncableMessage SyncOperationId cannot be empty");
        if (builder.UserId == Guid.Empty) throw new Exception("SyncableMessage UserId cannot be empty");
        if (builder.AccountId == Guid.Empty) throw new Exception("SyncableMessage AccountId cannot be empty");
        if (!builder.SyncOperationTime.HasValue) throw new Exception("SyncableMessage SyncOperationTime cannot be empty");
        if (builder.SourceDatabaseId == Guid.Empty) throw new Exception("SyncableMessage SourceDatabaseId cannot be empty");
        _senderId = builder.SenderId;
        _itemId = builder.ItemId;
        _userId = builder.UserId;
        _accountId = builder.AccountId;
        _sourceDatabaseId = builder.SourceDatabaseId;
        _targetId = builder.TargetId;
        _syncOperationId = builder.SyncOperationId;
        _syncOperationTime = builder.SyncOperationTime.Value;
    }
}
```

**RE notes**:
- Compact System.Text.Json wire names (`p`, `iid`, `soid`, `sot`, `uid`, `aid`, `dbid`, `sid`, `tid`, `trid`) — matches the short-field sync protocol.
- `TargetId` is NOT validated by the builder ctor (only read into `_targetId`); `TargetControlIds`/`BlacklistedIds` are ignored in JSON.
- Clones are serialize→deserialize round-trips through `SyncGlobals.MessageSerializer` (deep copy, requires serializer initialized).
- Builder ctor enforces non-empty SenderId/UserId/AccountId/SourceDatabaseId/SyncOperationId, non-null ItemId, present SyncOperationTime.

---

## HHDev.Sync.Core.Messages.Payloads.PropertyPayload

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public class PropertyPayload : SyncPayload`

### Decompiled C#

```csharp
using System.Collections.Generic;
using System.Linq;
using HHDev.Core.NETStandard.Logging;
using HHDev.Core.NETStandard.Messaging.Interfaces;
using HHDev.Core.NETStandard.Messaging.Payloads;
using NLog;

namespace HHDev.Sync.Core.Messages.Payloads;

public class PropertyPayload : SyncPayload
{
    protected static ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>();

    public override void ResolveConflict(SyncPayload aConflictPayload)
    {
        PropertyPayload propertyPayload = (PropertyPayload)aConflictPayload;
        if (base.Properties == null || propertyPayload.Properties == null)
        {
            return;
        }
        List<PayloadProperty> list = new List<PayloadProperty>();
        foreach (PayloadProperty propertyUpdate in base.Properties)
        {
            // collect incoming properties whose Key matches any local updated key
            List<PayloadProperty> collection = propertyPayload.Properties
                .Where((PayloadProperty p) => p.Key == propertyUpdate.Key).ToList();
            list.AddRange(collection);
        }
        foreach (PayloadProperty item in list)
        {
            _logger.DebugExt("{453313F7-6C36-442A-BF43-3B8F0539AB90}",
                "conflict resolution base property, removing prop " + item.Key + " with value " + item.Value);
            propertyPayload.Properties.Remove(item);   // strip conflicting keys from the INCOMING payload
        }
    }

    public override void RemoveConflictProperty(IPayloadProperty conflictProperty)
    {
        if (base.Properties != null)
        {
            base.Properties.RemoveAll((PayloadProperty x) => x.Key == conflictProperty.Key);
        }
    }
}
```

**RE notes**: `ResolveConflict` treats `this` as the local winner and removes matching keys from the *argument* (incoming) payload. `RemoveConflictProperty` removes by key from self.

---

## HHDev.Sync.Core.Messages.Payloads.CustomPropertyPayload

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public class CustomPropertyPayload : PropertyPayload, ICustomPropertyPayload, IMessagePayload`

### Decompiled C#

```csharp
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using HHDev.Core.NETStandard.Messaging.Interfaces;
using HHDev.Sync.Core.Models;

namespace HHDev.Sync.Core.Messages.Payloads;

public class CustomPropertyPayload : PropertyPayload, ICustomPropertyPayload, IMessagePayload
{
    [JsonPropertyName("di")] public virtual string CustomPropertyDefinitionId { get; set; }
    [JsonPropertyName("c")]  public List<SyncPayloadCustomProperty> CustomProperties { get; set; } = new();
    [JsonPropertyName("ca")] public List<CustomCollectionItemUpdate> CollectionItemsAdded { get; set; } = new();
    [JsonPropertyName("cu")] public List<CustomCollectionItemUpdate> CollectionItemsUpdated { get; set; } = new();
    [JsonPropertyName("cd")] public List<CustomCollectionItemDelete> CollectionItemsDeleted { get; set; } = new();
    [JsonPropertyName("co")] public List<CollectionOrderUpdate> CollectionOrderUpdates { get; set; } = new();
    [JsonPropertyName("caa")] public List<CustomAttachedFileUpdate> CollectionItemAttachedFilesAdded { get; set; } = new();
    [JsonPropertyName("cau")] public List<CustomAttachedFileUpdate> CollectionItemAttachedFilesUpdated { get; set; } = new();
    [JsonPropertyName("cad")] public List<CustomAttachedFileDelete> CollectionItemAttachedFilesDeleted { get; set; } = new();

    public override void ResolveConflict(SyncPayload aConflictPayload)
    {
        base.ResolveConflict(aConflictPayload);
        CustomPropertyPayload customPropertyPayload = (CustomPropertyPayload)aConflictPayload;
        if (CustomProperties != null && customPropertyPayload.CustomProperties != null)
        {
            List<SyncPayloadCustomProperty> list = new List<SyncPayloadCustomProperty>();
            foreach (SyncPayloadCustomProperty propertyUpdate in CustomProperties)
            {
                // incoming custom props with same Key AND CustomPropertyType
                List<SyncPayloadCustomProperty> collection = customPropertyPayload.CustomProperties
                    .Where((SyncPayloadCustomProperty p) =>
                        p.Key == propertyUpdate.Key && p.CustomPropertyType == propertyUpdate.CustomPropertyType).ToList();
                list.AddRange(collection);
            }
            foreach (SyncPayloadCustomProperty item in list)
            {
                PropertyPayload._logger.DebugExt("{F4D43F26-B274-4A47-B6EA-4694D20EFE01}",
                    $"conflict resolution custom property, removing prop {item.Key} with type {item.CustomPropertyType} with value {item.Value?.ToString()}");
                customPropertyPayload.CustomProperties.Remove(item);
            }
        }
        if (CollectionItemsUpdated != null && customPropertyPayload.CollectionItemsUpdated != null)
        {
            foreach (CustomCollectionItemUpdate thisCollectionItem in CollectionItemsUpdated)
            {
                foreach (CustomCollectionItemUpdate item2 in customPropertyPayload.CollectionItemsUpdated
                    .Where((CustomCollectionItemUpdate x) => x.CollectionItemId == thisCollectionItem.CollectionItemId))
                {
                    List<SyncPayloadCustomProperty> list2 = new List<SyncPayloadCustomProperty>();
                    foreach (SyncPayloadCustomProperty propertyUpdate2 in thisCollectionItem.CustomProperties)
                    {
                        List<SyncPayloadCustomProperty> collection2 = item2.CustomProperties
                            .Where((SyncPayloadCustomProperty p) =>
                                p.Key == propertyUpdate2.Key && p.CustomPropertyType == propertyUpdate2.CustomPropertyType).ToList();
                        list2.AddRange(collection2);
                    }
                    foreach (SyncPayloadCustomProperty item3 in list2)
                    {
                        PropertyPayload._logger.DebugExt("{C72D9D53-40CC-4DC7-A674-9C027E72171E}",
                            $"conflict resolution custom property, removing prop {item3.Key} with type {item3.CustomPropertyType} with value {item3.Value?.ToString()}");
                        customPropertyPayload.CustomProperties.Remove(item3);
                    }
                }
            }
        }
        ResolveUpdateDeleteConflict(CollectionItemsUpdated, customPropertyPayload.CollectionItemsDeleted);
        ResolveUpdateDeleteConflict(customPropertyPayload.CollectionItemsUpdated, CollectionItemsDeleted);
        if (CollectionItemAttachedFilesUpdated != null && customPropertyPayload.CollectionItemAttachedFilesUpdated != null)
        {
            ResolveAttachedFilesUpdateUpdateConflict(CollectionItemAttachedFilesUpdated, customPropertyPayload.CollectionItemAttachedFilesUpdated);
        }
        ResolveAttachedFilesUpdateDeleteConflict(CollectionItemAttachedFilesUpdated, customPropertyPayload.CollectionItemAttachedFilesDeleted);
        ResolveAttachedFilesUpdateDeleteConflict(customPropertyPayload.CollectionItemAttachedFilesUpdated, CollectionItemsDeleted);
    }

    protected void ResolveAttachedFilesUpdateUpdateConflict(IEnumerable<CustomAttachedFileUpdate> updates, List<CustomAttachedFileUpdate> conflicts)
    {
        foreach (CustomAttachedFileUpdate update in updates)
        {
            conflicts.RemoveAll((CustomAttachedFileUpdate x) => x.AttachedFileId == update.AttachedFileId);
        }
    }

    protected void ResolveAttachedFilesUpdateDeleteConflict(List<CustomAttachedFileUpdate> updates, List<CustomAttachedFileDelete> deletes)
    {
        foreach (CustomAttachedFileDelete item in deletes)
        {
            updates.RemoveAll((CustomAttachedFileUpdate x) => x.AttachedFileId == item.AttachedFileId);
        }
    }

    private void ResolveUpdateDeleteConflict(List<CustomCollectionItemUpdate> updates, List<CustomCollectionItemDelete> deletes)
    {
        foreach (CustomCollectionItemDelete item in deletes)
        {
            updates.RemoveAll((CustomCollectionItemUpdate x) => x.CollectionItemId == item.CollectionItemId);
        }
    }

    public override void RemoveConflictProperty(IPayloadProperty conflictProperty)
    {
        base.RemoveConflictProperty(conflictProperty);
        if (CustomProperties != null)
        {
            CustomProperties.RemoveAll((SyncPayloadCustomProperty x) => x.Key == conflictProperty.Key);
        }
    }
}
```

**RE notes**:
- Custom-property conflict matching requires **Key + CustomPropertyType** equality; collection-item conflicts match on `CollectionItemId`; attached-file conflicts on `AttachedFileId`.
- Update-vs-delete cross resolution is bidirectional (local updates vs incoming deletes, and vice versa) for both collection items and attached files.
- Compact JSON names (`di`, `c`, `ca`, `cu`, `cd`, `co`, `caa`, `cau`, `cad`) — same short-name wire style as `SyncableMessage`.
- One subtle asymmetry in the decompiled body: the last `ResolveAttachedFilesUpdateDeleteConflict(customPropertyPayload.CollectionItemAttachedFilesUpdated, CollectionItemsDeleted)` passes `CollectionItemsDeleted` (a *collection-item* delete list) where the parameter type is `List<CustomAttachedFileDelete>` — this is how ILSpy rendered the call; treat as possible decompiler/type-erasure artifact and re-verify against IL if that path matters.

---

## HHDev.Sync.Core.ConflictResolution.ConflictDefinition

**Assembly**: `HHDev.Sync.Core.dll`
**Kind**: `public class`

### Decompiled C#

```csharp
using System;
using System.Collections.Generic;
using HHDev.Core.NETStandard.Enums;

namespace HHDev.Sync.Core.ConflictResolution;

public class ConflictDefinition
{
    public Type MessageType { get; set; }
    public List<ConflictDefinitionItem> Items { get; set; }
    public eUpdateType UpdateType { get; set; }

    public ConflictDefinition(Type messageType, List<ConflictDefinitionItem> items, eUpdateType updateType)
    {
        MessageType = messageType;
        Items = items;
        UpdateType = updateType;
    }

    public static ConflictDefinition CreateForUpdate(Type updateMessageType, Type deleteMessageType)
    {
        return new ConflictDefinition(updateMessageType, new List<ConflictDefinitionItem>(), eUpdateType.Update);
    }

    public static ConflictDefinition CreateForDelete(Type deleteMessageType, Type updateMessageType)
    {
        return new ConflictDefinition(deleteMessageType, new List<ConflictDefinitionItem>(), eUpdateType.Delete);
    }

    public ConflictDefinition AddConflictDefinitionItem(ConflictDefinitionItem conflictDefinitionItem)
    {
        Items.Add(conflictDefinitionItem);
        return this;
    }
}
```

**RE notes**: fluent factory used to build the `Dictionary<Type, ConflictDefinition>` consumed by `ClientConflictResolver.IsConflict` / `ConflictResolutionFunctions`. Note `CreateForUpdate`/`CreateForDelete` ignore their second type parameter (the delete/update counterpart is not stored here — pairing happens per `ConflictDefinitionItem.OtherMessageType`).
