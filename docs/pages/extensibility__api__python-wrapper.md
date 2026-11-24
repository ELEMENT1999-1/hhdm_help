---
url: https://help.hh-dm.com/extensibility/api/python-wrapper/
---

On this pagePython wrapper

The python wrapper is designed to simplify the process of interacting with the API in a python environment.

To view instructions and tips on how to get set up developing in python, see the Introduction to Python.

The wrapper is available on PyPi and can be installed:

>pip install hhdm-apiclient-wrapper

It can be imported in a python script like:

import hhdm_apiclient_wrapper as hh

Any examples will assume the wrapper has been imported like above.

Examples of usage are available on Github.

Each function in the wrapper maps to an endpoint on the API.

Instantiation and authenticationâ

To make requests from the API, the wrapper must be authenticated. The API key can be passed to the wrapper when it is initialized. Initializing and authenticating the ApiClient can be done like so:

auth_settings = hh.AuthenticationSettings(api_key='API-KEY-HERE', authentication_mode=hh.AuthenticationMode.API_KEY)
client = hh.ApiClient(authentication_manager=hh.AuthenticationManager(auth_settings))

Disposalâ

When all API operations are complete and the client is no longer needed, it should be disposed of by calling the hh.ApiClient.close() function:

client.close()

This releases resources used by the underlying httpx.AsyncClient instance that is shared between requests used for connection pooling.

Conceptâ

The general concept of the wrapper follows the same concept as the API, providing functions to get single items, lists of items, and create, update and delete items. One of the advantages of the wrapper is that it handles the multi-step process of uploading attached files.

All functions in the API wrapper have an account ID argument which is used in the AccountId header

ApiGetOptionsâ

The class ApiGetOptions is used to specify what properties should be requested from the relevant entities.

It contains the following property:

parameters_to_include: List[str]: the list of properties, accepts * as a wildcard property, and nested properties can be accessed through dot notation. For example, Events.Cars.Car.*

ApiGetResult(Generic[T])â

The class ApiGetResult(Generic[T]) is returned from all Add and Get functions. T is currently generally either a List[Dict] or Dict depending on the function.

The ApiGetResult(Generic[T]) class has the following properties:

success: bool: false if the request failed - in which case more information can be found in the message and status_code properties

message: str: if the request failed, provides more information on the reason for the failure

status_code: HTTPStatus: the status code of the request

return_value: T: if the request succeeded, the requested or created entity will be available in this property. If used in a Get function, this will be an entity or list of entities matching the criteria and parameters_to_include parameter. If used in an Add function, this contains the created entity and be populated as if parameters_to_include has a value of *.

Add functionsâ

To add a new item using the wrapper use the add_{entity_name} functions. Some IDs will be required as arguments to express where the new item should be created. For example when creating a setup, the event_id and car_id will be required. A CreateModel instance is also required which has the properties explained in the creating items section of the API documentation.

For example:

add_setup_result = await client.add_setup(account_id, event_id, car_id, hh.CreateModel(true, false, None, []))

The add functions return a ApiGetResult[Dict].

Get functionsâ

To get an item using the wrapper there are multiple options, as with the API. A single item can be retrieved by ID, or a list of items can be retrieved by passing in the appropriate parent IDs. For example when getting a list of setups, the event_id and car_id will be required. An ApiGetOptions instance is also required which contains the parameters_to_include information.

The get functions return a ApiGetResult[T]. The T will be either an item or a List of items depending on the function called.

For example:

get_setup_result = await client.get_setup_by_id(account_id, setup_id, hh.ApiGetOptions(["*"]))

This will return a ApiGetResult[Dict] containing all the properties on the setup with the ID specified by setup_id.

get_setups_result = await client.get_all_setups_for_event_car(account_id, event_id, car_id, hh.ApiGetOptions(["*"]))

This will return a ApiGetResult[List[Dict]].

Update functionsâ

To update an item using the wrapper use the update_{entity_name} functions. The ID of the item to be updated will need to be provided as an argument. An UpdateModel instance is also required which contains the parameters_to_include information.

The update functions return a bool that indicates if the request was successful.

For example:

update_setup_result = await client.update_setup(account_id, setup_id, hh.UpdateModel(None, [
 hh.ParameterUpdateModel("Param1", "NewValue")
]))

Delete functionsâ

To delete an item using the wrapper use the delete_{entity_name} functions. The ID of the item to be deleted will need to be provided as an argument.

The delete functions return a bool that indicates if the request was successful.

For example:

delete_setup_result = await client.delete_setup(account_id, setup_id)

Collectionsâ

Collections are a custom property that allow a user to define an array of objects linked to the current object. Endpoint descriptions are provided in API concepts, their equivalent functions in python are provided below (setups are used in the examples below):

Add collection itemâ

add_result = await client.add_setup_collection_item(account_id, setup_id, collection_name, hh.CreateModel(True, False, None, [hh.ParameterUpdateModel("Name", "New setup item")]))

Delete collection item(s)â

delete_result = await client.delete_setup_collection_items(account_id, setup_id, collection_name, hh.DeleteCollectionItemsModel(
 indexes_to_remove = [0],
 item_ids_to_remove = ['guid1']))

Add or update collection item with paddingâ

The item at the specified index is updated, or created, using the UpdateModel provided. If the specified index is greater than or equal to the number of items in the collection, then item(s) are added to the end of the collection until index + 1 items exist. If more than one item must be added to create an item at the specified index, then empty items are added in between as "padding". If -1 is specified, an item is added to the end of the collection with no extra padding items.

update_result = await client.create_or_update_setup_collection_item_with_padding(account_id, setup_id, collection_name, hh.UpdateModel(None, [
 hh.ParameterUpdateModel("Param1", "NewValue")
]), index)

Get collection item attachmentsâ

Follows working with attachments.

attached_file_infos = await client.get_setup_collection_item_attachments_by_id(account_id, setup_id, collection_name, collection_item_id, [ attachment_id ]);

Attached Filesâ

Downloading a fileâ

General steps required to download an attached file are outlined in API concepts. Downloading an attached file is a multi-step process:

# Get attached file information from the base entity
championship_result = await client.get_championship_by_id(account_id, championship_id, hh.ApiGetOptions(['AttachedFiles.*']))

# Get the signed URL to download the file with
selected_file = championship_result.return_value['AttachedFiles'][0]
download_result = await client.get_championship_attachments_by_id(account_id, championship_id, [selected_file['Id']])

# Download the file from the signed URL. This must be done within 1 hour of the previous API request as the signed URL will expire and must be regenerated.
client.download_file(download_result.return_value[0], 'C:\\HHDM-Download\\downloaded.png')

A full example of how to download an attached file can be found in the python API wrapper example GitHub.

Uploading a fileâ

General steps required to upload an attached file are outlined in API concepts. Using the API wrapper, adding an attached file requires one step:

add_file_result = await client.add_attachment_to_championship_and_wait_for_upload(
 account_id,
 championship_id,
 hh.ApiPrepareUploadModel(
 file_name, # the name that will appear for the file in the software (could just be the file name from the path)
 custom_property_attached_file_name, # a CustomPropertyAttachedFileName - for normal files would be None
 True, # whether to overwrite the existing file if uploading to a CustomPropertyAttachedFile that only allows one file. Only applicable if custom_property_attached_file_name is not None
 hh.AutoDownloadMode.FROM_PARAMETER), # "FROM_PARAMETER" uses the configured auto-download mode for the CustomPropertyAttachedFile (should be used in most cases); "YES" automatically downloads the file to all users computers that have access to the file
 file_path)

A full example of how to upload an attached file can be found in the python API wrapper example GitHub.
