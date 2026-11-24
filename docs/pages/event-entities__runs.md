---
url: https://help.hh-dm.com/event-entities/runs/
---

On this pageRuns

The run sheets view can be accessed from the event tab of the ribbon bar:

The display is split into 3 main sections:

Run selection: lets the user select the run to be displayed

Run information: displays the most important information of the selected run including the lap information, ambient conditions and comments from the driver and engineers

Right Panel Tabs: there are several tabs to show information like tyre pressure, track map, setup, attached files. The CID tab display a CID that can be customized from the software.
Except the run selection, everything can be customized for customers using a plugin.

tipRun information height and width can be adjusted with one vertical and one horizontal sliders.

Manage runsâ

To create a new run, click on Add Run:

A new run will appear with blank values in the run sheet.

cautionUse Copy Run when runs are not automatically created from the DMI. Copy Run performs the following:

Copy the tyre set from previous run

If the SessionCarData math parameter "NewSetupForEachNewRun" evaluates to true, create a new setup (copied from the previous run setup)

If the parameter does not exist, the Championship parameter with the same name will be checked

Copy all parameters with Copy To New property set to true.

To see more of how the setup is created, see the tips on the Championships page.

Manage lapsâ

To add a new lap in a run, click on Add Lap and a new line will appear in the lap table. HH Data Management also provides a solution to automatically populate the runs and timing laps information by using the HH Timing integration.
To add multiple laps click on Add Laps and enter the amount of laps that should get added.

To delete laps select a lap (or multiple laps by pressing and holding the ctrl key) and click on Delete Lap(s) or click on Delete Empty Laps to delete all empty laps in the selected run.

To open a run in the Data Viewer click on Show in Data Viewer.

Tyre setâ

The ribbon bar provides the possibility to create mixed tyre set. To do so, click on Create Mixed Set, enter a name and select a tyre from the list for each corner.

View optionsâ

Session Overviewâ

To get an overview of the session, select Session Overview. All the most important information of all runs will be displayed in a single table. To display more information about a run, click on the "+" icon on the left of the run name:

Sector Timesâ

Sector time display can be customized with the dropdown box and sector definitions: track configuration sectors

ModeDescription
All SectorsSector times are displayed in the order the sectors appear in the Track Configuration Definition
Track SectorsOnly show the sector times with "Is Track Sector" enabled
Non-Track SectorsOnly show the sector times with "Is Track Sector" disabled
Grouped SectorsShow the "Track Sector" time columns before the "Non-Track" sector columns

Run selectionâ

The run selection panel on the left allows runs to be selected and displays the following information:

ComponentInformationComments
driver and fastest lapDisplays the colour of the driver in the car. If the run contains the fastest lap in the session for the car, a green marker is also shown.
tyre type and wearThe colour indicates the tyre specification.
all four new tyres
all four tyres have been used before
tyres are reused from the previous run
no tyres have been assigned to the run

fuel or energy leftUses the "FuelOrEnergyLevelLeft" math parameter if it exists, otherwise uses the internal parameter "CalculatedStartFuel" representing the starting fuel level of the run.
name of the runIf "Show Full Name" is enabled in the ribbon bar, this includes the run description.

Run sheet informationâ

The run sheet allows to store the following information:

CategoryInformation
Runnumber, name, start and end time
Drivershort name
Ambient conditionsair and track temperature, humidity, air pressure, sky and track status, wind direction and intensity. These values can be linked to, and auto-populated by, the weather data
Tyretyre set name and specifications, hot pressures and tyre temperatures can also be entered in the run overview (see above).
Timing infoaverage laptime, theoretical laptime, best laptime and laptime degradation
Commentsdriver, engineers
Listengineer notes, issue list

tipThe engineer note type list can be updated from the admin section.

Other parameters can be displayed on the run sheet by writing a plugin. For more information please visit the articles Why should I use a plugin? and Creating a plugin.

Right panel tabsâ

TabInformation
Mainfuel management, tyre pressure and temperatures
CIDcan be customized by the customer, creating a runsheet CID named RunSheetCID
Track Mapdisplay the track map uploaded in the track configuration
Attached filesAny files can be attached to the run. To add a new file, click on Add to current run and choose a file to upload. Click on Download to get the file locally and open it.
Ambient Measurementsair and track temperature measurement can be added
Setupsetup view called RunSheetSetup is displayed here

tipThe Setup can be displayed inside or outside of the tab depending on the account option.

RunSheet CIDâ

The CID tab contains a CID customizable. It needs to be named RunSheetCID.

Exportâ

Several export features for the run sheets are available:

Export Event: available with the plugin framework

Export Session: available with the plugin framework

Export Run CSV: export the laps information of the selected run into a CSV file

Export Session CSV: export the laps information of the selected session

Customizing the viewâ

Both the complete runsheet view and the displayed lap columns can be customized using CGD definitions or custom columns profiles respectively. Such customization may be desired for a variety of reasons, for example:

Road course vs oval (like in Indycar)

Sim session vs on-track session

Practice vs race

Both forms of view customization are accomplished in similar ways. The runsheet CGD definitions and/or lap custom columns profiles are created first. Then, these created profiles can be selected at multiple levels in a cascading priority list (similar to the lap markers):

Session Car Data

Event Car Data

Session

Event

Track Configuration

Track

This works by looking first in the Session Car Data for a selected profile, if one is found then it is used in the runsheet, if there is no selection at this level it will look in the Event Car Data next, and continue down the list until a profile is found. If none are defined it uses the default one on the account.

To enable runsheet CGD and lap custom column profile selection, for each defintion of interest above, the following steps must be completed:

To customize the lap custom column profile:

A Text parameter (called case A for future reference) or Math parameter with return type String (case B) named LapColumnProfileId must be added to a definition in the priority list above.

A custom column must be added to the entity's custom columns profile:

Column Type: Combobox

Field Name: Strings.LapColumnProfileId (case A), or Maths.LapColumnProfileId (case B)

Items Source Binding Path: ContextSelection.SelectedManagementCache.ViewCustomColumnProfileCache.ViewCustomColumnProfiles

Display Member Path: Strings.Name

Value Member Path: Id

Data Context: ViewModel

To customize the runsheet CGD definition:

A Text parameter (called case A for future reference) or Math parameter with return type String (case B) named RunSheetCGDDefinitionId must be added to a definition in the priority list above.

A custom column must be added to the entity's custom columns profile:

Column Type: Combobox

Field Name: Strings.RunSheetCGDDefinitionId (case A), or Maths.RunSheetCGDDefinitionId (case B)

Items Source Binding Path: ContextSelection.SelectedManagementCache.CustomGridDisplayDefinitionCache.CustomGridDisplayDefinitions

Display Member Path: FullName

Value Member Path: Id

Data Context: ViewModel

A selection of the runsheet CGD and lap profiles then becomes available.

tipThere is no default view for the Session Car Data and Event Car Data that the created combobox's can be seen on so a custom view for each of these can be created to customize this.
