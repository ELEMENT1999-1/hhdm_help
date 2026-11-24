---
url: https://help.hh-dm.com/parts-assemblies-tyres/assemblies/
---

On this pageAssemblies

There are three levels in the concept of assemblies in HH Data Management

Assembly Type: represents the type of the assembly, for example an assembly type might be brake set or gearbox.

Named Assembly: represents a grouping of assembly iterations. In the brake set example, if a team builds three sets of brakes per weekend and names them Set 1, Set 2 and Set 3 then these could be represented using named assemblies.

Assembly Iteration: represents a physical, assembled assembly. In the brake set example, the assembly iteration would have the specific calipers, pads, and discs used to create the assembly iteration that was used on the car. An assembly iteration can be built using other assembly iterations or part items. Each time the part items or sub-assemblies in an assembly are changed a new iteration needs to be created. This allows a complete history of the assembly to be kept which is important for calculating mileages on past events.

Each level of the assembly hierarchy has a definition and therefore can be customized. There is a single assembly type definition for each account that is linked to all assembly types. Each time a new assembly type is created a new definition is created for the assembly name and assembly iteration. This allows each assembly type to have a custom definition. This is necessary because for example a brake set assembly iteration will need to store different information and have a different structure than a gearbox assembly iteration.

Assembly types viewâ

Assembly types are managed using the Assembly Type view that can be access from the Admin tab of the ribbon bar:

Assembly inventory viewsâ

Assemblies are managed by default using the two different inventory views:

Named assembly inventory

Assembly iteration inventory

Both can be accessed from the Management tab of the ribbon bar:

The general usage of the inventory view is explained in the common controls section.

Named assembly inventoryâ

The named assembly inventory view is used for managing the named assemblies. The iterations for each named assembly are shown in the child table.

Assembly iteration viewâ

The assembly iteration inventory view is used for managing the assembly iterations. The measurements and history for each assembly iteration are shown in the child table.

The columns in the main table of the assembly inventory views are automatically created based on the parameters in the named assembly and assembly iteration definitions for the selected assembly type. Likewise, the columns in the measurements table and history table in the details view are created automatically based on the parameters defined for the measurements and history items for the currently selected assembly type. Measurements and History are discussed in the next section. However, in all cases the columns can be customized by the user by creating a custom column profile.

Display optionsâ

Two options for customizing the display are available in the ribbon bar:

Show expired: Defines whether to show assembly iterations with an "ExpiryDate" parameter that is in the past, calculated using the computer's current time when the view was loaded (or when this option was changed).

Use CID: If enabled, the view is built using the "Default" CID definition for the selected assembly iteration definition (or a virtual automatically generated default CID if none exists). Shown below is an example of the default virtual CID:
