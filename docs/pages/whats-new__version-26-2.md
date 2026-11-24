---
url: https://help.hh-dm.com/whats-new/version-26-2/
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
