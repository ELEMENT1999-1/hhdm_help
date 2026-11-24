---
url: https://help.hh-dm.com/extensibility/api/
---

On this pageAPI

The HH Data Management web API can be used to directly access portions of the HH Data Management database without having to go through the HH Data Management client and syncing framework. This gives direct access to all data.

Authenticationâ

The API supports authentication using an API key (Basic authentication) or using the OAuth protocol. Access to the API is linked to the user account and the data rules in the permissions control how data can be accessed.

To use an API key you should supply an ApiKey header with the API key as the content. To create an API key visit the website and select the Integrations menu item:

Next, click "Add New Api Key" and enter a name for the API key and a key will be generated.

To use OAuth for authentication, a token must be acquired from the authentication server. The .NET wrapper has an OIDC client implemented to manage this automatically.

Selecting parameters returned in queriesâ

When making a GET request to an endpoint you can pass a URL parameter called parametersToInclude that lets you specify which parameters will be included in the response. This can be useful to access related data (e.g. get the session for a runsheet or the laps) and also to limit the amount of data returned in a response to make the API calls faster. The parametersToInclude should be a comma separated list. The names of the parameters are the same as those used in the HH DM client software to access custom properties and related entities. The * symbol is used to represent all parameters. When building a response the API has the following logic:

if you do not provide a value for parametersToInclude or if you pass in * the API will return:

all parameters of the current entity

the following parts of the response will be present but empty

collections

children (e.g. the RunSheet endpoint will return an empty Laps object)

parents (e.g. the RunSheet endpoint will return empty Car and Session objects)

referenced items will be populated but no parameters will be included (e.g. the RunSheet endpoint will return a Setup object with no parameters)

Here is a sample from the RunSheet endpoint:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "AirTemperature": 26.0, 
 "SetupId": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "SessionId": "c9e28903-1946-4bd5-8d89-e4236f9b527c",
 "CarId": "afd5e230-0c21-40f8-88a9-b003a21a1c93", 
 "RunName": "RUN 1",
 ** additional parameters omitted for clarity **
 "Setup": {
 "$type": "Setup",
 "Id": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "Parameters": {},
 "DefinitionId": "60d5a9b2-122a-42c2-a093-f9add1ec2bb4",
 "Collections": {}
 }
 ** additional parameters omitted for clarity **
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {},
 "Session": [],
 "Car": [],
 "SessionCar": [],
 "Laps": []
}

The empty and minimal objects are returned to provide insight to users to see what each entity has access to.

if parameters are specified then only these parameters are provided. For example, if the parametersToInclude was set to RunName,AirTemperature then the response would look like this:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "AirTemperature": 26.0,
 "RunName": "RUN 3"
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {}
}

Referenced items can be specified using the dot notation. For example, if the parametersToInclude was set to RunName,Setup.Name then the response would look like this:

{
 "$type": "RunSheet",
 "Id": "54d989d4-1442-40e6-8af9-7e7662a19c18",
 "Parameters": {
 "RunName": "RUN 1",
 "Setup": {
 "$type": "Setup",
 "Id": "5215b098-154a-48dd-aabf-c44af0125e2b",
 "Parameters": {
 "Name": "SETUP 1"
 },
 "DefinitionId": "60d5a9b2-122a-42c2-a093-f9add1ec2bb4",
 "Collections": {}
 }
 },
 "DefinitionId": "07111622-0281-4085-8118-d82082f84007",
 "Collections": {}
}

the dot notation also supports the wildcard character, so sending Setup.* to the runsheet endpoint would return all parameters from the referenced setup.

Selecting parameters using parameter groupingsâ

Parameter groupings can be used to easily select a subset of parameters without needing to specify each parameter name individually. Rather than writing the parameter name in parametersToInclude, write the grouping name in brackets. For example if there is a parameter grouping called FrontSuspension then writing (FrontSuspension) would include all parameters in that group in the JSON response.

Setting parameter valuesâ

When making a POST or PUT request the body of the request should contain a JSON array called ParameterUpdates. Therefore the body will have a structure like this:

