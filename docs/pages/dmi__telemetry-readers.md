---
url: https://help.hh-dm.com/dmi/telemetry-readers/
---

On this pageTelemetry Readers

The telemetry readers are tools that pull channel data from the telemetry stream, run summary operations, and write Lap Parameter values to HH Data Management via the DMI plugin in HH Timing. For example, Telemetry Readers can write the FuelUsed lap parameter value to trigger the Fuel calculations and keep the lap and run fuel values in sync with the car on track.

There are different Telemetry Reader applications depending on your telemetry system, but the general operation of each one is the same. If you need access to the telemetry readers, please contact us and we will make it available for download on the website.

Supported Telemetry Systemsâ

System RequirementsPi Rt Reader using the DAE Real-Time Reader

Pi Data Access libraries

DAE PDS Real-Time Reader license

Motec Telemetry Reader using the i2 API

Motec i2 Pro

Motec i2 API license

Bosch WinDarab Telemetry Reader using the BMS2Api

Bosch COM-API/BMS2API license

Settingsâ

Download this example Telemetry Reader configuration file as a starting point.

The settings page is divided into four sections.

Cars

Car Channels

Signals

Suffixes

Carsâ

A Car is an individual telemetry connection. Car Number is used in the DMI Plugin to identify each car. It should match the car number in HH Timing. The following sections describe the connection settings for each supported telemetry system.

The Address, Port, and Source Name columns define the connection to the Telemetry stream when required. Check the section specific to your telemetry system:

Motec

Pi

WinDarab

Channelsâ

Each Channel corresponds to a data channel in the telemetry stream. The checkboxes next to each channel name are summary operations performed on channel values over a lap. Multiple summary operations can be enabled for a channel.

Signalsâ

The signals table defines the mapping between telemetry channel names and HH Data Management lap parameter names.

ColumnDescription
Signal Name or Car Channel NameTelemetry channel name - matches the car channel from the previous section
HHDM NameBeginning of the HHDM Lap Parameter name before any suffix is applied
OffsetNumeric offset for unit conversion
ScalingNumeric multiplier for unit conversion

Lap channelA signal with HHDM Name "LapIndicator" is required. It is used to trigger the summary calculations and the DMI data refresh. A lap parameter for the lap indicator is not needed in Data Management (see the Telemetry Filter section for an explanation of the option in the DMI Plugin).

Suffixesâ

Channel Settings + Suffix Definitionsâ

CheckboxLap Parameter NameCalculation
First<HHDM Name><SOL suffix>First value of the channel in a lap
Last<HHDM Name><EOL suffix>Last value of the channel in a lap
Mean<HHDM Name><Stats suffix>MeanMean value
Min<HHDM Name><Stats suffix>MinMinimum value
Max<HHDM Name><Stats suffix>MaxMaximum value
Delta<HHDM Name><Delta suffix>Difference between the last and first value
Ignore SuffixTelemetry Reader will not append any suffixes for this channel
(e.g., enable to avoid appending the EOL Suffix to the FuelUsed HHDM Lap Parameter)N/A

Exampleâ

ParameterExample 1Example 2
Car Channel nameSpeedFuel Used Total
Signal NameSpeedFuel Used Total
HHDM NameSpeedFuelUsed
OperationMean
Min
MaxLast
Stats suffix_Lap
EOL Suffix
HHDM Lap Parameter NamesSpeed_LapMean
Speed_LapMin
Speed_LapMaxFuelUsed

Download this example configuration file

Ignore Suffixesâ

When the global Ignore Suffixes option is enabled, the Telemetry Reader will not append any suffix to any channel's HHDM Name.
Each channel also has a separate option Ignore Suffix. This will only affect the channels that have the option enabled.

Telemetry Stream Settingsâ

Motec Connection Settingsâ

License Requirementsâ

Motec i2 Pro

Motec i2 API license

To check the license:

Open i2 Pro

Click on the Help menu

Click "Activate Features..."

Addressâ

Motec requirementsIf Motec i2 is running in Administrator Mode, Telemetry Reader must run in Administrator Mode as well

Additional Settingsâ

Motec Telemetry Reader contains extra settings under the Telemetry tab on the ribbon.

Send Data on Lap Change: By default, the reader reads the last point of each channel sequentially and sends the information to the DMI. In configurations including a significant number of channels this might lead to a delay in the last values obtained.
When the option to send data on lap change is selected, nothing is sent to the DMI until a lap change is detected. When the lap is detected the reader pulls all the data for the last lap, processes it and sends it to the DMI.

Use Live Lap: When the option to send data on lap change is selected, the reader finds the time range of the last lap. When Use Live Lap is disabled, the last lap is found by the most recent lap start time. When Use Live Lap is enabled, reader reads the data from a lap called "Live" in the data source.

Clear cache: For faster accessibility of the channels data, the channel accessors are cached in the reader memory. This could lead to incorrect values when the data source changes (i.e. the car is power cycled). The reader contains an algorithm to clear the cache automatically when a data source change is detected, however if the algorithm fails or incorrect values are displayed, this button allows the user to manually clear the cached channels.

Pi Connection Settingsâ

License Requirementsâ

DAE PDS Real-Time Reader license: to check the license, use the Cosworth Software Licensing Tool.

Pi Data Access library: to check Data Access library version:

Open Pi Toolbox

Go to the Help menu

Click About

Car connectionâ

Address, Port, and Source Name are required to establish the connection. If named sources are used, the Source Name must be supplied.

Pi Broadcast ConnectionIf you are using the Pi Broadcast mode, then:

Be sure to select the 'Use broadcast connection' button in the ribbon bar

Two IP addresses are required, separated by a semi colon: <local adapter IP>;<source machine IP>

The port and source name are not used

Bosch WinDarab Connection Settingsâ

License Requirementsâ

Bosch COM-API/BMS2API license

To check, use Bosch Motorsport License Manager.

Car connectionâ

Server Address and Source Name are required to establish a connection.

To find the settings, do the following:

Navigate to this folder: "C:\Bosch\WinDarab\Config\WDServer"

Look at the .bmswds file name structure:

Darab addressWinDarab expects the address to be the name of the server computer, not its IP.

Additional Settingsâ

WinDarab Telemetry Reader contains extra settings under the Telemetry tab on the ribbon.

Use All Values: when disabled, the Telemetry Reader attempts to read the last value of a channel stream. When enabled (pressed), the reader accesses all the channel data samples and reads the last one. The functionality is similar, but the two different methods can help troubleshoot issues with the telemetry stream connections.

General Connection Settingsâ

Firewall RulesOn first launch, Windows will ask whether to allow the Telemetry Reader to communicate on the network. This is required and will set the firewall rules to allow Telemetry Reader to send information to the DMI Plugin.

To troubleshoot connection issues, it may be necessary to modify the Windows Firewall rules to allow Telemetry Reader to communicate over all networks.

Telemetry Reader Configurationâ

To add or remove cars, channels or signal use the buttons in the ribbon bar.

Once the configuration is finished, it can be saved and then reloaded the next time the tool is started. Use the buttons in the ribbon bar to save and load configs.

Start/Stop Connectionâ

To start and stop the connection to the telemetry stream use the buttons in the "Telemetry" section of the ribbon bar.

Dataâ

The data tab shows two text boxes:

Received data shows the latest values read from the car selected on the Settings tab.

Transmitted data shows the message that is transmitted to the DMI Plugin in HH Timing (these channels are metrics defined in the Settings tab)

tipWhen the connection to the telemetry stream is successful, the Received data text box will display the car's latest channel values. If it stays empty, please troubleshoot the connection (API licenses, telemetry server addresses, administrator mode, firewall rules...)

DMI Connectionâ

Before connecting to the DMI, the connection settings must be established in the plugin options of HH Timing

The telemetry server host is the IP address of the computer running the RT reader. In case it is running on the same computer, use "localhost". The port always has to be set to "2018".

To connect/disconnect the telemetry reader use the buttons in the DMI ribbon bar.

If the connection is successful, the DMI should display a green light in the connection status

Telemetry Filterâ

The DMI allows filtering channels. This allows reusing a Telemetry reader configuration while filtering the channels that are sent to Data Management. For example, the LapIndicator channel is used for calculations in the Telemetry Reader and it should be included in the list of blocked channels.

Telemetry additional optionsâ

Data Beacon Before S/F : Enable if the beacon is located before the start/finish line (timing loop). Telemetry values are buffered until the car crosses the start/finish line and are then sent to HH Data Management.

Send Data On Pit In : Enable to send telemetry data at the PitIn line instead of the start/finish line in the pits.

DMI telemetry modeâ

Use the DMI telemetry mode to import data when a timing feed is unavailable. This mode utilizes telemetry lap times and parameters to populate the runsheet automatically via the RT Reader.

Connection prerequisitesâ

The telemetry mode requires an active connection between the DMI and HH Timing. Refer to the DMI connection guide for initial setup steps.

Telemetry channel requirementsâ

To populate lap times automatically, ensure the telemetry stream includes the following channels:

ChannelDescription
LapIndicator (LapNumber)A channel that changes state at the end of every lap to trigger data import.
LapTimeThe channel providing the duration of the completed lap from the telemetry system.
OutingNumberTracks the current run. This is optional if manual run management is preferred.

DMI configurationâ

Configure the following settings within the DMI:

Tick the TelemetryMode checkbox.

Ensure the car number in the telemetry reader matches the HH Timing car ID used in the DMI mapping.

Ignore Outing Number: Tick this checkbox to create runs manually. The DMI then writes data into the last created run. Use this option to prevent the automatic creation of extra outings caused by involuntary channel increases (e.g., engine fire-ups).

Lap number reset every outing: Select this option if the telemetry lap channel resets to zero at the start of every run. Leave unselected if the channel tracks cumulative laps.

Refer to the Telemetry additional options section for details on the Data Beacon Before S/F and Send Data On Pit In parameters.

RT Reader signal configurationâ

Configure three specific signals in the RT Reader configuration. These signals are used by the DMI to trigger reads and do not need to match internal lap parameters:

LapIndicator: Triggers the read process at the start/finish line. This channel provides the outing lap number. Ensure the DMI settings reflect whether this channel resets every outing.

OutingNumber: Provides the run number (required if Ignore Outing Number is disabled).

LapTime: Displays the last lap time when crossing the start/finish line.

Lap identification logicâ

HH Data Management identifies the correct lap for data entry using the following logic:

Run identification: If Ignore Outing Number is enabled, the system uses the final run in the current session.

Lap identification:

If "Lap Number Reset Every Outing" is selected: The system identifies the lap using the Stint Lap Number parameter in HH Data Management.

If unselected: The system identifies the lap matching the Total Lap Number sent from the telemetry reader.

Stint starting lapUse the Stint Starting Lap to apply an offset to the LapIndicator to match telemetry data with the HH Data Management lap number.

Show the telemetry columns to make this parameter visible.

Enter -1 to ignore this option.

Note: The fuel telemetry columns are no longer in use and will be removed in a future version.

Automatic lap creationIf the runsheet does not contain a lap matching the telemetry criteria, the system adds laps until the condition is met. For example, if the current runsheet ends at lap 1 and the telemetry sends a LapIndicator of 3, the system automatically creates laps 2 and 3.

Data filteringâ

Remove the filter on the lap time to ensure all data imports correctly. Adjust the filter settings when transitioning from timing mode to telemetry mode.
