---
url: https://help.hh-dm.com/dmi/send-loops/
---

On this pageSend Loops

The DMI integration offers the option to send loops to HH Data Management, but there a few steps to take in HH DM to be able to import and plot the loops sent by the DMI plugin.

Setting up the collection itemsâ

Create a new TrackConfigurationCollectionItem definition called AdditionalSectorDefinition with parameters SectorDefinition and SectorName:

Add the TrackConfigurationCollectionItem definition to the TrackConfiguration definition with the parameter name LoopSectorDefinitions:

Create a new custom column called AdditionalSectorDefinition with column definitions for SectorName and SectorDefinition:

Create a new LapCollectionItem definition called LoopCrossingsDefinition with parameters LoopName and SessionTime:

Add the new LapCollectionItem definition to the Lap definition with the name LoopCrossingTimes:

Configuring loopsâ

Define the loop sectors in the track configurations. To find the loop crossing names, either copy them from the session in HH Timing, or check the series specific info in the HH Timing documentation.

tipNot all loops are populated by the timing systems. The series specific info in the HH Timing documentation specifically lists which loops will report timing information.

tipTo avoid confusion, name the loop crossings something other than the default sector names for the track in HH DM (something like LS1 (loop sector 1), LS2, LS3...); this is completely preference though.

The loop sector definition is the name of one loop and the name of another loop separated by a semicolon: FL;SCL2.

noteLoop sector definitions do not have to be consecutive. If the loops for a track in order are FL1, SCL2, and PL1, for example, you could define loop sectors FL;SCL2, FL;PL1, or SCL2;FL.

Then, in the DMI, be sure to check "Send Loops":

Using Loops in HH Data Managementâ

Once loops are sent from HH Timing to HH Data Management, they can be:

Plot on the Main Graph:

LoopSectorTimes[0].SectorTime for the first one

LoopSectorTimes[1].SectorTime for the second one etcï¿½

Or used in a custom view:

Duration: LoopSectorTimes[{i}].Doubles.SectorTime

Title: ContextSelection.SelectedSession.TrackConfiguration.Collections.LoopSectorDefinitions.Items[{i}].Strings.SectorName

Or added as custom columns in pre-existing definitions