{ 
 "ParameterUpdates": [
 {
 "Name": "string",
 "Value": "string"
 }
 ]
}

Each entry in the ParameterUpdates should have a name that corresponds to the parameter that is to be updated and the value should be the new value you wish to set on the entity and should always be sent as a string. For example, to update the AirTemperature and TrackTemperature of a RunSheet the body of the PUT request should look like this:

{ 
 "ParameterUpdates": [
 {
 "Name": "AirTemperature",
 "Value": "30.0"
 },
 {
 "Name": "TrackTemperature",
 "Value": "35.0"
 }
 ]
}

Each parameter type should be converted to a string as follows:

Parameter TypeFormattingDouble3.1416 becomes "3.1416"BooleanFalse becomes "False"DateTimeDatetime in UTC formatted as an invariant ISO-8601 string with up to 9 decimal places of sub-second accuracy with the pattern "uuuu'-'MM'-'dd'T'HH':'mm':'ss.FFFFFFFFF'Z'" (e.g. 2024-03-27T11:13:27.521068Z)PartThe part IDPart ItemThe part ID + ";" + the part item ID (e.g. "551cad01-2f49-438c-bbb7-b6503b4a5a90;4b0ddf26-8db3-490e-8891-a10e4d2ee616")AssemblyThe assembly iteration ID
Creating itemsâ

When making new items with a POST request, the body should contain a JSON object with the following structure:

{
 "CopyFromId": "guid",
 "CopyFromLast": true,
 "CopyAll": true,
 "Index": 0,
 "ParameterUpdates": [
 {
 "Name": "string",
 "Value": "string"
 }
 ]
}

Where:

CopyFromId: if an ID is provided, then when the new item is created all property values will be copied from the existing item with a matching ID, based on the copy to new setting of the parameter. Note that copying is only permitted within the same context (e.g. setups can only be copied within the same event/car)

CopyFromLast: if true, then when the new item is created all property values will be copied from the previous existing item, based on the copy to new setting of the parameter

CopyAll: if true, then all property values will be copied from the previous existing item, regardless of the copy to new setting of the parameter

Index: if specified, the new item will be inserted at the specific position in the list - if not specified the new item will be placed last in the list of items

ParameterUpdates: as explained above

warningThe POST will fail and the API will return a 400 Bad Request code if a value is provided for CopyFromId and CopyFromLast = true. Only one of these options should be specified in a single request.

Headersâ

In addition to the headers required for authentication, the following headers are also required on requests:

AccountId: the ID of the account that owns the data that is being requested. Currently, this header is optional (requests will still succeed without it), but it may become mandatory in the future. We strongly recommend including the AccountId header for all new projects.

Collectionsâ

Collections are a custom property that allow a user to define an array of objects linked to the current object.

There are additional endpoints provided on the API to manipulate collections that mirror normal entity functions to add/update/delete and retrieve collection item information. These endpoints are provided for each custom property entity like normal entity manipulation endpoints.

Add collection itemâ

POST {id}/Collections/{collectionName}
Content-Type: application/json
{
 "CopyFromId": "guid",
 "CopyFromLast": true,
 "CopyAll": true,
 "Index": 0,
 "ParameterUpdates": [
 {
 "Name": "string",
 "Value": "string"
 }
 ]
}

Where:

CopyFromId: if an ID is provided, then when the new item is created all property values will be copied from the existing item with a matching ID, based on the copy to new setting of the parameter. Note that copying is only permitted within the same context (e.g. setups can only be copied within the same event/car)

CopyFromLast: if true, then when the new item is created all property values will be copied from the previous existing item, based on the copy to new setting of the parameter

CopyAll: if true, then all property values will be copied from the previous existing item, regardless of the copy to new setting of the parameter

Index: if specified, the new item will be inserted at the specific position in the collection - if not specified the new item will be placed last in the collection

ParameterUpdates: as explained in setting parameter values

warningThe POST will fail and the API will return a 400 Bad Request code if a value is provided for CopyFromId and CopyFromLast = true. Only one of these options should be specified in a single request.

Delete collection item(s)â

Both IndexesToRemove and ItemIdsToRemove do not need to be specified. If both are provided, IndexesToRemove are processed first.

 DELETE {id}/Collections/{collectionName}
 Content-Type: application/json
 {
 "IndexesToRemove": [0, 1],
 "ItemIdsToRemove": ["guid0", "guid1"]
 }

Add or update collection item with paddingâ

The item at the specified Index is updated, or created, using the ParameterUpdates provided. If the specified Index is greater than or equal to the number of items in the collection, then item(s) are added to the end of the collection until Index + 1 items exist. If more than one item must be added to create an item at the specified Index, then empty items are added in between as "padding". If -1 is specified, an item is added to the end of the collection with no extra padding items. ParameterUpdates are formatted as explained in setting parameter values.

PUT {id}/Collections/{collectionName}?Index={Index}&itemId={guid}
Content-Type: application/json
{
 "ParameterUpdates": [
 {
 "Name": "string",
 "Value": "string"
 }
 ]
}

Get collection item attachmentsâ

This follows working with attachments.

GET {entityId}/Collections/{collectionName}/{collectionItemId}/Attachments?attachmentIds={attachmentIds}

Please see the corresponding section in the .NET API wrapper for using these endpoints in .NET.

Attached filesâ

Working with attached files using the API has more steps than other types of properties due to the way files are stored in the cloud. First, the information about the attached file on an entity must be acquired (like the attached file name and state of the file on the server), and then operations like getting a URL to download a file from, and/or upload a file to, can be completed.

Downloading a fileâ

Please see the corresponding sections in the .NET or python API wrappers for specific instructions. These wrappers simplify the process of downloading a file instead of completing each of the following steps manually.

Get attached file information (e.g. GET https://hhdm-api.hh-dev.com/Events/{eventId}?parametersToInclude=AttachedFiles.*)

Get the signed URL to download the file from (e.g. GET https://hhdm-api.hh-dev.com/Events/{eventId}/Attachments?attachmentsIds={attachmentId})

Download the file from the signed URL. This must be done within 1 hour of the previous API request as the signed URL will expire and must be regenerated.

Uncompress the downloaded LZ4 compressed file

Uploading a fileâ

Please see the corresponding sections in the .NET or python API wrappers for specific instructions. These wrappers simplify the process of uploading a file instead of completing each of the following steps manually.
Uploading files using the API is a process that takes several steps, each step requires building the headers and adding the ApiModels to the request body yourself:

Compress the file using LZ4

Create the attached file using a POST request. e.g.

POST https://hhdm-api.hh-dev.com/Championships/{championshipId}/Attachments
Content-Type: application/json
{
 "FileName": "TestFile",
 "CustomPropertyAttachedFileName": "",
 "IfSingleOverwriteExisting": false,
 "AutoDownloadMode": 2,
 "Sha256": "n4bQgYhMfWWaL+qgxVrQFaO/TxsrC4Is0V1sFbDwCgg="
}

AutoDownloadMode can be 0 (Yes), 1 (No) or 2 (From parameter).

Sha256 is optional. If set, it must be the SHA-256 hash of the original (uncompressed) file, encoded as standard Base64 (44 characters, including the trailing =), not as hex.

Providing the hash avoids uploading a file that is already there. For a custom property attached file that only allows one file:

204 No Content: the same file is already uploaded. Skip steps 3 and 4.

200 OK: continue with steps 3 and 4 as usual.

Upload the compressed file to the URL returned in the previous request. This must be done within 4 hours of the previous API request as the signed URL will expire and must be regenerated.

Set the server attached file state to "2" (AvailableOnServer) using a PUT request. e.g.

PUT https://hhdm-api.hh-dev.com/Championships/{championshipId}/Attachments/{attachedFileId}
Content-Type: application/json
{
 "ParameterUpdates": [
 {
 "Name": "ServerAttachedFileState",
 "Value": "2"
 }
 ]
}
