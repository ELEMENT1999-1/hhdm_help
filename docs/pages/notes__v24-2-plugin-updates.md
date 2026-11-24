---
url: https://help.hh-dm.com/notes/v24-2-plugin-updates/
---

On this pagev24.2 plugin updates

The goal of this document is to outline the changes that are required to update an HH DM plugin from v24.1 to v24.2.

Please note that not all changes may apply to all plugins.

Preview versionâ

To make it easier to migrate the plugin and allow testing the software before it is released a preview version of HH Data Management v24.2 has been made available.

The preview version has the following limitations:

the version cannot push sync ops to the server

once a local database is used with this preview version, this local database cannot be used again with the release version of HH Data Management. Please refer to these instructions to see how to set up a separate database for use with this preview version.

Downloading and running the clientâ

If you do not have access to this version, please let us know and it will be added to your account. The preview version is available on the Other â Releases page of the website:

The version can also be downloaded directly using this link: https://hh-dev.com/latest/HHDM-v24.2

Please note that this version is portable, meaning that it doesnât need to be installed. Unzip the downloaded directory and launch the software using the HHDev.DataManagement.Client.HHDataManagement.exe file.

Plugin settings updateâ

To make sure the references are linked to the right version of HH DM, you will need to put the path of the HH DM 24 preview version in the project file of the plugin:

Debugging a pluginâ

Please refer to these instructions for how to debug a plugin from Visual Studio.

csproj updatesâ

The DevExpress version has been updated from v23.1 to v23.2. As such all references in the project file will need to be updated. A simple find and replace for v23.1 â v23.2 in the csproj file should be sufficient.

See https://github.com/hh-development/HHDev.HHDM.DesktopPlugin/blob/release/v24.2/HHDev.HHDM.DesktopPlugin/HHDev.HHDM.DesktopPlugin.csproj for an example.

CID changesâ

To eliminate memory leaks, if you have a view that uses the XAML control HHColumnItemDisplay, this should be closed explicitly when the view is closed. The easiest way to do that is to give the CID a name in the XAML and then override the CloseDocument function and call dispose on the CID.

Interface changesâ

ChangeTrackingEditViewModelâ

added:

void HandleCloseViewModel();

IBasicEntityFlatModelâ

added:

Lazy<Dictionary<string, BaseFlatModelEquationNode>> CachedExpressionEvaluations { get; }
Lazy<ObservableDictionary<string, IBindingProxy>> BindingProxies { get; }
void ClearBindingProxies(string id, bool dispose);
void CopyValuesIn(IBasicEntityFlatModel aModelToCopyFrom, bool copyAll, HashSet<string> paramsToCopy, string userId);

Containersâ

In HH DM v24.2 we eliminated some static global variables. As a result of this, all view models now have a IWpfClientContainer or IClientCoreContainer argument that need to get passed to them. For example:

public RunsheetViewModel(PluginCustomizationContainer<RunSheetCustomizationConfig> runSheetCustomization, PluginCustomizationContainer<LapCustomizationConfig> lapCustomization) : base(runSheetCustomization, lapCustomization)

becomes

public RunsheetViewModel(PluginCustomizationContainer<RunSheetCustomizationConfig> runSheetCustomization, PluginCustomizationContainer<LapCustomizationConfig> lapCustomization, IWpfClientContainer container) : base(runSheetCustomization, lapCustomization, container)

WpfSetupComparisonViewModel has 2 new parameters in the constructor:

IEntitySelectionService entitySelectionService

IClientCoreContainer container

CGD changesâ

The CGD (custom grid display) is what is used to build the runsheets view. In v24.2 this component has been rewritten and there is now a designer in the software that allows these displays to be customized within the software (same concept as the CID). As a result of this, some class names and namespaces have changed.

GridLength.GridUnitType â eGridUnitType

RowDefinition â HHRowDefinition. It takes an enum as input of type: eGridUnitType

ColumnDefinition â HHColumnDefinition. It takes an enum as input of type: eGridUnitType

PrimitiveControlReference â PrimitiveControlReferenceDefinition

GridLayoutDefinition â GridLayoutItem

GridLayoutItemDefinition â GridItemDefinition

ScrollViewerLayoutDefinition â ScrollViewerLayoutItem

StackLayoutDefinition â StackLayoutItem

TextAreaDefinition â TextAreaControlDefinition

TabItemDefinitionâ TabItemLayoutItem

TabControlDefinitionâ TabControlLayoutItem

HHGridSplitter â HHGridSplitterDefinition. This one is important because it compiles but then throws an error when loading the runsheet in HH DM

Some controls have changed slightly also. For example, ScrollViewerLayoutItem has no property anymore called LayoutDefinition, but Content.

Run plan calculatorâ

CalculatePlannedRunTime was renamed to SetPlannedRunStartAndEndTime and added a 5th parameter of type double (sessionDuration)

Some functions changed from private static to protected virtual, so they can be overridden

HHObservableCollection â IHHObservableCollectionâ

All lists in the software are now passed as an interface of type IHHObservableCollection rather than the concrete type HHObservableCollection
