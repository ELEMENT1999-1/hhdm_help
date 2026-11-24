---
url: https://help.hh-dm.com/whats-new/version-24-2/
---

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
