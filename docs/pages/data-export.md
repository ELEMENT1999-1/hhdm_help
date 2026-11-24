---
url: https://help.hh-dm.com/data-export/
---

On this pageData Export

The built in export functionality in HH Data Management supports three output formats:

Excel

Json

XML

While there are differences in the specifics of each output format the concept for all exports is the same. The format and structure of each export is defined in a profile. A profile lets you define the contents of each export, as well as things like the file name, and appearance of the exported data.

Conceptâ

Scopesâ

An important concept of the export profiles is the scope. Each exported file has a scope, and then this scope can be further changed when using the elements of the export (e.g. Excel workbooks and cells, XML nodes or Json objects). The scope is used to determine what contents can be written in the export and also how many files or elements are created. For example, if the file scope is setups, then each file that is created as part of the export will contain the data from one setup. If the file scope is an event/car then each file that is created will contain the data from one event/car, and you could chose to export each setup from the event/car into its own Excel worksheet, XML node or Json object.

The scope of all exports starts at the root of the account, and gets built up from there. The user interface in the exports helps with selecting a scope. For example, a file scope that gives access to the setups would look like this:

If this is selected as the file scope it means that a new file will be created for each setup.

Export structureâ

The structure of the file is defined using a tree representation, for example:

Each of the output formats has slightly different terms used for the elements in the structure, but the general concept is the same regardless of the output format. Nodes are created, and can have child nodes. Any contextual information is passed down to the child nodes. Nodes can be defined as being a scope change node. This means that the node cause the export to change the scope and

Export data contentâ

Once the scope has been defined, the actual data that will be written as part of the export can be defined. This is done by writing math expressions to reference parameters and call functions. The difference in exports compared to other parts of the software where the math expressions are used is that any math expressions must be wrapped in . For example to export a parameter called FLCamber you must defined the export as {FLCamber}. Anything outside the will be exported without evaluation. For example you could write -{FLCamber} deg as the export and if the value in FLCamber is 3.2 what gets exported would be -3.2 deg.

Running the ex-/importâ

Data ex-/import viewâ

The main way to ex-/import data using a profile is using the Data Ex-/Import view. This can be accessed from the ribbon bar:

The Data Ex-/Import view makes use of the Global Filter. Once the filter is defined, the profile can be selected and the appropriate button clicked on the ribbon bar to run the export:

The behaviour of the data ex-/import can be modified using the settings shown above:

Print Errors: Controls whether errors during the ex-/import are written to the output file. If left unchecked, blank values will be written to the output file for nodes that failed to compute.

Show exported Excel: This option controls the visibility of the exported Excel during the export. It does not affect the content of the export and only applies to Excel exports. Hiding Excel during the export usually leads to faster export times. This is configurable in three ways:

Always: Open the generated Excel files as they are created and keep them open after the export is complete.

Only when ready: Only open the exported files when they are fully generated.

Never: Run the Excel export silently and do not open any generated files. The only indication that the export succeeds is the message shown within HH Data Management.

Use custom path: If checked, when an export is started, a dialog is shown to select an export destination. This will override the path specified in the export profile.

Other export controlsâ

CID export buttonsâ

Buttons can be defined on the CID that can be linked to a data export profile to run exports from any CID view without needing to use the Data Export view.
