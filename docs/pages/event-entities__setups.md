---
url: https://help.hh-dm.com/event-entities/setups/
---

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

The content of the Max Mileage, Max Hours, and Mileage Percentage columns is determined by math parameters defined in the respective Assembly Iteration or Part Item definitions. These math parameters should return the desired values, follow the naming convention below, and return a double value:

Column NameMath Parameter NameMax MileageSetupTreeMaxMileageForwardedMax HoursSetupTreeMaxMileageHoursForwardedMileage Percentage (% of Life)SetupTreeMileagePercentageForwarded
Example:

A math parameter named 'SetupTreeMaxMileageForwarded' can be used to set the Max Mileage value to a constant value of 5000km.

The background and foreground of the optional columns can be configured through math parameters. These math parameters should follow the naming convention below, and return a text value representing a color:

Column NameMath Parameter NameMax Mileage BackgroundSetupTreeMaxMileageBackgroundMax Mileage ForegroundSetupTreeMaxMileageForegroundMax Hours BackgroundSetupTreeMaxHoursBackgroundMax Hours ForegroundSetupTreeMaxHoursForegroundMileage Percentage (% of Life) BackgroundSetupTreeMileagePercentageBackgroundMileage Percentage (% of Life) ForegroundSetupTreeMileagePercentageForegroundMileage BackgroundCustomMileageBackgroundMileage ForegroundCustomMileageForeground# Hours BackgroundCustomHoursBackground# Hours ForegroundCustomHoursForegroundMileage Since Service BackgroundCustomMileageSinceServiceBackgroundMileage Since Service ForegroundCustomMileageSinceServiceForegroundHours Since Service BackgroundCustomHoursSinceServiceBackgroundHours Since Service ForegroundCustomHoursSinceServiceForeground
Example:

A math parameter named 'SetupTreeMileagePercentageBackground' can be used to define the background of the Mileage Percentage (% of Life) column with a green to red scale depending on the value.

Duplicate Part Usageâ

The Duplicate Part Usage view (Event ribbon page, Analysis group) checks whether a part item or an assembly iteration is used on more than one car of the selected event. It loads the data of all synced cars, walks through the setups of each car (including all assemblies and their child assemblies / part items) and lists every item that is used on more than one car, or more than once within the same setup.

The left grid lists all cars of the event and shows whether they are considered:

StatusMeaningConsideredThe car is synced, the user has permission to see its setups, the data is loaded and the car has at least one setupNot SyncedThe car is not synced to this client - sync the car to include itNo PermissionThe user has no permission to see the setups of this carNot LoadedThe car data is still loadingExcludedThe car was excluded with the Include checkbox (e.g. because the parts of this car may legitimately be shared)No SetupsThe car has no setups
The ribbon offers the following options:

Setups: Last Setup Per Car compares only the last setup of each car (the currently mounted state), All Setups compares every setup of every car. See Setup selection and filter for how the mode is combined with the setup filter.

Show Nested Duplicates: when a whole assembly is used on several cars, its child assemblies and part items are duplicates as well. These nested duplicates are hidden by default and can be shown with this option (the Nested column marks them).

Flag Repeats Within Setup: also reports an item that is used twice within the same setup (e.g. the same damper on the front left and the front right). Enabled by default; turn it off to only see items shared between cars.

Refresh: re-runs the check. The view also refreshes automatically when setups are added, removed or changed.

An optional setup filter (a math expression with the setup as root scope that returns a boolean) restricts which setups are considered before the setup selection is applied, e.g. to only compare race setups. Errors in the expression are shown in the status bar. See Setup selection and filter for details.

The right grid lists the duplicated items grouped by item, with one row per usage: the car, the setup and the parameter path (e.g. Front Damper > Piston for a part item inside an assembly).

The status bar summarises the result: the number of duplicated items, the number of considered cars and the number of analysed setups.

Setup selection and filterâ

The Setups mode and the optional setup filter together decide which setups of each considered car are analysed. For every car the following steps are applied:

All setups of the car are taken in the order of the setup list, i.e. the order in which they are displayed in the Setups view (new setups are appended at the end, the order can be changed with the move left / right buttons of the setup sheet). No additional sorting is applied.

If a setup filter is entered, the expression is evaluated for each setup and only the setups for which it returns true are kept, in the same order. If the filter is empty, all setups are kept.

The Setups mode is applied to the remaining setups:

Last Setup Per Car keeps only the last remaining setup, i.e. the last setup in the list that passes the filter. With a filter this is not necessarily the last setup of the car.

All Setups keeps all remaining setups.
