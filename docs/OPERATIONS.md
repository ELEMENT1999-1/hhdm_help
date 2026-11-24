# HH DM 精选操作手册（由全站文档提炼）

完整全文见同目录 pages/。本文件按任务聚合步骤，供快速回答。

## 安装与首次运行

> 源文件: pages/getting-started__installing-and-running.md

On this pageInstalling & running HH Data Management

Downloading HH Data Managementâ

The latest version of HH Data Management can be downloaded in two different ways:

Opening hh-dev.com/Latest/HHDM will automatically download the latest version without needing to log in to the website

Logging into hh-dev.com and navigating to the HH Data Management â Releases page

Option 1 will be sufficient in most cases, however HH Data Management requires a different installer depending on your CPU architecture (x64/x86/arm64) and sometimes the automatic download will not detect the correct version to download. In this case you can manually select the correct CPU architecture by logging into the website. For example, if you are trying to run HH Data Management in Parallels on one of the new Macbooks you will require the arm64 version.

After downloading the installer, unzip it, launch the exe, and follow the on screen instructions to install the software.

Starting HH Data Management for the first timeâ

After installing the software and launching it for the first time you will be presented with a screen to enter your login information. This is the same login information used to log in to the hh-dev.com website. If you do not have a username please contact your account administrator and they can create an account for you.

Token refreshâ

If OAuth is selected as the authentication mode, the Advanced Options section of this screen also lets you choose how HH Data Management refreshes its sign-in token. See token refresh for an explanation of the available options.

Once your Username and password has been entered, you can click OK. The splashscreen will reappear and indicate the progress downloading the required sync operations to populate the local database. Once this procress is completed the software will launch.

After the initial download of data is complete you will need to subscribe to events and cars to start using the software.

---

## 订阅赛事数据

> 源文件: pages/getting-started__subscribing-to-data.md

On this pageSubscribing to event data

The subscription view can can be accessed from the championship ribbon bar:

The championship can be selected from the context selection on the ribbon bar. The subscription view allows user to subscribe and unsubscribe to events and events/cars . When subscribed to an event or event/car the data from this event or event/car is downloaded locally and a user can start to view or edit the data based on their permissions.

The different cars registered under one event can be seen by selecting the event:

There are 5 possible status for each event and events/cars:

Not subscribed

Sent to the server: a request was sent to the server to pull the data locally and have the data available locally

Accepted by Server: the server accepted the request to pull the data

Subscribed: the data is available locally

Unsubscribe Requested: acknowledge the action of unsubscribing

tipThe "Local Att. Size" column displays the size of attached files downloaded locally of each event/car. To enable display of this column see the Backstage options.

Subscribeâ

To subscribe to an event, click the subscribe button of the event:

To subscribe to an event/car, click the Subscribe button of the car associated with the event:

cautionWhen subscribing to one or multiple items, it is important to wait for the pull operations to return to 0 before resuming work on the rest of the software. This will ensure that your local database is updated with the full data set.

tipSubscribing to an event/car will subscribe automatically to the event. However, subscribing to an event doesn't automatically subscribe to all event/cars linked to the event.

Unsubscribeâ

By unsubscribing from an event or event/car, a user will remove all data associated with the item from their local database.

To unsubscribe from an event or event/car click the corresponding unsubscribe button.

tipUnsubscribing from an event will automatically unsubscribe from all cars in that event.

tipHow to subscribe to All Events?

To save time, it is possible to subscribe to all events and events/cars from the selected championship at once by clicking on the Subscribe to All Events button on the ribbon bar.

How to subscribe to All cars in a single event?

It is possible to subscribe to all cars from an event by selecting the event and clicking on the Subscribe to All Cars button on the ribbon bar.

---

## Definitions 参数配置

> 源文件: pages/configuration-entities__definitions.md

On this pageDefinitions

Definitions form a fundamental part of the customization functionality of HH Data Management. All entities throughout the software can be customized using definitions. Definitions can contain simple scalar parameters or more complex parameters such as parts and assemblies. This page will introduce the definitions view in the software and explain the various parameter types that can be created.

Definitions viewâ

The definitions view is accessed from the Admin tab on the ribbon bar:

The definitions view will open:

The buttons on the ribbon bar can be used to control the view to add/delete definitions and parameters. The current definition can be selected from the combobox.

Adding and deleting definitionsâ

A new definition can be added by clicking the add button on the ribbon bar. A new window will pop up where the name and type of the new definition can be specified. The types of definitions that can be created is limited to:

setup definitions

collection item definitions
Other types of definitions are limited to only one per account and are created automatically when the account is created.

To delete a definition select it from the drop down and press the delete button.

Working with parametersâ

Definitions can have different types of parameters. The different types of parameters for the definition are shown on different tabs in the view

Parameters can be added, deleted, copied and edited using the buttons on the ribbon bar.

The properties that can be defined vary depending on the parameter type. There are some standard properties the apply to most or all parameter types:

Name: all parameters must have a name. This is used to identify the parameter throughout the software (the user interface, math expressions, exports, API and plugins). The name must be contain only alphanumerical or underscore characters. The name must start with a letter or an underscore. Spaces are not allowed in the name. All names across a single definition must be unique (i.e. there cannot be a part parameter and an attached file parameter with the same name).

Display name: (not available on collection parameters) all parameters have the ability to define a display name. This is used mainly when referencing the parameter in the user interface, for example when showing setup changes, the parameter is referred to by the display name rather than the name. There are no restrictions on characters in the display name, so a more readable display name can be defined.

Copy to new: (available for parameters, part parameters, assembly parameters and collection parameters) if this is set to true then each time you duplicate an entity, the current value of this parameter will be copied to the new entity. For example in the setup if this is set to true for the FLCamber and a setup is duplicated then the new setup will have the same value for the FLCamber.

Parametersâ

Basic parameters can be of the following type:

Double (i.e. numerical)

Text

Boolean (i.e. true or false)

DateTime

All parameters have the following options:

Default Value: this allows you to specify the default value that a parameter will have any time a new entity is created

Example Value: this allows you to specify a value that a parameter will have when working in the CID designer. This makes the designer look more realistic while you are working

Double type parameters have some additional options compared to the other types:

Dimension/Unit: this allows the user to define a unit to associate with the parameter. In math expressions unit conversions can be performed if needed.

Precision: the precision is used for rounding of numerical values. Numerical values in HH Data Management are stored as floating point numbers which have some difficulty representing all numbers perfectly. The default value of 8 is sufficient for most use cases but can be changed if needed.

Tolerance: the tolerance is used for change detection. For example in the setup sheet changes can be highlighted, but in some cases you might want to only have a change be detected over a certain threshold. If a change is less than this threshold then no change will be detected.

When adding parameters to a definition the pop-up window contains of two parts. The left part is optional and not always visible, and the right part is mandatory and lets the user configure the new parameter through the previously mentioned settings. The left part can be made visible when there are multiple definitions of the same definition type. For example like for setups or parts. It helps the user to add the same parameter to all selected definitions at the same time. This is particularly interesting for mileage related entities like Part Items, Assembly Iterations, Measurements etc.

Part Parametersâ

Part parameters allow you to reference parts and part items from an entity. What gets stored in the database is a reference to the selected part and optionally part item. Each part parameter must be linked to a specific part category. For a more detailed explanation on parts please refer to the parts documentation.

When a part parameter is created an additional parameter will become available in the software which is the name of the part parameter with PartItem added to it. The standard parameter will store the selected part and the PartItem parameter will store the selected part item if there is one. For example:

user creates a part parameter on the setup definition called FrontSpring

an additional parameter will be available called FrontSpringPartItem

Depending on the usage of the part parameter it is possible to select only a part, or both a part and part item.

Like with parameters, part parameters allow you to select a default part and default part item that will automatically be assigned whenever a new entity is created.

Assembly Parametersâ

Assembly parameters are a similar concept to part parameters. They are simpler as there is no additional "Assembl

...(完整见 pages/configuration-entities__definitions.md)

---

## Custom Columns 自定义列

> 源文件: pages/configuration-entities__custom-column-profiles.md

On this pageCustom Columns

The custom column feature allows for the columns in most tables shown in HH Data Management to be customized.

The custom column view can be accessed from the admin tab of the ribbon bar:

The custom column view will open:

There are three aspects to the custom columns:

Profileâ

The column profile is the container for the column definitions.

The column profile defines the definition that the column profile is linked to. This is how the column profiles are linked to different parts of the software. For example, a profile linked to the tyre set definition would be used to define the columns shown in the tyre sets view. If there are multiple custom column profiles linked to a specific definition, the Is Default checkbox is used to select which custom column profile will be used in the default views in HH Data Management.

The Use Column Order checkbox can be used to disable the column order feature for the current profile.

The Create Default Columns button automatically generates all default columns for the currently selected profile. Based on the linked definition type, the software provides pre-configured columns. It also creates columns for all Parameters, Part Parameters, Assembly Parameters and Math Parameters. If the profile already contains column definitions, any new columns with names matching existing ones will be skipped. Creating Default columns is only supported up to 100 column definitions. For definitions with many Parameters, it needs to be created manually.

Column Definitionsâ

The column definitions section is where the actual columns are defined.

Using the buttons on the ribbon bar, columns can be added, duplicated and deleted. The columns can be reordered. The order of the columns in the definition is the order they will appear in any view where this column profile is used, unless overridden by the column order feature.

The fundamental setting for the column definition is the column type. All other aspects of the column definition are dependent on this. Each column type is explained below, but first the common settings that will be applicable to all (or most) columns will be presented.

Nameâ

The name of the column definition is only used to display the column in the tree in the custom columns view.

Column Cell Typeâ

The Column Cell Type setting defines how many editors are displayed within one column cell. There are four options available, where the default setting is "Default (One Editor)". Depending on this setting there are more or less parameters that needs to get defined. The Tyres or Tyre Barcodes columns in the tyre-sets view are good examples or where more than one editor within one cell is helpful, because you can arrange the editors more efficiently than in four separate columns.

Headerâ

The header is the text that will appear in the header of the column. By default this has the same value as the name, but can be changed to be anything.

Example:

Widthâ

This determines the width of the column. There are two options for how this can be specified; absolute or relative. Absolute mode, which is the most common, means the value here directly defines the width of the column. In relative mode, the relative widths are used to make the columns fill the entire width of the table. The settings can be mixed, for example all columns could be defined as absolute, and then the last column could be defined as relative, meaning it would fill all available space.

Style Optionsâ

Please refer to the style settings documentation for an explanation on how the style options work.

warningIf using a column type like Text where a WPF binding path can be entered, and binding to a readonly property it is important to set the readonly style options to Constant and enabled, otherwise the column will cause the software to crash.

Display Formatâ

This allows the format of the output value to be controlled. For example, as shown in the screenshot the format of a date can be controlled. Please refer to the format strings reference for a full explanation of the options available here.

Read Onlyâ

Forces the column to be read only. This will override any settings coming from the permissions. If there is an advanced readonly setting (like an expression or a binding path) defined in the Style Options then the Read Only option is greyed out and you need to change the setting in the Style Options.

warningIf using a column type like Text where a WPF binding path can be entered, and binding to a readonly property it is important to set the readonly style options to Constant and enabled, otherwise the column will cause the software to crash.

Parameter columnsâ

Parameter columns are easy to set up and are designed to work with parameters in the linked definition.

Parameterâ

Parameter columns are used to link to parameters. The editor shown in the column will depend on the type of parameter selected. If a double or date time parameter is picked then the a display format option will also be available.

Parameter typeColumn type
DoubleTextbox (only allows numbers)
TextTextbox
BooleanCheckbox
DateTimeDate picker

infoWhen using a Parameter column with a column cell type with multiple editors, the parameter types (Double, Text, Boolean, DateTime) for each editor need to be of the same type.

Math Parameterâ

Math parameter columns are used to link to math parameters. The column will be a readonly column showing the result of the math parameter.

Part Parameterâ

Part parameter columns are used to link to part parameters. The column will be a combobox column, populated based on the linked part category of the selected part parameter.

Part Item Parameterâ

Part item parameter columns are used to link to the part item component of part parameters. The column will be a combobox column, populated based on the linked part category of the selected part parameter. All part items from all parts of the linked part category will be shown.


...(完整见 pages/configuration-entities__custom-column-profiles.md)

---

## Setups 操作

> 源文件: pages/event-entities__setups.md

On this pageSetups

By default, there are three different views in HH Data Management that allow for viewing of the setups. Only the setups view is used to actually edit the setups.

Reference mode and change highlightingâ

Changes between setups will be highlighted. The reference mode for the changes can be changed between the following options:

Consecutive: changes will be calculated by comparing the two setups beside each other

First: changes will be calculated by comparing all setups to the first setup (the left-most setup)

Selected setup: changes will be calculated by comparing all setups to the selected setup. The selection varies slightly between the views. Further information is available in the respective view documentation.

Setups viewâ

The setups view can be accessed from the event tab of the ribbon bar:

The setups view uses a CID, and the basic functionality is explained in the CID documentation.

Reference modeâ

Selected setup:

Add a new setupâ

Add a blank setupâ

A blank setup can be added using the add setup button on the ribbon bar:

Duplicate a setup using buttons on the CIDâ

A setup can be duplicated using the next and end buttons in the control area of the CID.

Copy a setup from another event-carâ

A setup can be copied from another event-car by clicking the copy setup button on the ribbon bar. A window will pop up:

The event and car from which to copy the setups can be selected before clicking Next. There may be a short wait if the data needs to be loaded from the database, then the next screen will appear which lists all the setups from the selected event and car:

After Finish is clicked, the setups will be copied in.

Copy Custom. Setup from another event-carâ

The Copy Custom. Setup button is similar to Copy Setup, but it adds extra steps that allow the copy either to create a new setup or to copy values into an existing setup, and it can optionally limit the copy to selected parameter groupings.

The event and car from which to copy the setup can be selected before clicking Next. There may be a short wait if the data needs to be loaded from the database, then the next screen will appear which lists all the setups from the selected event and car.

After the source setup is selected, clicking Next will open the third step. If Copy Setup into existing Setup? is checked and a Target Setup is selected, the copied values will be written into that existing setup. If the checkbox is left unchecked, or no target setup is selected, the copy will behave like Copy Setup and a new setup will be created.

In the final view, the parameter groupings to be copied can be selected. If no parameter grouping is selected then all parameters will be copied. If one or more parameter groupings are selected then only parameters assigned to those groupings will be copied.

After Finish is clicked, the selected values will be copied either into the selected target setup or into a newly created setup, depending on the choices made in the third step.

Automatically when a run is createdâ

The option to automatically create one setup per run is available in the Championships configuration.

noteThe first setup of an event needs to be created manually. The name of auto-created setup will be the same name as the previous one with a number incremented at the end of the name.

Importing and exporting setupsâ

Setups can be imported and exporting using the buttons on the ribbon bar. The import setup functionality must be defined in a plugin. The behaviour of the export setups button can also be customized in a plugin, however it also offers a default behaviour of letting the user select an existing data export profile to be used. After clicking the button, a window will pop up:

The options allow for:

all setups to be exported to an Excel data export profile

all setups to be exported to an XML data export profile

a single setup to be exported to an XML data export profile

all setups to be exported to a JSON data export profile

a single setup to be exported to a JSON data export profile

tipThe File Scope in the Setup Export is different from the Data Export scope:

If the "Use custom path" option is enabled, when the export is started, a dialog is shown to select an export destination. This will override the path specified in the export profile. If left disabled, the export will be saved according to the path specified in the export profile automatically.

Setup Comparisonâ

The setup comparison can be used to display and compare setups from different events and cars.

The setup comparison view can be accessed from the event tab of the ribbon bar:

Initially the window will be blank:

Adding setupsâ

Setups can be added by clicking the add setup button in the ribbon bar:

A window will pop up:

The event and car from which to copy the setups can be selected before clicking Next. There may be a short wait if the data needs to be loaded from the database, then the next screen will appear which lists all the setups from the selected event and car:

After Finish is clicked, the setups will be added to the setup comparison.

Reference modeâ

Selected setup:

Ordering and removing setupsâ

Any item can be removed or reordered using the controls on top of the setup sheet.

Live Setup Comparisonâ

The live setup comparison view can be accessed from the event tab of the ribbon bar:

This page shows the latest created setup for each of the subscribed cars in the selected event.

Reference modeâ

Selected setup:

Session Setup Comparisonâ

The session setup comparison view can be accessed from the event tab of the ribbon bar:

This page shows the setup from the first or last run of each subscribed car in the selected session.

The drop-down box can be used to select the first or last run sheet for the setup comparison:

Setup Assembly Treeâ

This view offers several customization options:

Columns can be shown or hidden using the checkboxes in the ribbon.



...(完整见 pages/event-entities__setups.md)

---

## Runs / Run Sheet 操作

> 源文件: pages/event-entities__runs.md

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

Both forms of view customization a

...(完整见 pages/event-entities__runs.md)

---

## Tyre Sets 操作

> 源文件: pages/event-entities__tyre-sets.md

On this pageTyre Sets

The tyre sets view can be accessed from the event tab of the ribbon bar:

A new tab will appear

Create tyre setsâ

Blank tyre setâ

To add a tyre set click on Add Blank Tyre Set. A new row will appear at the bottom of the table.

By default the tyre set will have no tyres assigned to it and they must be selected from the drop downs.

Bulk tyre setsâ

Several tyre sets can be created at once. To create bulk tyre sets click on Bulk Add Tyre Sets. A window will pop-up.

The bulk tyre window will help to create the set as well as the tyres associated with the set. Place holders can be used for the automation of naming. As an example, if we want to create two sets of tyres with a starting set number of three and an increment of one, a set name template of Set {#} and a tyre name templated of {S}-{T}, the sets and tyres would be created like:

tipThe {Sp} placeholder uses a string property named "ReportName" on the tyre specification. This must be set separately to the specification name when it is created.

Once the tyres and set are created, the tyres also become available in the event tyres view. Individual tyres can also be created in bulk without being associated to a set using the Bulk Add Tyres function.

Tyre set mileageâ

The tyre and tyre set mileages are shown in the list of tyre sets. The tyre mileage result is shown. If the mileage is the same for all four tyres then only a single value is shown. The set mileage is simply the mileage that the set has done with no consideration for the tyres in the set.

Pressure calculationâ

The tyre pressure calculation is managed primarily from the tyre sets view. Please refer to the pressure calculation for more information.

---

## Event Tyres / 初始里程

> 源文件: pages/event-entities__tyres.md

On this pageTyres

The event tyres view can be accessed from the event tab of the ribbon bar:

Create tyresâ

There are two ways to create new tyres; either one-by-one or in bulk.

Single tyreâ

A single tyre can be added via the event tyre worksheet for each specific car using the add tyre button on the ribbon bar. A window will then pop-up to ask for the specification of the new tyre. Only tyre specifications added to the event will be displayed as options.

Once created the new tyre will be displayed at the bottom of the list of tyres with a name that is based on the name of the previous tyre but with the last numerical value incremented. The name can be edited. Clicking the + sign on the row will expand the wear measurement history. For more information on tyre mileage please refer to the tyre documentation.

Bulk creationâ

To save time, several tyres can be created at once. To create tyres in bulk click on Bulk Add Tyres. A window will pop-up.

Placeholders can be used for the automation of naming. For example, to create 5 tyres with a starting number 10, an increment of 2, and a name template of {Sp}-{T}, the tyres would be created like:

tipThe {Sp} placeholder uses a string property named "ReportName" on the tyre specification. This must be set separately to the specification name when it is created.

To create tyres and tyre sets in bulk at the same time, please visit the tyre sets documentation.

Deleting tyresâ

Tyres can be deleted using the delete selected tyres button on the ribbon bar.

dangerDeleting a tyre will remove it from the database and delete all references to it. To remove tyres from an event without removing them from the database, please refer to the tyre inventory documentation.

Global tyre name and event tyre nameâ

By default, when creating a new tyre in an event, the event tyre name will be copied to the global name in the tyre inventory. Looking at the example from above, tyres created in the event were added in the inventory with their event name:

However, it is useful to store a new name under a global name (tyre number for the year, barcode number,..) while keeping a different event name.

When changing the name of the tyre in the inventory, only the global name is changed but not the event name:

Initial tyre mileageâ

The initial tyre mileage for the event is set in this view. The value is a distance and will be in kilometers or miles depending on your account.

There are three ways the initial mileage can be entered:

manually

calculated based on the latest tyre wear available

calculated using the full history of the database by the server

Manual entryâ

To enter the mileage manually, type the distance value in the column.

Local calculationâ

To have the mileage calculated locally, click the Set Initial Mileages button on the ribbon bar:

This works by searching the list of tyre wear measurements to try to find the latest wear measurement that was recorded before the current event, and then uses this value directly as the initial mileage.

Server-based calculationâ

The most reliable way to calculate the initial mileage is to perform the calculation on the server using the full history of the database. To do this, click the Set Initial Mileages (from API) button:

tipThe API authentication needs to be working correctly for this feature to work. By default the authentication will use OAuth and will open a browser window asking for the user to login. Additionally you need to be connected to the internet.

This calculation works in the same way as the part item and assembly iteration mileage calculation, but uses only the effective distance value, and rather than looking through setups linked to each run it looks through the tyre sets linked to each run to determine which tyres were used.

Current tyre mileageâ

Similar to the server-based calculation to set the initial mileages there is a way to set the current mileage by making use of the server/API. Clicking the Set Current Mileages (from API) button requests the current mileages from the server and updates the values in the local database. To display the values a Custom Column needs to get added to the EventCarTyre profile:

cautionThe initial mileage and the current mileage are two separate and independent values. The initial mileage defines the mileage at the beginning of an event so that the local calculation throughout the event returns the correct values. The current mileage shows the global mileage of a tyre at the time of the request, which does not take into account the initial mileage, because it's calculated on the server based on all laps in all events that this tyre ever did.

If the initial mileage and the current mileage are requested at the same time (and tyres are not used by multiple cars in the current event) the following equation illustrates the difference:

initial mileage + local mileage in current event = current mileage

---

## 轮胎里程概念

> 源文件: pages/parts-assemblies-tyres__tyres.md

On this pageTyres

Tyres exist in HH Data Management as their own custom implementation, rather than simply being defined as parts (and then tyre sets being assemblies). There are historical and practical reasons for this. Historically, tyres have existed in HH Data Management from the beginning of the software, but parts and assemblies and the associated mileage and measurements features are something that has evolved over time. Practically, managing tyres is a fundamental part of running a car and so there is more functionality built on top of the tyres compared to the parts and assemblies by default. Furthermore, depending on the championship, tyres often have a much shorter life than most other parts/assemblies on the car - sometimes only being used for one run and then scrapped. However, there are also a lot of commonalities between tyres and parts/assemblies and similar terms and concepts are used between the two in HH Data Management.

Tyre specificationsâ

Each tyre must have a specification when it is created and after this it cannot be changed. The tyre specifications view can be opened from the admin tab of the ribbon bar:

The tyre specifications view will open:

The tyre specification has two important parameters that impact the tyre wear; default number of wear holes and default initial tread depth. When a new tyre is created a new initial wear measurement will be created and set to the value of the default initial tread depth. Furthermore, each time a tyre wear measurement is created the number of measurements on the tyre wear measurement will be defined by the default number of wear holes parameter; typically this should correspond to the number of wear measurement points that are on the tyre. It is assumed that this number does not vary between tyres of the same specification.

By default there is only one value for the default initial tread depth, assuming that the depth of all measurement holes in the tyre are the same. However, it's also possible to define a default initial tread depth per hole. To set that up, the 'Add Default Tread Depths' button can be used. In the pop-up it can be defined how many new default initial tread depth parameters are getting added to the tyre specification. The amount of default initial tread depth parameters needs to match the default number of wear holes and all values need to be set to support multiple default initial tread depth parameters. The parameters are applied in ascending order from the inside shoulder to the outside shoulder of a tyre wear sheet. Example:

noteThese settings only take effect for new tyres. Once a tyre is created an initial tyre wear measurement is added to the tyre and the number of default initial tread depth parameters can't be changed afterward anymore.

The "Show expired" checkbox in the ribbon bar determines whether expired tyre specifications are displayed. When unchecked, tyre specifications with an expiry date before the time the view was opened are hidden.

Tyre specifications can have an expiry date defined. If defined, tyre specifications that expire before the start date of an event are not displayed in the Events Management page when defining the tyre specifications for the event, unless they are already assigned to that event.

When adding tyres or tyre sets in an event, only the tyre specifications assigned to the event can be selected. If the event has no tyre specifications assigned, all tyre specifications are offered except the ones that expire before the start date of the event.

Tyreâ

Tyres are associated entities and therefore exist globally in the software. Globally tyres are managed using the tyre inventory view that can be accessed from the management tab of the ribbon bar:

Please refer to the inventory view documentation for a full explanation of how this view works.

Once in an event, the tyres can be managed by the event tyres view.

Tyre setsâ

Tyre sets exist only in an event/car. They are not an associated entity that can be moved between events and cars. If a tyre set is to be reused between events, the tyres can be transferred using the tyre inventory, and then the set must be recreated in the new event. If this is a common part of the workflow for a team then it could be made more automated by adding functionality with a plugin. Tyre sets are managed using the tyre sets view.

Tyre mileageâ

The tyre mileage feature is different than the item mileages, but the same general functionality is available. In terms of the user interface, HH Data Management is more geared towards viewing the current mileage in the current event, rather than looking at historical mileage information.

Initial mileage in an eventâ

The initial mileage for a tyre in an event can be entered manually or automatically calculated on the HH Data Management server (in a similar fashion to the part item and assembly iteration mileage). This is managed on the event tyres view.

Current mileage in an eventâ

The current mileage in an event is shown in the following views:

tyre sets view

run sheet shows the start and end of run tyre mileages

event mileage view

The current mileage in the event is calculated as the sum of the initial mileage plus the mileage in the current event, based on the number of laps entered in the runsheets for the current event, the length of the track configuration for each session and any lap marker scaling factors. For the lap count, the initial mileage is converted to laps using the length of the default track configuration for the current event, rather than using the number of laps directly from the previous event.

Current mileage from APIâ

There is an option to request the current mileage of all tyres from the HH Data Management server. Please see Current tyre mileage for further information. To display this current mileage in the tyre inventory a Custom Column needs to get changed in the Tyre profile

Event mileage viewâ

The event mileage view can be acces

...(完整见 pages/parts-assemblies-tyres__tyres.md)

---

## 零件 Mileage 计算

> 源文件: pages/parts-assemblies-tyres__mileage.md

On this pageMileage

The mileage feature in HH Data Management enables tracking and display of component usage in terms of:

number of laps

effective distance

time used.

Mileage is tracked per event of part items and assembly iterations.

Mileage calculationâ

The mileage calculation is only available on the server, it cannot be calculated locally. The reason for this is that access to the full dataset can only be guaranteed on the server. The mileage calculation must be triggered manually. Once it is calculated, the result is cached on the server and is automatically synced to all users on the account.

The mileage calculation works by first looking through every part item and assembly iteration on the account for initial mileage values. This means even if a part item or assembly iteration is not used in any run, its initial mileage is still displayed on the Item mileage view.

Mileage lockingâ

The mileage calculation iterates through all championships and events on the account and accumulates mileage for all part items and assembly iterations. On large accounts this can be computationally intensive and take several minutes per championship.

To avoid recomputing mileage that has not changed, championships and events can be locked. This is done by setting the "LockForMileage" property on championships and/or events. There are three ways this property can be set:

Auto: If the end date of the event is greater than 30 days in the past, it is locked automatically when computing mileage. If set to Auto on a championship, the individual lock mode of each event in the championship are utilized instead.

Locked: The event/championship is not included in the mileage calculation, instead the last known mileage accumulated for each locked championship and event is used.

Unlocked: The event/championship is included in the mileage calculation. If a championship is unlocked, the individual lock mode of each event in the championship is still respected.

By default, the mileage lock mode of each championship and event is set to Auto. To configure this, a "Lock Mileage" custom column is available on the championship and event custom column definitions, these are hidden by default and must be enabled to display on the championships and events views.

To recompute the mileage of a locked event or championship because it has been modified, two options are available:

Manually unlock the championship/event

Use the "Force recalculate mileages" button. This ignores mileage locks and recomputes mileage for the entire account.

Auto modeâ

This is the default computation mode the mileage calculation uses, it goes through all created setups and finds all associated part items and assembly iterations. Since assembly iterations can be built using both assembly iterations and part items there is a recursive search of all assembly iterations in a setup to determine a complete list of the assembly iterations and part items.

ExampleIf a setup references an assembly for the front suspension, and this assembly contains a sub assembly for the front anti-roll bar, which contains part items for the bar and blade setting used, HH Data Management will find each of these components and link them to the setup.

Next, the calculation iterates through all the runs checking the setup that is assigned to each run. Furthermore the calculation checks the lap markers assigned to each lap in the run, as the lap marker can impact the distance calculation.

Based on this information the calculation can determine the total mileage and also per-event mileage for each assembly iteration and part item. If an assembly iteration or part item are assigned multiple times to the same setup they will only be counted once for the mileage calculation.

Including tyre sets in mileageIn exactly the same way that setups are searched through, tyre sets assigned to runs can be included in the search for part items and assembly iterations. To use this feature, a boolean parameter must be added to the AccountOptions definition named "IncludeTyreSetsInMileage". When this is added it will appear in the "Global options" and can be enabled for the account.

Number of Lapsâ

The number of laps calculation is simply the sum of the number of laps in each run where the component was used.

Effective Distanceâ

For the effective distance calculation the track configuration associated to each event (or session) is used to compute the mileage per lap, and an adjustment ratio is applied to the mileage of each lap based on the assigned lap marker and lap track status marker. If a lap marker is assigned to the lap, the calculation will search (in order) for a session, event or track scaling factor and apply this scaling factor to the track configuration length for the distance calculation.

Example
Event with a track length of 6.13 km

An "In/Out" lap marker with a mileage ratio of 0.8

A "Safety Car" lap track status marker with a mileage ratio of 0.7

For a sample run, containing 4 laps:

out lap

fast lap

safety car lap

in lap (while also under safety car)

The setup assigned to this run has one part item "Plank A"
The distance mileage for "Plank A" for this run will be computed as: (6.13 * 0.8) + 6.13 + (6.13 * 0.7) + (6.13 * 0.8 * 0.7) = 18.7578 km

The distance for each lap is then summed to give the distance mileage for each component.

Time Usedâ

The time used calculation uses the start and end time for each run to calculate the run time.

warningIf either of the start or end time for the run is not available then this run will not be counted in the time used mileage. Therefore if this value is important for mileage tracking then it is important to ensure the run start and end times are correct for all runs.

ExampleUsing the previous example, assuming the run started at 11:00:03am and ended at 11:10:14, the computed time used for "Plank A" will be: 10 minutes and 11 seconds.

Block session from mileage calculationâ

Specific session 

...(完整见 pages/parts-assemblies-tyres__mileage.md)

---

## 里程计算参考

> 源文件: pages/reference__calculations__mileage.md

On this pageMileage Calculation

Distance calculationâ

Lap marker & lap track status marker scaling factorsâ

When calculating the distance value the mileage calculation can scale the lap distance based on the scaling factors of the lap marker and lap track status marker assigned to each lap. The distance scaling factor would be calculated as:

Distance scaling factor = 1 * Lap marker distance scaling factor * Lap track status marker distance scaling factor

The marker scaling is entered by the user in up to three different places, ordered in increasing order of precedence:

track configuration

event data

session data

In other words, if the value from the session is defined, it takes priority over the value from the event data which, if it is defined, takes priority over the value from the track.

These values are defined in tables as shown in the following example of the event data view:

The tables can be populated using the add and delete buttons on the ribbon bar. When adding, a window will pop up:

After clicking ok there will be a new row in the table

Enter the desired value in any field - empty values will be ignored. In this example, the scaling factor of the in lap is 0.96 and the scaling factor of the out lap is 0.98.

Manual & predictive mileage dataâ

Manual and predictive mileage is entered by the user in two different places:

event data

session data

Data is selected to be used in the mileage calculation based on the "MileageComputationMode" and "PredictiveMileageComputationMode" Event parameters. These can be changed on the mileage tab of both the event data and session data pages, but are event-wide settings so changing the value in a session will also change the value on its event.

These values are defined in tables as shown in the following example of the event data view:

The tables can be populated using the add and delete buttons on the ribbon bar. When adding, a window will pop up:

The selected setup is now associated to this table and mileage values can be entered:

---

## KPI 配置与计算

> 源文件: pages/analysis__kpis.md

On this pageKPIs

The KPI (key performance indicator) feature in HH Data Management enables logged data to be analysed based on user-defined math expressions. To use the KPI feature, first the math expressions are defined using the data analysis profile. Then the logged data is associated to the runsheets. Once these two tasks have been completed the KPIs can be calculated. Once the KPIs are calculated the results are stored in the HH Data Management database and can be analysed using the main graph or the results exported using the data export features.

KPI results can be written either to the lap or to the run, controlled by the target property of the math channel used in the KPI.

The logged data is added to the runsheets using attached files. The KPI calculations are performed on the server, this makes it quick and easy to recalculate the KPIs at any time after an event. For example, as the season evolves more KPIs may be developed and the KPI implementation allows for updating the calculated results for all past events if desired.

Data analysis profileâ

The data analysis profile view can be accessed from the admin tab of the ribbon bar:

The data analysis profile view will open:

The following items exist within the data analysis profile once it is created:

Folders

KPIs

Math channels

Constants

Data channels

Data channel aliases

Custom expressions

All items are created, edited and deleted using the buttons on the ribbon bar. The items will be presented in their logical order, not in the order of the tabs in the software.

All items have checkboxes beside their definitions. These checkboxes allow the items to be disabled, meaning that they will not be included in a KPI calculation. For example if a folder is unchecked then any KPIs, math channels, constants, data channels or custom expressions defined in this folder will not be calculated.

Foldersâ

Folders are purely an organizational construct and do not affect the functionality in any way. Items created within one folder can be referenced from another folder.

The GLOBAL-SEARCH folder is an automatically added item in the folder list that shows the items from all folders in the tables all at once. New items cannot be added when the GLOBAL-SEARCH folder is selected.

Folder conditionsâ

Folders can be taken into account based on conditions. Selecting a folder and clicking the "Edit Folder Condition" button allows to add/edit a folder condition. Only when this condition is met, all the KPIs in this folder will get calculated. This is helpful if some KPIs should get only calculated if for example certain sensors are installed in the car, or it's possible to have different KPIs for different cars in the same event or for different sessions. The scope for the formula is always the current runsheet. To remove a folder condition the formula needs to be cleared.

Data channels & data channel aliasesâ

The Data Channel concept is used to define the channels that are available in the data file. Creating data channels is optional, but they enable the following functionalities:

channel suggestions (intellisense) in the math channel editor

name aliases for the channels with different names in different files (e.g. car or simulation)

common channel units for math channel calculations

resampling mode control for digital or analog channels

The grid rows have two levels: the Data Channel and Data Channel Alias. The Data Channel is the name that will be used in HH Data Management to reference this channel, and if no aliases exist, then this name will also be the name that is loaded from the data file. Data Channel Aliases can be used to support cases where data might have different names in different files, or simply to change the name between the data file and HH Data Management. This may be necessary if the channel name in the data file doesn't conform to the HH Data Management syntax requirements. For example, HH Data Management doesn't allow spaces in channel names, whereas a lot of data acquisition systems do. When processing the KPIs, HH Data Management will first search for the channel using the data channel name, then iterate through the data channel aliases, in the order they appear in the tree. To change the priority the data channel aliases are given, drag the alias to the desired position in the list. In the example screenshot, for the RPM channel, the search order would be:

RPM

Engine RPM

nmot

For unit management, the values are loaded from the data file in the units defined in the file. If the Dimension and Unit is not defined in the Data Channel in HH Data Management (i.e. the dimension is set to unitless), then the original value is what will be used and shown in HH Data Management. If dimension and unit are set for the data channel, then HH Data Management will perform a unit conversion (e.g. if a speed channel is stored as kph, but it needs to be mph in HH Data Management). If the dimension in the data file doesn't match the dimension defined in HH Data Management then no conversion will be performed.

Resampling mode defines how the data channel will be resampled within math channel calculations.

SettingDescription
HoldMaintain the last sample value until the next original sample (i.e. for digital channels with discrete values)
LinearApply linear interpolation to the points between the original values (i.e. for analog channels)

noteLinear interpolation is the default value for all existing and new data channels. Modify the data channel definitions as necessary to make use of the new Hold resampling mode.

Constantsâ

The constants are used to define constant values that can be used in math channels along with data channels.

Custom expressionsâ

One of the key points of HH Data Management is that all data is stored in a single place and this should in theory make it possible to access all relevant information about the car for each lap. For example, when running KPIs, part specifications (e.g. sp

...(完整见 pages/analysis__kpis.md)

---

## 数据导出

> 源文件: pages/data-export.md

On this pageData Export

The built in export functionality in HH Data Management supports three output formats:

Excel

Json

XML

While there are differences in the specifics of each output format the concept for all exports is the same. The format and structure of each export is defined in a profile. A profile lets you define the contents of each export, as well as things like the file name, and appearance of the exported data.

Conceptâ

Scopesâ

An important concept of the export profiles is the scope. Each exported file has a scope, and then this scope can be further changed when using the elements of the export (e.g. Excel workbooks and cells, XML nodes or Json objects). The scope is used to determine what contents can be written in the export and also how many files or elements are created. For example, if the file scope is setups, then each file that is created as part of the export will contain the data from one setup. If the file scope is an event/car then each file that is created will contain the data from one event/car, and you could chose to export each setup from the event/car into its own Excel worksheet, XML node or Json object.

The scope of all exports starts at the root of the account, and gets built up from there. The user interface in the exports helps with selecting a scope. For example, a file scope that gives access to the setups would look like this:

If this is selected as the file scope it means that a new file will be created for each setup.

Export structureâ

The structure of the file is defined using a tree representation, for example:

Each of the output formats has slightly different terms used for the elements in the structure, but the general concept is the same regardless of the output format. Nodes are created, and can have child nodes. Any contextual information is passed down to the child nodes. Nodes can be defined as being a scope change node. This means that the node cause the export to change the scope and

Export data contentâ

Once the scope has been defined, the actual data that will be written as part of the export can be defined. This is done by writing math expressions to reference parameters and call functions. The difference in exports compared to other parts of the software where the math expressions are used is that any math expressions must be wrapped in . For example to export a parameter called FLCamber you must defined the export as {FLCamber}. Anything outside the will be exported without evaluation. For example you could write -{FLCamber} deg as the export and if the value in FLCamber is 3.2 what gets exported would be -3.2 deg.

Running the ex-/importâ

Data ex-/import viewâ

The main way to ex-/import data using a profile is using the Data Ex-/Import view. This can be accessed from the ribbon bar:

The Data Ex-/Import view makes use of the Global Filter. Once the filter is defined, the profile can be selected and the appropriate button clicked on the ribbon bar to run the export:

The behaviour of the data ex-/import can be modified using the settings shown above:

Print Errors: Controls whether errors during the ex-/import are written to the output file. If left unchecked, blank values will be written to the output file for nodes that failed to compute.

Show exported Excel: This option controls the visibility of the exported Excel during the export. It does not affect the content of the export and only applies to Excel exports. Hiding Excel during the export usually leads to faster export times. This is configurable in three ways:

Always: Open the generated Excel files as they are created and keep them open after the export is complete.

Only when ready: Only open the exported files when they are fully generated.

Never: Run the Excel export silently and do not open any generated files. The only indication that the export succeeds is the message shown within HH Data Management.

Use custom path: If checked, when an export is started, a dialog is shown to select an export destination. This will override the path specified in the export profile.

Other export controlsâ

CID export buttonsâ

Buttons can be defined on the CID that can be linked to a data export profile to run exports from any CID view without needing to use the Data Export view.

---

## Workbook / Options / Backstage

> 源文件: pages/workbook-layout.md

On this pageWorkbook & Layout

Workbooks and worksheets allow the user to better organize the data visualization into the software. A layout allows you to save the configuration of the workbooks and worksheets currently on screen so it can be reloaded in the future or shared with other users. Workbooks and layouts are controlled from the Workbook tab of the ribbon bar

Workbookâ

After clicking the Add Workbook button a new blank workbook will appear. It can be seen as a new instance of HH Data Management but connected to the same database. It is usually used to organize your layout on multi-monitor.

A workbook can be saved using the Save Current Workbook button which will create a .dmwb file. Workbooks can be loaded into a current layout by using the Load Workbook button.

Worksheetâ

After clicking the Add Worksheet button a new blank worksheet will appear with a tab at the bottom of the software.

Double click on the name to edit the worksheet name.

Worksheets can be reordered by dragging them left or right.

Worksheets can be duplicated and the background and foreground colours of the tabs can be edited by right clicking on the tab.

A worksheet can be saved using the Save Current Worksheet button which will create a .dmws file. Worksheets can be loaded into a current layout by using the Load Worksheet button.

tip
Saving and loading workbooks and worksheets separately from layout can be useful to share between different users. For example, we user could be working on some KPIs visualization page that he could share to his teammates without having to share his entire layout.

Using worksheet coloring and icons in the name can help to personalize the layout and help with navigation. Here is an example:

Contextâ

The context group in the Workbook ribbon group is the so called global context. Changing any of the dropdowns has no direct impact on the opened views, but serves as pre-selection. If a new view is opened, the initial context selection will be based on the global context. Additionally, the global context can be used to change the context in multiple views at once.

Apply to Active Worksheet: applies the context to all views in the current worksheet

Apply to All Worksheets: applies the context to all views in all worksheets and workbooks

Apply EVENT & SESSION to Active Worksheet: applies the event and the session (but not the car) to all views in the current worksheet

Apply EVENT & SESSION to All Worksheets: applies the event and the session (but not the car) to all views in all worksheets and workbooks

Apply EVENT to Active Worksheet: applies only the event to all views in the current worksheet

Apply EVENT to All Worksheets: applies only the event to all views in all worksheets and workbooks

Apply SESSION to Active Worksheet: applies only the session to all views in the current worksheet

Apply SESSION to All Worksheets: applies only the session to all views in all worksheets and workbooks

If there is more than one workbook open, there is also:

Apply to All Worksheets in Active Workbook: applies the context to all views in all worksheets in the active workbook

tipBy default, the selected car is displayed using its Number. To customize the label, add a math parameter named "ContextDisplayNumber" (String return type) to the Event Car definition; it can reference the car (e.g. Car.Number), the event and the drivers. If the math parameter is missing, empty or in error, the Number is shown.

Cachesâ

The Clear Caches button clears all loaded caches which are currently not referenced by any view. This feature is helpful if many EventCaches or EventCarCaches have been loaded into memory. To free up some memory and avoid having to restart HH DM Clear Caches can be used.

Connection Statusâ

The Connection Status button opens a view displaying the connection status that can be placed and resized like any other view in the software.

Layoutâ

A layout contains all your workbooks and worksheets. It can be saved as a file and loaded so it can be restored at any time.

HH Data Management automatically saves the state of your layout every five minutes to an "Autosaved Layouts" folder that can be restored from should you ever forget to save your layout. This folder can be found by going to the Support tab and clicking "Open layout backups location".

To save a new layout, click on Workbook and then Save Layout. The Save Layout As button can be used to save the current layout in a different file. The layout is saved as a .dmlay file.

Backstageâ

The backstage is accessed by clicking File in the top left of HH Data Management:

Homeâ

A list of recently used layouts can be found on the Home tab of the backstage. Double-clicking on a layout will load it.

Syncâ

The sync tab shows information and allows for changing settings related to the connection to the HH Data Management server:

In general these settings shouldn't need to be changed from their default values.

Token refreshâ

When the authentication mode is OAuth, the Token refresh option in the Server Configuration group controls how HH Data Management refreshes its sign-in token. Direct (the default) has the client contact the authentication server directly, while Socket routes the token refresh through the sync server instead, which is useful when the client machine cannot reach the authentication server directly, for example on a restricted network.

This option can also be set from the Advanced Options section of the login screen when starting HH Data Management for the first time. It can be changed at any time and does not require restarting the software.

Optionsâ

The options tab allows various options to be changed.

Some of the options are self explanatory, explanations for the options are only provided here if they add extra information.

Global optionsâ

The global options represents options that are global to the full account. Changing those options will affect every users from the account

...(完整见 pages/workbook-layout.md)

---

## Web API

> 源文件: pages/extensibility__api.md

On this pageAPI

The HH Data Management web API can be used to directly access portions of the HH Data Management database without having to go through the HH Data Management client and syncing framework. This gives direct access to all data.

Authenticationâ

The API supports authentication using an API key (Basic authentication) or using the OAuth protocol. Access to the API is linked to the user account and the data rules in the permissions control how data can be accessed.

To use an API key you should supply an ApiKey header with the API key as the content. To create an API key visit the website and select the Integrations menu item:

Next, click "Add New Api Key" and enter a name for the API key and a key will be generated.

To use OAuth for authentication, a token must be acquired from the authentication server. The .NET wrapper has an OIDC client implemented to manage this automatically.

Selecting parameters returned in queriesâ

When making a GET request to an endpoint you can pass a URL parameter called parametersToInclude that lets you specify which parameters will be included in the response. This can be useful to access related data (e.g. get the session for a runsheet or the laps) and also to limit the amount of data returned in a response to make the API calls faster. The parametersToInclude should be a comma separated list. The names of the parameters are the same as those used in the HH DM client software to access custom properties and related entities. The * symbol is used to represent all parameters. When building a response the API has the following logic:

if you do not provide a value for parametersToInclude or if you pass in * the API will return:

all parameters of the current entity

the following parts of the response will be present but empty

collections

children (e.g. the RunSheet endpoint will return an empty Laps object)

parents (e.g. the RunSheet endpoint will return empty Car and Session objects)

referenced items will be populated but no parameters will be included (e.g. the RunSheet endpoint will return a Setup object with no parameters)

Here is a sample from the RunSheet endpoint:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "AirTemperature": 26.0, 
 "SetupId": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "SessionId": "c9e28903-1946-4bd5-8d89-e4236f9b527c",
 "CarId": "afd5e230-0c21-40f8-88a9-b003a21a1c93", 
 "RunName": "RUN 1",
 ** additional parameters omitted for clarity **
 "Setup": {
 "$type": "Setup",
 "Id": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "Parameters": {},
 "DefinitionId": "60d5a9b2-122a-42c2-a093-f9add1ec2bb4",
 "Collections": {}
 }
 ** additional parameters omitted for clarity **
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {},
 "Session": [],
 "Car": [],
 "SessionCar": [],
 "Laps": []
}

The empty and minimal objects are returned to provide insight to users to see what each entity has access to.

if parameters are specified then only these parameters are provided. For example, if the parametersToInclude was set to RunName,AirTemperature then the response would look like this:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "AirTemperature": 26.0,
 "RunName": "RUN 3"
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {}
}

