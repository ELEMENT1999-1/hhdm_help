---
url: https://help.hh-dm.com/configuration-entities/cid/
---

On this pageCID Definition

The structure and appearance of the column item display (CID) can be configured using the CID definition editor. For an explanation of the CID itself please refer to the CID explanation in the common controls section.

dangerThere are limitations in the conflict resolution when editing the CID definition. Therefore, if two users are making changes at the same time, work can get overwritten for one of the users depending on the order that they press save. Therefore it is recommended that only one person is editing a definition at a time.

The CID definition editor can be accessed from the Admin Ribbon Bar

Each CID definition is linked to a definition. The first thing to do when creating or editing a CID definition is to select the definition from the combobox on the ribbon bar:

A definition can have multiple CID definitions, but in most cases a single CID definition is only needed as there are other tools to make sub views.

tipA CID definition can be automatically built using the "Initialize Defaults" button in the ribbon bar. This creates a default CID using the parameters, part parameters, assembly parameters and math parameters on the selected Custom property definition. This can be useful when dealing with part items, assembly iterations, or their measurement definitions.

Once a definition and CID definition are selected the CID designer view will be populated.

There are three areas on the screen:

on the left is the designer area where the structure of the definition is actually edited

in the center there is the toolbox where items can be dragged from to the designer area to add to the designer, and also some areas to edit the configuration data for each element

on the right is the preview area where an example of the current definition is shown

Unlike other parts of the software the user must click Save after making changes to the CID to commit them to the database. This is done to make it easier to experiment without impacting other users. When Save is clicked and the changes are committed to the database the following things will happen:

the preview will be updated

any views that are open that use the current CID definition will be updated with the latest changes

the changes will be sent to the server and broadcast to all other users on the account, who will also have their open views updated with the latest changes

While experimenting with the designer it's sufficient to press the Refresh Preview button, which just refreshes the the preview without saving the changes into the database. Like this it can be avoided to update for example the setup CID that is used in the Setups View, which other users might be working with. But in this case the users needs to remember to save the CID once the design is done, otherwise the changes will be lost.

infoThe values shown in the CID in the preview area are populated based on the values in the Example Value of the definition parameters

Structureâ

The CID definition has four different element types:

Sections

Blocks

Lines

Cells

Elements can be created primarily by dragging from the toolboxes and dropping on to the designer area:

Elements can only be added to valid parents:

a section can only be added to the root of the designer

a block can only be added to a section

a line can only be added to a block

a cell can only be added to a line

Elements can be reordered by dragging them to a different location in the designer.

tipHolding the control key while you drag an existing element will create a copy of the element in the new location rather than moving the original element

Sectionâ

Selecting a section in the designer allows the properties to be set.

Blockâ

Selecting a block in the designer allows the properties to be set.

The block-level is where the contents of the views are defined.

Lineâ

Selecting a line in the designer allows the properties to be set:

The height of the line can affect the behaviour of certain controls. This is highlighted where applicable for in the cell types section.

CID configurationâ

The configuration panel is used to set some high level settings for the CID definition.

Row widthâ

Row heightâ

Label widthâ

Horizontal spacingâ

Viewâ

Views can be added and removed in the window opened by clicking the ... button. The views can be reordered by dragging and dropping the rows in the table.

Last frozen blockâ

The CID allows for freezing a selected portion of the top of the display. The freezing is done based on the block, and the last frozen block must be selected, meaning that when the CID is frozen the selected block and all blocks above it will be frozen.

Layout directionâ

By default the items in the CID are organized left to right based on the underlying collection of items displayed. For example the newest setup would be on the far right. This can be reversed using the layout direction dropdown.

Change background/foregroundâ

By default the CID will highlight changes between values with a red background and black foreground. These colours can be configured here.

Cell propertiesâ

The properties for the CID cells are defined in the panel below the CID configuration. The most common properties that are reused among the different cell types will be explained in this section and the following section will explain all available CID cell types.

tipClicking a cell in the preview area will select the cell in the definition

Format optionsâ

Selecting the ... button for the format options opens the format options editor window. Please refer to the format options documentation for an explanation on how the format options work.

Style optionsâ

