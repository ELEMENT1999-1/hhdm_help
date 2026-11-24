---
url: https://help.hh-dm.com/configuration-entities/custom-views/
---

On this pageCustom Views

The custom views feature allows new views to be created in addition to the default views that are defined in the software. By default these views are added in a new tab in the ribbon bar called '<Account Name> Custom Views':

The custom views view can be accessed from the admin tab of the ribbon bar:

The custom views view will open:

Three types of views can be created:

CGD

CID

Multi session table (like used in the run plan)

Single table

Some options are available depending on the view type selected. First the options that are available for all view types are presented.

General optionsâ

Nameâ

The name of the view is the text that is shown on the button that is added to the ribbon bar.

View typeâ

CGD

CID

Multi Session Table

Single Table

Defines if the custom view presents a table (Multi Session Table or Single Table), a CGD or a CID.

Entity typeâ

The entity type is the type of data that will be shown in the view, for example if setup is selected then the view will be used to show a list of setups. The context selection for the view is inferred from the entity type selected.
For most of the types, there are two options available (normal and singular). The singular option is mainly interesting for CID views, where it's preferred to only show one item instead of several. And also for CGD views, where the singular option will be used in the majority of the cases.

Example Entity type RunSheet:
The displayed items will be all runsheets of the selected session. There will be no additional context selection in the ribbon (only the Championship, Event, Car and Session need to be selected)

Example Entity Type RunSheet Singular:
The displayed item will only be the selected runsheet. There is an additional context selection in the ribbon, where the RunSheet needs to be selected.

Filter Expressionâ

A math expression that filters the displayed items. It's only available for Custom Views of type CID and Single Table. If there is no expression set, all items will be displayed in the view. If there is an expression defined, only the items where the expression evaluates to true will be displayed. The expression must return either true or false. Example:

Selected Part Category / Assembly Typeâ

For custom views based on types that require the selection of a part category or assembly type there is the possibility to lock (i.e. pre-select) the selected part category or assembly type. In this case an additional dropdown becomes visible:

Custom views with a locked part category or assembly type will not have the dropdown to select the part category or assembly type in the ribbon of the custom view.

tipThe selected part category or assembly type can be removed by hitting CTRL + DEL on the keyboard like for all dropdowns in HH Data Management that support unselected values.

Enabledâ

This option allows a custom view to be disabled. A disabled custom view will not be available on the ribbon bar and it won't load for any users.

Default Entity Selection Modeâ

This option determines whether the first or the last entity is selected by default when the view opens. This only applies when the entity selection is in the ribbon bar.

Collection optionsâ

noteThis is only shown when the selected entity type is a collection

Collection nameâ

The name of the collection parameter that should be used to get the collection from the parent entity. The combobox is populated from all definitions corresponding to the parent entity type, e.g. if the entity type is setup collection, then a list of distinct collection parameter names from all setup definitions will be available for selection.

Collection item display memberâ

For certain entity types (EventCarData Collection and all singular types) the collection item display member needs to be defined. This is the parameter that is shown
in the dropdown when selecting one collection item. Usually this is "Strings.Name" or "Name", but there can also be collection items, which have no name parameter. In this case
another parameter that identifies a collection item needs to be picked. It can either be selected from the dropdown or entered manually (which is mainly used if there are properties defined on the Collection Item in a plugin)

Ribbon button definition (table views only)â

These options allow various buttons to be removed from the ribbon bar for the view. By default there are buttons available to add, copy, delete and reorder the rows in the table, but depending on the view type and the type of users who will have access to it, some functionality may need to be blocked by hiding specific buttons.

CGD view Optionsâ

These options allow for the customization of the CGD used in the view. The CGD Name dropdown will show the CGD Definitions, which are defined in the Definition, which are matching to the entity type.

CID view optionsâ

CID optionsâ

These options allow for the customization of the CID used in the view. The hide CID search/selection/freeze control checkboxes allow the elements described here to be shown or hidden. The CID definition name combobox allows the CID definition that will be used to be selected and the CID default view allows the default view to be selected.

CID control definitionâ

These options primarily allow the control portion of the CID to be customized. The Hide Add checkbox allows for hiding or showing an add new item button on the ribbon bar. The Control Definition Name Path allows a binding path to be specified for the name that will be shown at the top of the CID control area (as long as hide CID name is not selected). The default value if none is entered will bind to the Name parameter (please also see Expression Binding). The control definition can be forced to be read-only through the Control Definition Read Only checkbox.

Multi session and single table view optionsâ

The multi session and single table views have the same options available except that the multi session table view has an additional section called session parameter options.

Icon optionsâ

The icon options allows the icon that will be shown on the ribbon bar to be selected. There are two possible sources for the icon that are chosen using the icon type combobox:

Custom

DM

Custom iconsâ

The custom icon feature allows user created icons to be added to HH Data Management. Custom icons can be added and deleted using the button on the ribbon bar:

A new window will open:

The custom icons are managed using an attached files view and must be a SVG (Scalable Vector Graphics) file type.

DM iconsâ

If the DM icons are selected, then the list of available icons will be from a list provided and used by HH Data Management internally.

Column profile optionsâ

This option allows the custom column profile that will be used to generate the columns in the display to be selected.

Permissions optionsâ

Permissions can be applied to a custom view. The ignore permissions checkbox will make the control accessible and editable by all users at all times.

The name for permissions drop down is populated based on the available client permissions and allows the appropriate permission to be selected for the view.

Session parameter optionsâ

noteThis section is only available for the multi session table view type.

This option is used to control which sessions are shown in the multi session table. Certain sessions such as pre- and post-event sessions that are created for job lists may not be needed in a view that is only going to be used during the race event. This value should be the name of a boolean parameter on the session definition.
