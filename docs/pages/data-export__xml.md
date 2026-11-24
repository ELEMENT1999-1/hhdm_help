---
url: https://help.hh-dm.com/data-export/xml/
---

On this pageXML

The XML export allows data to be exported in XML format.

The XML export profiles can be accessed on the Admin tab of the ribbon bar

A new tab will appear

Fileâ

The options for the XML file are defined at the top of the page:

In this current example, the File Scope is Championships â Events â EventCars. This means that a new file will be created for each car in each event that is selected for export.

File Name Template: this is the name of the XML file that will be generated. The notation can be used to access variables from the current scope.

Allow Export: an expression can be written here that returns a boolean value to say whether the file should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the file will always be exported.

Nodesâ

The content of the file is defined in the tree structure. Nodes can be added as children of other nodes and inherit the scope from their parent. The name of the XML node that gets created by the export is defined in the tree and must respect the restrictions in the XML spec, for example there can be no spaces and the name must start with a letter character.

warningOne peculiarity of the XML export is that according to the XML standard there is exactly one root node. When designing an XML export in HH Data Management, this must be considered. The export will show an error if this restriction of the standard is not respected. This means that the root node of the export definition should not be a scope change node to ensure it is not duplicated.

Value: this defines the content that will be written to the XML node. The notation can be used to access variables from the current scope. Note that if a node has children then the value will not be written, as an XML node cannot have both content and child nodes

Is Scope Change Node: if selected then a scope can be selected. A scope change node will be repeated based on the data in HH Data Management. In the scope change example above a new node would be created for each run sheet

Scope: the scope for the node. This is only applicable if the Is Scope Change Node checkbox is selected.

Allow Export: an expression can be written here that returns a boolean value to say whether the node should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the node will always be exported.

Allow Export Item: this option is only available for scope change nodes where the new scope is a list (in this example the new scope is the list of runs in a session). This option is like the Allow Export, but the expression is evaluated for each item in the collection (e.g. for each run). The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then all items in the collection will be exported.

Attributesâ

Attributes can be defined for each node:

In this example the Spring node will have two attributes.

Name: the name of the attribute. This name must conform to the XML standard.

Value: this defines the content that will be written to the attribute. The notation can be used to access variables from the current scope.

Allow Export: an expression can be written here that returns a boolean value to say whether the attribute should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the attribute will always be exported.

Example outputâ

The example used on this page will result in an XML file with the following structure, where the Setup node would be repeated for each run in the scope:

<?xml version="1.0" encoding="utf-8"?>
<Root>
 <Setup>
 <Event>WEC R1</Event>
 <Date>'23-05-05</Date>
 <Run>RUN1</Run>
 <Track>Circuit de Barcelona</Track>
 <CarNo>2</CarNo>
 <ChassisNumber>HHDM</ChassisNumber>
 <CornerFL>
 <RH>50</RH>
 <FIA_RH />
 <Camber></Camber>
 <Toe>-2</Toe>
 <Spring StiffnessAtWheel="220" Frequency="422">220</Spring>
 </CornerFL>
 <CornerFR>
 <RH>50</RH>
 <FIA_RH />
 <Camber></Camber>
 <Toe>-2</Toe>
 <Spring StiffnessAtWheel="220" Frequency="422">220</Spring>
 </CornerFR>
 </Setup>
 ....
<Root>
