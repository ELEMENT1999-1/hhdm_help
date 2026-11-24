---
url: https://help.hh-dm.com/notes/v25-2-plugin-updates/
---

On this pagev25.2 plugin updates

The goal of this document is to outline the changes that are required to update an HH DM plugin from v25.1 to v25.2.

Please note that not all changes may apply to all plugins.

Preview versionâ

To make it easier to migrate the plugin a preview version of HH Data Management v25.2 has been made available. Due to the software needing to download a data migration from the server before being able to function this version is not runnable, it can only be used to build the plugin. This release contains only minor breaking changes and therefore we believe that this should be sufficient for plugins to be updated.

Downloading and running the clientâ

If you do not have access to this version, please let us know and it will be added to your account. The preview version is available on the Other â Releases page of the website:

The version can also be downloaded directly using this link: https://hh-dev.com/latest/HHDM-v25.2

Please note that this version is portable, meaning that it doesn't need to be installed. Unzip the downloaded directory and run the file HHDev.DataManagement.Client.HHDataManagement.exe.

Plugin settings updateâ

To make sure the references are linked to the right version of HH DM, you will need to put the path of the HH DM 25.2 preview version in the project file of the plugin:

Example pluginâ

Please see https://github.com/hh-development/HHDev.HHDM.DesktopPlugin/compare/master...release/2025-major for an example commit of a simple plugin being updated.

Breaking changesâ

csproject filesâ

The .net framework was changed from 7.0 to 9.0 and the DevExpress version was changed from v23.2 to v24.2. Also in most of the plugins we are using now the following features:

Customize the build by folder

Central Package Management (CPM)

nuget.config reference

There are 3 files added to the plugin:

Directory.build.props: It contains settings that should apply to all projects in the plugin repository. Like the version of DevExpress and also the .net framework version

Directory.packages.props: It contains the version number for the nuget packages that are used in the plugin. Some plugins are built of multiple projects and this file ensures that all projects are using the same version. When you make changes in the nuget package manage now these changes will get written in this file instead of in the csproj fie.

nuget.config: This file controls which nuget package gets downloaded from which package source. This is required when using the Directory.package.props file.

PluginInfo.jsonâ

The TargetVersionNumber needs to be changed to "25.2". Make sure the TargetVersionNumber is added to the PluginInfo.json, if it doesn't exist yet.

Interface changesâ

IBasicEntityFlatModelâ

Every class that directly implements the interface IBasicEntityFlatModel in your plugin should get rewritten to instead inherit from BasicEntityDetachedFlatModel. This is a base class that implement IBasicEntityFlatModel and that is fully customizable, as nearly all methods are virtual. Like this all the not needed code to implement IBasicEntityFlatModel is not needed anymore and changes to the IBasicEntityFlatModel interface don't require updates in the plugin anymore.

IHHObservableCollection<T>â

We had a couple of variations of IHHObservableCollection<T> like IHHUnsortedObservableCollection<T> and IViewedHHObservableCollection<TKey, T>. These interfaces are still existing, but we added a new interface that is now exposed in the majority of the cases which is IReadOnlyHHObservableCollection<T>. Every public facing collection in caches now returns an IReadOnlyHHObservableCollection or IReadOnlyViewedHHObservableCollection, this is fine for most use cases, but if the original return type is still needed you can just cast it (the internal type did not change). There were two reasons to do that. One is that we wanted to prevent people from adding/removing items from the lists (for example when adding/deleting a setup), while the correct way to do this is to call the respective add/delete functions of the caches. And additionally we are now able to make changes to the underlying collections and more derived interfaces without breaking anything in the plugins.

API changesâ

DisplayQuantityâ

Removed:

HHDev.Core.NETStandard.Helpers.DisplayQuantity.ConvertUnit(eDimension dimension, string fromUnit, double? fromValue, string toUnit)

Replacement:

HHDev.Core.NETStandard.Helpers.DisplayQuantity.ConvertToUnit(eDimension dimension, double? value, string newUnit, string previousUnit)

Note that the order of the arguments has changed, so it's not enough to just change the name of the api.

Attached Filesâ

