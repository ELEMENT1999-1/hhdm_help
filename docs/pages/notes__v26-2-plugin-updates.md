---
url: https://help.hh-dm.com/notes/v26-2-plugin-updates/
---

On this pagev26.2 plugin updates

The goal of this document is to outline the changes that are required to update an HH DM plugin from v26.1 to v26.2.

Please note that not all changes may apply to all plugins.

Preview versionâ

To make it easier to migrate the plugin a preview version of HH Data Management v26.2 has been made available. Due to the software needing to download a data migration from the server before being able to function this version is not runnable, it can only be used to build the plugin. This release contains only minor breaking changes and therefore we believe that this should be sufficient for plugins to be updated.

Downloading and running the clientâ

If you do not have access to this version, please let us know and it will be added to your account. The preview version is available on the Other â Releases page of the website:

The version can also be downloaded directly using this link: https://hh-dev.com/latest/HHDM-v26.2

Please note that this version is portable, meaning that it doesn't need to be installed. Unzip the downloaded directory and run the file HHDev.DataManagement.Client.HHDataManagement.exe.

Plugin settings updateâ

To make sure the references are linked to the right version of HH DM, you will need to put the path to the HH DM 26.2 preview version on your computer in the project file of the plugin:

Example pluginâ

Please see https://github.com/hh-development/HHDev.HHDM.DesktopPlugin/compare/master...release/v26.2 for an example commit of a simple plugin being updated.

Breaking changesâ

PluginInfo.jsonâ

The TargetVersionNumber needs to be changed to "26.2". Make sure the TargetVersionNumber is added to the PluginInfo.json, if it doesn't exist yet.

Project changesâ

HHDev.Core.NETFramework and HHDev.Core.NETCore projects removedâ

The HHDev.Core.NETFramework and HHDev.Core.NETCore projects have both been removed. Neither assembly is produced by the build anymore, so any <Reference> to them in your plugin's .csproj must be deleted, otherwise the reference will fail to resolve. All functionality has been moved to other HHDev.Core projects, mainly HHDev.Core.NETStandard.

Name changesâ

There have been a number of namespace and class name changes throughout the codebase. Mainly this is moving functionality from HHDev.DataManagement.* namespaces to HHDev.Core.* namespaces. The reason for this is an internal requirement to reuse these classes in other projects outside HH Data Management.

Namespace changesâ

The namespace (and assembly) for some classes has changed. In general, these changes move classes from the HHDev.DataManagement.Client.Wpf assembly to the HHDev.Core.WPF assembly. However, in some cases the types may have moved to HHDev.Core, HHDev.Core.NETStandard or HHDev.Core.Windows.

Old namespaceNew namespaceHHDev.DataManagement.Client.Wpf.ControlsHHDev.Core.WPF.ControlsHHDev.DataManagement.Client.Wpf.Controls.HHPopupWindowHHDev.Core.WPF.Controls.HHPopupWindowHHDev.DataManagement.Client.Wpf.Controls.RibbonHHDev.Core.WPF.Controls.RibbonHHDev.DataManagement.Client.Wpf.GraphingHHDev.Core.WPF.GraphingHHDev.DataManagement.Client.Wpf.ViewsHHDev.Core.WPF.ViewsHHDev.DataManagement.Client.Wpf.HelpersHHDev.Core.WPF.HelpersHHDev.DataManagement.Client.Wpf.ConvertersHHDev.Core.WPF.ConvertersHHDev.DataManagement.Client.Wpf.LayoutHHDev.Core.WPF.Layout
Please note that the Controls, Helpers and Converters namespace moves above are not a wholesale move of every type in that namespace â only some types moved, and the rest remain in the original HHDev.DataManagement.Client.Wpf.* namespace. If a type can no longer be found in the new namespace, check whether it is still in the old one before assuming it was renamed or removed.

A few other namespace moves worth calling out individually:

eUiElementPermissionLevel moved from HHDev.DataManagement.Core to HHDev.Core.Enums.

The oxy:HHPlotView control moved from HHDev.DataManagement.Client.Wpf.Graphing to graphing:HHPlotView in HHDev.Core.WPF.Graphing.

