---
url: https://help.hh-dm.com/extensibility/plugins/
---

On this pagePlugins

Updating installed pluginâ

Updating a plugin can normally be done within the software, which is the preferred way.

Auto Updateâ

See Auto Update

Manually updating the pluginâ

Go to https://hh-dev.com/HHDM/Plugins and download the latest version of your plugin. Once it's downloaded close HH DM and navigate to: "C:\Users\XXXX\Documents\HH Development\HH Data Management\Plugins"

Normally there is one zip-file per plugin that you are using. Delete the old plugin if applicable.

Copy the downloaded zip file into the directory that is mentioned above (don't extract the archive).

You are done and can start HH DM

Check installed version of pluginâ

You can double check that the update worked by checking the version in the backstage Options:

Why are plugins neededâ

The plugin framework in HH Data Management allows users to implement their own custom logic in the software. There are numerous customization features built into HH Data Management, but sometimes these are not sufficient to represent a required workflow or functionality. In these cases, a plugin can be written in C# which greatly increases the flexibility for implementing custom functionality. The plugin framework provides various simple access points that make it possible to quickly add minor customizations or alternatively allow custom displays to be created from scratch. In theory, all of the default displays used in HH Data Management could be fully recreated using the plugin framework.

Examplesâ

Some examples of the customizations possible in the plugin framework are:

create custom calculated properties on any items (setup, run, lap etc.)

add custom columns to any of the tables that are linked to calculated values, or values stored in the database

create a custom run plan calculator

customize the built-in tyre pressure calculations

create custom user interfaces for the run, or event-specific event and session views

create custom views, that make it possible to create:

custom dashboards

custom import/export functionality (for example to integrate with other tools with requirements that cannot be met using the default export functionality already built into the software)

entirely custom entities in the software by using the custom definitions