Referenced items can be specified using the dot notation. For example, if the parametersToInclude was set to RunName,Setup.Name then the response would look like this:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "RunName": "RUN 1",
 "Setup": {
 "$type": "Setup",
 "Id": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "Parameters": {
 "Name": "SETUP 1"
 },
 "DefinitionId": "60d5a9b2-122a-42c2-a093-f9add1ec2bb4",
 "Collections": {}
 }
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {}
}

the dot notation also supports the wildcard character, so sending Setup.* to the runsheet endpoint would return all parameters from the referenced setup.

Selecting parameters using parameter groupingsâ

Parameter groupings can be used to easily select a subset of parameters without needing to specify each parameter name individually. Rather than writing the parameter name in parametersToInclude, write the grouping name in brackets. For example if there is a parameter grouping called FrontSuspension then writing (FrontSuspension) would include all parameters in that group in the JSON response.

Setting parameter valuesâ

When making a POST or PUT request the body of the request should contain a JSON array called ParameterUpdates. Therefore the body will have a structure like this:

{ 
 "ParameterUpdates": [
 {
 "Name": "string",
 "Value": "string"
 }
 ]
}

Each entry in the ParameterUpdates should have a name that corresponds to the parameter that is to be updated and the value should be the new value you wish to set on the entity and should always be sent as a string. For example, to update the AirTemperature and TrackTemperature of a RunSheet the body of the PUT request should look like this:

