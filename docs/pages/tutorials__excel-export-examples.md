---
url: https://help.hh-dm.com/tutorials/excel-export-examples/
---

On this pageExcel Export Examples

This article provides examples of how to use the Excel export in HH Data Management.
Some export templates and export profiles can be downloaded and customized using these buttons:

Add Template.

Import Profile.

Select the template workbook within the newly imported profile.

Setupâ

Single or multiple setups can be exported from HH Data Management.

Single exportâ

A single setup can be exported in Excel or PDF format to be printed for mechanics.

SettingsDescriptionFile ScopeChampionships.Events.EventCars.SetupsFile Name TemplateThe Name of the setup can be used in the file name template if one Excel file per setup is expected.WorksheetName of the setup can be used in the WorkSheet Name.Cell Column/Row IndexUse Text Search for dynamic placement.
infoAn Excel Export button can be added in the Setup CID to export or print a setup using this Excel export profile.

FileDownload LinkProfileSingle setup Excel profileTemplateHH Dev setup sheet
Double-column setup exportâ

All setups from one Event and Car can be exported side-by-side.

SettingsDescriptionFile ScopeChampionships.Events.EventCarsFirst cellLoop on each setup by changing the scope to Setups and using Linear Equation for column indexCell Column/Row IndexConstant Index are used
infoAccess the profile from the Data ex-/import view.
Use the Export button in the Setup view ribbon bar to export all setups displayed.

FileDownload LinkProfileDouble column Excel profileTemplateHH Dev double column setup export
Global issue listâ

All global issue lists can be exported to Excel.

SettingsDescriptionFile ScopeNull.First cellLoop through issues by changing the scope to IssueListIssues and using linear equation for row index.
FileDownload LinkProfileGlobal issue list Excel profileTemplateGlobal issue list export template
tipA filter can be added to include only specific types of global issue lists by using the Allow Export setting.

RunSheet exportâ

Full event reportâ

A summary of the full event can be exported with:

Tyre usage summary

Lap by lap summary

Run by run summary

RunSheet table with driver and engineer comments

Fuel summary

Weather summary

Session issue list summary

SettingsDescriptionFile ScopeChampionships.Events.EventCarsVBA Sub Procedure To Call After ExportThis profile is calling an Excel macro called PrintAreaTotal to clean the document before exporting in PDF formatWorkSheetThis profile is using several worksheet cells to export in different worksheets
FileDownload LinkProfileEvent report Excel profileTemplateEvent report export template
Session reportâ

A simpler runsheet export can also be used with one file per session

SettinsDescriptionFile ScopeChampionships.Events.EventCars.EventCarSessionsVBA Sub Procedure To Call After ExportThis profile is calling an Excel macro called AutoFitColumns to clean the document before exporting in PDF formatWorkSheetThis profile is using several worksheet cells to export in different worksheets
FileDownload LinkProfileRunsheet Excel profileTemplateRunsheet export template
infoAccess the profile from the Data ex-/import view.

An Excel xxport button can also be added in the runsheet or event / session details CGD.

Default run plan exportâ

The default run plan can be exported (run mode).

SettingsDescriptionFile ScopeChampionships.Events.Sessions.SessionCarsFirst cellsSome session info can be exported at the top and then a cell is looping through all planned runs
FileDownload LinkProfileRun plan Excel profileTemplateRun plan export template
