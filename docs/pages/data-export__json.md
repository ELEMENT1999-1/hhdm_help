---
url: https://help.hh-dm.com/data-export/json/
---

On this pageJson

The JSON export allows data to be exported in JSON format.

The JSON export profiles can be accessed on the Admin tab of the ribbon bar

A new tab will appear

Fileâ

The options for the JSON file are defined at the top of the page:

In this current example, the File Scope is Championships â Events â EventCars. This means that a new file will be created for each car in each event that is selected for export.

File Name Template: this is the name of the JSON file that will be generated. The notation can be used to access variables from the current scope.

Skip Root Node: by default this value is false, in which case the exported JSON will be wrapped in an object. If this value is set to true then the exported JSON will not be wrapped in an object and the name of the root level node will be skipped. Note that if this value is true there can only be one root level node defined in the profile otherwise the export will fail. For example, given the the profile shown in the above screenshot, this boolean will result in the following output:

true:
[
 { ... },
 { ... }
]

false:
{
 "Setups": [
 { ... },
 { ... }
 ]
}

Allow Export: an expression can be written here that returns a boolean value to say whether the file should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the file will always be exported.

Nodesâ

The content of the file is defined in the tree structure. Nodes can be added as children of other nodes and inherit the scope from their parent. The name of the JSON element that gets created by the export is defined in the tree and must respect the restrictions in the JSON spec, for example there can be no spaces and the name must start with a letter character.

Allow Export: an expression can be written here that returns a boolean value to say whether the node should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the node will always be exported.

Scope change nodesâ

Selecting the Is Scope Change Node checkbox will give access to the scope selection control. A scope change node will normally result in an array object getting created in the JSON file.

In this current example the scope is EventCarSessions â RunSheets, meaning that an array will be created with one entry for each run sheet.

Wrap Array Items In Object: by default this option is true and in this case it means that each item in the array (e.g. each run sheet in this example) will be its own JSON object. This is normally the perferred structure for a JSON file especially if there is more than one property being exported for each item. If this item is false then the exported structure will be a simple array of values. For example:

true:
{
 "Setups": [
 { 
 "Name": "Setup 1" 
 },
 { 
 "Name": "Setup 2" 
 }
 ]
}

false:
{
 "Setups": [
 "Setup 1",
 "Setup 2"
 ]
}

Allow Export Item: this option is only available for scope change nodes where the new scope is a list (in this example the new scope is the list of runs in a session). This option is like the Allow Export, but the expression is evaluated for each item in the collection (e.g. for each run). The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then all items in the collection will be exported.

Nodes with contentâ

If the node is not a scope change node then the type of the node can be defined using the Cell Type drop down menu. For most types the export value can be defined using the notation to access variables from the current scope.

Autoâ

In auto mode the output formatting of the value will be determined automatically by HH Data Management.

Arrayâ

When array mode is selected the exported JSON element will be an array element. This node should then have children that will form the contents of the array.

Json Objectâ

When JSON object mode is selected the exported JSON element will be an object element. This node should then have children that will form the properties of the JSON object.

Nullâ

When the null mode is selected the JSON null value will be exported.

Integerâ

When the integer mode is selected the value that is returned based on the expression will be parsed as an integer and written to the JSON file. If the value expression returns null, then the JSON null value will be exported.

Booleanâ

When the boolean mode is selected the value that is returned based on the expression will be parsed as a boolean and written to the JSON file. If the value expression returns null, then the JSON null value will be exported.

Doubleâ

When the double mode is selected the value that is returned based on the expression will be parsed as a double and written to the JSON file. If the value expression returns null, then the JSON null value will be exported. There is also an option to specify the number of decimal places for the exported value. If this value is specified then the result will be rounded to the specified number of decimal places.

Json Snippetâ

The Json snippet mode should be used when the value expression returns a JSON string. In this case the export will write the JSON directly to the file with no escaping of characters. If a value expression returns a JSON string and the cell mode is set to auto the value would be written as a string, not part of the JSON structure of the current file.

Other Json Profileâ

When the other Json profile mode is selected the user has the option to select a different existing JSON export profile from the drop down menu. In this case when the node is exported, the export logic will evaluate the referenced JSON profile and export it into the current file.

Example outputâ

The example used on this page will result in a JSON file with the following structure, where the Setup array will have an entry for each run in the scope:

{
 "Setups": [
 {
 "Event": "WEC R1",
 "Date": "'23-05-05",
 "Run": "RUN1",
 "Track": "Circuit de Barcelona",
 "CarNo": "2",
 "ChassisNumber": "HHDM",
 "CornerFL": {
 "RH": "50",
 "Camber": "-3.2",
 "Toe": "-2",
 "Spring": "220"
 },
 "CornerFR": {
 "RH": "50",
 "Camber": "-3.2",
 "Toe": "-2",
 "Spring": "220"
 }
 },
 ...
 ]
