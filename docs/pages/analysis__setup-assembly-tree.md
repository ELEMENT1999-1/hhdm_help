---
url: https://help.hh-dm.com/analysis/setup-assembly-tree/
---

Setup Assembly Tree

The setup assembly tree view is designed to visualize how a setup is built and aid in understanding mileage. It can be accessed from the Event tab of the ribbon bar:

Due to the potential for setups to be complex and contain many properties, math parameters, assemblies and parts, it is often difficult to understand what exact part items and assembly iterations are assigned to a given setup. Because part items and assembly iterations are the core entities through which mileage is tracked, it is useful to have a dedicated view isolating these items to aid in understanding mileage.

This view displays all part items and assembly iterations, including all the children of assembly iterations, of a selected setup:

There are several options to customize the columns displayed in the table. These cells can be customized using the math parameters specified. Each math parameter should be defined on the part item and/or assembly iteration definition and return a string hexadecimal colour code.

OptionDescriptionCustomization math parameter name
Show Current MileageDisplays the total computed mileage (in distance).CustomMileageBackground / CustomMileageForeground
Show Current HoursDisplays the total computed mileage (in hours).CustomHoursBackground / CustomHoursForeground
Show Mileage Since ServiceDisplays the mileage (in distance) since the most recent history item was recorded with ResetsMileage set to true (see working with history).CustomMileageSinceServiceBackground / CustomMileageSinceServiceForeground
Show Hours Since ServiceDisplays the mileage (in hours) since the most recent history item was recorded with ResetsMileage set to true (see working with history).CustomHoursSinceServiceBackground / CustomHoursSinceServiceForeground
Show Max MileageDisplays the maximum mileage (in distance) configured for that part item/assembly iteration. Configured using the SetupTreeMaxMileageForwarded math parameter.SetupTreeMaxMileageBackground / SetupTreeMaxMileageForeground
Show Max HoursDisplays the maximum mileage (in hours) configured for that part item/assembly iteration. Configured using the SetupTreeMaxMileageHoursForwarded math parameter.SetupTreeMaxHoursBackground / SetupTreeMaxHoursForeground
Show Mileage PercentageDisplays the percentage of life remaining for the part item/assembly iteration. Configured using the SetupTreeMileagePercentageForwarded math parameter.SetupTreeMileagePercentageBackground / SetupTreeMileagePercentageForeground