ISqlGenerator moved from HHDev.Sync.Core.SqlGenerators to HHDev.Core.NETStandard.Database.SqlGenerators.

BaseViewModel now lives in HHDev.Core.NETStandard.ViewModels.

ICustomizeUserInterfacePlugin and ViewModelMapping now live in HHDev.Core.WPF.Plugins.

The LoadViewFromUri extension method (used to load a view's XAML from a URI) moved to HHDev.Core.WPF.Helpers.

The ribbon-building extension methods AddButton and AddCheckbox (and their RibbonButtonConfig/RibbonCheckboxConfig/RibbonComboBoxConfig config classes) moved to HHDev.Core.WPF.Views. Since these previously resolved implicitly through a using your plugin likely already had, you will need to add an explicit using HHDev.Core.WPF.Views; to any view that builds a ribbon page.

WindowsFileHelpers was renamed to FileHelperFunctions and moved to HHDev.Core.NETStandard.Helpers.

HHDev.Core.NETCore helpers have been replaced by HHDev.Core.NETStandard (see the project removal note above). As part of this, GlobalServices.UiService.PostOnUiThread(...) has been marked obsolete in favor of NetStandardContainer.Instance.UiService.PostOnUiThread(...).

ProcessHelpers moved from HHDev.Core.NETCore.Helpers to HHDev.Core.NETStandard.Helpers â check for fully-qualified usages too, not just using directives.

BoxPlotItemModel now lives in HHDev.Core.NETStandard.Graphing.Models.

MainWindowView was renamed to HHMainWindowView and lives in HHDev.Core.WPF.Views.

ZonedDatePickerItem 4-arg constructor: last parameter changed from event/context object to string timeZone.

Class name changesâ

BaseView renamed:

HHDev.DataManagement.Client.Wpf.Views.BaseView has been renamed to HHDev.DataManagement.Client.Wpf.Views.HHDMBaseView

All plugin views inheriting from BaseView must be updated to inherit from HHDMBaseView.

XAML RelativeSource and AncestorType bindings referencing views:BaseView should be updated to views:HHDMBaseView.

Ribbon control types renamed:

HHDMRibbonPageGroup â HHRibbonPageGroup

HHDMRibbonPageModel â HHRibbonPageModel

HHDMBarButtonItem â HHBarButtonItem

HHDMBarStaticItem â HHBarStaticItem

HHDMBarEditItem â HHBarEditItem

CustomDataTemplateSelector â ColumnDataTemplateSelector (in HHDev.Core.WPF data grid namespace)

BaseSetupSheetTextbox (HHDev.DataManagement.Client.Wpf.Controls) â HHTextBox (HHDev.Core.WPF.Controls)

AppGlobals.UserDataFilePath was removed; use NetStandardContainer.Instance.UserDataFilePath instead.

A number of WpfContainer static members were moved behind a new WpfContainer.WpfInstance accessor, for example:

WpfContainer.ApplicationSettings â WpfContainer.WpfInstance.ApplicationSettings

WpfContainer.ThemeService â WpfContainer.WpfInstance.ThemeService

The SetWindowStartupLocation() extension methods on System.Windows.Window now live in HHDev.Core.WPF.Helpers (WindowHelpers) â add a using HHDev.Core.WPF.Helpers;

HHDev.CanopyApi.dll has been removed from HH DM. If your plugin needs it, it is still available via the NuGet package HHDev.CanopyApi.

Flat model changesâ

IBasicEntityFlatModelâ

The following properties have been changed on the IBasicEntityFlatModel interface:

Dictionary<string, CachedExpressionItem> CachedExpressionEvaluations { get; } â was Lazy<> before

ObservableDictionary<string, IBindingProxy> BindingProxies { get; } â was Lazy<> before

The following properties have been added to the IBasicEntityFlatModel interface:

bool IsCachedExpressionEvaluationsCreated { get; }

bool IsBindingProxiesCreated { get; }

IReadOnlyCollection<string> GetPropertyNames(); â so far only needed when the flat model is used in the entity selection wizard; it should return all property names that should be considered for copying.

CollectionModelâ

Replace this by subscribing to CollectionModel.Items.CollectionChanged and/or CollectionModel.Items.ListItemChanged. To preserve all notifications handled by the old event, subscribe to both.

These two replacement events also split apart what the old event used to conflate:

CollectionModel.Items.CollectionChanged uses the standard System.Collections.Specialized.NotifyCollectionChangedEventArgs/NotifyCollectionChangedAction (e.g. Add, Remove, Reset) â this replaces the old custom CollectionChangedEventArgs/eCollectionChangeType (e.g. old eCollectionChangeType.ItemAdded â new NotifyCollectionChangedAction.Add).

Item-level property changes, which used to come through the same event as eCollectionChangeType.PropertyChanged, are now delivered separately via CollectionModel.Items.ListItemChanged, using ListItemChangedEventArgs (ChangedItem, PropertyName) from HHDev.Core.NETStandard.Extensions.

If your plugin implements its own IBasicEntityFlatModel (self-implemented flat models, see above), IBindingProxy now needs an explicit using HHDev.Core.NETStandard.Interfaces;.

PayloadPropertyâ

On message payloads (e.g. FlatModelPropertyUpdatedEventArgs.EntityPropertyUpdates), PayloadProperty.Name has been renamed to PayloadProperty.Key.

Ribbon bar tabsâ

The HHRibbonTab type (previously used via a PluginRibbonTabs property on the plugin entry class) lives in HHDev.Core.Windows, an assembly that is not shipped to plugins. If your plugin declared an unused PluginRibbonTabs property, it can simply be deleted rather than migrated.

View model changesâ

IEditViewModel renamed:

IEditViewModel â IFlatModelEditViewModel

All custom edit view model implementations must implement IFlatModelEditViewModel instead of IEditViewModel.

The identifier property has been renamed: FlatModelId â ModelId

EditViewModelManager type changed:

EditViewModelManager<TModel, TViewModel> â FlatModelEditViewModelManager<TModel, TViewModel>

The generic constraint on TViewModel now requires IFlatModelEditViewModel instead of IEditViewModel.

Data access changesâ

Accessing data in caches has changed in some cases. There used to be some inconsistency around accessing caches. E.g. the PartCategoryCache used to be available via the EventCarMasterCache as well as the ManagementCache. Now it is only available via the ManagementCache.

EventCarMasterCache:

removed AmbientMeasurementCache (now should be accessed via the EventMasterCache)

removed PartCache (now ManagementCache.PartCategoryCache)

removed TyreSpecificationCache (now ManagementCache.TyreSpecificationCache)

A number of cache events named *Deleted have been renamed to *Removed, to make naming consistent across all caches. For example:

BeforeRunSheetDeleted â BeforeRunSheetRemoved

AfterRunSheetDeleted â AfterRunSheetRemoved

AfterLapDeleted â AfterLapRemoved

AfterAmbientMeasurementDeleted â AfterAmbientMeasurementRemoved

If your plugin subscribes to any cache event ending in Deleted, check whether it has been renamed to the Removed equivalent.

Data analysis changesâ

MathHelpers.ReSampleListAligned no longer has a 3-argument overload (input, inputFrequency, outputFrequency). Callers must now also pass startTime and duration explicitly (pass null for either if not needed).

LocalDataAnalyser.CalculateAllMathChannelsFromProfile's requestedChannels parameter changed from a collection of channel-name strings to IReadOnlyCollection<ChannelModel>, where ChannelModel is a (string Name, eChannelType Type) pair. Callers building this list from channel names will also need to determine the appropriate eChannelType for each channel (e.g. Data, Math).

The Channels result of CalculateAllMathChannelsFromProfile is now typed List<DataViewerChannelProperties> (a subclass of ChannelProperties) rather than List<ChannelProperties> directly. Since List<T> isn't covariant in C#, code expecting List<ChannelProperties> will need to convert the result, e.g. result.Channels.Cast<ChannelProperties>().ToList().
