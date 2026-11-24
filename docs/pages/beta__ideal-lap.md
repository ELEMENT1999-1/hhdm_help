---
url: https://help.hh-dm.com/beta/ideal-lap/
---

On this pageIdeal Lap

Overviewâ

The ideal lap feature allows generating an ideal fastest lap by averaging data for more than one lap. It uses onboard vehicle data previously uploaded as an âAttachedFileâ Parameter on the RunSheet definition. The logic used for the calculation goes as below:

Reading DataFiles: All data files are loaded in memory.

Filtering/Sorting DataFiles: data files are filtered sorted by laptime to only keep the best X valid laps. A valid lap has a distance within +/- 5% of the median lap distance from all laps.

Aligning/Interpolating Channels: data points are interpolated on a distance-based method (1 meter). It uses a reference distance which is estimated by stretching the lap distance to match the average lap distance of the best X laps.

Averaging Channels / Exporting DataFile: data points values are averaged and a new DataFile is generated

Ideal Lap can be accessed from the Event tab of the ribbon bar:

A new tab will appear:

Configuration Requirementsâ

The following parameters must be created on the âAccount Optionsâ definition:

IdealLapSpeedChannelName [Text]

IdealLapDistanceChannelName [Text]

IdealLapBestXQuantity [Double]

IdealLapDownloadDataFiles [Boolean]

IdealLapExportDirectory [Text]

IdealLapExportDebugFiles [Boolean]

IdealLapUploadDataFile [Boolean]

IdealLapSectorChannelName [Text]

IdealLapSectorCount [Double]

IdealLapUseTrackConfiguration [Boolean]

infoThe following requirements are specific to the sector calculator.

And the following attached file parameter on the âSesssionCarDataâ definition:

IdealLapDataFile [Single]

A new collection item with the following parameters must be created on the Track Configuration Itemâ definition:

Name [Text]

FirstTimingLoop [Double]

LastTimingLoop [Double]

And added to the 'Track Configurationâ definition:

IdealLapSectorDefinitions [Collection Parameter]

Buttons & Settingsâ

Context: championship, event, car and session selection

Add / Delete Channel: the list of channels to be processed

Run Calculation: open a dialog to select car(s) and session(s) to be processed. Individual ideal lap will be generated per selected car / session

 

Attached File Name: âRunsheetâ attached file to use for the calculation

Selected Calculator: the calculator type to use for the calculation

Lap

Sector

The lap calculator will process the best X lap while the sector calculator will split the lap into sectors and combine the best X sectors to generate an ideal lap. Below are the list of settings used by the calculators:

Distance channel name: signal used to interpolate data points. If left empty, the distance will be calculated by integrating the speed channel

Speed Channel Name: only use when no distance channel name specified

Sector Channel Name: the sector number. Expected value starting at 1 and up to the sector count

Sector count: the total number of sectors

Best X Quantity: the number of laps to average for computing the ideal lap

Download Data Files: if checked, the software will download all file(s) prior to launch the calculation. Otherwise, the calculation will be using only the downloaded file(s).

Export Debug Files: if checked, the best X laps will be exported in addition to the ideal lap.

Upload Data File: if checked, the ideal lap DataFile will be uploaded to the âSessionCarDataâ AttachedFile parameter.

Export Directory: folder path where the ideal-lap and debug files will be exported

Channel to export: the list of channels to process from the DataFile

Messages: log to inform the user of the calculation progress and errors

tipThe distance channel takes precedence over the speed channel.
The following inputs will result in the calculator using the 'sLap' for lap distance:

The following input will result in the calculator using the 'vCar' channel to estimate the lap distance:

infoThe following settings are specific to the sector calculator.

Using the following setting assume the 'nSector' channel is monotonic increasing and have value of 1, 2 or 3.

Similar results can be achieve by checking the 'Use Loops from Track Configuration' and having created a custom sector definition:

noteThe 'IdealLapSectorDefinitions' can be edited from the Track view.

The 'LastTimingLoop' is optional. When left empty, the solver will assume the start loop is the same as the end loop. The below collection is the same as the one above.

The track configuration collection allows creating sectors from:

more than one loops

non-monotonic channel

The following examples will:

create a 3-sector configuration using a monotonic chanel with value from 1 to 10.

create a 5-sector configuration using a non-monotonic channel

Visualizingâ

The generated Ideal Lap can be visualized using the Data Viewer. From the data selection window, search for the 'IdealLapDataFile on the 'SessionCarData' source.
