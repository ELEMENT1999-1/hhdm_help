---
url: https://help.hh-dm.com/common-controls/style-settings/
---

On this pageStyle Settings

The style settings are used in various configuration entities to configure styling rules for display elements. The style settings are used in:

CID Definition

CGD Definition

Custom Columns

The window changes depending on the control and what options are available.

The style type combobox has the following options:

Background Colour

Foreground Colour

Font Weight

Font Style

Font Size

Read Only

Then for each selected style type, the item mode can be selected:

None

Constant

Expression

Binding path

Custom property

Theme Resource (for Background/Foreground Colour only)

This lets each of these attributes be controlled for each cell and have different methods to set each attribute. For example, the background of the cell could be set to a constant colour, and then the font could be set as italic if the parameter value is over a certain threshold using an expression.

Depending on the style type, the return type of the expression, binding path or custom property must be correct:

Style typeReturn type
Background ColourString, must be formatted as an HTML colour, e.g. #FFFFFF
Foreground ColourString, must be formatted as an HTML colour, e.g. #000000
Font WeightString, must be one of Thin, Normal, Bold
Font StyleString, must be one of Italic, Normal, Oblique
Font SizeDouble
Read OnlyBoolean

Noneâ

No styling will be applied.

Constantâ

Allows a constant value to be selected.

Expressionâ

Allows a math expression to be written that must return the correct type.

Binding Pathâ

Allows a WPF binding path to be written to bind to a parameter that cannot be accessed using an expression.

Custom Propertyâ

Allows a custom property on the current definition to be selected. Like the expression option, this parameter must be the correct type based on the selected style type.

Theme Resourceâ

Allows to pick a colour from the currently applied theme.
