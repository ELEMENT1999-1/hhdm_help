---
url: https://help.hh-dm.com/extensibility/plugins/creating-a-plugin/
---

On this pagePlugin development

HH Data Management uses the .NET Framework, therefore plugins can be created using any .NET Framework language (C# or VB.NET for example).

The user interface of HH Data Management is built using WPF and so any user interface elements in a plugin must also be developed using WPF.

tipAn example HH Data Management plugin has been provided on GitHub. This can be used instead of starting a plugin from scratch.

Prerequisitesâ

To create a plugin, the following programs must be installed:

The latest version of HH Data Management

The latest version of Visual Studio 2026

Additionally, to create custom views, a DevExpress license is required; while a license for the DevExpress WPF components will suffice, other license levels may better suit specific needs.

Setting up the projectâ

Create a new Visual Studio project. Ensure that it targets .NET 9.0 (please note this is not necessarily the default setting depending on which version of Visual Studio is being used). It is okay to target a .NET version below 9.0, but the plugin will not load correctly if it targets a version above 9.0.

Referencesâ

Add references to the following HH Data Management DLLs to the project:

HHDev.Core.NETStandard.dll

HHDev.Core.NETFramework.dll

HHDev.Core.WPF.dll

HHDev.Sync.Core.dll

HHDev.Sync.Client.dll

HHDev.ReportGeneration.dll

HHDev.DataManagement.Core.dll

HHDev.DataManagement.Client.Core.dll

HHDev.DataManagement.Client.Wpf.dll

These files are located in the installation directory of the software which by default is C:\Program Files\HH Development\HH Data Management.

Ensure that the CopyLocal flag is set to false for these references.

PluginInfo.jsonâ

A json file called PluginInfo.json with information about the plugin must be placed in the root directory of the plugin. This is read by HH Data Management as part of the loading process.

An example of the file contents follows:

{
 "EntryDll": "HHDev.HHDM.DesktopPlugin.dll",
 "TargetVersionNumber": "26.2"
}

EntryDll: the name of the file that contains the IHhDataManagementPlugin implementation (i.e. the main assembly of the plugin)

TargetVersionNumber: the version of HH Data Management the plugin is built to support. Currently supported versions are:

"26.2"

This list will be updated as new versions of HH Data Management are released. Versions will be removed when HH Data Management is updated with breaking changes. When this happens, the plugin must be updated to support these changes and the TargetVersionNumber must be updated in order for the plugin to continue to be loaded by HH Data Management.

Plugin Interfacesâ

IHhDataManagementPluginâ

In the HHDev.DataManagement.Client.Wpf.PluginFramework.Interfaces namespace the interface IHhDataManagementPlugin interface is defined. A class that implements the IHhDataManagementPlugin interface is the entry point for a plugin to be used in HH Data Management. A plugin must contain exactly one class that implements this interface for it to be loaded into the software.

The IHhDataManagementPlugin interface has four members:

Name: this is the name of the plugin that will be shown in the software

AutoUpdateKey: this is a short string that is used to identify a plugin. Please refer to the Account Management Website section for more information about this value

PluginId: a unique ID for the plugin - it should be a randomly generated Guid, and unique for all plugins

AccountIds: an array of account IDs for which this plugin will work

Once the basics of the IHhDataManagementPlugin have been implemented in a class, further interfaces can be implemented by the class to access the various customizations permitted by the plugin framework.

ICarCustomizationPluginâ

Allows for customization of the columns in the main table in the cars view

ICgdPrimitiveProviderPluginâ

Allows for CGD primitives that are created in a plugin to be registered for use in HH Data Management.

IChampionshipCustomizationPluginâ

Allows for customization of the columns in the main table in the championships view

ICustomFlatModelProviderPluginâ

Allows for custom flat models to be registered based on a definition ID. Any time a flat model is created, if there is a registration provided by this function it will be used. Otherwise the default flat model will be used

ICustomizeUserInterfacePluginâ

Allows custom ribbon bar tabs to be defined that are added to the ribbon bar of the main window of the software

Allows for custom views and view models to be registered, created and used within the software

ICustomRimMileageExportâ

Allows for customization of the export of rim mileages from the mileage view

IEventCustomizationPluginâ

Allows for customization of the columns in the main table in the event management view

IEventObjectCustomizationPluginâ

Allows a custom WPF UserControl to be added to the event details view. This allows a space for custom event-specific information to be entered, for example

IExcelExporterPluginâ

If a plugin implements this interface, an instance of the IExcelService will be provided when the software is launched. This service can help simplify the process of writing data to Excel

IPlannedRunCustomizationPluginâ

Allows for customization of the columns in the child tables in the run plan view

Allows for customization of the run plan calculator that is responsible for tracking the start/end time and start/end fuel of each run based on the data entered. This is especially useful for introducing support for different powertrain architectures (fully electric or hybrid)

IPressureCalculationCustomizationPluginâ

Allows for a custom pop-up window to be provided for the calculate cold pressure and calculate pressure adjustment functionalities

Allows for changes to be made to tyre pressure values before they are saved as reference pressures

IRunSheetCustomizationPluginâ

Allows for customization of the run view in a variety of ways:

The right-side of the run can be customized - in this case the main area of the run uses a common user interface

The full run can be customized

A custom WPF UserControl can be provided for the session details view in the session overview mode of the run

Custom columns to be shown in the laps table of the run view

Allows a custom run export function to be defined that is linked to the Export button on the ribbon bar of the runs view

ISessionObjectCustomizationPluginâ

Allows a custom WPF UserControl to be added to the session view. This allows a space for custom session-specific information to be entered, for example

ISetupCustomizationPluginâ

Allows a custom setup export function to be defined that is linked to the Export button on the ribbon bar of the setups view

Allows a custom setup import function to be defined that is linked to the Import button on the ribbon bar of the setups view

Allows for custom formatting of the setup changes shown in the run

ISplashScreenCustomizationPluginâ

Allows a custom splash screen to be provided that will be shown when the software launches in place of the default screen

ITrackCustomizationPluginâ

Allows for customization of the columns in the main table in the tracks view

ITyreCustomizationPluginâ

Allows for customization of the columns in the main table in the tyres views (both for a single event and the tyre inventory, separately)

ITyreSetCustomizationPluginâ

Allows for customization of the columns in the main table in the tyre sets view

Allows for customization of the logic used when creating tyre sets using the search by barcode functionality. This could be used to block or allow certain tyres being used at specific events

ITyreSpecificationCustomizationPluginâ

Allows for customization of the columns in the main table in the tyre specifications view

Key conceptsâ

Cachesâ

Data in HH Data Management is provided to the UI in the form of objects called caches.Â  There are three main caches in HH Data Management.Â  Each cache contains sub-caches for each data set.Â  The caches are designed to support data binding: all collections implement the INotifyCollectionChanged interface and all classes implement the INotifyPropertyChanged interface.

ManagementCacheâ

The ManagementCache contains the non-event specific data for a given account, such as definitions, parts, championships, events and tracks.Â  Each of these data sets are stored in their own cache structureÂ that can be accessed via the ManagementCache instance.

EventCacheâ

TheÂ EventCache contains data for a given event, such as weather measurements.Â  It does not contain any car-specific data.

EventCarCacheâ

The EventCarCache contains data for a given event and car, such as tyres, tyre sets, setups, and runs.Â  Each of these data sets are stored in their down cache structure that can be accessed via the EventCarCache instance.

Flat Modelsâ

Each data item in HH Data Management is stored in the form of objects called flat models.Â  For example, there existsÂ a SetupFlatModel.Â  The flat models are designed to easily give access to all custom parameters that are defined in a definition.Â  There are collections of parameters based on their type, and these can be used to access the parameters on the object.Â  The following code shows an example of how to retrieve a text property from a flat model:

var value = Strings.GetPropertyValue("Comments");

The following code shows how to set a text property in a flat model:

var comment = "This setup made the car easier to drive";
Strings.SetPropertyValue("Comments", comment);

MVVMâ

HH Data Management uses the MVVM pattern for the user interface layer.Â  If custom views are to be created in a plugin they should follow the MVVM pattern to ensure they fit with the concepts of the software.Â  MVVM stands for Model-View-ViewModel.Â  In HH Data Management, the model is provided by one of the provided base view model types.Â  The model normally takes the form of an EventCache or an EventCarCache.Â  These are data structures that contain the data for the selected event and car.Â  In WPF, the view is normally defined in XAML and defines the user interface of the view.Â  There are some predefined base views in HH Data Management to help with common and simple view concepts.Â  The view model exists between the view and the model and is responsible for providing the model to the view in a way that can be used for data binding and for responding to any inputs from the view to update the model.

Reusable viewsâ

If using reusable views, then the derived views will need to be defined as C# classes, because the concept of XAML inheritance does not exist in WPF.

SingleTableViewâ

The SingleTableView is used to create views with a single table, bound to a single list.Â  An example of the SingleTableView is the championships view.

MultiSessionViewâ

The MultiSessionView is used to create views where there are multiple collapsible tables with one for each session.Â  An example of the MultiSessionView is the run plan view.

BaseViewInternalâ

All views in HH Data Management must inherit from the BaseViewInternal.Â  This class contains a virtual functionÂ BuildRibbon that can be overridden to customize the ribbon bar for the view.

Reusable view modelsâ

All view models used in HH Data Management must derive from one of the following base view models.

BaseEventCarCacheViewModelâ

TheÂ BaseEventCarCacheViewModel is the most common view model.Â  It provides an EventCache and EventCarCache based on the selected context.Â  The virtual function BeforeEventCarCacheSetToNull is called before the currently selected EventCarCache is cleared, andÂ HandleNewEventCarCacheArrived is called when a new EventCarCache instance is provided to the view model.

BaseMultiSessionEventCarCacheViewModelâ

TheÂ BaseMultiSessionEventCarCacheViewModel derivesÂ from theÂ BaseEventCarCacheViewModel, and adds the functionality of exposing a collection ofÂ SessionCacheViewModels.Â  This view should be used when the associated view will be theÂ MultiSessionView.

BaseEventCacheViewModelâ

TheÂ BaseEventCacheViewModel is similar to theÂ BaseEventCarCacheViewModel, but only provides an EventCache.Â  Therefore it cannot reference any car-specific data.

BaseFilterableViewModelâ

TheÂ BaseFilterableViewModel is used to show data from more than one event and/or car.Â  This view model is used for example in the multi-event graph and the XML and Excel export views.Â  When using theÂ BaseFilterableViewModel, it is recommended to add theÂ DataFilterSideBar UserControl to the associated view which will integrate with the view model to facilitateÂ the data selection/filtering.

BaseContextControlledViewModelV2â

TheÂ BaseContextControlledViewModelV2 isÂ the simplest view model that offers the least built in functionality.Â  The view model provides the functionality to manage the context selection.Â  The abstract functionÂ HandleContextUpdated is called whenever the context selection changes.Â  Generally, this view model is not used directly as the other base view models build more useful functionality on top of the context selection functionality.

Permissionsâ

Plugins can be integrated with the permissions scheme that is used for all other views in HH Data Management.

Defining the view on the websiteâ

The customized user interface elements defined by a plugin can be added to the user interface schema of the software by creating custom worksheet rules.Â  The name of this worksheet defined on the website can then be used in the view and view model to control the permissions.

Enforcing permissions in viewsâ

The BaseView from which all views in HH Data Management inherit has the following dependency properties:

NameForPermissions - this should be the same as the name of the worksheet defined in the worksheet rules on the website

IsAdminView - set to true if the view should only be seen by users with admin access

IsManagementView - set to true if the view should only be seen by users with management access

When creating any ribbon bar elements for a view, the ribbon bar models can be used to control the permission level that will have access to each element, for example:

var group = new HHDMRibbonPageGroup(eUiElementPermissionLevel.ReadWrite);

creates a ribbon page group that will only be visible for users with read/write permissions for that view based on the current context selection.

All elements on a view will be processed automatically for permissions based on the view permission.Â  For example, a text box on a read-only run would be also read-only by default.Â  This can be customized for any controls that implement theÂ IPermissionUiElement interface.Â  UserControls that implementÂ this interface generally expose the following properties to allow configuration of their permissions-related behaviour:

IgnoreForPermissions - if set to true, then the user interface element will be ignored by the permissions framework

IsAdmin - if set to true, then the user interface element will only be visible for users with admin access

IsManagement - if set to true, then the user interface element will only be visible for users with management access

OperationName - a custom operation name for the control, that could be defined as a child of the worksheet defined on the website.Â  This gives the ability to have more granular control of permissions

Enforcing permissions in view modelsâ

All view models that inherit from theÂ BaseContextControlledViewModelV2 can pass a uiElementName string variable in the constructor.Â  The value of this variable should match the name of theÂ worksheet defined on the website.Â  This is used to prevent data being loaded from the database that a user does not have permission to see.
