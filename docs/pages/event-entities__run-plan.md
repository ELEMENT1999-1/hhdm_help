---
url: https://help.hh-dm.com/event-entities/run-plan/
---

On this pageRun plan

The run plan view can be accessed from the event tab of the ribbon bar:

There are three tabs in the run plan view:

Session Configuration: the main view where run plans are created and managed

Event Summary: displays an array of tables summarizing the mileage of the event overall

Strategy Overview: displays a strategy overview for each session in the event for the selected car

Session Configurationâ

To open the run plan of a session, click on the + icon on the left-hand side of the session name:

There are three levels to the run plan:

run plan

planned run

planned lap (only available if the run plan mode is lap)

Run plan modeâ

There are two modes available for the run plan: run or lap.

Run mode: a number of total planned laps must be defined for each planned run and all calculations will be based on the average lap time and fuel consumption defined in the event data view.

Lap mode: each planned lap can be customized using lap markers. The lap marker allows setting a different lap time, fuel consumption, and mileage multiplier for each planned lap (Out, In, Push, ...etc.).

The run plan mode can be defined in the global options, in the event details, or the session details.

When a new event/car association is created, the run plan mode for the event data is set based on the setting in the global options. By default, the session data run plan mode will be inherit, which means that the value is taken from the event data. The run plan calculation always takes the value from the session data, and then if this is set to inherit, the event value will be used.

When a session is live (i.e. the current session takes place at the current time), depending on the mode either the current planned run or planned lap is highlighted in red. "Current" is considered as the planned run/lap where the start time is before and the end time is after the current time.

Default Run Planâ

For each session one run plan can be defined as default run plan. The default run plan is used for the following features in the software:

Run Sheet Start Fuel: If there is a default run plan defined for a session when adding the first run sheet the start fuel amount gets taken from the planned run.

Live Run Plan

The Event Summary and Strategy Overview

Add a run planâ

To add a run plan, select a session, and click on Add Plan. A new run plan will appear:

Edit the name of the run plan:

A previous run plan can be chosen so that the tyre mileage can be correctly calculated.

Several run plans can be associated with a single session. You can switch from one to another by selecting the run plan in the Combobox:

Add a planned run in a run planâ

After having created a run plan, you need to add planned runs. To do so, click on Add Run. It will create a new planned run in the run plan. If the run plan has already planned runs, it will add it at the end.

Then enter the following information:

#Laps: number of total planned laps for the planned run (including in and out lap)

Driver: select among the list

Tyre Set: select among the list

Brake Set: select among the list

Description

Pit Time: the total time between the end of the previous planned run (or the start of session) and the start of the current planned run

Full Tank: select the checkbox if the tank if fulfilled

All the other cells will populate automatically based on the information provided.

Alternatively, it is possible to add in the run plan:

a time break: this can be useful for a planned break during the session or a red flag for example.

a time filler: in that case, the session time is not stopped (example: lunch break,...) and the car is not running.

To add a planned run between two existing planned runs, click on Insert Run or Insert Time Filler or Insert Time Break.

To delete a planned run, select the planned run and click on Delete Run.

Add planned laps in a planned run (lap mode only)â

When in lap mode each planned run can be expanded to show the planned laps for the planned run.

Print & Exportâ

To print the selected run plans of an event/car, click on Print Plan. A window will pop up. Select the session(s) to print and click OK.

To export to pdf, click on Export Plan To PDF. A window will popup. Select the session(s) to print and click OK.

Calculationsâ

There are many calculations being performed in the run plan. The two most important input parameters are the assumed lap time and the fuel consumption per planned lap. Those two parameters can be defined in the Event settings or Session settings.
Afterwards they can be adjusted depending on the Run Plan mode (see Customize calculations for an explanation of LapTimeMultiplier and FuelConsMultiplier).

Run mode:

Lap Time = LapTimeFromEventOrSession * LapTimeMultiplier 
Fuel Cons = FuelConsFromEventOrSession * FuelConsMultiplier

Lap mode:

Lap Time = LapTimeFromEventOrSession * LapMarkerLapTimeRatio * LapTimeMultiplier 
Fuel Cons = FuelConsFromEventOrSession * LapMarkerFuelConsRatio * FuelConsMultiplier

