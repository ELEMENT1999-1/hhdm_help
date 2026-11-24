---
url: https://help.hh-dm.com/parts-assemblies-tyres/mileage/
---

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

Specific session types can be blocked from from being taken into account for the mileage calculation.

To do so, a parameter needs to be added to the Session Type definition: "IgnoreForMileage" of type Boolean

The custom column for the Session Type profile needs to be modified to add the new parameter:

Specifying mileage manuallyâ

Mileage can also be computed manually for select events and/or sessions by selecting setups and assigning them mileage values directly. The mode the mileage calculation runs in for a given event can be configured in the Event Details page.

This can also be controlled on the Event Management page by adding a new column to the Default Event Profile with the following settings:

Column Type: Enum Combobox

Field Name: Doubles.MileageComputationMode

Enum Type: HHDev.DataManagement.Core.Entities.eMileageComputationMode, HHDev.DataManagement.Core

Manual (event entry)â

When "Manual (event entry)" is selected as the mileage computation mode for an event, mileage can be specified for events by going to the "Event Details" page, "Mileage" tab and adding setup/mileage entries to the table. This overrides whatever runs are recorded in that event.

Manual (session entry)â

When "Manual (session entry)" is selected as the mileage computation mode for an event, mileage can be specified for sessions by going to the "Session Details" page, "Mileage" tab and adding setup/mileage entries to the table. This overrides whatever runs are recorded in that session.

Manualâ

When "Manual" mode is selected for an event, HH Data Management looks through each setup that is assigned to a car on that event, searching for entered mileage values. There are two methods in which manual mileage can be configured on a setup definition:

total mileage: the total mileage a setup has been used for is entered in terms of distance and time. This configuration requires the following double parameters on the definition and CID:

MileageCalculation_TotalMileageDistance (a "Length")

MileageCalculation_TotalMileageHours (a "Duration")

start/end mileage: the starting mileage and ending mileage for a setup is given in terms of distance and time. The difference between the two is used to determine total mileage for the setup. The ending mileage entered must always be greater than the starting mileage entered. This configuration requires the following double parameters on the definition and CID:

MileageCalculation_StartMileageDistance (a "Length")

MileageCalculation_EndMileageDistance (a "Length")

MileageCalculation_StartMileageHours (a "Duration")

MileageCalculation_EndMileageHours (a "Duration")

Distance parameters can also be given the dimension "Unitless" instead of "Length", in which case the value entered is an arbitrary lap counter displayed on the Item Mileage View under the "# Laps" column rather than a distance under the "Mileage" column.

WarningThis mileage mode is deprecated and it is recommended that Manual (event entry) or Manual (session entry) are used instead.

Disabling mileageâ

Mileage can also be disabled for an event by following the steps to set up the custom mileage computation mode on an account outlined in Manual Mode. To disable mileage for an event go to the Event Management page and set the mileage computation mode to "Off".

Predictive Mileageâ

Anticipated mileage on events not yet completed can be defined and displayed on the Item Mileage view in much the same way manual mileage is. Setups with anticipated used parts and assemblies are created and mileage values assigned.

The mode the predictive mileage calculation runs in for a given event can be configured in the Event Details page.

This can also be controlled on the Event Management page by adding a new column to the Default Event Profile with the following settings:

Column Type: Enum Combobox

Field Name: Doubles.PredictiveMileageComputationMode

Enum Type: HHDev.DataManagement.Core.Entities.ePredictiveMileageComputationMode, HHDev.DataManagement.Core

This new option can now be seen and changed on the Event Management page.

Manual (event entry)â

When "Manual (event entry)" is selected as the predictive mileage computation mode for an event, predicted mileage can be specified for events by going to the "Event Details" page, "Predictive Mileage" tab and adding setup/mileage entries to the table as described in the mileage calculation page. This populates the mileage entries for the event in the Item Mileage view until the event begins, at which point the predictive mileage values entered here are ignored and the normal mileage computation takes over for the current event.

Manual (session entry)â

When "Manual (session entry)" is selected as the predictive mileage computation mode for an event, predicted mileage can be specified for sessions by going to the "Session Details" page, "Predictive Mileage" tab and adding setup/mileage entries to the table as described in the mileage calculation page. This populates the mileage entries for the session in the Item Mileage view until the session begins, at which point the predictive mileage values entered here are ignored and the normal mileage computation takes over for the current session.

Run planâ