Selecting the ... button for the style options opens the style editor window. Please refer to the style settings documentation for an explanation on how the style settings work.

Show tooltipâ

If this option is selected then a tooltip with the value of the cell will be shown when the mouse is hovered over the cell. This is useful if the content of the cell may be bigger than the space available to the cell.

Proportional widthâ

This setting allows the relative width of all cells in a line to be defined. This value is a weighting and is normalized when the cells in the line are drawn. For example, with two cells in a line and both having a proportional width value of 1 (the default value), they will be drawn with equal widths.

If the cell on the right is now given a proportional width of 2 then it will be twice the size compared the cell on the left.

Filter Modeâ

The Filter Mode allows filtering of the items in the dropdown of Assembly Iteration and Named Assembly Selectors.

All: Displays all items of the same assembly type

Event: Displays only items which are associated to the event that the flat model that contains the assembly parameter is associated to. For example the event in which a setup is created.

Event/Car: Displays only items which are associated to the event and car that the flat model that contains the assembly parameter is associated to. For example the car in an event in which a setup is created.

Car: Displays only items which are associated to the car that the flat model that contains the assembly parameter is associated to. For example the car in which a setup is created.

Championship: Displays only items which are associated to the championship that the flat model that contains the assembly parameter is associated to. For example the championship that contains the event in which a setup is created.

Cell typesâ

Many cell types require setting one or more paths. Those paths will be explained more in detail in the respective section, but there is also a common section about Expression Binding.

Input Cellsâ

Assembly Iteration Selectorâ

Allows selection of an assembly iteration and binds to an assembly custom property.

Assembly Iteration

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Display Parameter - Defines which parameter of the Assembly Iteration is shown in the dropdown. If not defined, it defaults to 'DisplayName'.

Named Assembly Filter - When enabled only Assembly Iterations of the same Named Assembly than the selected Assembly Iteration are shown in the dropdown. Otherwise all Assembly Iterations of the same Assembly Type are shown.

Filter Mode - see Filter Mode

Basic Comboboxâ

Allows a user to select an option from a list that can be defined by the settings below. An example on how to create a dropdown with the sessions of an event for a setup is shown in brackets. This example assumes a custom property of type Text with the name SelectedSession to be existing in the Setup definition.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Items Source Binding Path - Source of the list that is displayed in the combobox. (Example: FlatModel.ContextSelection.SelectedEvent.Sessions)

Selected Value Binding Path - Path to the parameter that should save the selected value. (Example: FlatModel.Strings.SelectedSession)

Display Member Path - Path to the parameter that is shown in the combobox. It needs to be a parameter linked to the Items Source Binding Path. (Example: Name)

Value Member Path - Path to the parameter that is saved in the Selected Value Binding Path. It's recommended to pick a parameter that contains unique values, to avoid conflicts. For example it's preferred to use Id vs. Strings.Name, if there is a chance that there are multiple items in the items source that could have the same value for Strings.Name. (Example: Id)

Basic Textboxâ

Bind to a string defined in a plugin's flat model.

noteWhen using the Basic Textbox in Expression Binding mode, it gets basically turned into a Flat Model Textbox. Which means the scope starts in the selected flat model.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Text Binding Path - Path to the text value in the bound data source.

Conditional Math Parameter Textboxâ

Binds to a math parameter (Linked Math Parameter) and a double custom property (Linked Manual Entry Parameter). If the Linked Manual Entry Parameter has a null value, the Linked Math Parameter is shown.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Linked Math Parameter - A math parameter on the flat model.

Linked Manual Entry Parameter - If the user enters a value in the textbox, ignore the Linked Math Parameter and instead bind to this.

Conditional Textboxâ

Binds to a property defined in a plugin's flat model (Linked Calculated Parameter) and a double property (Linked Manual Entry Parameter) . If the Manual Entry Parameter has a null value, the Calculated Parameter is shown.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Linked Calculated Parameter - A property on the flat model which is typically updated by a calculation.

Linked Manual Entry Parameter - If the user enters a value in the textbox, the Conditional Textbox will ignore the Linked Calculated Parameter and instead bind to this.

Flat Model Textboxâ

Textbox that binds to a property defined in a plugin's flat model.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Text Binding Path - Path to the text value in the bound data source.

Named Assembly Selectorâ

Allows selection of a named assembly iteration.

Assembly Iteration

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Display Parameter - Defines which parameter of the Named Assembly is shown in the dropdown. If not defined, it defaults to 'DisplayName'.

Assembly Iteration Filter - When enabled after selecting the Named Assembly only Assembly Iterations that match the Assembly Iter. Filter Mode are taken into account to set the Assembly Iteration parameter. Otherwise all Assembly Iterations are taken into account.

Filter Mode - see Filter Mode

Assembly Iter. Filter Mode - Assembly Iter. Filter Mode - works in conjunction with the Assembly Iteration Filter

Parameter Checkboxâ

Checkbox that binds to a boolean custom property.

Linked Parameter

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Is Inverted - If enabled the result of the bound parameter is inverted.

True Text - Text that is shown when the bound value is true.

False Text - Text that is shown when the bound value is false.

Parameter Date Pickerâ

Date picker that binds to a DateTime custom property.

Linked Parameter

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Parameter Radio Buttonâ

Radio button that binds to a double custom property. Values start on the left from zero to # Radio Buttons - 1 on the right. Note that if a background colour is defined in the StyleOptions and also the GradientStart-/EndColour is defined, the *GradientStart-/EndColour will take precedence.

Style Options - supported options: Background Colour/Foreground Colour/Read Only. See also Style options

Linked Parameter

Amount Of Radio Buttons - Number of radio buttons that are displayed.

Gradient Start Colour - Colour that is shown at the start of the range. Takes precedence over the StyleOptions.

Gradient End Colour - Colour that is shown at the end of the range. Takes precedence over the StyleOptions.

Parameter Textboxâ

Binds to a double or string custom property.

Linked Parameter

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Part Item Selectorâ

Allows selection of a part item.

Part

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Display Parameter - Defines which parameter of the Part Item is shown in the dropdown. If not defined, it defaults to 'DisplayName'.

Show All Part Items - When enabled show all Part Items of all Parts of the Part Category that the parent Part belongs to. Otherwise show only the Part Items of the parent Part.

Part Selectorâ

Allows selection of a part and binds to a part custom property.

Part

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Display Parameter - Defines which parameter of the Part is shown in the dropdown. If not defined, it defaults to 'DisplayName'.

Display Cellsâ

Basic Labelâ

Displays a text.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Text - Text that is displayed.

Math Parameter Displayâ

Displays the value of a math parameter.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Linked Math Parameter

Part Item Math Parameter Displayâ

Displays the result from a part item's math parameter.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Linked Part

Linked Part Item Math Parameter

Display Parameter - Obsolete

Part Item Parameter Displayâ

Displays the value of a part item's custom property.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Linked Part

Linked Part Item Parameter

Display Parameter - Obsolete

Part Math Parameter Displayâ

Displays the result from a part math parameter.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Linked Part Parameter

Linked Part Math Parameter

Display Parameter - Obsolete

Part Parameter Displayâ

Displays the value of a part's custom property.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Linked Parameter For Change Highlighting - Defines which parameter is used to for the Change highlighting

Show Tooltip - see Show Tooltip

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size. See also Style options

Linked Part Parameter

Linked Sub Part Parameter

Display Parameter - Obsolete

Button Cellsâ

Action Buttonâ

Executes the custom actions linked.

Linked Actions - Linked actions to execute.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Excel Export Buttonâ

Button used to export the flat model based the specified excel export profile. Actions can be specified that will execute when the export is complete.

Linked Actions - Linked actions to execute.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Scope - Can be used to define the scope of the export. If no scope is defined the current flat model is used.

Excel Export Profile Name - Name of the profile that is used for the export.

Use Custom Path - If true, then a pop-up will always appear asking the user to select the save location. If the profile defines a file name template that has only a file name then the file name will come from the template and the default directory will be the last used directory. If the file name template defines a path then this path will be the default directory. If false, then if the profile defines a file name template with a path this will be used without any user input. If the profile doesn't define a path then the user will see a pop up asking them to define the file path.

