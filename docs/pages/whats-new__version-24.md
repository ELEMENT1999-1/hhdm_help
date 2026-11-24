---
url: https://help.hh-dm.com/whats-new/version-24/
---

Version 24

January 1, 2024 Â· 12 min readVersion 24 is a major overhaul of the software. We made technological and structural changes that will allow us to continue improving the software following customers' feedback. We mainly focused on user interface and user interaction while continuing to improve every area of the software.

Installationâ

Version 24 is a major update with changes to the database schema.

RequiredVersions prior to 24 will not be allowed to sync. Any work performed on those versions following the release of version 24 will be lost.

The software should auto-update like previously. When first starting the software on the new version, it will ask to delete the old database:

Please select Yes to continue. HH Data Management will then perform the initial sync of the database.

The user is now informed that the software is performing an initial sync:

Following the initial sync previous saved layout will load again and the user can start resubscribing to events and cars.

User managementâ

User display nameâ

Prior to this version, user "display name" was fixed to the initial name entered on user creation. This led to issues with customers not able to fix spelling mistakes or change the user "display name" convention.
Starting with this version, the "display name" set on the website will be synced with the server and each client in HH Data Management.

Former userâ

Previously when using user list selection (like in the job list or issue list for example), every user past and present were listed. We have now added a parameter DeleteDate to the user definition of all accounts. When a user is removed from an account this value will be set to the current time. There is then a new column type called User selector that will filter users based on the start date of the current event and the deleted date of the users.

InfoAll migrated users that had already been removed from the account will have their DeletedDate set as the date of the release of version 24.

Granular permissions for admin and management viewsâ

Prior to version 24 the permissions for any admin or management view were set by a group access check box. We received a lot of feedback that this was not ideal as some users should be given access to the part database without having access to the entire definition for example. To remedy this, we have extended our regular event worksheet rules permissions to all admin, management, and championship views.

The permission help section has been updated accordingly.

MigrationTo make sure that all users were given a similar set of permissions, we have automatically added some client UI rules. If any customers have any questions on permissions, please contact us.

Multiple username/databaseâ

Some of our users have multiple usernames to connect to HH Data Management. In most cases it is when they work with different customers.
There is now a way to run multiple databases without manually deleting the database everyone. This is explained in the multiple database help section.

User interfaceâ

Auto-save layout optionâ

We have added an option in the backstage to auto-save the current layout every 5 min.

Layout recoveryIn the case that the software doesn't shut down properly, the user will be prompted with a choice of loading an empty layout, a temporary saved layout, or the previous layout.

Toast notificationsâ

In a bid to improve notification information throughout the software, toast notifications are now available in HH Data Management.

Starting in version 24, toast notifications are used for all profile export, but the goal is to expand it at the start of year (Job list notification, setup change, etc..).

PluginToast notifications can also be used from plugins already.

Run sheetâ

In version 24 the user interface of the default run sheet was improved. We took into consideration feedback received over the past year to improve the usability and look of the run sheet.

Here are some of the changes:

Slider to control different areas of the run sheet.

Engineering list added.

Ability to add a RunSheet CID in a tab to allow for calculation without any integration.

Track map display.

Fuel calculation was redesigned to allow for telemetry input (decreasing or increasing).

New cleaner top bar.

Option to have setup sheet inside a TAB or outside.

Custom run sheetFor most customers with a custom run sheet, we have not adapted the customized run sheet to use some of the new features of the default one. Feel free to contact us if you want to review the different options available.

Run planâ

customize calculationâ

We received a lot of feedback that the run plan in HH Data Management was lacking options to customize lap time and fuel consumption based on different parameters. One of the most obvious was the ability to do WET run plan for example or to differentiate lap time and fuel consumption between different drivers.

Two maths parameters called LapTimeMultiplier and FuelConsMultiplier can now be used to control lap time and fuel consumption at either the run or the lap level.

ExampleHere is an example with a IsWet checkbox and a ratio directly on the run plan to control the lap time.

Here is the simple formula used:

Main graphâ

Graph type templatesâ

In version 24 we have added the ability to save graph type templates into the database. This will allow users to re-use their favorite graphs without having to rebuild them from scratch every time.

Librariesâ

Prior to version 24, both the series appearance library and the panel scope library were only saved locally in a layout. Starting in version 24, both libraries will be saved in the database. This will allow for better collaboration between team members and harmonized analysis.

The syncing of both libraries to the database will happen automatically like within the rest of the software.

Old layoutWhen working with an old layout, the first time that a user will edit a main graph, HH Data Management will prompt a message box to ask if the user wants to import the modified series appearance or panel scope. Both libraries were stored previously in the layout and now they need to be stored in the database.

Here is an example of the message box:

The three options are:

Discard all - It will ignore importing the saved series appearance and/or panel scope from the layout.

Import and overwrite - It will import and overwrite all saved series appearance and/or panel scope from the layout.

Resolve individually - It will allow to import saved series appearance and/or panel scope from the layout one by one.

