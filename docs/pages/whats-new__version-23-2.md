---
url: https://help.hh-dm.com/whats-new/version-23-2/
---

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
