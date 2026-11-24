---
url: https://help.hh-dm.com/parts-assemblies-tyres/measurements-history/
---

On this pageMeasurements & History

Measurementsâ

Assembly iterations and part items can both have measurements. The information stored for the measurements of assembly iterations and part items are customized using definitions. When an assembly type or part category is created, a new definition for the measurements will automatically be created. There are several views in which measurement data can be added for both part items and assembly iterations.

For basic data entry the following views contain tables for editing measurements:

parts view

part item inventory view

assembly iteration inventory view

For a more customizable view of both part item and assembly iteration measurements, the item measurements view is integrated with the mileage calculator and allows each measurement to be displayed with a column item display definition.

Part item measurementsâ

The basic viewer for the part item measurements can be found on the parts view

Measurements can be added or deleted using the buttons on the ribbon bar.

The columns shown in the part item measurements table are automatically created based on the parameters in the part item measurement definition, however the columns can be customized by creating a custom column profile.

The same table is also displayed in the part item inventory view:

Assembly iteration measurementsâ

The basic viewer for the assembly iteration measurements can be found in the assembly inventory view

Measurements can be added or deleted using the buttons on the ribbon bar.

infoAdding an assembly iteration measurement will cause a linked measurement to be created for all referenced assembly iterations and part items. If the measurement is deleted in the future then all linked measurements will also be deleted.

The columns shown in the assembly iterations measurements table are automatically created based on the parameters in the assembly iteration measurement definition, however the columns can be customized by creating a custom column profile.

Item measurements viewâ

The item measurements is the main view that is intended for viewing and editing both part item and assembly iteration measurements. It is also integrated with the mileage calculation so that the current mileage will be recorded for all linked measurements that are created.

The item measurement view can be accessed from the event view of the ribbon bar:

The item measurement view will open:

The item measurement view is based on the the CID and can be customized by creating a CID definition linked to the corresponding assembly iteration or part item measurement definition.

RequiredThe linked CID definition must be given the name "MeasurementView" for it to be used in the Measurements view.

When an item measurement is created it will use the mileage calculation to calculate the current mileage at the time the measurements were recorded. To do this the mileage results must have been calculated and synced locally. Before a measurement or history item is added the application verifies this: if the mileages were never calculated it offers to start the calculation, if a recalculation is running or results are still downloading it warns that the previous results would be used. The status bar of the item mileage view and of this view shows the current state.

The mode of the view can be changed on the ribbon bar, between part items and assemblies. This changes the comboboxes at the top of the view to allow selecting the assembly iteration or part item for which the measurements will be shown. The apply event filter checkbox controls which measurements will be shown in the view. If the checkbox is selected the only measurements that were created in the current event (based on the context selection) will be shown. Otherwise all measurements will be shown. The measurements are shown in chronological order based on the MeasurementTime parameter.

Adding a measurementâ

To add a measurement make sure the correct event and car are selected in the context selection on the ribbon bar. Click the add button on the ribbon bar, a window will open:

This allows last run that the part item or assembly iteration was used in to be defined and this will be used to calculate the mileage for the measurement. The downloaded mileage is used to calculate the mileage of the component before the current event, and then the local data from the runsheets and laps are used to calculate the mileage that has been accrued in the current event.

Working with measurementsâ

Calculating wear between measurementsâ

A math parameter on the part item or assembly iteration measurement definition can be used to calculate the difference between two consecutive measurements. The Previous keyword can be used to access the previous measurement. For example if a brake set assembly has a math parameter called PadAverageWear that calculates the average pad wear on each measurement, the difference between two consecutive measurements could be calculated by creating a math parameter with an expression of PadAverageWear - Previous.PadAverageWear.

Accessing the latest measurementâ

The last measurement for all part items and assembly iterations can be accessed in the software (in math expressions, custom columns, data exports etc.) using the parameter LastMeasurement. This parameter automatically returns a reference to the last measurement (based on the chronological order).

Historyâ

Assembly iterations and part items can both have history items. Like measurements, the information stored for history items is customized using definitions. When an assembly type or part category is created, a new definition for the history will automatically be created.

By default, there is no dedicated view to enter history data like there is for measurements, this can only be managed on the assembly inventory views for assembly iterations, and on the part item inventory view for part items.

Part item historyâ

History items can be added or deleted using the buttons on the ribbon bar.

The columns shown in the part item history table are automatically created based on the parameters in the part item history definition, however the columns can be customized by creating a custom column profile.

When adding a history item a popup asks for the mileage source:

Link to a run (default): the context selection wizard selects the last run the item was used in. The mileage is the downloaded mileage before the run's event plus the local runsheet and lap data of that event up to the run.

Use a date: for work done between events or in the middle of one. The date is entered in the computer's time zone, named next to the field; the history grids show every stored time in UTC (the "Time (UTC)" column). The mileage comes from the server results only, whether or not the event is loaded: events that ended before the date count fully, events in progress at that date count the runs that ended before the date. If the server results of such an event are older than the date, a prompt lists the affected championship / event / car and offers to recalculate the mileages first. Events whose mileage computation mode is "Off", and events whose sessions are all of a type ignored for mileage, are not listed. Event and car stay empty. Future dates are rejected.

Assembly iteration historyâ

History items for assembly iterations behave exactly as they do for part items.

Working with historyâ

History Typesâ

By default, no type is specified for a new history item. This can be edited using the combobox in the history table

This combobox is populated using the history types view.

This type parameter can be used in calculations. For example, history types have a "ResetsMileage" boolean parameter that is used when computing the "MileageSinceLastService" and "MileageHoursSinceLastService" parameters on assembly iterations. These built-in math parameters find the most recent history item with a history type that has "ResetsMileage" set to true and computes the difference between the mileage recorded in that history item to the assembly iterations current total mileage.

An assembly iteration's history can be accessed in math parameters using the AssemblyIterationHistories property on the assembly iteration definition. This is a list, sorted by time in ascending order, of all recorded history items on a given assembly iteration.

Adding history in a batchâ

"Add History Batch" on the part item, assembly iteration and named assembly inventory ribbons adds one history item to many items at once. It is disabled while "Use CID" is ticked.

The window lists the part items of the selected category or the assembly iterations of the selected type (named assembly inventory: the iterations of the listed named assemblies), with the view selection ticked. The search box highlights matching names, the header checkbox ticks or unticks all rows, and the footer shows how many rows are selected.

History type: given to every created item, preselected with the first entry of the list.

Mileage from: Date works as "Use a date" above, the field names the computer's time zone. Run opens the run wizard (cancel keeps Date, "Change Run..." picks another run); values and the event / car link are the same as for a single run-linked history item. Future times are rejected.

Also add history to contained part items / sub-assemblies: assemblies only, unticked by default (adds to the selected assemblies only). Ticked adds the history to every part item and sub-assembly contained in them as well.

Comment: written to every created item.

"Stamped mileage" previews the value each item will get, the status line names the date (in UTC) of the server mileage it is based on. All items of one batch share a BatchId, MileageSource records run or date; both parameters (and HistoryTypeId on part item histories) are added to the definition on first use.
