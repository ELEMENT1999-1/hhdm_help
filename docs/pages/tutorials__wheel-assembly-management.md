---
url: https://help.hh-dm.com/tutorials/wheel-assembly-management/
---

On this pageUse tyre set assembly to manage wheels

This article explains how to use an assembly for wheels, rims, and TPMS sensors to calculate rim mileage.

noteThis example demonstrates front rim management, but you can duplicate the same workflow for rear wheels.

Assembly definitionâ

Define the assembly structure based on the vehicle's specific wheel management requirements. This example includes rims and sensors, but additional components (such as wheel nuts) can also be added.

Part categoriesâ

Create one part category for:

Rims

TPMS sensors

Add parts (can be one part per specification) and part items.

Wheel assemblyâ

Create a WheelFront assembly.

Add part parameters to the assembly iteration definition.

Add an assembly parameter to the tyre set definition.

Create the wheel named assembly in the named assembly inventory along with its iterations.

tipMaintain a consistent wheel name while creating multiple iterations for TPMS sensors changes by defining several named assemblies.

Add named assembly selectors and assembly iteration selectors (optional) to the tyre set custom column profile.

Display the linked rims and TPMS sensors directly in the view.

Select wheels and follow mileageâ

Rims and TPMS sensors can be added to the assembly iteration.
Wheels can be selected in the tyre set view.

Enable Include tyre sets in mileage account optionâ

Select tyre set in the run sheetâ

Run mileage and check item mileage viewâ

Wheels, rims, and sensors mileage can be found on the item mileage view.
