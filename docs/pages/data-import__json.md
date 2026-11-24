---
url: https://help.hh-dm.com/data-import/json/
---

On this pageJson

The JSON import allows data to be imported from JSON format.

The JSON import profiles can be accessed on the Admin tab of the ribbon bar

A new tab will appear

Fileâ

The options for the JSON file are defined at the top of the page:

In this current example, the File Scope is Championships â Events â EventCars â Setups. This means that the json importer will ask for a json file for each setup for each car in each event that is not excluded by the Global Filter or the Allow Import (see below) settings.

File Scope: defines the root scope. For imports this field will often stay empty. If you have for example 5 assembly types that should get imported and those 5 assembly types are defined in one JSON file, then the file scope will stay empty and the first node in the tree should have its scope set to "AssemblyTypes". However if each assembly type is defined in its own JSON file, then the file scope needs to get set to "AssemblyTypes". The correct selection of the file scope depends on the JSON file.

Mapping Node: defines which node in the JSON file is used to map the entity from the database to the node in the JSON file. If a mapping node is defined on the file level, then the json importer will only prompt for a single file path to a json file and then loop through every entity defined by the scope using that single json file.

Allow Import: an expression can be written here that returns a boolean value to say whether the file should be imported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the file will always be imported.

Nodesâ

The content of the file is defined in the tree structure. Nodes can be added as children of other nodes and inherit the scope from their parent. Every node in the JSON file should have one respective node in the tree structure with the same name.

Is Lookup Node: a node that is defined as lookup node is only used to read information from the json file, but doesn't import that information into the database. It's used in conjunction with Parameter templates

Allow Import: an expression can be written here that returns a boolean value to say whether the node should be imported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the node will always be imported.

Mapping Node: defines which node in the JSON file is used to map the entity from the database to the node in the JSON file. In the screenshot shown in Json the mapping node's name is 'name', the parameter value is 'Name' and the scope is AssemblyTypes. That means that the entities in the database and the nodes in the JSON file are getting mapped as follows. The value from the JSON file in the name node is considered as mapping value. Then for each assembly type the parameter value of the parameter 'Name' is getting compared to that mapping value. If both values are the same the matching entity is found. Usually a Mapping Node is only used in a scope change node, i.e. when Is Scope Change Node is checked.

Scope change nodesâ

Selecting the Is Scope Change Node checkbox will give access to the scope selection control. A scope change node will normally result in an array object getting created in the JSON file.

In this current example the scope is AssemblyTypes, meaning that the JSON file is expected to contain an array with nodes that define an assembly type.

Create if not existing: defines if an entity in the database gets created if there is not already an entity existing that matches the node in the JSON file. If there is no matching entity existing and Create if not existing is unchecked, the node will get skipped.

Nodes with contentâ

Local Scope: compared to the scope the local scope only defines the scope of this node and the local scope is not inherited to the child nodes of that scope. The local scope is for example useful if the current scope is EventCarData and 'Car.Number' should get accessed. In this case the local scope can get set to 'Car' and then in the Parameter dropdown 'Number' can get selected. The local scope expression can be empty, but if it's not empty it needs to be an expression that returns a FlatModel (not for example a double or text parameter).

Parameter: is the parameter of an entity that the value from the JSON file is getting written to. Depending on the parameter type of the selected parameter the value in the json needs to match the following criteria:

Text: it needs to be a string value. See also https://json-schema.org/understanding-json-schema/reference/string

Double: it needs to be of numeric type (i.e. not wrapped in quotes). See also https://json-schema.org/understanding-json-schema/reference/numeric

Boolean: it needs to be true/false (not wrapped in quotes). See also https://json-schema.org/understanding-json-schema/reference/boolean

DateTime: it needs to be a string value that represents a DateTime. Based on ISO-8601 the format needs to be 'uuuu'-'MM'-'dd'T'HH':'mm':'ss.FFFFFFFFF'Z' (e.g. 2008-05-11T15:30:00.000Z).

Assembly: it needs to be the name of an assembly iteration existing in the assembly type of the selected assembly parameter.

Part: it needs to be the name of a part existing in the part category of the selected part parameter.

Part Item: there are 2 ways to define the part item. Option one is to just define the name of a part item. In this case the importer will search for the first part item with that name among all parts of the part category of the selected part parameter. Option two is to write the part name and part item name separated by a semi-colon (e.g. "MyPartName;MyPartItemName"). In this case the importer will look up the part by the part category of the selected part parameter. And then it will look up the part item in that part.

Value Manipulation: an expression that can manipulate the value coming from the JSON file. To access the value from the file write 'RawValue' into the expression. The raw value is always considered as a string at first. If the job is to for example divide the raw value by 100, then the expression could look like: 'StringToDouble(RawValue) / 100'

Source Unit: if the selected Parameter is a double type with a dimension, then the source unit of the value coming from the JSON file can be defined. For example if the value in the json file is 100 and the unit of that value is 'mm' and the selected Parameter is of type double with the dimension length then the source unit can be set to 'mm'. This will enable automatic unit conversion during the import. For example if the unit of the selected Parameter is 'm' then the value 0.1 will get imported instead of 100.

Parameter templatesâ

For nodes which are scope change nodes and the scope is set to either 'AssemblyType' or 'PartCategory' and Create if not existing is true, an additional input shows up on the UI, the Parameter Templates:

When the importer creates a new assembly type or part category it also creates definitions for the child entities (like NamedAssembly, AssemblyIteration or Part, PartItem). The Parameter Templates can be used to automatically create parameters in those definitions, and these parameters can then be used to import data from the JSON file.

The parameter templates can create parameters of the following property types:

Double

Text

DateTime

Boolean

Part

Assembly

Configuring these parameters works similarly to configuring parameters in definitions. For double properties, additional columns become available to specify the Dimension and Unit. For part properties, you can select either a part category or a referenced node; assembly properties require either an assembly type or a referenced node.

The key difference is that part categories and assembly types are static, i.e. they must be defined before the import begins and apply uniformly to all created child entities. Referenced nodes, by contrast, enable dynamic assignment of the part category or assembly type during import. To use a referenced node, add a child node beneath the parameter template node with Is Lookup Node enabled. This node must have a corresponding entry in the JSON file that returns the name of an existing part category or assembly type. See the example below:

Profile Validationâ

When editing the profile or when clicking the Validate Profile button a number of validation checks on the profile are run in the background.

These validation checks might produce messages that are then displayed in the Infos/Warnings panel:

Warnings (red) point at problems in the profile that should be carefully reviewed before running an import. Every warning contains the line number and the name of the node as well as a description.

Infos (blue) point at settings that are valid, but which have a noticeable effect on how the import behaves. For example, if the File Scope resolves to multiple items and no Mapping Node is defined on the file, the import will ask for a separate file for every one of those items.

Running the importâ

How many files are requested depends on the File Scope and the Mapping Node of the file:

A single item in scope: one file is requested and imported into that item.

Multiple items in scope with a Mapping Node: one file is requested and imported into every item whose mapping value matches the value in the file. If no item matches, the import reports which value the file contains and which values the items in scope have, so the filters or the file can be corrected.

Multiple items in scope without a Mapping Node: a dialog lists all items in scope and a file can be assigned to each of them. Items which are left empty are not imported.

If a selected file doesn't exist, isn't valid JSON, or doesn't contain any of the top-level nodes of the profile, the import offers to select a different file, to skip that item, or to abort the import. Comments and trailing commas in the JSON file are ignored.

When the import has finished, a summary is shown. If an import fails or is cancelled part way through, the summary states how many of the items were already imported - those items are not reverted.
