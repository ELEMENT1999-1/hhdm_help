---
url: https://help.hh-dm.com/whats-new/
---

Version 26.2

September 7, 2026 Â· 6 min readVersion 26.2 includes many improvements to HH Data Management. Many of these were requested by you, so thank you for continuously sharing your feedback and ideas!
In addition to these improvements, this mandatory update puts the foundations in place for a number of new features that we will be able to add over the coming months.

As usual, if you have any questions or issues with the release please contact us at support@hh-dev.com.

Installationâ

There are some updates to the database schema in this version, making it a mandatory update. It can be downloaded from here. A database resync isn't needed, and work on the account can resume immediately after the update.

RequiredPrior versions will not be allowed to sync anymore.

Overviewâ

One of the main goals of those major updates is to improve the overall performance of the software. For this version we reached:

up to 40% memory reduction

Up to 15% cache loading performance

overall syncing performance when many users are subscribed to the same event/car

All of which should contribute to a more fluid user experience.

General / Settingsâ

Context Selectionâ

We have introduced a local option to order the context selection in ascending or descending order using Name or StartDate. This allows the latest options to be displayed at the top.

In addition, the car number displayed per event can now be customized by creating a math parameter named ContextDisplayNumber on the EventCar definition. This allows different users to display, for example, the chassis number, race number, or a combination of both.
This makes it possible to use the Cars entities more as an inventory of chassis rather than an inventory of race car numbers.

Copyâ

In previous versions, the Copy function used for Tyre Sets, Setups, Run Plans, and Setup Comparison could only copy a single item at a time. It is now possible to select and copy multiple items at once, making these workflows faster and more efficient.

Setupsâ

In addition to the existing Copy Setup function, we have introduced a new function called Copy Custom Setup.
This allows all or part of a setup to be copied into a new or existing setup. For example, you can easily combine the mechanical setup from the best setup of a previous year's race with the build sheet from the last time the car was on track. This can also be used for systems setups, simulation settings,...

This function uses Parameter Groupings defined in Definition.

The user first chooses whether the data should be copied into a new setup or added to an existing setup.

The user can then select the Parameter Groupings to copy.

Parts, Assemblies & Tyresâ

Mileageâ

Up until now, all interactions with the Mileage calculation have used the API to trigger a recalculation and download the results. Beginning with this release, all interactions with the Mileage calculation are done through the integrated syncing framework and do not require any additional API configuration. This means mileage results are automatically downloaded to all computers when new results are available.

In addition, mileage can now be retrieved at the setup scope, allowing the mileage of each component to be tracked at each step of its usage. This can be done using the function GetMileage.

We have also added the ability to retrieve the minimum remaining mileage before service for each sub-assembly or part item within a main assembly. Two new properties in the definition of Assembly Iterations are available for this:

MaxMileageSinceLastService

MaxMileageHoursSinceLastService

Session Clockâ

The session clock has been re-worked to add a leading days segment when the countdown is above 24 hours.

Strategy Overviewâ

We have added an automatic refresh on the strategy overview. The refresh will happen every minute in this initial version.

Action Triggersâ

We have implemented the ability to enable/disable Action Triggers. This allows the user to temporarily disable them without having to delete them completely.

KPIsâ

Run KPIsâ

Up until this version, KPIs were strictly limited to being calculated at the lap scope. We had some options to work around this limitation and calculate run values, storing them by lap, but this was not ideal. We have now added the ability to calculate KPIs at the run scope.

There are numerous examples of why this can be useful. For example, you can now calculate an average over a run to use as a reference, or use it as a reference for other lap KPIs. Sensor zeroing is one good example.

Both KPIs and Math Channels now have a new Target column, which allows you to choose whether the data should be calculated at the lap or run scope.

Resampling Mode for Data Channelsâ

We have added resampling modes (Hold and Linear) for Data channels in the Data Analysis profile.
Previously, when a channel was upsampled, linear interpolation was automatically applied.

Referenceâ

Math functions and units were added/updated to provide more flexibility for creating Math Parameters required for analysis and other data export.

Math Expressionsâ

Updated functions:

DoubleToString and ToString now support a new optional overload to specify the format

KPI Expressionsâ

Updated functions:

UpSample and ReSample now support new optional overload that allows boolean parameters to override the default interpolation and extrapolation options.

Software Calculationsâ

New functions:

Best lap time and best sectors are now directly calculated and available from event and session data

APIâ

The .NET wrapper now includes ApiClientV2, a new client available alongside the existing one. The main goals were to:

improve performance and memory usage

consolidate the return types of all functions to either ApiResult or ApiResult<T> to give access to the HTTP response information

add built-in timeouts and cancellation. The user can now set a time limit on any individual call, or cancel one in progress

We have also added new DataFileAccess endpoints to access data files directly through the API. These endpoints are available for RunSheets, SessionCarData, and Setups.
A Data Analysis Profile can also be specified, allowing the user to retrieve computed channels rather than only the raw data.
This makes it much easier to retrieve and work with data programmatically, opening up new possibilities for integrating HH Data Management data files with external analysis tools and applications.

