---
url: https://help.hh-dm.com/account-management-website/permissions/
---

On this pagePermissions

Restricted AccessThis section of the website is only accessible by Account Admin users

Permissions control access for User Groups to specific parts of the data and various displays within the software. This access is managed through rules, which are organized into profiles.

Account admins can access the permissions page from the tree:

The page displays different types of profiles on each tab. Create a new Group or Profile using the add button in the bottom right.

Groupsâ

Groups allow you to assign sets of users to certain software options and permission profiles. Groups are the primary control for software permissions.

noteAccess changes take effect immediately between the website and the software with an internet connection. No software restart is required to add or revoke access.

Users in Groupâ

Select users for the Group:

noteA user can be in multiple Groups. Their access will always be controlled by the highest level rules across all their groups.
Example: If a user has access to the full championship in one group and only to one event in another group, they will have access to the full championship.

Permission Profiles in Groupâ

Select permission profiles for the Group:

Permission Profilesâ

Permission profiles combine permissions for:

Data Access Rule Profiles

HH DM Client Permission Profiles

API Rule Profiles

Data Access Rule Profilesâ

Add a new rule to a profile using the Add New Data Rule Button:

Rule types include:

All - Full access

Project - Currently not in use

Championship - Full access to a specific Championship (all events / all cars)

Event - Full access to a specific Event (all cars from the event)

Car - Full access to a specific Car (all championship / all event)

Event/Car - Access to a specific Event and a specific Car

Example: Creating a rule for championship access

When adding a data rule, provide a name, short description, and rule type. Here's how to give a group access to a specific championship:

In this example:

Rule Name: "Access to 2023 F1 Championship"

Description: Brief explanation of the rule's purpose

Rule Type: Championship (granting access to all events and cars within this championship)

Championship: Selection of the specific championship (in this case, 2023 F1)

Multiple data rules can be combined using AND or OR operators:

tip
Use OR when you want the user to have access to all Data Rules.
Example: Rule1 OR Rule2 - User gets access if either Rule1 or Rule2 (or both) are true.

Use AND when you want the user to only have access to data that intersects all the data rules.
Example: Rule1 AND Rule2 - User only gets access if both Rule1 and Rule2 are true.

HH DM Client Permission Profilesâ

Worksheet rules control access to different software worksheets. Permission levels are:

Inherit - Rule inherited from the parent node.

None - No access to the worksheet.

Read - View data and use export functions, but can't modify data.

Read/Write - Full access to the data.

Inherited permissions appear in italics with the color of the permission it inherits from:

In this example, all permissions are inherited (in italics) and set to Read/Write (green).

Changing a specific node's permission makes it bold, indicating it no longer inherits from the parent:

Here, the "Setups" permission has been changed to None (red and bold), while others remain inherited.

The permissions tree is divided into:

Admin

Management

Championship

Event

Users without access to admin or management sections won't see those ribbon bars:

In this example, the user doesn't have admin or management access, so those options are not visible in the software interface.

tipThe worksheet rules can be a combination of all types of permissions for each different worksheet. Here is an example that could be used for a tyre technician:

In this example:

The user has read access (orange) by default for most worksheets.

Full access (green) is granted to tyre-related worksheets (Tyres, Tyre Sets, Tyre Allocations).

No access (red) is given to the setup worksheet.
This configuration allows the tyre technician to view most data, fully manage tyre-related information, but prevents access to sensitive setup data.

API Rule Profilesâ

API rules allow granular control over data accessible and modifiable via the API.

For each definition, a rule can allow Create, Read, Update, and Delete actions. Users can have access to all parameters or only selected ones.

Example: Rule allowing read-only access to just the 4 camber values.

In this example:

The rule is set for the "Car Setup" definition.

Only "Read" permission is granted (the only checked box).

Instead of "All Parameters," specific parameters are selected.

The four camber parameters (FL, FR, RL, RR) are the only ones selected.

This rule would allow an API user to read (but not modify) only the camber data for car setups, restricting access to all other setup parameters.
