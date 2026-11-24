---
url: https://help.hh-dm.com/whats-new/version-22/
---

Version 22

January 1, 2022 Â· 12 min readVersion 22 is a major overhaul of the software. We made technological and structural changes that will allow us to continue improving the software following customers feedback. Security, performance, and customization were the main things we focused on.

Version 22 is a major update with changes to the database schema.
The software should auto-update like previously. Versions prior to 22 will not be allowed to sync. Any work performed on those versions following the release of version 22 will be lost. When first starting the software on the new version, it will ask to delete the old database:

Please select Yes to continue. HH Data Management will then perform the initial sync. Once the pull operations are back at 0 you can resubscribe to your events.

Performanceâ

Like for any major release, our focus was to review in detail every part of the software that can be improved for performance. For this version we focused on the syncing performance and loading data. Here are some of the numbers we found performing some benchmark:

Initial sync time --> Reduced by up to 65%

Subscribing to event time --> Reduced by up to 90%

Loading event time --> Reduced by up to 46%

KPI running time --> Reduced by up to 73%

The server also received improvements to perform actions we struggled to accomplish in 2021 on larger accounts/events.

Local database locationâ

We have moved the client.db local database to a safer location to avoid any interference with other syncing tools such as One Drive or Dropbox.

By default, the local database will be under the location %localappdata%\HH Development\HH Data Management.

Plugins and attached files folder will remain in their current location Documents\HH Development\HH Data Management.

infoCustomers currently using the custom directory file to change the location will not be impacted by this change.

Custom definition and custom columnâ

One of the most notable changes we have done for version 22 was to move most of the default properties in the software to custom properties. In the past it was sometimes challenging to navigate between the two. This will allow a much easier workflow when working on math parameters and designing new views in the software.

Thanks to this change, every column for every table in the software is now defined directly within the software. The custom column section was used only to add custom columns in the past whereas starting with version 22, all tables are fully defined as custom columns:

This change will allow customers to modify how the data is presented in the software without having to use custom code.

User interfaceâ

Add link to the account management websiteâ

A link to the account management website is handy to access software download, user creation and management.

Standardization of re-ordering items in a tableâ

Re-ordering items in a table was challenging in the past with some cells allowing drag and drop while some others didnât. We have decided to move the drag and drop location on every table to the far left only to improve usability.

Improvement to validation throughout the softwareâ

We experienced some issues when switching runs for example without validating a comments section for example. We have improved the validation mechanism throughout the software to avoid any more involuntary data loss.

Improvement to change tracking â Usage of toleranceâ

Prior to this version, the change tracking between two parameters was either ON or OFF.
If we take the example of the camber angle there is always a small difference between the camber required by an engineer and the camber achieved by the mechanics on the setup pad:

Starting with version 22, we can define a tolerance for each parameter in the definition. For example, for the camber parameters we can define a tolerance of half a tenth of degree:

With the tolerance in place, only changes above the tolerance will be shown with the change color:

Backstage optionâ

We have added a new "About" page in the backstage option. The main goal is to have access to all the important link for support as well as a summary of the software and plugin version in use.

In the global option, we can now copy the account ID to the clipboard. This can be quite helpful when using the API for the first time.

Color option for lap and track status markersâ

We can now change the background color for all lap and track status markers. This is done at the account level under Admin â Lap Markers

The background are then in use in the run sheet and run plan.

These columns are defined in the column customization, and so can be modified by users if you wish to revert this change.

Comments for tyre pressure entries in tyre set sheetâ

Prior to version 22, it was impossible to edit the comments directly from the tyre set sheet. Now it is possible which helps a lot with information regarding tyre pressures:

Setup change formattingâ

Before version 22 all setup changes were displayed in the software. It was sometimes challenging to track changes between setup in an organized manner. Over the years we have worked on different solutions by doing custom codes in plugins. We have decided to make all options available in the software.

Here is an example of setup changes. In this case, we added some comments and changed camber and ride height on the setup sheet.

Under Admin â Change Formatters, we now have 4 options that can be used to help format the setup changes.

The first option is "Parameters to Ignore". In this case, we will decide to ignore the "Comments" from the setup changes:

The second option is "Changes Order". By default, the setup changes will be listed alphabetically. We can now re-order items:

The third option called âGroupsâ gives us the ability to group some parameters together. For example, we would like to see all Cambers on one line and all ride height changes on one line:

The last option called âMapped Groupsâ allows to display another parameter as a substitute to a group. For example, for the ride height it might be more useful to display the rake rather than the actual ride height measurement of all 4 corners.

With Rake being a Math Parameter on the Setup definition:

We now have the final setup changes formatting in a way that is a lot easier to review and use:

Securityâ

You will notice when starting HH Data Management that the login screen has changed slightly.

We have added a new authentication method called OAuth following industry standards. This new method will be in Beta test for the first part of the 2022 with the idea to use it as the default authentication mechanism in the future. We are excited to bring this change as it will let us implement additional security options in the authentication mechanism such as multi-factor authentication as well as providing better integration with the API.

Math functionsâ

Previous and Nextâ

The previous and next function can used to do any calculation for any entities using values from the previous and next. For example, in a setup, you can access the setup from before and after. If you want to calculate the delta change in camber you can do:

FirstNotNull functionâ

The FirstNotNull was added to simplify cascade calculations that were required in some case. Letâs take the case of default fuel consumption. It can be defined for each run sheet or at the event level. To detect the fuel consumption to use in any calculation we can now create the following function:

This math function will return the fuel consumption for the run if it is not null. If it is null, then it would return the event average fuel consumption.

Another example could be for KPI calculation in the case of using a beacon offset for any calculation. The beacon offset could be defined at the track configuration level, the event level or the session level. By using the FirstNotNull function, the KPI can detect the correct offset to use for the calculation:

Lookup functionâ

The Lookup function is an advanced function that allows to locate a single item from a list. For example, this can be used to get access to tyre specification properties from the setup sheet. In this case the tyre stiffness:

Assembliesâ

In a bid to improve part management and tracking of components we have developed a new layer called assemblies. Prior to version 22, any components would have to be assembled on each setup. With assemblies, components can now be grouped in iterations per championship, event or linked to a car. The user can then select only the assembly iteration per setup instead of each components individually.

Let's take the example of a team that brings 2 damper set per car per event. The damper set for each event can be build in an inventory:

Similar to the tyre inventory, assemblies iteration can be managed between events.

In the column item definition, we have added an assembly selector. The selection can be filtered by all iterations or only iterations per championship, cars or events.

In the background, HH Data Management keeps track of the usage of each components individually.

Attached files in CIDâ

In version 22 we have added the option to add attached file to the column item definition.

Multiple attached file displayâ

For each CID like a setup for example, you can add a button and see a summary of how many files have been uploaded to this particular setup. To upload or download files, a click on the button opens a regular attached file window.

It is a great addition to be able to store any pictures or relevant files linked on a specific setup or any CID entity.

Single attached file displayâ

The single attached file display can be used for different purposes. It can be used for example to store a config file for a specific CID or to allow the display of a setup procedure.

Here is an example of a drawing explaining how to measure the underfloor points of the car. It can be just a button to open the picture on one line:

But if setup over multiple lines, a thumbnail of the picture will be shown:

Files can be linked to any entities in the software ( Car model, category, event, championship, etc...).

Key Performance Indicator (KPI)â

Quite a few changes have been done on the KPIs on version 22.

Unit handling for KPI math channelsâ

Intellisense for KPI math channelsâ

Custom Expressionsâ

Custom expressions are replacing the SetupSheet and RunSheet function. This feature makes it possible to access any properties from a lap scope. For example, a setup parameter, the fuel consumption or the track length.

Data Management Integration (DMI)â

With version 22, the integration between HH Timing and HH Data Management will require the installation of the latest HH Timing and well as the latest DMI.

infoLatest versions

HH Timing: hh-dev.com/latest/hht

DMI: hh-dev.com/latest/dmi

To allow us more freedom in the data transferred between the two software and improve the performance, we have switched the server mode of the DMI to use our API. The local mode stays unchanged.

The user interface is slightly altered in both the backstage options and inside the software.

The authentication can be performed using the OAuth method or an API key.

The choice between Local mode or API mode is now done directly within the software and it can be changed without restarting the software.

Another improvement in the DMI is that we are now sending session and day time to HH Data Management from HH Timing which will make it possible to do actual timing analysis in HH Data Management that could otherwise only be done in HH Timing.

APIâ

Along with version 22 we have released a new API. We improved the speed by adding compression to all the response bodies.

Following comments from users, we have also improved the parametersToInclude parameter so that it can be used to select the child parameters to be included. For example, when retreiving all championships and events from the Championships endpoint, if you want only the name of each championship and event, you can provide this parameter like "Name,Events.Name". This helps to reduce the volume of data transferred which will help with the performance of client applications.

What is coming next?â

Following the release of version 22 we will focus in the early stage of 2022 to release some of the new UI we have been developing using the database scheme:npm run build

New issue list module with new workflow

New graphing interface

UI upgrade to the Data Analysis page

Improvements to mileage tracking for tyres, brakes, parts and assemblies
