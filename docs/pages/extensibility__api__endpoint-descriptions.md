---
url: https://help.hh-dm.com/extensibility/api/endpoint-descriptions/
---

On this pageEndpoint Descriptions

All endpoints are described in the API endpoint documentation, however for some there may be some context missing and this section will explain some of the endpoints in more detail.

Searchâ

The Search endpoint that is available for some types such as Tyres, IssueListIssues and AssemblyIterations allows for searching of subsets of items in the database in the same way as the tyre inventory in the client software. This is a GET request with a body. As shown in the API endpoint documentation, the body object should contain a property associatedModelSearchMode. Depending on the value of this property the returned items will belong to either the whole account, a provided championship, event, car or event/car. This property is an integer with the corresponding values:

0 = Account

1 = Championship

2 = Event

3 = Car

4 = Event/Car

Depending on the value provided for associatedModelSearchMode, the appropriate ID properties should be present.

TimingIntegrationâ

The TimingIntegration endpoints are used by the HH Timing Integration (DMI) and are designed to provide a simpler interface to update runs, laps and sectors/speed traps based on an index rather than an ID. As shown in the API endpoint documentation, all request body objects should contain the following IDs:

accountId

championshipId

eventId

sessionId

carId

Each body can contain an array of objects under properties that make it possible to update parameters on the run/lap/sector. These objects follow the same convention as parameter updates on the standard PUT/POST endpoints as described above.

The other parameters for various endpoints are:

driverId - if the driver ID is provided then the driver of the run will be updated

runIndex - the 0-based index of the run to be updated (i.e. for run 1, runIndex = 0)

stintLapNumber - the 1-based stint lap number for the lap to be updated (i.e. for the out lap of the stint, stintLapNumber = 0)

sectorId - when updating a sector the ID of the sector must be provided. This corresponds to the ID of the TrackSectorDefinition in the TrackConfiguration used for the current session

speedTrapId - when updating a speed trap the ID of the sector must be provided. This corresponds to the ID of the TrackSpeedTrapDefinition in the TrackConfiguration used for the current session

pitIn/OutTime - the time of day for the pit in/out. This is a date string in the extended ISO-8601 format.

pitIn/OutSessionTime - the session time for the pit in/out. This is a value in seconds since the start of the session.

shouldCreateNextRun - if this is provided as true on a pit in, then a new run will be created automatically

CanopySimulationsâ

The CanopySimulations endpoints trigger and reprocess Canopy simulations from the API. They are the headless, batchable equivalent of the desktop Trigger Canopy Simulation and Reprocess Canopy Simulation buttons.

Both endpoints are asynchronous: the request is validated and queued, and the simulation then runs in the background. Progress is reported back through the setup status parameters configured on the Canopy profile, exactly as for the desktop buttons. The response confirms only which setups were accepted, not the final simulation result.

Both endpoints accept an array of setup IDs, so a single request can target one or many setups. Each setup is validated independently and the response contains a per-setup result; a request can therefore be partially accepted (some setups queued, others rejected).

Canopy credentials in the request body are optional. When they are omitted, the simulation authenticates through the account's Canopy connection set up from the website's Canopy Config page; the setup's account must be connected or the setup is rejected. When credentials are supplied they must be complete - the same ones used to sign in to the Canopy portal (the client secret must be requested from Canopy directly). Partial credentials are rejected.

POST CanopySimulations/Triggerâ

POST https://hhdm-api.hh-dev.com/CanopySimulations/Trigger

Triggers a new simulation. The request body contains:

canopyProfileId - the ID of the Canopy simulation configuration (profile) to run

setupIds - an array of setup IDs to trigger

credentials - optional; an object with clientId, clientSecret, username and password. Omit it to use the account's Canopy connection

POST CanopySimulations/Reprocessâ

POST https://hhdm-api.hh-dev.com/CanopySimulations/Reprocess

Reprocesses the results of already-run simulations without re-running them. The request body contains the same fields as Trigger plus:

parameterNameForStudyId - the name of the setup parameter that holds the Canopy study ID to reprocess. The study ID is read from this parameter on each setup; if the parameter is missing or empty, that setup is rejected.

Each entry in the response results array has:

setupId - the setup the result refers to

accepted - true if the request for this setup was validated and queued

studyId - the resolved Canopy study ID (reprocess only; null otherwise)

message - the reason the setup was rejected when accepted is false

GET CanopySimulations/Statusâ

GET https://hhdm-api.hh-dev.com/CanopySimulations/Status?canopyProfileId={profileId}&setupIds={setupId}&setupIds={setupId}

Because Trigger and Reprocess are asynchronous, this endpoint is how a caller observes the outcome - whether a simulation was requested, started, failed to start, is running, or finished. The status is read from the setup status parameters configured on the Canopy profile (the same parameters shown in the client), so the profile must configure a Simulation Status Parameter Name for a status to be available.

The query parameters are:

canopyProfileId - the Canopy profile whose status parameter names should be used

setupIds - one or more setup IDs (repeat the parameter for each setup)

Each entry in the response results array has:

setupId - the setup the result refers to

setupFound - true if the setup was located and is accessible

status - the latest simulation status (e.g. Requested, Simulation started, Simulation start failed, Processing completed); null when unavailable

message - the status detail/failure reason when available, or why status is unavailable (setup not found, no permission, or the profile configures no status parameter)

