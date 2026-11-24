---
url: https://help.hh-dm.com/extensibility/database-customizations/
---

On this pageDatabase customization

HH Data Management supports currently two ways to customize the database for certain scenarios.

CustomConfigSettings.iniâ

The user can adjust the default location of the directory structure on the computer by adding a configuration file to %localappdata%\HH Development\HH Data Management.

The files needs to be called CustomConfigSettings.ini and it has the following content:

documentsdirectorypath=custom path

Example:

documentsdirectorypath=C:\Users\HH\Documents\HH Development\HH Data Management\MyCustomFolder

An example can be downloaded here

Multiple Databasesâ

When a user has multiple accounts for HH Data Management, i.e. the user needs to login with different email addresses then we support this case by creating shortcuts with a command line parameter.

Search for the HHDev.DataManagement.Client.HHDataManagement.exe file in the ProgramFiles folder and right-click it to create a shortcut:

Right-click the shortcut and select "Properties". Modify the path to add a parameter with the path to the custom database location.

Example:

Target old: "C:\Program Files\HH Development\HH Data Management\HHDev.DataManagement.Client.HHDataManagement.exe"

Target new: "C:\Program Files\HH Development\HH Data Management\HHDev.DataManagement.Client.HHDataManagement.exe" -p "C:\Users\YourWindowsUserName\Documents\HH Development\HH Data Management\MyAccount1"

Note that you need to replace YourWindowsUserName with the username of your current windows user.

Rename the shortcut in such a way that it's clear to which account it belongs to. To avoid confusion it's best practice to create one shortcut for each account.

infoOnly one instance of HH Data Management can be run at the same time