In the AttachedFileView and in the AttachedFileCacheHelpers we used a boolean to control if a file should get automatically downloaded once it's uploaded and if it should get deleted locally, after it's uploaded. The respective apis have changed to now accept an enum of type eAutoDownloadMode instead. In cases where the boolean true was used before now eAutoDownloadMode.Yes should get used, and where falsewas used it's now eAutoDownloadMode.No. There is a third mode eAutoDownloadMode.FromParameter which takes the value that is defined in the attached file parameter, which is a new feature in v25.2.

Additionally an obsolete api was removed:

HHDev.DataManagement.Client.Wpf.Components.AttachedFiles.AttachedFileHelpers.GetPathOfAttachedFile(AttachedFileFlatModel)

Replacement:

HHDev.DataManagement.Client.Core.Components.AttachedFiles.AttachedFileFlatModel.FilePath

Loggingâ

NLog was update from v4 to v5, which made the way how we defined the logger in classes obsolete.

Old:

private static readonly ExtendedLogger _logger = (ExtendedLogger)LogManager.GetCurrentClassLogger(typeof(ExtendedLogger))
private static readonly MetricsLogger _metrics = (MetricsLogger)LogManager.GetLogger("MetricsLogger", typeof(MetricsLogger))

New:

private static readonly ExtendedLogger _logger = LogManager.LogFactory.GetCurrentClassLogger<ExtendedLogger>()
private static readonly MetricsLogger _metrics = LogManager.LogFactory.GetLogger<MetricsLogger>("MetricsLogger")

Interpolateâ

A typo was corrected.

Old:

HHDev.DataManagement.Client.Core.Helpers.LinearInterpolationHelpers.GetPrevisousAndNextItem(IEnumerable<double?> data, double? value, bool extrap)

New:

HHDev.DataManagement.Client.Core.Helpers.LinearInterpolationHelpers.GetPreviousAndNextItem(IEnumerable<double?> data, double? value, bool extrap)

Tyre Pressure Calculationsâ

A couple of apis related to tyre pressure calculations have changed. Before there were four cold pressures, a reference temperature for the cold pressures, four hot pressures and two reference temperatures for the hot pressures passed in. Now this has changed to four cold pressures, four hot pressures, four reference temperatures for the cold pressures (one for each corner) and two reference temperatures for the hot pressures.

To keep the calculation as it was before, just correct the order of the inputs and pass in the value that used the be referenceTemperature four times now.

In AddBulkTyreSetPressureAdjustmentWindow now an additional parameter of type bool has to get passed in to define if it should show one or four inputs for the referenceTemperature(s).

Additionally the following properties changed:

ReferencePressureRunData:

removed: SetAirTemperature

added: FLAirTemperature, FRAirTemperature, RLAirTemperature, RRAirTemperature

TyreSetPressureAdjustmentModel and AddBulkTyreSetPressureAdjustmentViewModel:

removed: ReferenceTemperature

added: FLRefTemp, FRRefTemp, RLRefTemp, RRRefTemp

(Wpf)EditSetupSheetViewModelâ

Removed:

HHDev.DataManagement.Client.Wpf.ViewModels.Engineering.WpfEditSetupSheetViewModel.cs

Replacement:

HHDev.DataManagement.Client.Core.ViewModels.EditSetupSheetViewModel

CID Controlsâ

There are some changes related to the binding in the CID. If you are binding a CID to a flat model then the binding can be done directly now. There is no converter needed and the converters have been removed from the code (as they were causing memory leaks). See for example the setups page in HH DM:

Theme resourcesâ

Accessing theme resources has changed.

XAMLâ

Old:

{dxi:ThemeResource {dxt:PaletteBrushThemeKey ResourceKey=Brush.Foreground}}

New:

xmlns:extensions="clr-namespace:HHDev.Core.WPF.Extensions;assembly=HHDev.Core.WPF"

{extensions:HHThemeBrush ThemeKey=Foreground}

Codeâ

New:

HHDev.DataManagement.Client.Wpf.Helpers.ThemeHelpers.GetThemeColor(HHDev.Core.WPF.Extensions.eThemeKey)
