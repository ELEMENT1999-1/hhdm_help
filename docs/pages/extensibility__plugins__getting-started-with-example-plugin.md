---
url: https://help.hh-dm.com/extensibility/plugins/getting-started-with-example-plugin/
---

On this pageGetting started with example plugin

An example HH Data Management plugin has been provided on GitHub. This can be used instead of starting a plugin from scratch. This tutorial will explain the changes that are needed to adapt the example plugin to a specific account.

PluginEntry.csâ

The following changes need to be made in the PluginEntry.cs file.

IHHDataManagementPlugin propertiesâ

The following properties need to be updated:

Name

AutoUpdateKey - this can be found on the account management website

PluginID - needs to be a unique GUID

AccountIds

These properties are part of the interface.

The Account ID can be found in the backstage of the software:

ICustomFlatModelProviderPlugin functionalityâ

Any flat models that are to be created in the plugin need to be registered in this property. A sample registration is provided that can be replaced:

IRunSheetCustomizationPlugin functionalityâ

If the run sheet is going to be customized the code that defines this customization is registered here. The ID of the definition of the run sheet can be found on the definitions view and this needs to be substituted with the ID that is currently defined in the code:

This code can be removed if the run sheet won't be customized.

IEventCarDataCustomizationPlugin functionalityâ

If the event data view is going to be customized the code that defines this customization is registered here. The ID of the definition of the EventCarData can be found on the definitions view and this needs to be substituted with the ID that is currently defined in the code:

Project Configurationâ

The project can be configured by right-clicking on the project in the solution explorer and selecting properties:

Copy to outputâ

The project can be set up so that each time the plugin is built it will copy the output of the build to the plugins directory that HH Data Management reads when it is launched. To modify the default configuration, the Username variable can be adjusted in HHDev.HHDM.DesktopPlugin.csproj or the whole section can be modified. In this case the text needs to be replaced THREE times in the Post-build event text box (note that you need to scroll horizontally to see the third value that needs replacing):

cautionWhen developing a plugin it is important to remove the auto downloaded plugin from the website (that will be stored in a zip file) to make sure that you are loading and using the locally build version of the plugin.

Debug pluginâ

The plugin can only be run under HH Data Management. There is no functionality for the plugin to run on its own. Therefore, to debug the plugin it is necessary to launch HH Data Management first. This is already setup in the example plugin and no changes should be required if HH Data Management is installed in the standard location. The configuration can be accessed here:
