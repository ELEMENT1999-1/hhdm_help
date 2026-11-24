---
url: https://help.hh-dm.com/reference/calculations/mileage/
---

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
