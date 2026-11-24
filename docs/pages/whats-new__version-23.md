---
url: https://help.hh-dm.com/whats-new/version-23/
---

Version 23

January 1, 2023 Â· 5 min readVersion 23 is a major overhaul of the software. We made technological and structural changes that will allow us to continue improving the software following customers feedback. Security, performance, and customization were the main things we focused on.

Version 23 is a major update with changes to the database schema.
The software should auto-update like previously. Versions prior to 23 will not be allowed to sync. Any work performed on those versions following the release of version 23 will be lost. When first starting the software on the new version, it will ask to delete the old database:

Please select Yes to continue. HH Data Management will then perform the initial sync. Once the pull operations are back at 0 you can resubscribe to your events.

Performanceâ

Like for any major release, our focus was to review in detail every part of the software that can be improved for performance. For this version we continued to focus on the syncing performance as well as the loading data.

Custom Viewsâ

One of the most notable changes we have done for version 23 was the ability to create new views directly from the software. In the past the creation of those views had to be done programmatically from a plugin. Now they can be done directly from the Admin section of the software.

The custom view configuration page can accessed from the Admin ribbon bar:

Three types of views can be created currently:

Single Table

Multi Session Table

CID (Column Item Definition)

For each view, a new button will be created on the ribbon bar under a custom tab for the account.

For each view the linked definition, permissions, icons and other options can be defined:

This change will allow customers to display data in a format they choose and also manage data access. For example, only certain views from a setup sheet could be displayed for specific users of the account (for supplier for example). It will also a nice extension of the software with the ability to display any Column Item Definition from any definition.

Mileage and measurementâ

We worked on a first version of a comprehensive mileage and measurement module. This using assemblies and part item.

First of all, an overview of mileage for each part item and assemblies can be reviewed:

This mileage view is using our API to connect to the server to provide all information from the database. Once downloaded, all mileage for an event can be done locally.

The assembly view can be used as an inventory and to track measurement and mileage:

Using custom columns, the assembly inventory can be filtered. For example to only see used items organized by a measurement calculation. An expiry date filed was added to the assemblies as well:

Assembly measurement can be customizable at the inventory level:

And the measurement can be also defined as custom column definition to provide flexibility to display any calculation needed:

Strategy Overviewâ

A strategy overview control was added in the event part of the ribbon bar:

It allows to have an graphical overview of a specific session:

Color options and text options allows to configure it. For example, colored by driver and displaying the cambers for each run:

Column Item Definition improvementâ

We have changed the syncing of the column item definition editor to use the regular syncing framework. The old method used was limiting development of the software in this area, especially for sharing of information.

We have also redone the formatting options of the Column Item Definition Editor. It is now a lot more comprehensive and allows for better customization. For each style option (Background color, Foreground color, Font weight, Font style, Font size and Read only), we can now define either a constant value, an expression or link it to a custom property.

Definition UI Improvementâ

We added the option to add parameters in bulk using either Corner or Axle:

We also added the ability to delete multi parameters at once.

JSON Exportâ

Very similar to the way that we added in the past the ability to export data into excel or xml files, we have now added the ability to define a JSON export profile. A JSON file is a file that stores simple data structures and objects in JavaScript Object Notation (JSON) format, which is a standard data interchange format. JSON files are lightweight, text-based, human-readable, and can be edited using a text editor.

Session Typeâ

Session types are now stored in the database and accessible by the users under the admin section:

Website and APIâ

Due to the increase of API usage in 2022, we have worked on increasing the permissions granularity of the API. Previously, a user with an API key would have access to the entire admin and management part of an account. Also there was no way to restrict permission to certain parameters or definition.

Now the permission for the API can be defined at the parameter level if necessary. The permission can also define if a user can create, read, update or delete a parameter, or a full definition or entity.

The permission on the website were re-worked to take this change into account.

This new structure allows to differentiate between the worksheet rules and the data access rules.

What is coming next?â

Following the release of version 23 we will focus in the early stage of 2023 to release some of the new UI we have been developing using the database scheme:

Improvement to the Main Graphs

Improvement to mileage and measurement