{ 
 "ParameterUpdates": [
 {
 "Name": "AirTemperature",
 "Value": "30.0"
 },
 {
 "Name": "TrackTemperature",
 "Value": "35.0"
 }
 ]
}

Each parameter type should be converted to a string as follows:

Parameter TypeFormattingDouble3.1416 becomes "3.1416"BooleanFalse becomes "False"DateTimeDatetime in UTC formatted as an invariant ISO-8601 string with up to 9 decimal places of sub-second accuracy with the pattern "uuuu'-'MM'-'dd'T'HH':'mm':'ss.FFFFFFFFF'Z'" (e.g. 2024-03-27T11:13:27.521068Z)PartThe part IDPart ItemThe part ID + ";" + the part item ID (e.g. "551cad01-2f49-438c-bbb7-b6503b4a5a90;4b0ddf26-8db3-490e-8891-a10e4d2ee616")AssemblyThe assembly iteration ID
Creating itemsâ

When making new items with a POST request, the body should contain a JSON object with the following structure:

{
 "CopyFromId": "guid",
 "CopyFromLa

...(完整见 pages/extensibility__api.md)

---

## 插件开发

> 源文件: pages/extensibility__plugins__creating-a-plugin.md

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

The r

...(完整见 pages/extensibility__plugins__creating-a-plugin.md)

---

## Callbacks

> 源文件: pages/extensibility__callbacks.md

On this pageCallbacks

Callbacks are used to send data changes from the HH Data Management server to external services. A callback in HH Data Management is triggered when a client sends a sync operation to the server, which then forwards this sync op to the resource defined by the callback. There are two kinds of callbacks currently supported by HH Data Management:

AWS SQS: the HH DM server can put data into an AWS (Amazon Web Services) SQS (Simple Queue Service) that the user specifies

HTTP: the HH DM server can make an HTTP POST to a URL that the user specifies

To define a callback, visit the Integrations section on the website:

AWS SQSâ

When a new AWS SQS callback is created some information for the SQS queue will need to be entered:

Name:Â a name to identify the callback.

Description:Â any further information that should be recorded for the callback.

IAM Access Key: theÂ HH Data Management server needs an IAM identity with access to the target SQS queue.Â  Enter the access key for this IAM user in this field.

IAM SecretÂ Key:Â theÂ HH Data Management server needs an IAM identity with access to the target SQS queue.Â  Enter the secret key for this IAM user in this field.

AWS Account ID:Â the AWS account ID that owns the SQS queue (this is required to build the SQS queue URL).

Region Name:Â the AWS region where the SQS queue is hosted (this is required to build the SQS queue URL).

Queue Name:Â the name of the target SQS queue (this is required to build the SQS queue URL).

Message Filter:Â a semi-colon separated list of HH Data Management messages that should be added to the SQS queue.Â  An example might be AddSetupMessage;UpdateSetupMessage;DeleteSetupMessage if a queue should be notified of any changes to setups.Â  If this field is left blank then all messages will be added to the SQS queue.

FIFO Queue: set this to true when the target queue is an AWS SQS FIFO queue. When enabled, HH Data Management sends a deduplication id and a message group id with each callback message.

FIFO Group Id Source: controls how the FIFO MessageGroupId is chosen when FIFO Queue is enabled:

AccountId: uses the HH Data Management account id as the message group id.

ItemId: uses the sync message item id as the message group id.

This setting is only relevant for FIFO queues.

HTTPâ

When a new HTTP callback is created some information for the HTTP request will need to be entered:

Name:Â a name to identify the callback.

Description:Â any further information that should be recorded for the callback.

Address:Â the address of the API endpoint that should be called. Please note that the HH Data Management server does a POST to this address.

Auth Key:Â a key that can be included in the headers of the request. The name of the header is authkey. If this field is left blank the header will not be included.

Message Filter:Â a semi-colon separated list of HH Data Management messages that should be added to the SQS queue. An example might be AddSetupMessage;UpdateSetupMessage;DeleteSetupMessage if a queue should be notified of any changes to setups.Â  If this field is left blank then all messages will be added to the SQS queue.

Example Contentâ

An example of the content that would be sent to a callback is:

{
 "MessageType": "UpdateSetupMessage",
 "ItemId": "0adf0ecf-389e-4dfe-9af4-96ff90aab4ad",
 "Payload": {
 "CustomPropertyDefinitionId": "71d5a9b2-7e9a-42c2-abe3-f9add1ec2bb4",
 "CustomProperties": [
 {
 "CustomPropertyType": 0,
 "Name": "CamberFL",
 "Value": "5"
 }
 ],
 "CollectionItemsAdded": [],
 "CollectionItemsUpdated": [],
 "CollectionItemsDeleted": [],
 "CollectionOrderUpdates": [],
 "EntityProperties": [
 {
 "Name": "LastModifiedBy",
 "Value": "5a808284-6fb7-47a6-95b3-e199600e05dd"
 },
 {
 "Name": "LastModifiedDate",
 "Value": "2021-01-17T15:11:15Z"
 }
 ]
 }
}

---

## DMI

> 源文件: pages/dmi__using-the-dmi.md

On this pageUsing the HH Timing Integration

A plugin called Data Management Integration (DMI) is available for HH Timing to allow timing and scoring data to be sent automatically to HH Data Management during live sessions. The following functions become automatic when DMI is used:

A new run sheet will be created for each outing

Each lap will be created within the run sheet for each completed lap

The lap (and sector times if relevant) times will be entered automatically

The start and end time of each run will be added to each run sheet

The driver name for each run will be selected

The DMI will send data to a single HH Data Management instance or the API, and then rely on the syncing framework to distribute this data to all other users on the account as normal.

noteYou can manually make new run sheets prior to a session starting if needed. Generally, this is because a user wants to fill in some details ahead of a session. Once the session start and timing data reach HH Data Management live, the timing data will automatically be added to the correct run sheet.

Latest version of the DMIâ

The latest version of the DMI can be downloaded from hh-dev.com/Latest/DMI

Connection modeâ

There are two modes for the DMI:

Local: in this mode, HH Timing connects directly to an HH Data Management client running on the same computer.

API: in this mode, HH Timing sends the timing data to the HH Data Management API

In general, local mode is the recommended option for the DMI. It is more robust against network dropouts. The only downside is that the DMI must be run on the same computer as HH Data Management.

Requirementsâ

API mode

Access to live timing data

Access to the internet

Local mode

Access to the live timing data

HH Data Management installed and the current and cars subscribed.

Setting up the DMIâ

Ensure you have the latest version of DMI and the appropriate version of HH Timing. When DMI is downloaded it will be zipped, do not unzip. Copy the zipped folder to the following directory on the computer that will be responsible for forwarding the timing data to Documents\HH Timing\Plugins

Once in this folder, the plugin should look like this in the Plugins folder:

Open HH Timing, go to the File tab, then Plugins. Click on the Data Management Plugin in the table which will expose the options shown below:

API Settings

API Authentication Mode: the authentication mode for the API (OAuth or API key)

API Key: the API key to use if the API Authentication Mode is API key

API URL: the URL for the API - the default setting of https://hhdm-api.hh-dev.com/ does not need to be changed

Telemetry Settings: these settings are only needed for users sending live vehicle telemetry to HH Data Management

Telemetry Server Host: the host of the computer where the telemetry reader is running (this value should be localhost if the telemetry reader is running on the same computer as HH Timing/DMI)

Telemetry Server Port: by default the supplied telemetry readers are set to use port 2018

After entering the settings, the DMI window needs to be closed and opened again for the changes to take effect.

Using the DMIâ

With DMI installed, a DMI tab will be available in the main ribbon bar of HH Timing as shown below. To open DMI, click the New DMI Manager button.

This will open the DMI

Connection statusâ

The status of the connection (either to the API or the local HH Data Management instance, depending on the connection mode) is shown by the indicator light

Loading configuration dataâ

Clicking the Refresh from HH DM button will fetch the latest data from HH Data Management.

As long as the data is getting retrieved a flashing message will appear:

After a few seconds, the championship, event and session comboboxes will be populated along with the car, driver and track mapping tables:

infoThe user must have read/write permissions for the championship, event, car, and runs to be able to send timing data.

Setting up the mappingâ

It is necessary to set the correct mapping so that the DMI sends the timing data to the correct event, session, car etc. in HH Data Management.

Select the relevant Championship, Event and Session you want to send the timing data to.

Fill in the right side of each of the four tables (Cars, Drivers, Sectors, Speed Traps), this is a mapping between the data on the HH Timing side and the data on the HH Data Management side.

cautionAll the data in the mapping tables must match exactly with what is shown within HH Timing. The data on the left side of each table comes directly from HH Data Management. This is not editable from DMI. The data on the right side of each table is filled in by the user. Note that the numbers of the cars in the timing feed do not necessarily need to match what the cars are called in HH Data Management, this is true for each of the mapping fields.

Car mappingâ

The car mapping has some extra columns to control the DMI.

Enabled: controls whether the data for this car is getting sent by the DMI to HH Data Management or not.

Stint Offset: is used to offset the stint number, where the timing data is written to. For example if the car is in its 2nd stint in HH Timing but the user wants the timing data to get written in the 3rd stint, the stint offset can be set to 1. This setting is a car setting (i.e. it applies to all sessions, but only the selected selected car). There is another stint offset parameter in the automatic session table, which is a session setting (i.e. it applies to all cars, but only the selected session). The final stint offset that is getting applied is the sum of both parameters.

Stint Lap Offset: is used to offset the stint lap number. For example if the car has 3 laps completed in its current stint in HH Timing the next lap would get written as lap 4. But if the user wants the timing data to get written into the 6th lap, the stint lap offset can be set to 2. This setting is a car setting (i.e. it applies to all se

...(完整见 pages/dmi__using-the-dmi.md)

---

## 权限

> 源文件: pages/account-management-website__permissions.md

On this pagePermissions

Restricted AccessThis section of the website is only accessible by Account Admin users

Permissions control access for User Groups to specific parts of the data and various displays within the software. This access is managed through rules, which are organized into profiles.

Account admins can access the permissions page from the tree:

The page displays different types of profiles on each tab. Create a new Group or Profile using the add button in the bottom right.

Groupsâ

Groups allow you to assign sets of users to certain software options and permission profiles. Groups are the primary control for software permissions.

noteAccess changes take effect immediately between the website and the software with an internet connection. No software restart is required to add or revoke access.

Users in Groupâ

Select users for the Group:

noteA user can be in multiple Groups. Their access will always be controlled by the highest level rules across all their groups.
Example: If a user has access to the full championship in one group and only to one event in another group, they will have access to the full championship.

Permission Profiles in Groupâ

Select permission profiles for the Group:

Permission Profilesâ

Permission profiles combine permissions for:

Data Access Rule Profiles

HH DM Client Permission Profiles

API Rule Profiles

Data Access Rule Profilesâ

Add a new rule to a profile using the Add New Data Rule Button:

Rule types include:

All - Full access

Project - Currently not in use

Championship - Full access to a specific Championship (all events / all cars)

Event - Full access to a specific Event (all cars from the event)

Car - Full access to a specific Car (all championship / all event)

Event/Car - Access to a specific Event and a specific Car

Example: Creating a rule for championship access

When adding a data rule, provide a name, short description, and rule type. Here's how to give a group access to a specific championship:

In this example:

Rule Name: "Access to 2023 F1 Championship"

Description: Brief explanation of the rule's purpose

Rule Type: Championship (granting access to all events and cars within this championship)

Championship: Selection of the specific championship (in this case, 2023 F1)

Multiple data rules can be combined using AND or OR operators:

tip
Use OR when you want the user to have access to all Data Rules.
Example: Rule1 OR Rule2 - User gets access if either Rule1 or Rule2 (or both) are true.

Use AND when you want the user to only have access to data that intersects all the data rules.
Example: Rule1 AND Rule2 - User only gets access if both Rule1 and Rule2 are true.

HH DM Client Permission Profilesâ

Worksheet rules control access to different software worksheets. Permission levels are:

Inherit - Rule inherited from the parent node.

None - No access to the worksheet.

Read - View data and use export functions, but can't modify data.

Read/Write - Full access to the data.

Inherited permissions appear in italics with the color of the permission it inherits from:

In this example, all permissions are inherited (in italics) and set to Read/Write (green).

Changing a specific node's permission makes it bold, indicating it no longer inherits from the parent:

Here, the "Setups" permission has been changed to None (red and bold), while others remain inherited.

The permissions tree is divided into:

Admin

Management

Championship

Event

Users without access to admin or management sections won't see those ribbon bars:

In this example, the user doesn't have admin or management access, so those options are not visible in the software interface.

tipThe worksheet rules can be a combination of all types of permissions for each different worksheet. Here is an example that could be used for a tyre technician:

In this example:

The user has read access (orange) by default for most worksheets.

Full access (green) is granted to tyre-related worksheets (Tyres, Tyre Sets, Tyre Allocations).

No access (red) is given to the setup worksheet.
This configuration allows the tyre technician to view most data, fully manage tyre-related information, but prevents access to sensitive setup data.

API Rule Profilesâ

API rules allow granular control over data accessible and modifiable via the API.

For each definition, a rule can allow Create, Read, Update, and Delete actions. Users can have access to all parameters or only selected ones.

Example: Rule allowing read-only access to just the 4 camber values.

In this example:

The rule is set for the "Car Setup" definition.

Only "Read" permission is granted (the only checked box).

Instead of "All Parameters," specific parameters are selected.

The four camber parameters (FL, FR, RL, RR) are the only ones selected.

This rule would allow an API user to read (but not modify) only the camber data for car setups, restricting access to all other setup parameters.

---

## 附件

> 源文件: pages/common-controls__attached-files.md

On this pageAttached Files

Attached files can be attached to all entities in the software. Depending on the type of view there are different configurations for how the attached files are shown.

The standard attached files view is found by default in the:

run sheet

tyre wear

event data

session data

it may also appear in views defined in a plugin

The buttons along the top of the view are:

IconDescription
Add a new attached file
If there is an image on the clipboard it will be added as an attached file. A pop up will allow a file name to be entered.
Download the selected attached file
Save As - lets the selected attached file be saved elsewhere on the computer
Deletes the selected attached from the local computer (this doesn't affect any other users)
Deletes the selected attached from the server and the local computer (this is permanent and affects all users)
Shows additional columns in the table
Toggle between grid and table mode

When in table mode the server status and local status of the file are shown by icons. When a file is uploading or downloading the local status will show the progress of the transfer.

Server Statusâ

IconDescription
The file is currently being uploaded to the server by the user who created the attached file
The file has been uploaded to the server and is available for download

Local Statusâ

IconDescription
The file has not been downloaded and therefore is not available locally
The file has been downloaded and therefore is available locally
The download failed with an unrecoverable error. The file needs to get deleted remotely and re-uploaded

---

## Tracks / 扇区

> 源文件: pages/management-entities__tracks.md

On this pageTracks

The tracks view can be accessed from the admin tab of the ribbon bar:

The track in HH Data Management is built from the following elements:

track

track configuration

sectors

speed traps

lap marker and lap track status marker associations

Trackâ

The track is the root entity. An important property of each track is the time zone. When a track is added to an event, this parameter is used to calculate all time values for the event (such as run start time). This is used to convert local times to the Coordinated Universal Time (UTC) for consistent data storage.

tipTo override a track's time zone for a given session, use the Event Management view

Track configurationâ

Each track can have one or more track configurations. The track configurations are used to differentiate different track layouts or different timing sector configurations. The track configurations are stored as child tables under the track in the main table:

When creating events and sessions each session can have its own track configuration.

A track map can be uploaded to be displayed in the runsheet for example.

The button can be created from the custom colums

Pitlane locationâ

On the majority of the race tracks the start/finish line crosses the pitlane. This is the default setting in HH DM. For tracks where this is not the case, i.e. when a car enters the pitlane and exits the pitlane again, but the official lap number hasn't changed, the track configuration needs to be configured accordingly. In order to do so a custom property of type Boolean with the name "PitlaneNotAtSF" needs to be added to the Track Configuration definition.

Afterwards a column needs to get added to the default track configuration column profile in the custom colums view:

Finally the parameter PitlaneNotAtSF can be set for each track configuration:

Generating laps through the DMI on a track where the pitlane is not on S/F will then look as follows (this is from Sebring WEC where the pitlane enters in timing sector 3 and exits in timing sector 1):

Pit in in total lap #5 (no sector 3 time because of that)

Pit out in total lap #5 (no sector time 1 and 2 and stint lap #0)

In general the total lap # of the inlap is the same as the one from the outlap and the stint lap # of the outlap is set to 0 to not create an offset in the lap count.

Sectors and speed trapsâ

Sectors and speed traps can be edited by selecting the the Sectors/Speed Traps tab on the panel on the right side of the screen. Each track configuration has its own sector and speed trap lists, and the sectors shown on the screen are for the selected track configuration in the main table. These lists are used to control how many sectors and speed trap columns appear in the runsheet lap table.

Sectors have an option to set the Is Track Sector parameter. This parameter is used to specify if a sector is part of the contiguous track. If this parameter is set to false, then this sector will not be considered in the best theoretical lap calculation.

noteIt is highly recommended not add a sector or speed trap during an event if some laps have already been added. This could lead to unexpected behaviour in the run sheet (not able to update sector time, loss of data, etc...). Deleting sectors and speed traps is not allowed once a track configuration has been used in an event.

---

## Event Data

> 源文件: pages/event-entities__event-data.md

On this pageEvent Data

noteThis view can be fully customized using a CGD and enabling the Use CGD for Event Data view option. If this option is enabled then the view may not match the examples shown in this page.

The event data is a view that can be used to store and edit all information for an event/car, such as expected fuel consumption or fuel tank capacity. The event data view can be accessed from the event tab of the ribbon bar:

By default, there are five tabs on the event data view:

Settings

Notes

Markers

Attached files

Mileage

Additional tabs can be added using a plugin

Settingsâ

Event settingsâ

The following parameters are needed to make the fuel calculation work in the run sheet and for the run plan calculator:

Avg lap time

Fuel count direction: Defines how fuel usage is calculated and displayed. This setting also controls whether the FuelUsed column appears in the lap table and whether FuelUsedSOR appears in the fuel management runsheet.

Decreasing: Calculation starts from the initial fuel amount and counts downward. In this mode, FuelUsed runsheet UI controls are hidden.

Increasing: Calculation starts from zero and counts upward. In this mode, FuelUsed runsheet UI controls are shown.

Avg fuel consumption

Fuel tank capacity

The following are optional:

Fuel effect: Define the fuel effect in s/10 fuel unit for runsheet degradation calculations. Use a positive value. For example, enter 0.1 to represent a fuel effect of 0.1s per 10 kg when using kg as the fuel unit.

Expected stint length (used in the tyre wear sheet)

Data analysis profile

Tyre pressure calculationâ

Event-wide parameters for the tyre pressure calculation can be defined here.

Lap KPIâ

The data analysis profile to be used for the current event-car can be selected here.

Run planâ

The run plan mode for the event can be set here, and also some pit lane timing information for use in the lap mode of the run plan.

Notesâ

The notes tab is a structured list of notes. Note types can be added, edited or removed using the edit note types button on the ribbon bar.

Markersâ

The lap marker and lap track status marker associations can be defined on this tab.

Attached filesâ

Shows an attached files view that allows files to be added.

Mileageâ

The manual and predictive mileage associations can be defined on this tab.

Best sectors and best lap timesâ

Best lap time and best sector are calculated automatically on four different entities, and can be used anywhere math expressions are supported, such as custom views and CGDs:

EventCarData - the best lap time and sectors for one car, across every session in the event.

EventCarDriver - the same, broken down per driver during the event. Accessed through EventCarData.EventCarDrivers (or EventCarData.DriversInCar).

EventData - the best lap time and sectors across every car and every session in the event.

EventDriver - the best lap time and sectors for one driver across the whole event, including sessions driven in a different car. Accessed through EventData.EventDrivers.

Why some of these values can look incompleteâ

EventCarData and EventCarDriver only ever look at one car's own data, so they are always updated as soon as that car's data is loaded.

EventData and EventDriver, on the other hand, look across every car in the event. Depending on the open view and current context selection, the data for every car in the event may not be loaded when the view is first opened.

Because of this, EventData and EventDriver values can only be fully correct once every car's data has been loaded. If they are checked before that happens, they will only reflect the cars that are loaded at that moment - a value will still be shown, but it may not be the true best value.

The cache status page shows which caches are currently loaded, so it can be used to check whether all the cars in the event have been loaded before trusting an EventData or EventDriver value.

This also means that a car's data has to be subscribed to to be included - a car that isn't subscribed can't be loaded, so it will always be missing from EventData and EventDriver values.

tipTo see accurate EventData or EventDriver values across a whole event, use a custom view with the entity type EventCarData All Cars. This entity type is specifically built to load every subscribed car in the event, so values that look across the whole event will always be complete.

---

## Math 表达式

> 源文件: pages/reference__math-expressions.md

On this pageMath Expressions

This section explains the syntax, and available functions and scopes for the math expressions. Math expressions are used in various places in the software:

math parameters

exports

CID cell formatting

When writing a math expression there will be an auto complete functionality that can help to find parameter and function names.

There is an icon beside each item in the list that indicates the type that it represents, and the icons at the bottom of the list can be selected to filter the list.

IconDescriptionFunctionParameterPart parameterAssembly parameterMath parameterCollection parameterReference (a referential relationship defined as part of HH Data Management (e.g. accessing an Event from a Setup))Reference Collection (a collection defined as part of HH Data Management (e.g. the list of Laps that belong to a Run Sheet))Flat model property (i.e. property defined in the HH Data Management code or a plugin)
Syntaxâ

When writing a math expression, parameters from the current definition or other related definitions can be accessed and functions can be called to perform operations. Basic numerical, text and boolean operators are available.

Accessing a parameterâ

Parameters can be accessed by their names. Note that part item parameters are accessed using the name of the part parameter with PartItem added to the end of the name.

Accessing items in a listâ

Items in a list can be accessed using their zero-based position in the list surrounded by square brackets [].

For example:

Event.TestEventCollection[0]

Returns the first item in the "TestEventCollection" collection.

Operatorsâ

The following numerical operators are available:

+ addition

- subtraction

* multiplication

/ division

The following boolean operators are available:

< less than

<= less than or equal

> greater than

>= greater than or equal

&& and

|| or

== equal

!= not equal

Operators with listsâ

Numerical operators also work when one or both operands are list parameters (e.g. a collection parameter that returns a List<double> or List<DateTime>):

Left typeOperatorRight typeResult typeNotesList<double>+ - * /List<double>List<double>Element-wise operation. The result contains as many elements as the shorter of the two lists.List<double>+ - * /doubleList<double>The scalar value on the right is applied to every element of the list.List<DateTime>-List<DateTime>List<double>Returns a list of durations in seconds (one per pair). Limited to the shorter list.List<DateTime>+ -List<double>List<DateTime>Adds or subtracts the number of seconds in each right-hand element from the corresponding date time. Limited to the shorter list.List<DateTime>+ -doubleList<DateTime>Adds or subtracts the scalar number of seconds from every date time in the list.
DateTime operatorsâ

Left typeOperatorRight typeResult typeNotesDateTime+doubleDateTimeNew date time offset forwards by the right-hand number of seconds.DateTime-doubleDateTimeNew date time offset backwards by the right-hand number of seconds.DateTime-DateTimedoubleElapsed seconds between the two date times.
String concatenationâ

If the return types of the LHS and RHS of the + operator do not match then operator will return a string containing the concatenation of the two values. For example 1 + "test" will return "1test".

Constant valuesâ

Constant values can be defined in an expression:

numerical: type a number, e.g. 1.23

string: type some text surrounded by double-quotes, e.g. "test"

boolean: type either true or false

Control-character literals (math expressions only)â

LiteralExpands toUse-caseCRLF\r\nWindows line breakLF\nUnix/Linux line breakCR\rLegacy Mac line breakTAB\tHorizontal tab
Control-character literals available in math expressions and cannot be used as identifiers.

Example:

"First line" + CRLF + "Second line"

produces

"First line 
Second line"

Keywordsâ

The following keywords are available

null: mainly used in a boolean comparison to check if a parameter is set, e.g. FrontSpring != null

this: represents the current scope

Scopesâ

The scope is an important concept to be aware of when writing a math expression. The scope defines what entity the math expression is referencing. If you are writing a math expression in a math parameter in a setup definition, then that setup definition is the current scope. You can access any parameters on that setup directly by typing the parameter name. To change scope and access a parameter from a different entity the dot-notation is used. Again using the setup as an example, to reference a parameter from the related event you would type Event. and then a list of parameters defined in the event definition will be available in the auto complete

You can join as many scope changes together, for example writing Event.Championship.Name would let you access the championship name from a setup. The auto complete normally lets you find the correct scope for anything you need, but the data model documentation provides a full overview of the software.

Unit Managementâ

Whenever a numerical parameter with a dimension and unit defined is accessed, a unit conversion can be performed to change the returned unit. This is done using square brackets, for example mCornerFL["kg"]. A list of all available dimensions and units can be found in the units documentation.

Time Zonesâ

For time-related operations, time zones can be specified using IANA time zone identifiers. More information about supported time zones can be found in the time zones documentation.

Function Referenceâ

This section lists all functions that are available to be used in math expressions.

Numerical Functionsâ

Absâ

Abs(double)Returns the absolute value of the supplied number.
Abs(double value)â

Returns the absolute value of the supplied number.

Parameters

double value A number that is greater than or equal to Decimal.MinValue, but less than or equal to Decimal.MaxValue.

Returns

double A decimal 

...(完整见 pages/reference__math-expressions.md)

---
