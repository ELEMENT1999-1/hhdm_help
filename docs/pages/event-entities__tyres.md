---
url: https://help.hh-dm.com/event-entities/tyres/
---

On this pageTyres

The event tyres view can be accessed from the event tab of the ribbon bar:

Create tyresâ

There are two ways to create new tyres; either one-by-one or in bulk.

Single tyreâ

A single tyre can be added via the event tyre worksheet for each specific car using the add tyre button on the ribbon bar. A window will then pop-up to ask for the specification of the new tyre. Only tyre specifications added to the event will be displayed as options.

Once created the new tyre will be displayed at the bottom of the list of tyres with a name that is based on the name of the previous tyre but with the last numerical value incremented. The name can be edited. Clicking the + sign on the row will expand the wear measurement history. For more information on tyre mileage please refer to the tyre documentation.

Bulk creationâ

To save time, several tyres can be created at once. To create tyres in bulk click on Bulk Add Tyres. A window will pop-up.

Placeholders can be used for the automation of naming. For example, to create 5 tyres with a starting number 10, an increment of 2, and a name template of {Sp}-{T}, the tyres would be created like:

tipThe {Sp} placeholder uses a string property named "ReportName" on the tyre specification. This must be set separately to the specification name when it is created.

To create tyres and tyre sets in bulk at the same time, please visit the tyre sets documentation.

Deleting tyresâ

Tyres can be deleted using the delete selected tyres button on the ribbon bar.

dangerDeleting a tyre will remove it from the database and delete all references to it. To remove tyres from an event without removing them from the database, please refer to the tyre inventory documentation.

Global tyre name and event tyre nameâ

By default, when creating a new tyre in an event, the event tyre name will be copied to the global name in the tyre inventory. Looking at the example from above, tyres created in the event were added in the inventory with their event name:

However, it is useful to store a new name under a global name (tyre number for the year, barcode number,..) while keeping a different event name.

When changing the name of the tyre in the inventory, only the global name is changed but not the event name:

Initial tyre mileageâ

The initial tyre mileage for the event is set in this view. The value is a distance and will be in kilometers or miles depending on your account.

There are three ways the initial mileage can be entered:

manually

calculated based on the latest tyre wear available

calculated using the full history of the database by the server

Manual entryâ

To enter the mileage manually, type the distance value in the column.

Local calculationâ

To have the mileage calculated locally, click the Set Initial Mileages button on the ribbon bar:

This works by searching the list of tyre wear measurements to try to find the latest wear measurement that was recorded before the current event, and then uses this value directly as the initial mileage.

Server-based calculationâ

The most reliable way to calculate the initial mileage is to perform the calculation on the server using the full history of the database. To do this, click the Set Initial Mileages (from API) button:

tipThe API authentication needs to be working correctly for this feature to work. By default the authentication will use OAuth and will open a browser window asking for the user to login. Additionally you need to be connected to the internet.

This calculation works in the same way as the part item and assembly iteration mileage calculation, but uses only the effective distance value, and rather than looking through setups linked to each run it looks through the tyre sets linked to each run to determine which tyres were used.

Current tyre mileageâ

Similar to the server-based calculation to set the initial mileages there is a way to set the current mileage by making use of the server/API. Clicking the Set Current Mileages (from API) button requests the current mileages from the server and updates the values in the local database. To display the values a Custom Column needs to get added to the EventCarTyre profile:

cautionThe initial mileage and the current mileage are two separate and independent values. The initial mileage defines the mileage at the beginning of an event so that the local calculation throughout the event returns the correct values. The current mileage shows the global mileage of a tyre at the time of the request, which does not take into account the initial mileage, because it's calculated on the server based on all laps in all events that this tyre ever did.

If the initial mileage and the current mileage are requested at the same time (and tyres are not used by multiple cars in the current event) the following equation illustrates the difference:

initial mileage + local mileage in current event = current mileage