Print Errors - If true, errors that occur during export get written to the output file. If false, the export writes blank values in place of any errors.

File Dialog Buttonâ

Opens a file/folder browser dialog and saves the selected path(s) as a semi/colon delimited string in the defined linked parameter

Linked Parameter

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Is Folder Browser - defines if the opened dialog supports in selecting file path(s) or a folder path.

Extension Filter - This parameter takes only effect if Is Folder Browser is unchecked. Example for text files and all files: "txt files (*.txt)|*.txt|All files (*.*)|*.*". See also here

Flat Model Buttonâ

Button that binds to a command on the flat model (usually defined in a plugin).

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Command Name - Name of the command that is invoked when clicking the button.

Json Export Buttonâ

Button used to export the flat model based the specified json export profile. Actions can be specified that will execute when the export is complete.

Linked Actions - Linked actions to execute.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Scope - Can be used to define the scope of the export. If no scope is defined the current flat model is used.

Json Export Profile Name - Name of the profile that is used for the export.

Use Custom Path - If true, then a pop-up will always appear asking the user to select the save location. If the profile defines a file name template that has only a file name then the file name will come from the template and the default directory will be the last used directory. If the file name template defines a path then this path will be the default directory. If false, then if the profile defines a file name template with a path this will be used without any user input. If the profile doesn't define a path then the user will see a pop up asking them to define the file path.

Print Errors - If true, errors that occur during export get written to the output file. If false, the export writes blank values in place of any errors.

Reprocess Canopy Simulation Buttonâ

Used to reprocess the results of a canopy simulation, given an input of the study ID.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Canopy Profile Id - The ID of the Canopy profile to use when processing the results.

Parameter Name For Study Id - The parameter where the study ID is stored.

Trigger Canopy Simulation Buttonâ

Used to trigger a canopy simulation.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Canopy Profile Id - The ID of the Canopy profile to trigger.

Xml Export Buttonâ

Button used to export the flat model based the specified xml export profile. Actions can be specified that will execute when the export is complete.

Linked Actions - Linked actions to execute.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Scope - Can be used to define the scope of the export. If no scope is defined the current flat model is used.

Xml Export Profile Name - Name of the profile that is used for the export.

Use Custom Path - If true, then a pop-up will always appear asking the user to select the save location. If the profile defines a file name template that has only a file name then the file name will come from the template and the default directory will be the last used directory. If the file name template defines a path then this path will be the default directory. If false, then if the profile defines a file name template with a path this will be used without any user input. If the profile doesn't define a path then the user will see a pop up asking them to define the file path.

Print Errors - If true, errors that occur during export get written to the output file. If false, the export writes blank values in place of any errors.

Attached File Cellsâ

Multiple Attached File Displayâ

Displays files that are attached to this flat model.

Horizontal Content Alignment - Determines how the content of the control is aligned horizontally.

Vertical Content Alignment - Determines how the content of the control is aligned vertically.

Text - Text that is shown in the button.

Text Binding Path - Binding path to define the text that is shown in the button. When Text and Text Binding Path are defined, Text wins.

Format Options - see Format options

Style Options - supported options: Background Colour/Foreground Colour/Font Weight/Font Style/Font Size/Read Only. See also Style options

Attached Files Grouping Name - Sets the name of the Attached File Parameter. If the name is not set all attached files will be shown, otherwise only the attached file that belongs to that parameter.

Auto Download Mode - Defines if an added attached file will be automatically downloaded by all users.

Delete After Upload Mode - Defines if an added attached file will be automatically deleted from the local computer after it is finished uploading.

Single Attached File Displayâ

Displays a file that is attached to this flat model.

Style Options - supported options: Background Colour/Foreground Colour/Read Only. See also Style options

Linked Attached File Name - The Attached File Parameter to bind to. Only Attached File Parameters that have the setting Allow Multiple Files disabled are allowed.

Binding Path - Path to the flat model. This is only needed if the attached file, that should be displayed, is not defined in the displayed flat model.

Auto Download Mode - Defines if an added attached file will be automatically downloaded by all users.

Delete After Upload Mode - Defines if an added attached file will be automatically deleted from the local computer after it is finished uploading.
