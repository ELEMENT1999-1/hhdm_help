---
url: https://help.hh-dm.com/common-controls/global-filter/
---

On this pageGlobal Filter

The global filter control provides a common user interface to enable global filtering throughout the software.

Views with Global Filtersâ

The global filter is used in the following parts of the software:

Main Graph

Data Export View

Main Graphâ

The Main Graph view implements a function to apply the global filters to other open Main Graphs. This action will clear the existing global filters from the other Main Graphs and replace them with the global filters of the source Main Graph.

Apply to Worksheet: Will apply the filters to all Main Graphs within the same Worksheet

Apply to All: Will apply the filters to all Main Graphs in the Layout

Data Export Viewâ

Refer to the Data Export View documentation.

Basic Usageâ

In these views, the global filter will appear on the right side of the screen. The global filter allows the user to filter based on the:

Championship

Event

Session Name

Track

After making a selection, the Apply Filter button must be clicked to refresh the data.

tipUnless specifically needed, it is not recommended to fully clear the filter and then click Apply Filter as this will force the software to load all local data into memory which can take a long time depending on how large the local database is.

Custom Filterâ

Clicking the Add Custom Filter button will open a dialog that lets you define a filter using a math expression:

An expression can be written based on the selected filter type. In this example a lap filter is created and will filter out all laps with in and out lap markers. Once they are created custom filters can be edited or deleted using the buttons under each filter in the Data section.
