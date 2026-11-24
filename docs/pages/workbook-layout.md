---
url: https://help.hh-dm.com/workbook-layout/
---

On this pageWorkbook & Layout

Workbooks and worksheets allow the user to better organize the data visualization into the software. A layout allows you to save the configuration of the workbooks and worksheets currently on screen so it can be reloaded in the future or shared with other users. Workbooks and layouts are controlled from the Workbook tab of the ribbon bar

Workbookâ

After clicking the Add Workbook button a new blank workbook will appear. It can be seen as a new instance of HH Data Management but connected to the same database. It is usually used to organize your layout on multi-monitor.

A workbook can be saved using the Save Current Workbook button which will create a .dmwb file. Workbooks can be loaded into a current layout by using the Load Workbook button.

Worksheetâ

After clicking the Add Worksheet button a new blank worksheet will appear with a tab at the bottom of the software.

Double click on the name to edit the worksheet name.

Worksheets can be reordered by dragging them left or right.

Worksheets can be duplicated and the background and foreground colours of the tabs can be edited by right clicking on the tab.

A worksheet can be saved using the Save Current Worksheet button which will create a .dmws file. Worksheets can be loaded into a current layout by using the Load Worksheet button.

tip
Saving and loading workbooks and worksheets separately from layout can be useful to share between different users. For example, we user could be working on some KPIs visualization page that he could share to his teammates without having to share his entire layout.

Using worksheet coloring and icons in the name can help to personalize the layout and help with navigation. Here is an example:

Contextâ

The context group in the Workbook ribbon group is the so called global context. Changing any of the dropdowns has no direct impact on the opened views, but serves as pre-selection. If a new view is opened, the initial context selection will be based on the global context. Additionally, the global context can be used to change the context in multiple views at once.

Apply to Active Worksheet: applies the context to all views in the current worksheet

Apply to All Worksheets: applies the context to all views in all worksheets and workbooks

Apply EVENT & SESSION to Active Worksheet: applies the event and the session (but not the car) to all views in the current worksheet

Apply EVENT & SESSION to All Worksheets: applies the event and the session (but not the car) to all views in all worksheets and workbooks

Apply EVENT to Active Worksheet: applies only the event to all views in the current worksheet

Apply EVENT to All Worksheets: applies only the event to all views in all worksheets and workbooks

Apply SESSION to Active Worksheet: applies only the session to all views in the current worksheet

Apply SESSION to All Worksheets: applies only the session to all views in all worksheets and workbooks

If there is more than one workbook open, there is also:

Apply to All Worksheets in Active Workbook: applies the context to all views in all worksheets in the active workbook

tipBy default, the selected car is displayed using its Number. To customize the label, add a math parameter named "ContextDisplayNumber" (String return type) to the Event Car definition; it can reference the car (e.g. Car.Number), the event and the drivers. If the math parameter is missing, empty or in error, the Number is shown.

Cachesâ

The Clear Caches button clears all loaded caches which are currently not referenced by any view. This feature is helpful if many EventCaches or EventCarCaches have been loaded into memory. To free up some memory and avoid having to restart HH DM Clear Caches can be used.

Connection Statusâ

The Connection Status button opens a view displaying the connection status that can be placed and resized like any other view in the software.

Layoutâ

A layout contains all your workbooks and worksheets. It can be saved as a file and loaded so it can be restored at any time.

HH Data Management automatically saves the state of your layout every five minutes to an "Autosaved Layouts" folder that can be restored from should you ever forget to save your layout. This folder can be found by going to the Support tab and clicking "Open layout backups location".

To save a new layout, click on Workbook and then Save Layout. The Save Layout As button can be used to save the current layout in a different file. The layout is saved as a .dmlay file.

Backstageâ

The backstage is accessed by clicking File in the top left of HH Data Management:

Homeâ

A list of recently used layouts can be found on the Home tab of the backstage. Double-clicking on a layout will load it.

Syncâ

The sync tab shows information and allows for changing settings related to the connection to the HH Data Management server:

In general these settings shouldn't need to be changed from their default values.

Token refreshâ

When the authentication mode is OAuth, the Token refresh option in the Server Configuration group controls how HH Data Management refreshes its sign-in token. Direct (the default) has the client contact the authentication server directly, while Socket routes the token refresh through the sync server instead, which is useful when the client machine cannot reach the authentication server directly, for example on a restricted network.

This option can also be set from the Advanced Options section of the login screen when starting HH Data Management for the first time. It can be changed at any time and does not require restarting the software.

Optionsâ