Customize calculationsâ

HH Data Management allows to customize the run plan calculations in a very flexible way. There are two approaches that can get combined.

Lap Markers

This can be defined for a track configuration, event or session and the parameters that are taken into account are "Lap Time Ratio" and "Fuel Cons Ratio".

Math Parameters

In the PlannedRun and PlannedLap definition there are two math parameters that can be used to customize the run plan calculations. The parameter LapTimeMultiplier will be multiplied with the lap time and the parameter FuelConsMultiplier will be multiplied with the fuel consumption.

Tyre setâ

The ribbon bar provides the possibility to create mixed tyre set. To do so, select a planned run with a tyre set, click on Create Mixed Set, enter a name and select a tyre from the list for each corner.

Customize titleâ

It's possible to customize the title of the sessions by creating a math parameter with the name SessionName or SessionRunPlanHeaderName in the Session definition.

The parameter SessionRunPlanHeaderName will only affect the run plan view. The parameter SessionName also affects the session job and issue list view. If SessionRunPlanHeaderName and SessionName are defined, then SessionRunPlanHeaderName takes precendence.

Live Run Planâ

The live run plan is a feature that works in conjunction with the DMI. The concept is that the current default run plan is getting updated in a similar way as the run sheets by the DMI. That means that planned runs and (depending on the mode) also planned laps are getting added/removed while the session is running. The goal is to give the users a better overview how much time there is still left in the session and to manage the run plan live without manual interaction.

cautionThe Live Run Plan requires the Send Session Time setting to be enabled in the DMI settings in HH Timing. It is enabled by default and must remain active for the Live Run Plan to work.
Additionally, disable the Send Power Mode Markers option to prevent HH Timing markers from erasing the planned lap markers.

To enable that feature a couple of settings have to get implemented:

On the Car definition a parameter of type Boolean with the name EnableLinkedRunPlan needs to get added

In the Custom Columns a new column has to get added to the Default Car Profile (or whichever column profile is currently the default profile for the car definition) with following settings:

This allows enabling/disabling the Live Run Plan for each car in the Cars view.

On the PlannedRun definition the following parameters need to get added:

TRemSoRdb

TRemEoRdb

The parameter on the PlannedLap definition only needs to get added, if the run plan is used in Lap Mode.

On the PlannedLap definition the following parameter needs to get added:

TRemSoLdb

The following parameters are updated through the Live Run Plan:

Planned Run:

TRemSoRdb: Session time remaining at the start of the run

TRemEoRdb: Session time remaining at the end of the run

PitTime: The time in pits (TRemSoRdb - previousPlannedRun.TRemEoRdb)

Driver

Planned Lap:

TRemSoLdb: Session time remaining at the start of the lap

LapTime

Lap Marker

Additionally new planned runs/laps are inserted if needed and excessive laps are deleted.

Event Summaryâ

The event summary tab is organized into three sections with tables containing:

The total overall mileage

Tyre set mileage

Driver mileage

If an event is currently in progress, or completed, mileage from finished session(s) overrides what is configured in the run plan and is displayed instead. If a session's mileage is taken from run sheets instead of the run plan, the session name is enclosed by * in the header of each table to denote the difference in data source.

Session mileage is calculated by first taking the default run plan of the final session in the event. Then, the mileage for the previous session is determined by taking the run plan for that session which is selected as the "Previous Plan" in the final session. This continues working backwards through each session in the event taking the run plan that is selected as the "Previous Plan" in the proceeding session:

Strategy Overviewâ

This view behaves exactly the same as the Strategy Overview page. However, instead of allowing multiple cars to be displayed at once but only for one session, the strategy overview tab here displays the stints only for the selected car for all sessions it participates in an event, organized in a vertical list:

This is computed exactly the same as the Event Summary tab where sessions that are fully complete are displayed using the mileage from the actual run sheets instead of the run plan. Sessions where mileage is taken from run sheets have their name enclosed by * to denote the difference in data source.

warningIf an event is currently in progress, the strategy overview tab can contain data from both planned runs and run sheets. This means strategy overview parameter equations and the custom color equation should use properties that are defined on both the planned run definition and the run sheet definition to avoid math parameter exceptions.
