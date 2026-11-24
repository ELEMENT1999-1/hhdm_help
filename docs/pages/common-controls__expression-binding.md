---
url: https://help.hh-dm.com/common-controls/expression-binding/
---

Expression Binding (experimental)

HH Data Management allows the user to customize the software in various ways. For example with the Column Item Display the user can define its own controls to visualize data and with the Custom Columns there is a way to customize the appearance of tables. Both options need to be configured in the in the Configuration section of the Admin tab in the ribbon bar. The Cell Types in the Column Item Display and the Column Definitions in the Custom Columns have something in common. They often have one or more parameters that need to get defined by a path. For Column Definitions that is often the "Field Name" or "Items Source Binding Path" and for the editors in the Cell Types it is often the "Text Binding Path" or "Items Source Binding Path". The default way of defining those fields was by setting the path to a "binding path" that the backend of HH Data Management then could evaluate. This way of configuring fields is now called the "legacy" mode. The newer way of defining those fields is called the "expression binding" mode and can be enabled by the small icon next to the input box:

Legacy Mode:

Expression Binding Mode:

The expression binding mode has the same support during typing as other Math Expressions and also notifies users if the target of the path points to a "wrong target". For example in a Checkbox Column the target should be a parameter of type "Boolean". The following examples illustrates the difference between legacy and expression binding mode when configuring a column wrongly. The field name is set to a parameter called "RideHeightFL", which is defined as Doubles parameter in the Setup Definition.

Legacy Mode:

Expression Binding Mode:
