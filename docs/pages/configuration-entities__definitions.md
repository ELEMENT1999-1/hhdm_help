---
url: https://help.hh-dm.com/configuration-entities/definitions/
---

On this pageDefinitions

Definitions form a fundamental part of the customization functionality of HH Data Management. All entities throughout the software can be customized using definitions. Definitions can contain simple scalar parameters or more complex parameters such as parts and assemblies. This page will introduce the definitions view in the software and explain the various parameter types that can be created.

Definitions viewâ

The definitions view is accessed from the Admin tab on the ribbon bar:

The definitions view will open:

The buttons on the ribbon bar can be used to control the view to add/delete definitions and parameters. The current definition can be selected from the combobox.

Adding and deleting definitionsâ

A new definition can be added by clicking the add button on the ribbon bar. A new window will pop up where the name and type of the new definition can be specified. The types of definitions that can be created is limited to:

setup definitions

collection item definitions
Other types of definitions are limited to only one per account and are created automatically when the account is created.

To delete a definition select it from the drop down and press the delete button.

Working with parametersâ

Definitions can have different types of parameters. The different types of parameters for the definition are shown on different tabs in the view

Parameters can be added, deleted, copied and edited using the buttons on the ribbon bar.

The properties that can be defined vary depending on the parameter type. There are some standard properties the apply to most or all parameter types:

Name: all parameters must have a name. This is used to identify the parameter throughout the software (the user interface, math expressions, exports, API and plugins). The name must be contain only alphanumerical or underscore characters. The name must start with a letter or an underscore. Spaces are not allowed in the name. All names across a single definition must be unique (i.e. there cannot be a part parameter and an attached file parameter with the same name).

Display name: (not available on collection parameters) all parameters have the ability to define a display name. This is used mainly when referencing the parameter in the user interface, for example when showing setup changes, the parameter is referred to by the display name rather than the name. There are no restrictions on characters in the display name, so a more readable display name can be defined.

Copy to new: (available for parameters, part parameters, assembly parameters and collection parameters) if this is set to true then each time you duplicate an entity, the current value of this parameter will be copied to the new entity. For example in the setup if this is set to true for the FLCamber and a setup is duplicated then the new setup will have the same value for the FLCamber.

Parametersâ

Basic parameters can be of the following type:

Double (i.e. numerical)

Text

Boolean (i.e. true or false)

DateTime

All parameters have the following options:

Default Value: this allows you to specify the default value that a parameter will have any time a new entity is created

Example Value: this allows you to specify a value that a parameter will have when working in the CID designer. This makes the designer look more realistic while you are working

Double type parameters have some additional options compared to the other types:

Dimension/Unit: this allows the user to define a unit to associate with the parameter. In math expressions unit conversions can be performed if needed.

Precision: the precision is used for rounding of numerical values. Numerical values in HH Data Management are stored as floating point numbers which have some difficulty representing all numbers perfectly. The default value of 8 is sufficient for most use cases but can be changed if needed.

Tolerance: the tolerance is used for change detection. For example in the setup sheet changes can be highlighted, but in some cases you might want to only have a change be detected over a certain threshold. If a change is less than this threshold then no change will be detected.

When adding parameters to a definition the pop-up window contains of two parts. The left part is optional and not always visible, and the right part is mandatory and lets the user configure the new parameter through the previously mentioned settings. The left part can be made visible when there are multiple definitions of the same definition type. For example like for setups or parts. It helps the user to add the same parameter to all selected definitions at the same time. This is particularly interesting for mileage related entities like Part Items, Assembly Iterations, Measurements etc.

Part Parametersâ

Part parameters allow you to reference parts and part items from an entity. What gets stored in the database is a reference to the selected part and optionally part item. Each part parameter must be linked to a specific part category. For a more detailed explanation on parts please refer to the parts documentation.

When a part parameter is created an additional parameter will become available in the software which is the name of the part parameter with PartItem added to it. The standard parameter will store the selected part and the PartItem parameter will store the selected part item if there is one. For example:

user creates a part parameter on the setup definition called FrontSpring

an additional parameter will be available called FrontSpringPartItem

Depending on the usage of the part parameter it is possible to select only a part, or both a part and part item.

Like with parameters, part parameters allow you to select a default part and default part item that will automatically be assigned whenever a new entity is created.

Assembly Parametersâ

Assembly parameters are a similar concept to part parameters. They are simpler as there is no additional "AssemblyItem" parameter that gets added. What gets stored in the database is a reference to the selected assembly iteration. Each assembly parameter must be linked to a specific assembly type. For a more detailed explanation on assemblies please refer to the assembly documentation.

When adding an assembly parameter you are given the option to select the assembly association mode. This defines which assembly iterations will show up in any drop downs that are used to select the referenced assembly iteration (in all cases only assemblies from the relevant assembly type will be shown). The assembly association mode has five possible values:

All - all assembly iterations will be shown

Event - only assembly iterations assigned to the current event will be shown

EventCar - only assembly iterations assigned to the current event and car will be shown

Car - only assembly iterations assigned to the current car will be shown

Championship - only assembly iterations assigned to the current championship will be shown

This feature can be used in association with the assembly inventory to restrict certain assembly iterations to only be available to certain cars, at certain events or in certain championships.

Math Parametersâ

Math parameters allow you to write math expressions that will be evaluated and kept up to date while the software is running.

When creating a math parameter the input properties are similar to for a standard parameter. If the return type is double then the dimension and result and display units can be set. The result unit defines the expected output of the expression that is defined, and the display unit is the unit that the result will be displayed in the user interface of the software (or returned from the API).

Math parameters can be enabled and disabled using the checkbox in the table view. If a math channel is disabled, any math expressions that reference the disabled expression will not evaluate.

An explanation of how to construct expressions for math parameters can be found in the math expressions reference.

Like when adding a parameter, the pop-up window optionally shows the left table, which lets the user add a math parameter to multiple definitions at the same time. This table can also be visible when editing an existing math parameter. The difference is that when the adding a math parameter it shows all definitions of the same entity type, but when editing an existing math parameter, it only shows the definitions of the same entity type that have a math parameter with the same name.

Collection Parametersâ

Collection parameters are used to store a list of objects with the associated entity beyond what is available by default in the software. For example, a run sheet has a list of laps as a collection, but this is already defined by default in the software. An example of a custom collection might be recording the measurements taken during each visit to scrutineering during an event. In this case a collection could be added to the event.

When creating a collection you must first create the definition for the items that will be in the collection. This is done by adding a new definition and selecting the relevant definition type based on the type of definition you are adding the collection to. For example, to add a collection to a setup you should select SetupCollectionItem as the Definition Type. Once the collection item definition is created then you create the collection parameter on the original definition. The collection item definition that was created is used to define the parameters for each item in the collection.

Attached File Parametersâ

Attached file parameters are used to give a named reference to an attached file. This makes it easier to retrieve a specific file from an entity. By default when you add an attached file to an entity it is added to a list of attached files with no easy way to identify it other than the file name of the attached file. Using the file name to locate a file based on its utility is not very robust. An example where this feature is used by default is in the lap KPIs. A data file for the run needs to be attached to a run and this file (or files) need to be easily identifiable regardless of the file name. By default in the software there is an attached file parameter added to the run definition called DataFile:

This lets the KPI processor easily access all data files from each run by referencing the name DataFile.

The following configuration settings apply to attached file parameters:

Allow Multiple Files: this determines whether the attached file parameter will store a single file or if it can contain multiple files. If allow multiple files is not selected then it gives additional options to use the parameter as there is guaranteed to be only a single file and the possibility of multiple files does not need to be considered. An example of this is in the CID there is a cell that lets users select a single attached file. Note that once an attached file parameter is created this value cannot be changed.

Auto Download: if this is set to true then the attached file will automatically be downloaded onto all users computers once the upload is completed. This is useful for configuration files that all users need access to. The value can be changed, but the setting is applied when an attached file is created and existing attached files will not be updated if this value changes.

Delete After Upload: if this is set to true then once the attached file is uploaded, the file will automatically be deleted locally from the computer from which the upload was done. The value can be changed, but the setting is applied when an attached file is created and existing attached files will not be updated if this value changes.

Parameter Groupingsâ

Parameter groupings provide a way to group related parameters together. The main use case for this is to make it easier to select related parameters when using the API.

After a parameter grouping is created it can be applied to a parameter using the groupings column. Multiple groupings can be applied to each parameter.

Actionsâ

Action parameters are used to perform certain functions either when a button is clicked or when triggered by an Action Trigger. Currently, the only supported operation is to assign a value to a property.

The "Operand" field defines the path to what property the action should operate on. The "Equation" field supports full expressions exactly as Math Parameters are defined. For expressions that return a decimal, units and dimensions are determined automatically. There may be unexpected behaviour if the dimension of the operand and equation are not the same.

Action Triggersâ

Action triggers are used to execute a defined action when a property changes. To define an action trigger, there are three options to select:

The trigger type:

Property Changed: triggered when the specified property changes

Entity Added: triggered when the entity is added to a cache (e.g. when a RunSheet is added to a Session)

the property to watch for changes on (only applicable to the "Property Changed" trigger type)

the defined action to execute when a change occurs

Watch for infinite LoopsIf an action trigger is created that watches for changes to a parameter with an action that assigns a value to that same parameter, HH Data Management will detect this potential infinite loop and will not execute the linked action. As an example, ActionTriggerA watches for changes on Parameter1 and then executes ActionB; and ActionB assigns a value to Parameter1; when Parameter1 changes, ActionTriggerA will be ignored and not execute.

Bulk Adding Parametersâ

The bulk add button allows you to quickly create multiple parameters in one operation. An example might be adding camber values for each corner of the car.

The bulk type can have the value of Corner or Axle. If Corner is selected, four parameters will be created and if Axles is selected two parameters will be created. Going back to the camber example if you enter Camber{C} and select the bulk type then four new parameters will be created CamberFL, CamberFR, CamberRL and CamberRR.

Import and Export Definitionsâ

The current definition can be imported and exported using the buttons on the ribbon bar

This can be useful as a shortcut to duplicate a definition or copy a definition to another account.

When importing, all parameters that have the same name as a parameter that exists on the definition already will be skipped with the exception of Math parameters. If a conflict is detected importing math parameters, a window will be shown:

Discard all: Discard all math parameters being imported that conflict with existing parameters.

Overwrite all: Overwrite all existing math parameters that conflict with the values being imported.

Resolve individually: Open a second window allowing a decision to be made for each parameter:

Discard: Discard the math parameter currently being imported.

Discard all: Discard this and all remaining math parameters being imported that conflict with existing parameters.

Save as: Import the current math parameter under a new name.

Overwrite: Overwrite the existing math parameter with the one being imported.

Overwrite all: Overwrite this and all remaining math parameters that conflict with the values being imported.