The options tab allows various options to be changed.

Some of the options are self explanatory, explanations for the options are only provided here if they add extra information.

Global optionsâ

The global options represents options that are global to the full account. Changing those options will affect every users from the account. The global options is only available to users with access to the admin node in the client permission profiles.

Account IDâ

The account ID can be copied from here. This may be needed when working with the API or plugins.

Account imageâ

The account image is displayed on reports generated from the software.

Auto-Populate run air/track tempsâ

If this is enable, the closest weather measurement from the start time of the run will be copied into the runsheet weather values.

Auto-Populate run air/track temps thresholdâ

Maximum delta time between run start time and weather measurement time to take the value into account in the run sheet.

Default sectors per track configurationâ

This is the default number of sectors that will be added to each new track configuration that is created (the sectors can be manually modified after creation).

DMI - Add run on pit inâ

If this is disabled, the DMI will not create automatically new runs. The user will have to create the run manually.

DMI - Copy from previous runâ

Controls if the DMI creates new run as empty runs or as copy of the previous run. See manage runs for the difference between add run and copy run.

Fuel count directionâ

This is the default fuel count direction for new events like described in event data.

Include tyre sets in mileageâ

Defines if tyre sets are included in mileage calculations or not. For more info refer to mileage calculation.

KPI - Default KPI attached file nameâ

See additional datasets for a detailed explanation.

KPI - Ignore missing channel KPI errorsâ

Controls if errors caused by missing channels during the Lap KPI calculation are shown in the Runsheet KPI Management view. To identify why KPIs are not getting calculated, it's important to have this setting enabled, but sometimes it can also lead to a lot of errors.

Run plan modeâ

This is the default mode used for the run plan

Run sheet setup in tabâ

If this is enabled, the run sheet setup will be displayed in one right panel tab. If not it will be displayed at the right side of the tabs and will be always visible.

Use CGD for Event Data viewâ

If this is enabled, then the CGD can be used to customize the Event Data view. Please contact support and a base CGD definition can be added to the account.

Use CGD for Session Data viewâ

If this is enabled, then the CGD can be used to customize the Session Data view. Please contact support and a base CGD definition can be added to the account.

Show tyre reference temperatures for each cornerâ

If this is enabled, then on the Tyre Sets page, the reference temperatures for each tyre can be customized individually rather than specifying a single temperature for the set.

Local optionsâ

Mainâ

Log math channel errorsâ

If this is enabled, all errors generated when creating and processing math expressions will be written to the log file. This can be useful when trying to troubleshoot math parameters that are not working. This is disabled by default as it can write a lot of data to the log file which can slow the software down.

Themeâ

HH DM currently supports two themes (Colorful and Dark).

Unit schemeâ

The unit scheme of the software is used to determine the behaviour of the software when typing information in text boxes with pressure information. If set to metric the software assumes the pressure is in bar and if the user enters a value like 180, then it will auto convert the value to 1.80. Conversely, if it is set to imperial then no manipulation of the entered data will be done.

Wear unitâ

Defines the unit that is used for wear (mainly in the Tyre Wear View). The default value is 'Default' which makes it following the unit of the Unit scheme (i.e. 'mm' when the unit scheme is 'metric' and 'in' when the unit scheme is 'imperial'). But the default behaviour can be overwritten by explicitly defining a unit for the wear.

DMIâ

DMI Portâ

Configures the port that the DMI is using to communicate with HH Timing. When the background is green it means that the local dmi server is running, when it's red it means it's not running. This could be because another program on the computer blocks the DMI Port. The DMI Port needs to match the DMI Port in the advanced dmi options in HH Timing. It is only configurable when DMI Port override is false.

If it's red you can launch the following command in a command window to see which program is blocking the port:

netstat -ano | findstr :8090

It will return a list items, where the most right column returns the windows process id (PID). With a second command you can find out the name of the process (you need to replace the 4444 with the PID of the first step):

tasklist /fi "pid eq 4444" 

DMI Port overrideâ

By default HH Timing and HH Data Management configure the port to communicate with each other automatically and no user action is needed. By setting this value to true, the port gets set manually and it needs to match the DMI Port in the advanced dmi options in HH Timing.

Layoutâ

Ask to save layout on closeâ

When this options is enabled and the user closes HH DM, there is a pop up asking if the current layout should be saved before closing HH DM or not.

Autosave layoutâ

If this is enabled then every 5 minutes the current layout will be saved automatically, overwriting the layout file HH Data Management currently being used.

tipHH Data Management automatically saves the state of your layout to an "Autosaved Layouts" folder that can be restored from every 5 minutes regardless of whether this setting is enabled or not. Enabling the "Autosave layout" option only determines whether changes made to the current layout are written to the loaded layout file, or if the state is solely saved to the backup folder. This folder can be found by going to the Support tab and clicking "Open layout backups location".

Load layout on startupâ

Controls if HH DM should load the last used setup on startup or start with a blank layout.

Save grid layoutsâ

If this is enabled, the state of every grid is stored in the layout. This covers the column widths, the sorting, the grouping, the column filters and the expanded rows. The setting is disabled by default, so a grid opens with the state its column profile defines.

Run Sheetâ

Max widthâ

Controls the max width of the run selection panel in the runsheet

RunSheet CGDâ

Allows to manually define the CGD that is used for the runsheet. It is saved per account, if the current user is associated to multiple accounts. The order of determining which runsheet should be used is as follows:

The CGD that is selected in the RunSheet CGD dropdown or if nothing is selected

The custom runsheet that is defined in the plugin or if there is no plugin or no runsheet is defined in the plugin

The CGD with the name "Default" in the runsheet Definition or if this is not existing

The default runsheet that HH DM comes with

tipThe RunSheet CGD value can be cleared by pressing CTRL + DEL

Wrap textâ

Controls if the text in the run selection panel in the runsheet should be wrapped if it exceeds the max width or not.

Otherâ

Compute size of event/car attachmentsâ

For each event the user is subscribed to, and for each car of that event the user has access to, compute and display the size of all the attached files downloaded locally. If enabled, this information is displayed on the Subscription view.

Display cache statusâ

Show the status of loaded caches in the status bar

Display uploads/downloads statusâ

Show the status of current uploads/downloads in the status bar. Note that for uploads the status doesn't show the number files currently uploading, but the number of file parts (see Max parallel uploads). If the number of uploads/downloads exceeds the max parallel number, then the number of active transfers is shown next to the number of waiting transfers in brackets. For example 3 (20)/0, would mean that currently 3 file parts are uploading and 20 file parts are in the queue to get uploaded once the active ones complete.

Max parallel uploadsâ

Limits the number of parallel attached file uploads. When uploading attached files, HH DM cuts the files into chunks of max 5MB and uploads those file parts. This is done to make the uploads more robust (especially when the internet connection is slow/unstable). If for example two files with each 20MB are uploaded at the same time, HH DM will upload 8 (2 x 20MB / 5MB) file parts under the hood. The default setting is 3 and for the most applications there is no need to tweak it.

Max parallel downloadsâ

Limits the number of parallel attached file downloads. Unlike for uploads the downloads are not cut into parts.

Use legacy CIDâ

Reverts CID controls to a previous version with inferior performance. This should only be used if issues are encountered in views using the CID controls. Changes are applied after re-loading the layout.

Show connection status notificationsâ

Show a notification in the bottom-right of the screen when HH Data Management gets disconnected from the server for more than 10 seconds. If a disconnect notification is shown, a notification is also shown when HH Data Management reconnects.

Context Selectionâ

Sort championshipsâ

Championships can be sorted by Name or StartDate in both ascending and descending order. This option does not take effect until HH Data Management restarts.

Sort Eventsâ

Events can be sorted by StartDate in both ascending and descending order. This option does not take effect until HH Data Management restarts.

Sort sessionsâ

Sessions can be sorted by StartDate in both ascending and descending order. This option does not take effect until HH Data Management restarts.

Supportâ

The support tab has four buttons that will help to carry out certain tasks if needed for support purposes.

infoAdjust the log level only upon instruction from the HH Development team. Any log level changes will remain effective only for the current session, i.e. after restarting HH Data Management, the log level will revert to the default setting.

Auto updateâ

Please see the auto update section.

Aboutâ

The about tab contains some basic information about the current software version and what plugins are installed.

API Integrationâ

The API integration tab allows for the authentication mode of the API to be set. HH Data Management needs to communicate with the API for mileage calculations. If OAuth is selected then a browser window will pop up asking the user to log in using the same username/password as used when accessing the hh-dev.com website. If API Key is selected then an API key should be entered.

Cache statusâ

The cache tab contains some information on what caches are loaded in the software, and also shows the time taken to load each cache, and which views requested the cache to be loaded first.

tipManagement caches have the ability to be selectively loaded. This enables users that are a member of several accounts to only load the account they are working on, which saves time when the software is launched. Options changed here are only applied after a restart of HH Data Management.