If you have any doubt on how to deal with the new syncing of the libraries, feel free to send us your layouts and we can handle the migration for you.

Data selection user interfaceâ

The data selection user interface was re-worked. The user can now collapse and expand the tree as well as drag the position of each tab, panel, and graph individually.

Series settingsâ

A new field in the series settings called series ordering was added to set the order of the series.

The series title was also changed to be able to accept the parameter name as input.

Ordinal x-axisâ

One major limitation on the main graph was the inability to plot anything else than numbers on the X-Axis. For example, setup evolution per events or parameters per run.

It is now possible to set a string parameter in the Data Expression of the x-axis settings. And the order can be controlled by the Order Expression parameter.

ExampleHere is an example to plot the best lap time per run for all cars:

Raising averageâ

A new option in the settings of the raising average was added. It allows to calculate or not the average. When off, the series will just get ordered either from smallest to largest or largest to smallest depending on the setting.

Here is a comparison with the average calculated (left) and without (right):

Assembliesâ

Assemblies were very well received in the first year of our mileage module. One feedback we received though was that we were missing one level for organising assembly iterations efficiently. We then decided to rework the assemblies and added one level called Named assembly. The help file for assemblies got updated as well.

ExampleLet's take the example of a customer with two damper sets.

Version 23

Assembly Type

Damper Set

Assembly Iteration

Damper Set 1 - Event 01

Damper Set 2 - Event 01

Damper Set 1 - Event 02

Damper Set 2 - Event 02

Damper Set 1 - Event 03

Damper Set 2 - Event 03

For each event, a new iteration needed to be created and the list of iterations in the CID was getting quite long in some cases and it was also getting difficult to find the correct iteration.

Version 24

Assembly Type

Damper Set

Named Assembly

Damper Set 1

Damper Set 2

Assembly Iteration Damper Set 1

Event 01

Event 02

Event 03

Assembly Iteration Damper Set 2

Event 01

Event 02

Event 03

In a CID, the user can just select the named assembly and the latest assembly iteration will get selected automatically. Or the assembly iteration can also be selected directly.

MigrationFor users that used assemblies in version 23, all assembly iterations for each assembly type were moved to a default named assemblies called DefaultNamedAssembly.

Custom columnsâ

Attached filesâ

It is now possible to add single and multiple attached files columns in the custom columns.

ExampleExample from the issue list using a single attached file column to store a picture and the multiple attached file column to store additional files:

Style optionâ

Custom columns style can now be edited in a similar way to the CID cells.
The style setting help file can be accessed here.

Corner input boxâ

A new parameter in custom column called column type was added. This allows to define a column as a single parameter, front/rear parameters, left/right parameters, or corner parameter. Those cells had to previously be done from the plugin.

Each parameters style can be edited individually.

ExampleSetting up a tyre batch input cells for the 4 corners:

Conditional math parameterâ

In version 24 we have added the ability to have a custom column that is a conditional math parameter.

Column Item Definition (CID)â

File dialog buttonâ

A file dialog button was added to the cell options. The goal was to be able to select files and/or folders and save their path in parameters. Those paths can then be re-used for other purposes such as exporting for example.

ExampleSetting up an export folder in a Setup CID

Mathsâ

Collection interpolationâ

1D and 2D interpolation from collection items were added in version 24.

Event lap counterâ

There is now a property on the lap flat model called EventLapNumber that gives an event-based counter for the laps.

This can be used to plot all laps from an event on a main graph or display the total number of laps in the run sheet.

Lap count properties
EventLapNumber - Event lap counter

TotalLaps - Session lap counter

OutingLaps - Outing lap counter

New math functionsâ

StringToDouble

GetThemeName

Example theme usageThe user can define different colors for the car for example:

Then using a formula using GetThemeName(), the correct color can be retrieved based on the theme.

Example formula: If(GetThemeName()=="Light",RunSheet.Car.Color,RunSheet.Car.ColorDark)

dangerThe theme only refreshes after a software restart currently.

Key Performance Indicators (KPIs)â

Data channel aliases orderâ

To allow for better customization and different file handling, the order of data channel aliases can be now changed.

New KPIs functionsâ

Three new KPIs function were added. They all allowed to deal with collections and plot collection results easier.

SumAll

CountAll

AverageAll

ExampleWith a collection of GPS sector time calculated for every corner on the track, the user can now use the SumAll expression to get the time spent in corners in a lap.

Misc.â

Track sectorsâ

When defining sectors on a track configuration, there is a new column called "Is Track sector". This was added to be able to add sectors that shouldn't be taken into account in theoretical lap time calculation.

ExampleA good example is in Le Mans where there are the three main sectors but also some additional sectors such as the Porsche curve and the Ford chicane.

Only S1/S2/S3 are used to calculate the theoretical lap time:

API wrappersâ

Starting with version 24, we have updated our .NET and Python wrapper as well as their documentation.

Additionally, the .Net wrapper is now available on Nuget
