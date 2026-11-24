---
url: https://help.hh-dm.com/common-controls/inventory-view/
---

On this pageInventory View

The inventory view is used to view and manage associated entities. The following items in HH Data Management are associated entities:

Assemblies

Tyres

Part Items

An associated entity is an object in HH Data Management that can be assigned to:

Championships

Events

Cars

Event/Cars

These associated entities therefore don't necessarily belong to a single event. As an example, a tyre can be used between multiple events and cars, but a tyre set can only ever belong to a single event and car. The inventory view helps with the management of such items. It could be slow to load thousands of tyres from the database, but with these associations tyre can be loaded in subsets, to only load the tyres that are present in a given event.

The following screenshot shows an example of the tyre inventory view:

Filter Modeâ

The inventory lets items be loaded from the database and displayed based on different values. The filter mode controls this.

The options for filter mode depend on the entity:

Championship

Event

Car

Event/Car

Spec (only available for tyres)

Barcode (only available for tyres)

Custom Property

The custom property mode allows for displaying entities based on a value of any custom property. For example, it could be used to search for all tyres from a certain batch number (if that property is tracked in HH Data Management).

Based on the selected filter mode, the selection at the top of the inventory view will change to give the relevant options. In this example the championship mode is selected, so a list of championships will be selected.

Item detailsâ

The details for each item can be shown by expanding the row:

The information in the table showing the wear measurements will be slightly different depending on if tyres or assemblies are being shown, but the association information shown below the table is common for all associated entities. This section shows all championships, events, cars and event/cars that an item is assigned to.

Creating and removing associationsâ

Associations can be added using the following section of the view:

Select the appropriate association type to add, and then the correct association information and click the Add Selected Items To button. In this case it will add an Event/Car association to event R1 and car 1. In the example of tyres, this would make this tyre now available to be used in a tyre set in the event R1 and car 1.

Associations can be removed by selecting rows in the main inventory table and clicking the Remove Selected Items From Current button. Based on the selections in the above screenshot, any selected items would have their associations to the HH Dev Championship removed.

Another option to remove associations is to click the X beside the association in the details view:

noteParts (Part Items inventory) don't support associations.