When "Run plan" is selected as the predictive mileage computation mode for an event, predicted mileage is automatically calculated using the planned runs found in the event and the linked setups. If the run plan mode is by "Lap", then predicted mileage is computed exactly as normal using lap markers and the track configuration specified. If the run plan mode is by "Run", then it takes the number of laps specified and scales them assuming the first lap is an out lap, and the last lap is an in lap. As soon as a session begins, predicted mileage using this mode is ignored exactly the same as with "Manual (session entry)"

Disabling predictive mileageâ

Predictive mileage can also be disabled for an event by setting the predictive mileage computation mode to "Off". This will ignore all setups and mileages listed in the predictive mileage table of future events/sessions and/or run plans.

Item mileage viewâ

The management of the mileage calculation and viewing of the mileage results is done using the item mileage view that is available on the Management tab of the ribbon bar:

Calculating mileage resultsâ

There are two options for calculating mileage, available in the ribbon bar:

Force recalculate mileages

Recalculate mileages

Force recalculate mileagesâ

This operation will recalculate the mileages for all assembly iterations and part items in the account. This process can take a long time for larger accounts (upwards of 20 minutes). The status bar will be updated with the messages:

Mileage computation in queue

Mileage computation in progress

Mileage results for N event car(s) are still downloading or loading

Mileage values are ready

Once the calculation is completed the results are downloaded to the local computer automatically and the view updates as they are loaded. Until the status bar shows "Mileage values are ready", the view and any new measurements or history items still use the previous results.

Recalculate mileagesâ

This operation functions identically to the Force recalculate mileages button, but does not recalculate mileages on locked championships and events in the account. This enables faster mileage compute times and is recommended to enable on accounts with old championships and/or events that have not been updated since mileage was computed last.

tipOnly a single calculation can run at any time for a single account. If additional requests are sent while a mileage calculation is in progress they will be ignored.

If an additional request is sent while the computation is still in the queue, the queued request will be updated. For example, if "Force recalculate mileages" is requested after "Recalculate mileages" is clicked, but before the mileage computation has begun, the first request will be "forgotten" and the computation that runs will ignore all championship and event mileage locks and will recompute the entire account.

Viewing mileage resultsâ

Once the mileages are downloaded the results will be shown in the table:

In the top-left corner, information about the downloaded mileages is displayed.

Last Mileage Computation: the timestamp of the last server mileage calculation. It can be used to determine whether a new mileage computation should be triggered.

Part categories or assembly types can be displayed by highlighting the row or using the checkbox in the list on the left. Multiple part categories or assembly types can be displayed at once by enabling checkboxes in multiple rows.

Part categories and assembly types are always shown in alphabetical order using their "DisplayName" property.

Display settingsâ

The "Mode" combobox allows switching between viewing the mileage for part items and assembly iterations.

The "Display as" combobox allows switching between viewing the mileage per event, session or event/car.

The three checkboxes allow the number of laps, distance or time used mileage results to be shown or hidden in the table.

Filter Settingsâ

Hide items with an expiry: disables displaying part items and assembly iterations that have a valid expiry date.

Hide predicted mileage: disables displaying mileage from future events/sessions computed using the configured Predictive Mileage mode.

Only show current mileage: disables displaying the mileage broken down by initial mileage, event, car and/or session and instead displays only the grand total mileage for each part item or assembly iteration.

Hide items without mileage: when enabled items without mileage are not displayed.

Show mileage since service: shows an additional column that displays the mileage since the last service.

Data exportâ

Using the buttons on the ribbon bar the currently shown mileage results can be exported as an image or an Excel file.

Customizationsâ

This view offers several customization options:

Columns can be shown or hidden using the checkboxes in the ribbon.

The background and foreground of the columns can be configured through math parameters. These math parameters should follow the naming convention below, and return a text value representing a color:

Column NameMath Parameter NameMileage BackgroundCustomMileageBackgroundMileage ForegroundCustomMileageForeground# Laps BackgroundCustomLapsBackground# Laps ForegroundCustomLapsForeground# Hours BackgroundCustomHoursBackground# Hours ForegroundCustomHoursForegroundMileage Since Service BackgroundCustomMileageSinceServiceBackgroundMileage Since Service ForegroundCustomMileageSinceServiceForegroundHours Since Service BackgroundCustomHoursSinceServiceBackgroundHours Since Service ForegroundCustomHoursSinceServiceForeground
Example:

A math parameter named 'CustomMileageBackground' can be used to define the background of the Mileage column with a green to red scale depending on the value, where SetupTreeMileagePercentageForwarded is a math parameter in the part item definition.
