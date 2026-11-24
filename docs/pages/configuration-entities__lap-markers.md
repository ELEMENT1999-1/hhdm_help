---
url: https://help.hh-dm.com/configuration-entities/lap-markers/
---

On this pageLap Markers and Lap Track Status Markers

Lap markers can be assigned to each lap. Lap markers can be edited using the lap markers view which is available on the admin tab of the ribbon bar:

Lap markers are used to state the type of lap like, in, out, push, cool etc. Lap track status markers are used to track the track status of each lap like green, yellow, safety car etc. Both types of markers are used for the mileage calculations and they will be populated from the DMI.

Lap Marker propertiesâ

Property NameDescription
UseInCalculationInclude these laps' sectors in the Theoretical Best calculation
UseInBestCalculationInclude these laps when selecting the best lap
SkipCountingLapNumberThese laps will not have a lap number in the run sheet, and will be ignored by the DMI

tipWhen recording reconnaissance and formation laps in the first run of a session, use a lap marker with SkipCountingLapNumber set to true. This will help align the manually entered laps when the DMI starts to create laps from the timing feed.

Lap Track Status Marker propertiesâ

Property NameDescription
UseInCalculationInclude these laps' sectors in the Theoretical Best calculation
UseInBestCalculationInclude these laps when selecting the best lap

The following Lap Track Status Markers can be written by the Data Management Integration (DMI) Plugin.

HH Timing Track StatusHHDM Track Status Marker Name
YellowSC
FullCourseYellowFCY
RedRed
UnknownUnknown
FinishFinish
LocalYellowLocalYellow
VirtualSafetyCarVirtualSafetyCar
SlowZoneSlowZone
SlowZoneCode60SlowZoneCode60
SlowZoneCode120SlowZoneCode120

tipRefer to HH Timing Integration for DMI configuration information.
