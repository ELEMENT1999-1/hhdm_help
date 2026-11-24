---
url: https://help.hh-dm.com/dmi/using-the-dmi/
---

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

Stint Lap Offset: is used to offset the stint lap number. For example if the car has 3 laps completed in its current stint in HH Timing the next lap would get written as lap 4. But if the user wants the timing data to get written into the 6th lap, the stint lap offset can be set to 2. This setting is a car setting (i.e. it applies to all sessions, but only the selected car). When this parameter is used, it's important to remember that it might need to get changed when the stint number changes.

Sector mappingâ

Enter the HH Timing sector names to map them to the corresponding HH Data Management sector names.

Mapping is automatic if the names are identical.

Speed traps mappingâ

Enter the HH Timing speed trap names to map them to the corresponding HH Data Management speed trap names.

Mapping is automatic if the names are identical.

Send timing informationâ

The toggle switch Send Timing Information can be used to start/stop the sending of the timing data to HH Data Management.

Pit in-pit out timesâ

The setting Use Timing Feed for Pit In/Out Times needs to be:

Unselected in case of live timing feed: pit in/out time will take the computer time of day as a reference.

Selected if you want to use old replay: pit in/out time will take the Start Session time from HH Data Management as reference.

Stint offsetâ

The stint offset column in the car table can be used to offset the stint number of HH Timing and HH Data Management.

Using the automatic mode, the total stint offset is the sum of the car table and the session name table.

Formation Lap Markersâ

tipRefer to Lap Markers and Lap Track Status Markers for Lap Marker Information.

DMI Modeâ

There is an option to choose the DMI mode. The two options are Manual and Automatic. The Automatic mode was created to automatically link the timing session to the correct HH Data Management session without user input during an event.

The button Copy Session Name copies the session name of the active HH Timing session into the clipboard. This can be useful to populate the automatic mode table

Manualâ

In manual mode, the user will have to manually select the correct session in the DMI to make sure the data is being sent to the right session in HH Data Management.

Additional Settings:

Ignore Run Number: ignores the run number and writes the lap always into the last run of the respective car in HH Data Management. This is a global setting (i.e. it applies to all sessions and all cars)

Automaticâ

In automatic mode, there is a new mapping table on the DMI to match the current HH Timing session name and a HH Data Management session:

Prior to the event, the user fills up the table with the expected HH Timing session name against the HH Data Management session name. When a new session starts on HH Timing, the DMI will automatically try to match the session and update the selected session.

Stint Offset: is used to offset the stint number, where the timing data is written to. For example if the car is in its 2nd stint in HH Timing but the user wants the timing data to get written in the 3rd stint, the stint offset can be set to 1. This setting is a session setting (i.e. it applies to all cars, but only the selected session). There is another stint offset parameter in the car mapping table, which is a car setting (i.e. it applies to all sessions, but only the selected selected car). The final stint offset that is getting applied is the sum of both parameters.

Ignore Run #: ignores the run number and writes the lap always into the last run of the respective car in HH Data Management. This setting is a session setting (i.e. it applies to all cars, but only the selected session)

Additional Settings:

Session Time Margin: can help to prevent sending wrong data through the DMI. When a value is set, the DMI will send timing data to HH Data Management only when:
CurrentTimeOfDay > SessionStartTimeFromHhdm - sessionTimeMargin. This can help for example for Alkamel championships, where they sometimes do timing tests in the early morning with real data.

Automatic Stint Offsetting: if this parameter is set then the auto DMI will automatically set the stint offset based on the number of stints completed in prior sessions in HH Timing. This is mainly a help for cases when there are multiple timing sessions, but only a single session in HH Data Management.

Event Allow String: is a filter to ignore certain sessions (see also HH Timing championship filter). Depending on the timing provider HH Timing gets a combined session name which consists of the event and session name (e.g. FIA WEC Total 6 Hours of Spa-Francorchamps - Race) and/or a session name (e.g. Race). One way to populate the session mapping table is to set the combined name for every session and then there is no need to use the event allow string, because the combined name should be distinct. Another way is to only write the session name in the session mapping table, in which case the event allow string can be helpful. For example if the user is interested in all sessions of the series FIA WEC and there is a support series called Porsche Carrera Cup, it could cause an issue when both series have a session with the same name. In this case the event allow string could be set to "FIA WEC" and the session name to "FP1", "FP2" etc. The event allow string checks if the combined session name contains the defined value, i.e. it doesn't have to match completely. The recommended way is to always write the combined name into the mapping table as it's more robust.

If the automatic session selection is not successful (usually because the session name in HH Timing and the value in the HH TIming Session Name column don't match), the following status is shown:

Send weather informationâ

The toggle switch Send Weather Information can be used to decide when to send weather data to HH Data Management. This is only valid in a championship where the weather is available in the feed.

The button Clear last measurement time can be used to clear the time the weather was received the last time from the timing provider. This can be used to force sending the weather with the next update rather than waiting for the defined interval to elapse.

Advanced Optionsâ

Send Lap Time of Day: Enable sending time of day into each lap. It's currently only supported for the following protocols (RIS and Natsoft). It requires a DateTime property in the lap definition in HH Data Management with the name TimeOfDay.

Is Time of Day Local: Activate if the time of day in the timing feed is in the local time zone. HH Data Management expects the time in UTC and if this setting is true the timezone from the selected track will be applied. Only relevant when Send Lap Time of Day is enabled. Currently the only protocol that requires this setting to be enabled, is IMSA Timing.

Send Tyres From Feed: Some feeds send tyre information, which can be sent to HH Data Management.

Send Loops: Send extra loops which are defined in the HH Timing championship configuration.

Send Timing Position: Send the timing position to the respective SessionCarData in HH Data Management. This is mainly used to order the strategy overview in HH Data Management, but can be used for other purposes as well. The value is stored in the parameter TimingPosition of type Double in the SessionCarData definition.

Send Timing Position In Class: Same as Send Timing Position just that it sends the position in class. The value is stored in the parameter TimingPositionInClass of type Double in the SessionCarData definition. If the parameter doesn't exist in HH Data Management it gets ignored.

Send Power Mode Markers: When checked, the DMI will send the Power Mode as a Lap Marker. It will overwrite the pre-defined Lap Markers in the run sheet or a live run plan.

Send Session Time: Enable sending the session time when each lap is completed, on pit in/out, and on each sector and speed trap crossing. If disabled, the SessionTimeComputed property on the lap can still be used to visualize data in HH Data Management. This is computed based on the session start time and time of day if available, otherwise it is estimated based on the pit out time and sum of lap times.

Connection Mode: There are two modes for the DMI. In general, local mode is the recommended option for the DMI. It is more robust against network dropouts. The only downside is that the DMI must be run on the same computer as HH Data Management.

API: in this mode, HH Timing sends the timing data to the HH Data Management API.

Local: in this mode, HH Timing connects directly to an HH Data Management client running on the same computer.

DMI Port (only visible when Connection Mode is Local): The port that the DMI uses to communicate with HH Data Management. It is only configurable when DMI Port Override is false.

DMI Port Override (only visible when Connection Mode is Local): By default HH Timing and HH Data Management configure the port to communicate with each other automatically and no user action is needed. By setting this value to true, the port gets set manually and it needs to match the DMI Port in the options in HH Data Management.

The following options apply to Formula E only (for each parameter the name of the respective Lap parameter in HH Data Management needs to be set, all values in seconds):

Cumulative Yellow: cumulative yellow time at the end of the lap

Current Yellow: time of current yellow period at the end of the lap

Extra Time: extra time if a session is extended

Gap To Leader: gap to leader at the end of the lap

Attack Mode Used: amount of attack mode used at the end of the lap

Custom Parametersâ

The custom parameters section lets the user send additional parameters. To do that three inputs need to get configured:

HH Timing Parameter: The name of the parameter coming from HH Timing.

HH DM Parameter: The name of the parameter in HH Data Management. The parameter needs to exist in the respective Definition (see also HH DM Scope).

HH DM Scope: The scope which the value is getting written to.

Lap -> Lap Definition

Run -> Run Sheet Definition

Session -> Session Car Data Definition

When sending weather parameters an automatic unit conversion will be performed (if necessary), if the HH DM Parameter is named according to the following table:

Air Temperature => AirTemperature

Track Temperature => TrackTemperature

Air Pressure => AirPressure

Humidity => Humidity

Wind Direction => WindDirection

Wind Speed => WindSpeed

Saving layoutâ

When you save your layout in HH Timing the mapping defined in DMI is saved with it. This means you do not have to retype the mapping each time you start HH Timing or open a project.

Troubleshootingâ

Check the following of having any issues:

You have the correct Championship, Event and Session context selected in the DMI Manager

HH Timing is receiving timing data

HH Data Management has a connection to the server (showing green dot with "Connected" in the bottom left corner)

DMI is connected to the HH Data Management Server (showing green dot in DMI Manager with "Connected" to the right of the Championship field)

The mapping in the DMI Manager is correct and all values match exactly what is shown in HH Timing

The toggle button Send Timing Information is in the correct state

Alkamel protocol reconnection processâ

If the computer using the DMI lost the connection to the timing feed, you can do the following steps to get the connection back.

Disconnect DMI: Untick Sending Timing Information toggle button in DMI

Make sure Read History is set to true in your championship configuration

Connect timing and clear the scoreboard.

Make sure your session time is back to live and all the data from the beginning of the session are populated.

Reconnect DMI: Tick Send Timing Information check box