Version 26.1

November 23, 2025 Â· 8 min readVersion 26.1 includes many improvements to HH Data Management. Many of these were requested by you, so thank you for continuously sharing your feedback and ideas!

As usual, if you have any questions or issues with the release please contact us at support@hh-dev.com.

Installationâ

There are some updates to the database schema in this version, making it a mandatory update. It can be downloaded from here. A database resync isn't needed, and work on the account can resume immediately after the update.

RequiredPrior versions will not be allowed to sync anymore.

Overviewâ

One of the main goals of this version was to improve the overall performance of the software. This included:

upgrading to .NET 9.0

reworking the math evaluation to speed up calculation and reduce memory usage

improvements to the Main Graph plotting to provide significantly faster refresh speeds

All of which should contribute to a more fluid user experience. More performance improvements are yet to come in future versions, particularly targeting large CIDs.
The user interface remained unchanged for most parts, although you will find a few more features that were added.

General / Settingsâ

Added a âCheck for Updatesâ button to the backstage view. In addition, a background check will be performed every 15 minutes to provide the most up-to-date version of the software and plugin.

Added a Connection Status view to show when the server connection is lost.

Configuration Entitiesâ

Definitionâ

Part and Assembly Parameters can now be added to the User definition

Added Assembly Iterations History definition for tracking service/rebuild of assemblies

Added Auto Download and Delete After Upload settings to Attached Files Parameters which can now be used in attached file controls (CID, CGD, and Custom Columns)

Ability to disable evaluation of Math Parameters

Added a Notes field to Math Parameter

Added filtering buttons and highlighting of open/close parenthesis to the math expression editor making it easier to create/edit Math Parameters

CGD Definitionâ

Being one of the most popular features of our latest release, we worked on enhancing its capabilities by adding the missing controls already available in the CID definition and the Custom Columns profile. Many more options/settings will let you design tailor-made views. For the full list of supported controls and options/settings, check out our help file.

Parts, Assemblies & Tyresâ

Mileageâ

Up to now, the Mileage calculations have been recalculating all events on the account, which led to increasing waiting times as more events were completed. The software will now automatically only recalculate the mileage of events that happened within the past 30 days. This can also be manually controlled. The progress of the calculations will be displayed as the number of events completed over the total number of events to compute.

 

Tyresâ

The CurrentMileage custom property added in version 25.1.29 was in conflict with an entity property of the same name. Therefore, the old CurrentMileage property on the tyre is now renamed to CurrentMileageFromWear. This new name reflects the value it returns: the current mileage of the most recent wear measurement on the tyre.

This means the two current mileage properties on the tyre are as follows:

Doubles.CurrentMileageThis is the current mileage of the tyre, derived irrespective of any wear measurements it may have. Please see Current tyre mileage for further information.CurrentMileageFromWearThis is the current mileage of the most recent wear measurement on the tyre.
warningThis may be a breaking change for your account. All existing math parameters, data exports, custom columns and CIDs that currently use TyreFlatModel.CurrentMileage must be changed to TyreFlatModel.CurrentMileageFromWear to retain existing functionality. Any plugins must also be changed in order to build with this new version of HH Data Management.

An option has been added to allow for individual reference pressure for each corner of a tyre set.

Event Entitiesâ

Runsâ

A new marker has been added to the run selection list next to the driverâs circle highlighting the run with the fastest lap of the session.

Data Export / Importâ

Data export now supports:

Collection parameters of Part or Assembly Parameters

Array Values (JSON Export Profile)

A JSON Import was introduced in this release. It allows for quicker data input and/or item creation. This feature can be used in many ways including creating new parts, setting event/track parameters, etc.
We intend to extend this functionality to support additional file formats in the future (CSV, Excel and XML). Ultimately, the goal is to remove the need for custom import code written in plugins by offering a built-in solution.

Analysisâ

Data Viewerâ

Thanks to positive feedback received following the addition of a data viewer in the last software release, a great deal of time was spent revamping the interface and adding many of the requested functionalities to enhance its capability:

New window combining both Plot Definition and Display Settings

New tab to show the data channel errors

Option to set the line colors based on channel, car or constant

Option to use a local distance channel

Ability to plot Custom Expressions defined in the selected Data Analysis profile

Display of the x-axis value at the cursor location

Zoom and cursor linking between all plots

Added new buttons at the top of the data tree for loading/unloading data, filter the fastest lap and collapsing/expanding the tree

Added a button to export images of fastest laps overlays

Additional keyboard shortcuts

Referenceâ

Math functions and units were added/updated to provide more flexibility for creating Math Parameters required for analysis and other data export.

Math Expressionsâ

New functions:

ToSafeFileName to sanitize arbitrary strings into valid Windowsâsafe file names

Contains that returns a Boolean indicating whether one string appears within another

Split that returns a list of substrings or parsed doubles by splitting a text using the provided delimiter(s)

