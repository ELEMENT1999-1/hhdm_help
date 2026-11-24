---
url: https://help.hh-dm.com/whats-new/version-25-1/
---

Version 25.1

January 1, 2025 Â· 4 min readVersion 25.1 includes many improvements to HH Data Management. Many of these were requested by you, so thanks for continuously sharing your feedback and ideas!

As usual, if you have any questions or issues with the release please contact us using support@hh-dev.com.

Installationâ

There are some updates to the database schema in this version but the software will migrate the database automatically during its installation. Note that prior versions will not be allowed to sync anymore.

A resync of the database isn't needed and work on the account can resume immediately after the update.

We improved the workflow when launching the software and you will now be shown a splash screen and prompted messages with the progress of the initialization.

Preparing database... when the database first needs to be sync or migrated after change to the database architecture following a major release.

Waiting for connection... when establishing the connection to the server

Creating master cache... loading data prior to syncing the database

Syncing database: ### pending operations... syncing any pending operations that occurred while offline

Loading account (#/#)... loading all account data required prior to open the main software window

Performanceâ

As always performance improvements and reducing the memory consumption of the software has continued to be a focus of this release.

The optional compute math parameters on demand from v24.2 is now the default setting and has improved the general performance and memory consumption of the software as well as improving the start up time of the software.

Improvement to software launch time, custom view columns rendering and data viewer were also a focus on this release.

Global issue listâ

Following development over the past few years, we have now released the global issue list on all accounts.

The global issue list is an advanced version of a todo-list. It allows to use user defined workflows to track progress on a issues and tasks and the account level.

Runsheetâ

We added two options to the run sheet:

A new lap marker properties SkipCountingLapNumber to add laps that would not count towards the total lap count (i.e. to grid, formation). These laps will be ignored by the DMI to ensure correct data alignment.

Ability to customize the calculated fuel used for the start of run using a math parameter.

Mileageâ

The user can now estimate mileage for an event yet to be completed and anticipate any out-of-life part that needs to be replaced.
Make sure to check the predictive mileage section of the help file to know how to set this up.

KPIâ

A few changes have been made to the Data Analysis profile allowing to specify units more easily for data channels and custom expression. It is also now possible to enforce a math expression to be calculated at a specific frequency.

Math functionsâ

We have added support for new dimensions

Area

Curvature

Temperature Change Rate

Admin Sectionâ

Custom grid display (CGD)â

Following the release in v24.2 we have added a few options to the CGD:

New Item Control layout item

Added visible binding path to most controls

Column item definition (CID)â

We have implemented some new options to the CID:

Export buttons (i.e. Excel, Json, Xml) can now trigger actions after a successful export

Action buttons and export buttons are able to trigger multiple actions

Apply any styles to any button control

Custom viewsâ

We have added a few more features to the custom views:

Show/hide custom view from the ribbon bar

EventCarData, SessionCarData and RunSheet Event Car view types

Binding expression to filter specific data or set the name of the custom view

Action & Action triggersâ

We added a trigger type to the action triggers allowing action to be performed when a new entity is added.

Multiple actions can now be trigger from a single CID button.

Miscâ

Specific file extension icons to attached file for better differentiation of file types

Delta option to tyre wear graphs

Multiple options to the Data Export profile to skip or allow/prevent any given node to the be exported

Ability to clear a date from any date picker control
