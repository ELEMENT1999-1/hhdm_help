---
url: https://help.hh-dm.com/common-controls/cid/
---

On this pageColumn Item Display

The column item display (CID) is a type of display that is used to show a list of items in the form of repeating columns of information, with each column representing one of the items in the list. It is most commonly used for displaying setups, but can also be used throughout the software for other displays.

The appearance of the CID is determined by the CID definition.

By default the CID is used in the:

setups

custom views can be created using CIDs

it may also be used in views defined in a plugin

This page will use the setups view to illustrate the functionality of the CID. The options shown here might not be visible in all views depending on the application.

View selection, frozen toggle and searchâ

The drop down lets the view be selected, and this will change what information is shown in the CID. The views are defined in the CID definition.

The search text box allows searching based on the label name.

The frozen checkbox allows the top rows of the CID to be frozen when scrolling vertically. The actual rows that get frozen are defined in the CID definition.

Controlâ

The top of each item in the CID has a control section. The control section will vary depending on the view, but this screenshot from the setup illustrates the most common options that are available.

IconDescription
Move the current item to the left
Make a copy of the current item and place to the right of the current item
Delete the current item
Make a copy of the current item and place at the end of the list
Move the current item to the right

Change highlightingâ

The changes in parameter values between two items are highlighted using a red highlighted cell. The highlighting background and foreground colours are defined in the CID definition.

Copying values between itemsâ

Parameter values can be copied to other items. Right-click on the value to be copied and a context menu will appear.

Copying and Pasting from the clipboard to comboboxesâ

Combobox values can be copied to and pasted from the clipboard. Right-click the combobox to copy from/paste to and a context menu will appear.

The "paste" option will not be visible if the clipboard is empty.

Keyboard navigationâ

The following keyboard shortcuts are available

KeyExplanation
TabMove to the next cell in the current item. If on the last cell of an item, then the first cell of the next item will be selected
EnterSame functionality as Tab but doesn't apply to text boxes on a line with a height greater than 1
Shift + TabMove to the previous cell in the current item. If on the first cell of an item, then the last cell of the previous item will be selected
â + TabMoves to the same cell in the next item
â + TabMoves to the same cell in the previous item

Pluginâ

To add the CID control to a plugin, use the following classes:

CID versionCID Control Class
CID v2HHDev.DataManagement.Client.Wpf.Controls.HHColumnItemDisplayV2.HHColumnItemDisplayV2
Configurable (backstage option)HHDev.DataManagement.Client.Wpf.Controls.HHColumnItemDisplay.HHColumnItemDisplayVersionSelector

warningDo not use the HHDev.DataManagement.Client.Wpf.Controls.HHColumnItemDisplay.HHColumnItemDisplay type for any new development
