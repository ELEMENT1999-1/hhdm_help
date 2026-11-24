---
url: https://help.hh-dm.com/configuration-entities/cgd/enums/
---

On this pageEnums

Grid Unit Typeâ

Auto: The size is determined by the size properties of the content object.

Pixel: The value is expressed as a pixel.

Star: The value is expressed as a weighted proportion of available space. If there is just one column/row the value doesn't matter, it will always take all the available space. When there is more than one column/row defined the size calculates as the portion of the value from the sum of all values.

Example: If there are two columns defined, one with a width of 1* and one defined with a width of 2*, the first column will take 33% (=1/(1+2)) of the available size and the other one 66% (=2/(1+2)).

Horizontal Alignmentâ

Center: An element aligned to the center of the layout slot for the parent element.

Left: An element aligned to the left of the layout slot for the parent element.

Right: An element aligned to the right of the layout slot for the parent element.

Stretch: An element stretched to fill the entire layout slot of the parent element.

Orientationâ

Vertical: The children of the control are orientated vertically

Horizontal: The children of the control are orientated horizontally

Scroll Bar Visibilityâ

Auto: A ScrollBar appears and the dimension of the ScrollViewer is applied to the content when the viewport cannot display all of the content. For a horizontal ScrollBar, the width of the content is set to the ViewportWidth of the ScrollViewer. For a vertical ScrollBar, the height of the content is set to the ViewportHeight of the ScrollViewer.

Disabled:
A ScrollBar does not appear even when the viewport cannot display all of the content. The dimension of the content is set to the corresponding dimension of the ScrollViewer parent. For a horizontal ScrollBar, the width of the content is set to the ViewportWidth of the ScrollViewer. For a vertical ScrollBar, the height of the content is set to the ViewportHeight of the ScrollViewer.

Hidden: A ScrollBar does not appear even when the viewport cannot display all of the content. The dimension of the ScrollViewer is not applied to the content.

Visible: A ScrollBar always appears. The dimension of the ScrollViewer is applied to the content. For a horizontal ScrollBar, the width of the content is set to the ViewportWidth of the ScrollViewer. For a vertical ScrollBar, the height of the content is set to the ViewportHeight of the ScrollViewer.

Stretchâ

None: The content is resized to fill the destination dimensions. The aspect ratio is not preserved.

Fill: The content preserves its original size.

Uniform: The content is resized to fit in the destination dimensions while it preserves its native aspect ratio.

UniformToFill: The content is resized to fill the destination dimensions while it preserves its native aspect ratio. If the aspect ratio of the destination rectangle differs from the source, the source content is clipped to fit in the destination dimensions.

Text Alignmentâ

Center: Text is centered.

Justify: Text is justified.

Left: Default. Text is aligned to the left.

Right: Text is aligned to the right.

Text Wrappingâ

NoWrap: No line wrapping is performed.

Wrap: Line-breaking occurs if the line overflows beyond the available block width, even if the standard line breaking algorithm cannot determine any line break opportunity, as in the case of a very long word constrained in a fixed-width container with no scrolling allowed.

WrapWithOverflow: Line-breaking occurs if the line overflows beyond the available block width. However, a line may overflow beyond the block width if the line breaking algorithm cannot determine a line break opportunity, as in the case of a very long word constrained in a fixed-width container with no scrolling allowed.

Vertical Alignmentâ

Bottom: The child element is aligned to the bottom of the parent's layout slot.

Center: The child element is aligned to the center of the parent's layout slot.

Stretch: The child element stretches to fill the parent's layout slot.

Top: The child element is aligned to the top of the parent's layout slot.
