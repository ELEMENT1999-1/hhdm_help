---
url: https://help.hh-dm.com/management-entities/event-management/
---

On this pageEvent Management

The event management view can be accessed from the championship tab of the ribbon bar:

infoIf Lock Mileage is selected, this event's mileage will not recompute when a mileage recalculation is requested for the account. See the mileage page for more.

An event in HH Data Management is built from the following elements:

event

sessions

track

cars

drivers

tyre specifications

Eventsâ

To create an event, click the add event button on the ribbon bar. A window will pop up:

The entry list, tyre specifications, sessions and event parameters can be copied from another event in the current championship by making a selection in the first combobox. When the sessions are copied to the new event, the system automatically selects the appropriate track configuration using the following rules:

Default configuration match: if the original session uses the default track configuration for its event, the new session will use the default track configuration of the target event.

Same track: if the original and target events use the same track, the new session will use the same track configuration as the original session.

Match by name: if the original session uses a non-default configuration and the events use different tracks, the system will try to find a track configuration on the target track with the same name. If a match is found, it will be used.

No match found: if no suitable configuration can be found, the session will not be created.

cautionSessions are not created if no valid track configuration is found. This prevents misconfigured sessions.

Sessionsâ

Sessions can be added and removed using the buttons on the ribbon bar. The start time and end time should be correct as this can impact calculations in the software, and determines the order of the sessions in some displays. The session type can be selected as well as the track configuration.

Time ZoneIt is possible to override the Track timezone for sessions that take place at a different location (e.g. a simulator session that is a part of the event, but does not take place in the same timezone).

Track ConfigurationIf you must change the track or track configuration for the event or session, you can do so before any laps are created in the event or session.

Carsâ

The cars assigned to an event can be edited by selecting the the Cars tab on the panel on the right side of the screen.

The checkbox column is used to assign cars to an event. Selecting a checkbox will add the car to the event. If more then one setup definition exists on the current even, then a window will pop-up asking the user to choose which setup definition should be used for this car in the current event.

cautionThis is the stage where the setup definition is associated to a car for an event. This determines not just the definition, also the appearance of views, what plugin-defined functionality is enabled. Using different setup definitions can be a good way to differentiate between cars types, to enable different setup logic. Some examples where multiple setup definitions could be used are be: a team with a GT car and a Prototype, a team with two GT cars from different manufacturers or a team who races on road courses and ovals.

Likewise, to remove a car from an event deselect the checkbox. It is only possible to remove a car from an event if the local computer is subscribed to that event.

warningRemoving a car from an event will delete all of the data entered for that event. This cannot be undone.

The text written for each car in the table (e.g. 1 | HHDM-01 | HH Dev Setup) corresponds to the number, report name and the name of the assigned setup definition.

Driversâ

The drivers assigned to a car for the current event can be edited by expanding the corresponding car row. Selecting a checkbox will add the driver to the current car at the current event. This will allow the driver to be selected in the event entities such as runsheets and run plans. Deselecting the checkbox will remove the driver from the car. It is only possible to remove a driver from a car if the local computer is subscribed to that event and car.

warningRemoving a driver from a car and event will delete all references to that driver in that car and event (e.g. deselect the driver in the runsheets). This cannot be undone.

Tyre specificationsâ

The tyre specifications assigned to the current event can be edited by selecting the the Tyre Specifications tab on the panel on the right side of the screen.

The tyre specifications event assignment allows for filtering the list of tyre specifications shown in the event-specific views in the software, to avoid incorrect specifications from being selected in events and to minimize the entries in the list).

Tyre specifications with an expiry date set before the start date of the event are not shown in the list, unless they are already assigned to the event.

infoIf no tyre specifications are selected for an event, every specification that has not expired before the start date of the event will be available for that event.