LinFit to perform ordinary-least-squares regression on two numeric lists or specified fields of FlatModels collections, with results returned as slope and intercept

Added support for control-character literals (CRLF, LF, CR and TAB)

Updated functions:

Interpolate now supports n-dimensional datasets

TextJoin now supports collections

DateTimeToString adds an option for returning the DateTime in a specified time zone

Lookup adds an option for returning the last item from the result list

warningChanges have been implemented to the Interpolate function, specifically the requirements for matching dimensions and unique data points, have been enforced in this version.

If Math Parameters using the Interpolate function fail to return a value, check the data collection in order to:

Remove Duplicates: Ensure all sample points are unique.

Match Dimensions: Ensure that the number of data points provided for each dimension matches the data array's shape, as the function expects a complete grid or corresponding points for N-dimensional interpolation.

Unitsâ

The following dimensions/units were added to the software

Heat Flux dimension with units: W/mÂ², W/inÂ², and W/ftÂ²

Megawatt (MW) added to the Power dimension

Megapascal (MPa) added to the Pressure dimension

Make sure to check out the Reference page of the help file for the full list of Math Expressions and Units and examples on how they can be used.

HH Timing Integration (DMI)â

This release of HH Data Management also comes with a mandatory update of HH Timing and the DMI plugin due to changes we made to ensure more robust communication between both.

There is now an option to override the port used to exchange messages between the applications. Moreover,we have now added a warning for the user when running into incompatibility issues between HH Data Management and DMI plugin versions.

It is now possible to send additional timing information to either lap, run, or session entities. These custom parameters can be mapped from the advanced tab.

RequiredMake sure to download and install the latest version of HH Timing and the DMI plugin.

Version 25.1.29

July 1, 2025 Â· One min readTyre Mileageâ

There is an additional option to determine the current mileage of tyres. Please see Current tyre mileage for further information. To display this current mileage in the tyre inventory a Custom Column needs to get changed in the Tyre profile

Old:

New:

Version 25.1

January 1, 2025 Â· 4 min readVersion 25.1 includes many improvements to HH Data Management. Many of these were requested by you, so thanks for continuously sharing your feedback and ideas!

As usual, if you have any questions or issues with the release please contact us using support@hh-dev.com.

Installationâ

There are some updates to the database schema in this version but the software will migrate the database automatically during its installation. Note that prior versions will not be allowed to sync anymore.

A resync of the database isn't needed and work on the account can resume immediately after the update.

We improved the workflow when launching the software and you will now be shown a splash screen and prompted messages with the progress of the initialization.

Preparing database... when the database first needs to be sync or migrated after change to the database architecture following a major release.

Waiting for connection... when establishing the connection to the server

Creating master cache... loading data prior to syncing the database

Syncing database: ### pending operations... syncing any pending operations that occurred while offline

