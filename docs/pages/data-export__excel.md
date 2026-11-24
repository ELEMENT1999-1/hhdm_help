---
url: https://help.hh-dm.com/data-export/excel/
---

On this pageExcel

The Excel export allows you to export to new or existing Excel workbooks (*.xlsx or *.xlsm).

infoSome examples can be found in the tutorial section.

Excel workbook templatesâ

When doing an Excel export you may want to export to a prepopulated Excel workbook, rather than a new, blank Excel workbook. This lets you predefine cell formatting and static cells that will contain stuff like titles and means you don't have to build everything into the Excel. This can be accomplished using the Excel Workbook Templates feature that can be accessed on the Admin tab of the ribbon bar

Templates can be added, replaced, exported and deleted using the buttons on the ribbon bar. When you add a template it creates an attached file linked to the current account that will automatically download on all users computers (from the current account). The template is readonly, so to update the template, you must update the original Excel and then reattach it using the Replace current template button.

The templates can then be referenced in an Excel export profile which will create a copy of the template to populate each time a new export is run.

Excel export profilesâ

The Excel export profiles can be accessed on the Admin tab of the ribbon bar

A new tab will appear

There are three levels to consider in an Excel export:

Workbookâ

The options for the workbook are defined at the top of the page:

In this current example, the File Scope is Championships â Events â EventCars. This means that a new file will be created for each car in each event that is selected for export.

File Name Template: this is the name of the Excel file that will be generated. The notation can be used to access variables from the current scope.

Template Workbook: the template workbook to be used for the export

Delete Workbook Before Export: when this option is checked, the generated file is a new file and a potentially existing file with the same name will be deleted before the export. When this option is not checked the exported values are written in the

Delete Workbook After Export: when this option is checked, the generated Excel file will be deleted after the export. This is typically used in conjunction with the option Create PDF After Export.

Create PDF After Export: when this option is checked, a PDF file will automatically be generated after the export.

Delete/Hide Template Worksheet: when this option is checked, all worksheets in the workbook that are defined as template through the export profile are getting deleted or hidden after the excel file is created (if there is more than one worksheet existing in the final workbook). If Delete Workbook Before Export is checked the worksheets are getting deleted, otherwise they get hidden.

Delete/Hide Template Worksheet Before Export: when this option is checked, all worksheets in the workbook that are defined as template through the export profile are getting deleted or hidden before exporting to PDF (if there is more than one worksheet existing in the final workbook). If Delete Workbook Before Export is checked the worksheets are getting deleted, otherwise they get hidden. This is typically used in conjunction with the option Create PDF After Export

VBA Sub Procedure To Call After Export: when this option is checked, a macro in the generated file is getting called. The macro needs to be in "ThisWorkbook" and it is getting called after every exported Worksheet and/or Workbook. To distinguish between the two options, 2 arguments are passed into the function. 1: Workbook/Worksheet name and 2: an integer where 0 = Workbook and 1 = Worksheet. NOTE: The macro must be a SUB and not a FUNCTION.

Example:

Sub Clean(controlName As String, controlType As Integer)
 if controlType = 1 then
 exit sub
 end if

 ~your code~

End Sub

Allow Export: an expression can be written here that returns a boolean value to say whether the file should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the file will always be exported.

Worksheetâ

The worksheet is defined in the tree structure. The root level nodes define the worksheet. Cells can be recursively added as children to the worksheet(s) and other cells. The worksheet node inherits its properties from the workbook, for example the scope of the worksheet is built based on the scope of the workbook. The options for the worksheet node are shown when a worksheet node is selected

Scope: the scope for the worksheet - this controls how many worksheets will be created and what their content will be. In this current example the worksheet scope is EventCarSessions â RunSheets meaning a new worksheet will be created for each run (for the current event/car, based on the file scope). If no scope is defined then it will be inherited from the workbook scope.

Worksheet Name: this is the name the worksheet will be given. The notation can be used to access variables from the current scope. The worksheet name cannot contain any special characters as this is restricted by Excel, and will also be truncated by Excel to a maximum length of 31 characters.

Template Name: this setting is optional. When it is defined, it is the name of a worksheet that will be copied for each new worksheet and populated. In this example for each run, the worksheet called SetupSheet will be copied, given the name defined in the Worksheet Name field and then populated with the data defined by the cell nodes in the tree.

Allow Export: an expression can be written here that returns a boolean value to say whether the worksheet should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the worksheet will always be exported.

Cellsâ

The content of the cells is defined in the tree structure. Cells can be added as children to a worksheet node or another child node. Cells inherit all properties from their parent cell or worksheet node, including their position information. The options for the cell node are shown when a cell node is selected.

Scope: the scope for the cell. If no scope is defined then it will be inherited from the workbook scope. If a scope is defined then this cell node may define the content of multiple Excel cells.

Value: this defines the content that will be written to the Excel cell. The notation can be used to access variables from the current scope.

Allow Export: an expression can be written here that returns a boolean value to say whether the cell should be exported. The expression can be written directly in the textbox with no need to wrap it in the characters. If this field is left blank then the cell will always be exported.

tipAn apostrophe before a cell value forces Excel to interpret the value as text. This is mostly useful for values that look like a number or date. For example, Dec-1 would ordinarily be converted to a date in December. If you want the literal text Dec-1, enter it as 'Dec-1.

Column/row index settingsâ

tipCells with another cell as a parent inherit all properties from that parent, including the column/row indices. This can be useful to define datums for the export. Consider the following screenshot:

If the Corner FL cell defines a column index of 2 and a row index of 2 then this would represent cell B2. If the RH cell then defines a column index of 1 and a row index of 1 then this would be resolved to cell C3, since it would be offset 1,1 from the parent cell.

There are three options to define the column/row index for each cell:

Constant Index: a simple scalar number can be used to define the cell column/row index. Excel uses a 1-based coordinate system so an index of 1,1 would be written to cell A1

Linear Equation: this mode is used when a scope is defined. Constant and linear terms are defined. The constant defines the offset and the linear term determines the offset for each item in the export. For example, if the scope of the cell is Laps, then one value will be written for each lap. With a constant term of 3, then the export would be offset by that value and with a linear term of 1, then the index would increment by this value for each lap.

Text Search: in this mode a string should be entered, and the export will search for the first occurrence of that string and use this as the index for the export. In this example, the export would find the first cell with "_FLRH" written in it and use the location of that cell to define either the column/row index.

tipWhen using the text search its important to keep some things in mind:

the search text can get overwritten by the export. Therefore it is often necessary to make use of the parent/child nodes to set a datum for the export when using the text search mode

since the text search looks for the first occurrence of the text, the order that the cells nodes are defined could be important when using this feature
