---
url: https://help.hh-dm.com/configuration-entities/change-formatters/
---

On this pageChange Formatters

The change formatters feature allows for the customization of how the list of changes between two entities is constructed by the changes calculation. By default this is only used in the software to show the setup changes between runs in the run sheet. However, the CalculateChanges() math function can be used to calculate changes between any two entities.

As an example of why the change formatters are useful consider the default representation of the setup changes in the run sheet:

After applying some formatting, this is the final representation of the same changes:

The change formatters view can be accessed from the admin tab of the ribbon bar:

The change formatters view will open:

There are five aspects to the change formatters:

Profile

Parameters To Ignore

Changes Order

Groups

Mapped Groups

Profileâ

The change formatter profile is the container for all parts of the change formatter.

The change formatter profile defines the definition that the change formatter is linked to. This is how the change formatters are linked to different parts of the software. For example, if an account has two different setup definitions, then a change formatter can be created for each definition and then when the setup changes are shown in the run sheet, the format of these changes would depend on which setup definition is assigned to the car.

The Use Custom Order checkbox can be used to disable the changes order feature for the current profile.

Parameter Matchingâ

The parameters to ignore, changes order, groups and mapped groups all reference parameters by name. The name of each item is matched against the parameters of the linked definition using either:

the display name of the parameter, for example Setup Double 1

the name of the parameter, for example SetupDouble1

If the same text matches the display name of one parameter and the name of a different parameter, the display name match is used.

For part parameters, the change of the fitted part item is reported separately from the change of the part itself. To reference the part item change, append -PartItem to the display name of the parameter, for example Setup Part 1-PartItem.

Parameters To Ignoreâ

The parameters to ignore feature is used to prevent parameters from showing up in the change calculation result.

Changes Orderâ

The changes order allows the order that the changes are shown to be changed. By default changes are shown alphabetically, but it is likely more useful to show the changes based on some contextual ordering.

Groupsâ

The grouping option allows parameters to be grouped together and shown on a single line. All items in a group will be drawn together with the specified delimiter between them. A group is shown when at least one of its parameters changed, and the values of all parameters in the group are included, including those that did not change. Part, part item and assembly parameters are shown using the display name of the fitted item. For example:

Mapped Groupsâ

Mapped groups allow a group of parameters to be hidden from the list of changes and substituted with a different parameter. As an example, rather than showing four ride height values in the setup changes, it could be replaced with a single math parameter called Rake, where Rake is a math parameter on the definition.
