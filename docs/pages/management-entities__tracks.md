---
url: https://help.hh-dm.com/management-entities/tracks/
---

On this pageTracks

The tracks view can be accessed from the admin tab of the ribbon bar:

The track in HH Data Management is built from the following elements:

track

track configuration

sectors

speed traps

lap marker and lap track status marker associations

Trackâ

The track is the root entity. An important property of each track is the time zone. When a track is added to an event, this parameter is used to calculate all time values for the event (such as run start time). This is used to convert local times to the Coordinated Universal Time (UTC) for consistent data storage.

tipTo override a track's time zone for a given session, use the Event Management view

Track configurationâ

Each track can have one or more track configurations. The track configurations are used to differentiate different track layouts or different timing sector configurations. The track configurations are stored as child tables under the track in the main table:

When creating events and sessions each session can have its own track configuration.

A track map can be uploaded to be displayed in the runsheet for example.

The button can be created from the custom colums

Pitlane locationâ

On the majority of the race tracks the start/finish line crosses the pitlane. This is the default setting in HH DM. For tracks where this is not the case, i.e. when a car enters the pitlane and exits the pitlane again, but the official lap number hasn't changed, the track configuration needs to be configured accordingly. In order to do so a custom property of type Boolean with the name "PitlaneNotAtSF" needs to be added to the Track Configuration definition.

Afterwards a column needs to get added to the default track configuration column profile in the custom colums view:

Finally the parameter PitlaneNotAtSF can be set for each track configuration:

Generating laps through the DMI on a track where the pitlane is not on S/F will then look as follows (this is from Sebring WEC where the pitlane enters in timing sector 3 and exits in timing sector 1):

Pit in in total lap #5 (no sector 3 time because of that)

Pit out in total lap #5 (no sector time 1 and 2 and stint lap #0)

In general the total lap # of the inlap is the same as the one from the outlap and the stint lap # of the outlap is set to 0 to not create an offset in the lap count.

Sectors and speed trapsâ

Sectors and speed traps can be edited by selecting the the Sectors/Speed Traps tab on the panel on the right side of the screen. Each track configuration has its own sector and speed trap lists, and the sectors shown on the screen are for the selected track configuration in the main table. These lists are used to control how many sectors and speed trap columns appear in the runsheet lap table.

Sectors have an option to set the Is Track Sector parameter. This parameter is used to specify if a sector is part of the contiguous track. If this parameter is set to false, then this sector will not be considered in the best theoretical lap calculation.

noteIt is highly recommended not add a sector or speed trap during an event if some laps have already been added. This could lead to unexpected behaviour in the run sheet (not able to update sector time, loss of data, etc...). Deleting sectors and speed traps is not allowed once a track configuration has been used in an event.