Loading account (#/#)... loading all account data required prior to open the main software window

Performanceâ

As always performance improvements and reducing the memory consumption of the software has continued to be a focus of this release.

The optional compute math parameters on demand from v24.2 is now the default setting and has improved the general performance and memory consumption of the software as well as improving the start up time of the software.

Improvement to software launch time, custom view columns rendering and data viewer were also a focus on this release.

Global issue listâ

Following development over the past few years, we have now released the global issue list on all accounts.

The global issue list is an advanced version of a todo-list. It allows to use user defined workflows to track progress on a issues and tasks and the account level.

Runsheetâ

We added two options to the run sheet:

A new lap marker properties SkipCountingLapNumber to add laps that would not count towards the total lap count (i.e. to grid, formation). These laps will be ignored by the DMI to ensure correct data alignment.

Ability to customize the calculated fuel used for the start of run using a math parameter.

Mileageâ

The user can now estimate mileage for an event yet to be completed and anticipate any out-of-life part that needs to be replaced.
Make sure to check the predictive mileage section of the help file to know how to set this up.

KPIâ

A few changes have been made to the Data Analysis profile allowing to specify units more easily for data channels and custom expression. It is also now possible to enforce a math expression to be calculated at a specific frequency.

Math functionsâ

We have added support for new dimensions

Area

Curvature

Temperature Change Rate

Admin Sectionâ

Custom grid display (CGD)â

Following the release in v24.2 we have added a few options to the CGD:

New Item Control layout item

Added visible binding path to most controls

Column item definition (CID)â

We have implemented some new options to the CID:

Export buttons (i.e. Excel, Json, Xml) can now trigger actions after a successful export

Action buttons and export buttons are able to trigger multiple actions

Apply any styles to any button control

Custom viewsâ

We have added a few more features to the custom views:

Show/hide custom view from the ribbon bar

EventCarData, SessionCarData and RunSheet Event Car view types

Binding expression to filter specific data or set the name of the custom view

Action & Action triggersâ

We added a trigger type to the action triggers allowing action to be performed when a new entity is added.

Multiple actions can now be trigger from a single CID button.

Miscâ

Specific file extension icons to attached file for better differentiation of file types

Delta option to tyre wear graphs

Multiple options to the Data Export profile to skip or allow/prevent any given node to the be exported

Ability to clear a date from any date picker control

Version 24.2

October 6, 2024 Â· 8 min readVersion 24.2 includes many improvements to HH Data Management. Many of these were requested by you, so thanks for continuously sharing your feedback and ideas!

As usual, if you have any questions or issues with the release please contact us using support@hh-dev.com.

Installationâ

This major update brings changes to the database schema but this software will migrate the database automatically during its installation. Note that prior versions will not be allowed to sync anymore.

A resync of the database isn't needed and work on the account can resume immediately after the update.

cautionOn the first start with this new version, the software will perform the database changes and it may take slightly longer than usual for the software to start.

infoA safe mode option has been added to HH Data Management for troubleshooting purposes.

Performanceâ

As always performance improvements and reducing the memory consumption of the software has continued to be a focus of this release.

The biggest improvement has come from adding an option to compute math parameters on demand. In the future this will become a default setting but currently it is an opt-in option. Depending on the account (how many math parameters there are, how many are displayed in the UI and how many cars are in an event) we have seen improvements of up to 8x the speed of loading the caches when starting the software with a layout and memory consumption improvements of 4x. This feature works by only evaluating a math expression when it is needed (i.e. when the value needs to be shown on the screen). With the default behaviour all math parameters are evaluated when the caches are loaded.

Other general improvements to the math expressions have helped with performance and memory consumption but not to such a high degree as the ability to compute the math parameters on demand.

We have made some improvements to the cached expressions in the main graph which help with refresh performance on large layouts.

We have made some minor changes to improve the speed of the syncing - this would mainly be noticeable when subscribing to events with a large number of sync ops or doing an initial sync of an account.

Live run planâ

We've integrated live timing feed data with run plans in HH Data Management. HH Timing and DMI now send real-time lap data to the run plan, providing dynamic updates.
Setting up HH Data Management is explained in the Live Run Plan section of the help file.

Data viewerâ

Following the initial release of our Data Viewer earlier this year, we've been diligently working to incorporate additional features based on customer feedback and address existing limitations and bugs.

The list of new features include but are not limited to:

Ability to add multiple plots

Ability to add scatter plots

Offset capabilitites

Zoom window functionality (CTRL + Drag for time/Distance plots and left click window on scatter plots)

Saving Tab name

Main graphâ

The Main Graph has undergone continuous enhancements, with the addition of several new features and options to complement its existing functionality.

Added cross, plus, and star marker types to enhance data visualization, especially when working with large datasets

Ability to send global filter settings between multiple main graphs

Ability to define multiple Data set for a graph

KPIâ

Following feedback from users that the lap count from the logged data doesn't always match laps from the run sheet in HH Data Management, we have added an option to offset the two.
This is done in the Runsheet KPI management view using the lap offset column.

Mileageâ

Initially, our mileage module relied solely on laps from the run sheet to calculate mileage. While this approach effectively serves most customers using HH Data Management, it presents limitations for those tracking large fleets of cars without a complete run sheet. To address this, we've introduced a manual mileage calculation mode.

Assemblyâ

We introduced a new flat model math function called GetMeasurement() that allows to get the value of an assembly iteration measurement parameter.

A practical application of this function is to use assembly iteration measurements in a setup sheet calculation. For instance, if a spring assembly's stiffness is measured annually, we can now retrieve the precise stiffness value corresponding to a specific measurement time and event time.

Math functionsâ

Additional attached file functionsâ

The following functions have been added that allow math expressions to interact with attached files:

AttachedFileExists()

NumberOfAttachedFiles()

Additional numerical Functionsâ

Where()

BestX()

BestXPercent()

We also added as math functions the box plot parameters:

Median()

Thirdquartil()

Firstquartil()

Calculationâ

The user can now access the best sectors and best speed traps for each run in the Runsheet scope by their index. This includes both the run-best and session-best values, making it easier to display this information and perform calculations based on it.

Admin Sectionâ

Custom grid display (CGD)â

One of the major feature from this version is the introduction to the custom grid display (CGD). The CGD is a type of display that allows users to design their own view. The CGD is used to design the run sheet view, so the run sheet can now be customized from within the software without needing to use a plugin.

Custom viewâ

Some improvements have been made to the custom views.

A valuable new feature allows you to filter any custom view using filter expressions.
Here some examples of filtering that can be done with this feature:

WET/DRY setup only

SETDOWN setup only

Filter TRACK only sessions

Custom columnsâ

Some improvements have been made to the custom columns.

Expiry dates from the part and assemblies are now taken into account when used in custom columns

Added an assembly iteration selector

Actionsâ

Action parameters are used to perform certain functions either when a button is clicked or when triggered by an Action trigger.
One example could be to set a ride height increase by increment with a button. Previoulsy this type of logic would have required a plugin to be implemented.

To do so we've added some new parameters into the definition:

Actions

Actions triggers

Expression bindingâ

To address the common challenge of entering correct binding paths in the admin sections such as CID or custom columns, we've implemented an option to allow users to write binding paths using math expressions, rather than the currently used WPF binding paths. When writing a binding path using a math expression intellisense is available which makes it easier to write these binding paths.

APIâ

There are some updates to the API as part of this update as well. We have added two new endpoints:

Setups/JsonExport

Setups/EvaluateExpressions

They are only available for Setups at the moment but will be made available on the other entities in the future.

The JsonExport endpoint allows you to pass in a setup ID and Json export profile ID, and it will return the generated Json export. The EvaluateExpressions endpoint allows you to pass in a setup ID and a list of math expressions. These math expressions will then be evaluated against the provided setup. Both of these new endpoints are included in the API documentation.

We have also added support for the attached files math functions on the API. When combined with the new endpoints that have been added this is useful for customers who are storing data in Json files as attached files in HH Data Management. It is now possible to access parameters in the Json files by writing a math expression rather than downloading the attached file and parsing it manually.

Websiteâ

We've redesigned the permissions section of the website for improved user experience. The new layout features tabs for different sections and profiles, making it a lot easier to manage permissions.

Canopy integrationâ

We have started to work on an integration with Canopy. This allows you to trigger, process, and analyze Canopy simulations from within HH Data Management. This is done using the Canopy API. This feature is currently in Beta so please contact us if you are interested to try it.

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

October 2023 feature release

October 10, 2023 Â· 5 min readThe October 2023 feature release is an update to v23.2 and includes many improvements to HH Data Management. Many of these were requested by you, so thanks for continuously sharing your feedback and ideas!
As usual, if you have any questions or issues with the release please contact us using support@hh-dev.com.

Installationâ

This is a regular update to HH Data Management that is not a mandatory update. The software will auto-update like normal from the software.

User interfaceâ

Event subscription user interfaceâ

We have revisited the subscription page of the software that was often prone to mistake and confusion.

It should be a lot clearer now to see if a user is subscribed to an event and to a car in a specific event. Under the column "Cars Subscription status", the cars subscribed to are displayed in green.

The car selection is done by expanding the event:

Track user interfaceâ

The track user interface was revisited to include a slider on the right side for the sectors, speed traps, lap markers and collections. This will help mainly on accounts with a lot of parameters stored on the track or the track configuration profiles.

Export profileâ

The user interface for all profile was quite limited in the past. We have re-worked it so each column can now be extended to facilitate working on those profiles. This was done with the help of a slider:

Main graphâ

Box plotâ

We have added a few options to the Box plot in the main graphs:

First of all the order of the box plots can be controlled. By default, the order is controlled by the median like it was done previously.

But now the order mode can be of two types:

Box plot property

Median

Upper Whisker

Lower Whisker

Third Quartil

Fist Quartil

Expression

The expression option allows to always order by car number for example, or by driver name. So entities always show in the same order.

The "Show axis group median" option always to show for each x-axis scope a median of all box plots.

Here is an example of a front left tyre pressure graphs for 2 cars for multiple session:

The median style can be controlled from the series appearance:

The last option is the ability to remove outliers from the graphs. This can be quite useful to auto-scale the graphs on the box plot only:

Here is an example with outliers of lap times for drivers from multiple cars:

Without outliers:

We have also added the ability to add annotations to box plot. Similar to what was available for a regular scatter plot.

Here is an example where we add minimum pressure and target pressure using the annotation:

Expressions for axis limit and filterâ

Previous to this version, only numerical values could be used to control axis min and max as well as any filter. Now, expressions can be used directly in the following cells:

Any expressions that returns a numerical value can be used. Moving forward we will work on having IntelliSense available for all those input boxes.

Graph scope orderingâ

Similar to the x-axis scope ordering, we have added a graph scope ordering.

Minor gridlinesâ

There is now an option to show the major and minor gridlines:

Excel exportâ

Delete/Hide template worksheetâ

A new option was added to delete or hide template worksheet following export:

Select where to export file optionâ

By default a file is exported based on the file name template. However if the file name template is left empty then the user will get prompted with a file selector window to choose the export location and the name of the file:

Options in Data Exportâ

Two new options were added to the data export page for excel export:

option to pick if an Excel file should be shown or not when exported

use custom path - if checked this option will prompt the user with a file selector window to choose the export location and the name of the file.

CID Editorâ

Ability to re-order the view orderâ

We have added the ability to re-order views in the CID. This can be down from the CID Editor by dragging up and down the views:

Mileageâ

Data exportâ

We have added two options from the Item Mileage page:

Save as Image that will export the pivot table as a png image

Export to Excel

Miscellaneousâ

Auto populate display namesâ

Display names are now auto populated based on the parameter name everywhere in the software:

Display name can then be adjusted to be different than the name.

Image quality in CIDâ

When displaying large image in a CID, the quality was quite poor in the past. Now the quality is not impaired.

Version 23.2

September 5, 2023 Â· 12 min readVersion 23.2 includes many improvements to HH Data Management. Many of these were requested by you, so thanks for continuously sharing your feedback and ideas!

As usual, if you have any questions or issues with the release please contact us using support@hh-dev.com.

Installationâ

This major update brings changes to the database schema but this software will migrate the database automatically during its installation. Note that prior versions will not be allowed to sync anymore.

A resync of the database isn't needed and work on the account can resume immediately after the update.

cautionOn the first start with this new version, the software will perform the database changes and it will take longer than usual for the software to start (<1min).

User Interfaceâ

Layoutsâ

Two new features added for easier layout management:

A recent layouts list in the backstage option:

The users can view all recent layouts used in addition to the location and the last modified time. Double-clicking on one of the items will load the specific layout.

A checkbox in the local options of the backstage to load or not the most recent layout on start-up:

This option can be useful when working on different accounts or multiple projects within the same account.

Car Viewâ

The car view was fully redesigned for an improved user experience:

While the car table on the left of the page is still linked to a custom column like previously, Teams, Categories, and Manufacturers are now created on the right hand side of the page. Each section has its own tab:

The Teams and Categories are single lists whereas the Manufacturers is a parent-child type of list where the car model belongs to a Manufacturer:

Event Managementâ

Similar to the Car view, the event management view was also redesigned to improve clarity.

On the left side, the different Events of a selected championship are displayed, and below each Event, the sessions for this particular event:

On the right side, the Car and Driver selection as well as the tyre specification selection, all have their respective tabs.

This is also where each car participating in the event can be selected with the drivers added beneath cars:

A color marker has been added near the car and driver names.

The filter on tyre specification is done under the tab Tyre Specifications.

Tyresâ

An option was added to choose whether a tyre set is mounted or not during the bulk import:

Run Planâ

The Duplicate Run and Duplicate Lap buttons will now duplicate the selected run or lap instead of duplicating the last run or lap from the selected plan.

Job Listâ

When printing the job list it will now only print jobs that are on the screen. Prior to this version, all jobs were being printed regardless of any filtering or if the completed jobs were being shown or not.

Partsâ

In addition to improving the number of syncing operations created when importing a collection, we have improved the user interface to import data into a part collection or a part item collection.

There are now 3 options to import data from an Excel file:

Table Map - This option is unchanged from previous versions. This is to import a 2D table by selecting the row, column, and cell parameters.

Column

Use Auto Mapping - This will automatically detect header columns and match them with HHDM parameters. This is also not changed from previous versions.

Manual Mapping - This allows the user to pick as many columns and link it to the specific parameters in HHDM

Mileageâ

Following the release of the first version of our mileage module at the start of the year, we have worked on adding some key features to it.

Initial Mileageâ

Two new parameters were added to each part item and assembly iteration definition:

InitialMileage of type Double (Length)

InitialHours of Type Double (Duration)

Those parameters store the initial mileage and hours for each part item and assembly iteration.

When creating a new part item the user will be able to enter both values directly:

Both values can be updated directly from the parameter list as well at any time:

infoFollowing changes to initial mileage or hours for any given part item or assembly iteration, the mileage calculation would have to be refreshed from the server to be taken into account.

Block session from mileage calculationâ

There is now the option to block a specific session type from being taken into account for the mileage calculation.

To do so, a parameter needs to be added to the Session Type definition:

IgnoreForMileage of type Boolean

The custom column for the Session Type profile needs to be modified to add the new parameter:

Item Mileage User Interfaceâ

We have added a few options to the Item Mileage user interface:

Ability to display the time used (hours) in addition of distance and laps

Ability to display the mileage table per:

Event - this was the original option prior to this release

Event/Car - to get an overview of which car used specific part items or assembly iterations

Session - to review mileage per session

Access mileage from maths and exportsâ

We have added three new properties to the part items and assembly iterations to be able to use throughout the software (maths and/or export). Those properties represent the exact values pulled from the server and found on the Item Mileage user interface. The three properties are:

CurrentMileageDistance

CurrentMileageHours

CurrentMileageLaps

Exportsâ

In the CID Editor, we have added two new cells:

JSON Export Button

XML Export Button

Those buttons mirror the existing Excel Export Button and allow exporting JSON or XML files from the CID without the help of a plugin.

They both work by selecting:

a Text for the button itself

a Profile Name

Attached filesâ

Overall improvementâ

In general, we have worked towards improving the experience with the attached files.

The download speed of files (especially of small size) is improved.

There is now a progress display both during upload and download.

Handling of attached files is greatly improved. For example, when a user unsubscribes from an event or when a file is removed from the server, the local attached files will be deleted.

CID Editor - Multiple Attached File display improvementâ

In previous versions, when using a multiple attached file display, it would display all attached files linked to an entity. We have added an option to only display attached files from the named attached file parameters.

This is done using the AttachedFilesGroupingName of the Multiple Attached File Display option in the CID editor:

In this example, there is an Attached File Parameters of type multiple under the setup definition called ResultSim:

In this case, in the setup, only the simulation results will be displayed in the control and not other attached files from the setup (pictures, config file, etc...)

Collection Itemsâ

Collection Items
In previous versions, it was not possible to add attached file parameters to collection items. This limitation has been removed for this version.

Typical use case:

Driver rating collection items.

Scrutineering collection items.

Championship collection items such as fuel capacity, and fuel flow measurement.

...

User Interfaceâ

On the Subscription page, we have added a button called Update Sizes. This button will provide feedback to the user on how big the local attached files for each event and event/cars are.

Weatherâ

Timing feed data sourceâ

We have added a Timing feed measurement type to differentiate weather information coming from a weather station or from the timing feed. The selection will be done automatically.

As a reminder, there is an option to pick which data source to display on the weather graph.

Weather underground closest stationâ

For users with an API key from www.wunderground.com, we have added an option to automatically find the closest station available.

The detection of the closest station will be done via the GPS coordinate of the track.

The following parameters need to be added to the track definition:

GPSLatitude of type Double.

GPSLongitude of Type Double.

The parameters can then be linked to the track table using the custom columns.

Finally under the Weather Station worksheet, when using the Weather Underground station type, there is a Find Closest Station button that will automatically detect the closest station available.

Math functionsâ

Now() functionâ

The Now() function was added following requests from customers to be able to timestamp exported files from the software.

The Now() function will return the date and time of day in the UTC time zone.

The time zone from an event can be passed as an argument so the Now() function can return the date and time in the event time zone. Example: Now(Event.Track.TimeZone). The exact expression will depend on the scope of use.

For formatting, the Now() function can be used in conjunction with the DateTimeToString function. Example: DateTimeToString(Now(Event.Track.TimeZone), "yyyy_MM_dd_hh_mm_ss").

CalculateChanges() functionâ

The CalculateChanges() function was added to be able to return the changes between two items in the software. One of the most common uses for the function would be to export the changes between two setup sheets.

The CalculateChanges() needs two arguments. The reference item and the current item.

For example, from the setup scope, the changes between two setups can be exported using CalculateChanges(Previous, this).

From the run sheet scope, it would be CalculateChanges(Previous.Setup, Setup).

The CalculateChanges() function will export the changes as a single text. Each item is on a separate line.

Collection operationsâ

One feature missing in previous versions was the ability to do any math functions with collections. This led to the use of complicated functions such as Lookup, Order, etc... It is now possible to access a single item from a collection directly.

We have also added the option to use basic functions (Average, Min, Max, Sum, Count,...) directly with collections.

Here are a few examples of how this can be used:

From the Lap scope:

LapSectors[0].SectorTime will return the first sector time from the lap.

From the RunSheet:

Min(Select(Laps, "LapTime")) will return the fastest lap from the run sheet.

Average(Select(Laps,"KPI_TyrePressureFL")) will return the average value of a lap parameter over the full run.

Unitsâ

Two new units were added:

Quart (Volume).

N.m/rad (Rotational Stiffness).

Key Performance Indicators (KPI)â

Data Files typeâ

KPIs processing from Wintax files (unprotected files) is now implemented. To upload Wintax files, the run folder (the folder that contains all laps files) needs to be selected using a new button on the ribbon bar:

Improvement in processing Windarab files

Management of in and out laps.

Fix multiple issues with miscalculations due to the file format.

Data Analysis user interfaceâ

In the data analysis interface, there is now a checkbox for each folder, KPIs, and math channels. This checkbox allows or not for the calculation to be performed by the server. This can be useful when developing new KPIs for example or to speed up the KPI calculation in some situations.

In addition to the previous feature, there is also now the option to edit the folder condition under which the folder's KPIs will be calculated or not. Here are a few examples of when this could be useful:

Different cars in the same account.

Different categories in the same account.

Different loggers between test and race.

Some sensors were removed for the race.

There is now a button called Edit Folder Condition in the ribbon bar to edit the condition.

The condition needs to be a true/false condition based on the RunSheet scope.

Folder conditions can be reviewed directly on the folder tree.

Other examples of conditions:

Car.Category.Name != "LMP2" - Only calculate for cars that are not from the LMP2 category.

Session.SessionType.Name != "Race" - Only calculate when the session is not of type Race.

RunSheet KPI management user interfaceâ

In the RunSheet KPI Management we have added a few extra buttons:

Save File As - Prior to this version, there was no way to save a file directly from this window.

Delete ALL files Remotely and Delete ALL Files Locally - Those allow the user to delete all files that were selected for a session.

Overall improvementâ

With more and more customers using the KPI feature, we worked on improving the overall experience:

The overall sync operations when running (and re-running) KPI's have been reduced.

Together with all the attached file progress we made in this version (see above), when a user uploads a data file, the data file is not stored anymore locally under the attached file folder of the software.

Custom columnsâ

Duplicate optionâ

First of all, we have added a duplicate button for profiles and for column definitions on the ribbon bar to save time when working on custom columns:

Different lap custom column for the run sheetâ

We had quite a lot of requests to be able to have different lap custom columns in the run sheet for different events, sessions,...

Some examples:

Road course vs Oval for Indycar

Sim session vs on-track sessions

Practice vs Race

...

To be able to handle most cases, we have built a cascade priority list (similar to the lap markers) in the following order:

Session Car

Event Car

Session

Event

Track Configuration

Track

In the example of the Road course vs Oval, the selection should be done at the track level. But for the Sim vs On-Track, it should be done either at the event or session level.

The following parameter needs to be added to the respective definition:

LapColumnProfileId of type Text.

The following custom column needs to be added to the respective profile:

Column Type: Combobox

Field Name: Strings.LapColumnProfileId

Items Source Binding Path: ContextSelection.SelectedManagementCache.ViewCustomColumnProfileCache.ViewCustomColumnProfiles

Display Member Path: Strings.Name

Value Member Path: Id

Data Context: **ViewModel

A selection of the lap profile will then become available.

Version 23

January 1, 2023 Â· 5 min readVersion 23 is a major overhaul of the software. We made technological and structural changes that will allow us to continue improving the software following customers feedback. Security, performance, and customization were the main things we focused on.

Version 23 is a major update with changes to the database schema.
The software should auto-update like previously. Versions prior to 23 will not be allowed to sync. Any work performed on those versions following the release of version 23 will be lost. When first starting the software on the new version, it will ask to delete the old database:

Please select Yes to continue. HH Data Management will then perform the initial sync. Once the pull operations are back at 0 you can resubscribe to your events.

Performanceâ

Like for any major release, our focus was to review in detail every part of the software that can be improved for performance. For this version we continued to focus on the syncing performance as well as the loading data.

Custom Viewsâ

One of the most notable changes we have done for version 23 was the ability to create new views directly from the software. In the past the creation of those views had to be done programmatically from a plugin. Now they can be done directly from the Admin section of the software.

The custom view configuration page can accessed from the Admin ribbon bar:

Three types of views can be created currently:

Single Table

Multi Session Table

CID (Column Item Definition)

For each view, a new button will be created on the ribbon bar under a custom tab for the account.

For each view the linked definition, permissions, icons and other options can be defined:

This change will allow customers to display data in a format they choose and also manage data access. For example, only certain views from a setup sheet could be displayed for specific users of the account (for supplier for example). It will also a nice extension of the software with the ability to display any Column Item Definition from any definition.

Mileage and measurementâ

We worked on a first version of a comprehensive mileage and measurement module. This using assemblies and part item.

First of all, an overview of mileage for each part item and assemblies can be reviewed:

This mileage view is using our API to connect to the server to provide all information from the database. Once downloaded, all mileage for an event can be done locally.

The assembly view can be used as an inventory and to track measurement and mileage:

Using custom columns, the assembly inventory can be filtered. For example to only see used items organized by a measurement calculation. An expiry date filed was added to the assemblies as well:

Assembly measurement can be customizable at the inventory level:

And the measurement can be also defined as custom column definition to provide flexibility to display any calculation needed:

Strategy Overviewâ

A strategy overview control was added in the event part of the ribbon bar:

It allows to have an graphical overview of a specific session:

Color options and text options allows to configure it. For example, colored by driver and displaying the cambers for each run:

Column Item Definition improvementâ

We have changed the syncing of the column item definition editor to use the regular syncing framework. The old method used was limiting development of the software in this area, especially for sharing of information.

We have also redone the formatting options of the Column Item Definition Editor. It is now a lot more comprehensive and allows for better customization. For each style option (Background color, Foreground color, Font weight, Font style, Font size and Read only), we can now define either a constant value, an expression or link it to a custom property.

Definition UI Improvementâ

We added the option to add parameters in bulk using either Corner or Axle:

We also added the ability to delete multi parameters at once.

JSON Exportâ

Very similar to the way that we added in the past the ability to export data into excel or xml files, we have now added the ability to define a JSON export profile. A JSON file is a file that stores simple data structures and objects in JavaScript Object Notation (JSON) format, which is a standard data interchange format. JSON files are lightweight, text-based, human-readable, and can be edited using a text editor.

Session Typeâ

Session types are now stored in the database and accessible by the users under the admin section:

Website and APIâ

Due to the increase of API usage in 2022, we have worked on increasing the permissions granularity of the API. Previously, a user with an API key would have access to the entire admin and management part of an account. Also there was no way to restrict permission to certain parameters or definition.

Now the permission for the API can be defined at the parameter level if necessary. The permission can also define if a user can create, read, update or delete a parameter, or a full definition or entity.

The permission on the website were re-worked to take this change into account.

This new structure allows to differentiate between the worksheet rules and the data access rules.

What is coming next?â

Following the release of version 23 we will focus in the early stage of 2023 to release some of the new UI we have been developing using the database scheme:

Improvement to the Main Graphs

Improvement to mileage and measurement

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
