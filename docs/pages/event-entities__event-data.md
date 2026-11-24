---
url: https://help.hh-dm.com/event-entities/event-data/
---

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