studyId - the Canopy study ID saved on the setup, if the profile configures a parameter for it

lastUpdateTime - when the status was last updated (ISO-8601), if the profile configures a status update time parameter

The status is eventual and best-effort: it is overwritten in place per setup, so it always reflects the most recent run. For push-based notifications rather than polling, use the SQS/HTTP callback integrations instead.

DataFileAccessâ

The DataFileAccess endpoints give read-only access to the telemetry data files (datasets) attached to an entity, reading channel samples directly from the API without downloading and parsing the file yourself. They are intended for integrations and report building.

They are generated per entity type, for any entity that the feature is enabled on - not a fixed set. The entity's plural name and id form the first two path segments. Entities that expose them today include, for example:

RunSheets/{runSheetId}

SessionCarDatas/{sessionCarDataId}

Setups/{setupId}

More entity types may be enabled over time, so treat the list above as examples rather than the complete set.

{attachedFileGroupName} is the name of the attached data-file dataset (group) on the entity, for example DataFile or DataFile_Logged. It must be URL-encoded. A dataset name maps either to a single file or to a group of per-lap files; both are handled transparently.

The endpoints are permission-checked as a read of the owning entity (the caller needs read access to that entity), require the AccountId header like every other endpoint, and are rate limited (see Limits below). The Swagger documentation lists every entity that currently exposes them.

GET {entity}/{id}/DataFileAccess/{attachedFileGroupName}/metadataâ

GET https://hhdm-api.hh-dev.com/RunSheets/{runSheetId}/DataFileAccess/{attachedFileGroupName}/metadata

Returns the dataset's session metadata, lap timing and channel catalogue - enough to discover what can then be requested from the channel endpoints, without transferring any samples. The response contains:

entityId / entityType / attachedFileGroupName - echo of what was requested

fileProperties - session/event context: eventName, sessionName, runNumber, driverName, venueName, carId, outingTime

startTime - file start time in seconds

fileTimeLength - file length in seconds

lapCount - the number of laps; the valid lapIndex values for the channel endpoints are 0 to lapCount - 1

lapElapsedTimes - an array of lap elapsed times in seconds

channels - the channel catalogue; each entry has name, unit, frequency (Hz), sampleCount, dimension and dataType

GET {entity}/{id}/DataFileAccess/{attachedFileGroupName}/channelâ

GET https://hhdm-api.hh-dev.com/RunSheets/{runSheetId}/DataFileAccess/{attachedFileGroupName}/channel?channel={channelName}

Reads the samples of a single channel. The query parameters are:

channel - the channel name (required). URL-encode it, as channel names can contain spaces or other reserved characters.

lapIndex - 0-based lap index, valid values 0 to lapCount - 1 (see the metadata endpoint); when present the read is scoped to that lap. An out-of-range value receives 400 Bad Request.

start - window start in seconds from file start

duration - window length in seconds

The scope is chosen from the parameters supplied: lapIndex selects a single lap; otherwise start/duration select a time range; with none of them the whole file is read. The response is the same channel shape described below, containing the single requested channel.

POST {entity}/{id}/DataFileAccess/{attachedFileGroupName}/channelsâ

POST https://hhdm-api.hh-dev.com/RunSheets/{runSheetId}/DataFileAccess/{attachedFileGroupName}/channels

Reads many channels from the dataset in a single request (one fetch and parse for all of them). The request body is:

channels - an array of channel names to read

mode - how the read is scoped: 0 = whole file, 1 = lap, 2 = time range

lapIndex - 0-based lap index, valid values 0 to lapCount - 1; required when mode is 1. An out-of-range value receives 400 Bad Request.

startTime - window start in seconds; required when mode is 2

duration - window length in seconds; required when mode is 2

The response contains:

entityId / entityType / attachedFileGroupName - echo of what was requested

mode - the scope that was applied

channels - one entry per returned channel, each with name, unit, frequency (Hz), dimension and samples. samples is an array of numbers in which a null entry is a gap (no sample at that index).

Binary responseâ

The channel endpoints return JSON by default. For large reads a compact binary encoding is available: send an Accept: application/x-hhdm-channels (or application/octet-stream) request header and the same data is returned in a binary body instead of JSON. Both the single-channel and batch endpoints support it.

Limitsâ

These endpoints are concurrency-limited per user (a small number of simultaneous reads, with a short queue); requests beyond that receive 429 Too Many Requests.

The channels request body is capped at ~1 MB; a larger body receives 413 Payload Too Large.

Other failures map to standard codes: 400 (bad request), 404 (entity or dataset not found, or no permission), 415 (the file type does not support channel reads), 422 (the file could not be read/parsed), 504 (the read timed out).

SDK wrappersâ

The .NET and Python wrappers expose generated methods for each entity so you do not have to build these URLs by hand. The methods follow a fixed naming pattern per entity - Get{Entity}DataFileMetadata / Get{Entity}DataFileChannel / Get{Entity}DataFileChannels in .NET and get_{entity}_data_file_metadata / get_{entity}_data_file_channel / get_{entity}_data_file_channels in Python - so every entity that exposes these endpoints gets its own set. For example, for RunSheet:

.NET: GetRunSheetDataFileMetadata, GetRunSheetDataFileChannel, GetRunSheetDataFileChannels

Python: get_run_sheet_data_file_metadata, get_run_sheet_data_file_channel, get_run_sheet_data_file_channels
