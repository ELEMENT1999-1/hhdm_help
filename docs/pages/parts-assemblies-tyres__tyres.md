---
url: https://help.hh-dm.com/parts-assemblies-tyres/tyres/
---

On this pageTyres

Tyres exist in HH Data Management as their own custom implementation, rather than simply being defined as parts (and then tyre sets being assemblies). There are historical and practical reasons for this. Historically, tyres have existed in HH Data Management from the beginning of the software, but parts and assemblies and the associated mileage and measurements features are something that has evolved over time. Practically, managing tyres is a fundamental part of running a car and so there is more functionality built on top of the tyres compared to the parts and assemblies by default. Furthermore, depending on the championship, tyres often have a much shorter life than most other parts/assemblies on the car - sometimes only being used for one run and then scrapped. However, there are also a lot of commonalities between tyres and parts/assemblies and similar terms and concepts are used between the two in HH Data Management.

Tyre specificationsâ

Each tyre must have a specification when it is created and after this it cannot be changed. The tyre specifications view can be opened from the admin tab of the ribbon bar:

The tyre specifications view will open:

The tyre specification has two important parameters that impact the tyre wear; default number of wear holes and default initial tread depth. When a new tyre is created a new initial wear measurement will be created and set to the value of the default initial tread depth. Furthermore, each time a tyre wear measurement is created the number of measurements on the tyre wear measurement will be defined by the default number of wear holes parameter; typically this should correspond to the number of wear measurement points that are on the tyre. It is assumed that this number does not vary between tyres of the same specification.

By default there is only one value for the default initial tread depth, assuming that the depth of all measurement holes in the tyre are the same. However, it's also possible to define a default initial tread depth per hole. To set that up, the 'Add Default Tread Depths' button can be used. In the pop-up it can be defined how many new default initial tread depth parameters are getting added to the tyre specification. The amount of default initial tread depth parameters needs to match the default number of wear holes and all values need to be set to support multiple default initial tread depth parameters. The parameters are applied in ascending order from the inside shoulder to the outside shoulder of a tyre wear sheet. Example:

noteThese settings only take effect for new tyres. Once a tyre is created an initial tyre wear measurement is added to the tyre and the number of default initial tread depth parameters can't be changed afterward anymore.

The "Show expired" checkbox in the ribbon bar determines whether expired tyre specifications are displayed. When unchecked, tyre specifications with an expiry date before the time the view was opened are hidden.

Tyre specifications can have an expiry date defined. If defined, tyre specifications that expire before the start date of an event are not displayed in the Events Management page when defining the tyre specifications for the event, unless they are already assigned to that event.

When adding tyres or tyre sets in an event, only the tyre specifications assigned to the event can be selected. If the event has no tyre specifications assigned, all tyre specifications are offered except the ones that expire before the start date of the event.

Tyreâ

Tyres are associated entities and therefore exist globally in the software. Globally tyres are managed using the tyre inventory view that can be accessed from the management tab of the ribbon bar:

Please refer to the inventory view documentation for a full explanation of how this view works.

Once in an event, the tyres can be managed by the event tyres view.

Tyre setsâ

Tyre sets exist only in an event/car. They are not an associated entity that can be moved between events and cars. If a tyre set is to be reused between events, the tyres can be transferred using the tyre inventory, and then the set must be recreated in the new event. If this is a common part of the workflow for a team then it could be made more automated by adding functionality with a plugin. Tyre sets are managed using the tyre sets view.

Tyre mileageâ

The tyre mileage feature is different than the item mileages, but the same general functionality is available. In terms of the user interface, HH Data Management is more geared towards viewing the current mileage in the current event, rather than looking at historical mileage information.

Initial mileage in an eventâ

The initial mileage for a tyre in an event can be entered manually or automatically calculated on the HH Data Management server (in a similar fashion to the part item and assembly iteration mileage). This is managed on the event tyres view.

Current mileage in an eventâ

The current mileage in an event is shown in the following views:

tyre sets view

run sheet shows the start and end of run tyre mileages

event mileage view

The current mileage in the event is calculated as the sum of the initial mileage plus the mileage in the current event, based on the number of laps entered in the runsheets for the current event, the length of the track configuration for each session and any lap marker scaling factors. For the lap count, the initial mileage is converted to laps using the length of the default track configuration for the current event, rather than using the number of laps directly from the previous event.

Current mileage from APIâ

There is an option to request the current mileage of all tyres from the HH Data Management server. Please see Current tyre mileage for further information. To display this current mileage in the tyre inventory a Custom Column needs to get changed in the Tyre profile

Event mileage viewâ

The event mileage view can be accessed from the event tab of the ribbon bar:

The view will open. Press the refresh mileages button and the data will populate. The button must be pressed to update the view - there is no automatic update for this view.

The view shows the current tyre mileage, rim mileage and tyre set mileage. The rim mileage is calculated based on the rim numbers entered in the tyre sets view.

Tyre wear measurementsâ

Tyre wear measurements are managed using the tyre wear view.
