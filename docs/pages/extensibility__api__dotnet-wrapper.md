---
url: https://help.hh-dm.com/extensibility/api/dotnet-wrapper/
---

On this page.NET wrapper

The .NET wrapper has been made to simplify the process of interacting with the API in a .NET application.

The wrapper is available on Nuget.

Examples of how to use the wrapper are available on Github.

Each function in the wrapper maps to an endpoint on the API.

Choosing a clientâ

The package contains two clients that cover the same set of endpoints:

ApiClientV2: use this for all new code. Every function is named with an Async suffix, returns an ApiResult and takes an optional per-request timeout and cancellation token.

ApiClient: the original client. It is marked [Obsolete] and is only kept so that existing applications keep compiling. Its functions return ApiGetResult<T> or a plain bool.

Both clients are in the HHDev.DataManagement.ApiClientWrapper namespace, use the same authentication classes and can be used side by side while an application is migrated.

Authenticationâ

To make requests from the API, the client must be authenticated. This can be done using a normal API Key or OAuth. Both clients take the same AuthenticationManager.

API Keyâ

The API key can be passed to the AuthenticationManager when it is created:

var authManager = new AuthenticationManager(eAuthenticationMode.ApiKey, "API KEY HERE");

OAuthâ

To use the OAuth protocol for authentication. Create a SimpleAuthenticationSettings instance with the OAuth AuthenticationMode. Then assign this to both the OAuthAuthenticationManager and the AuthenticationManager given to the client like so:

// The same AuthenticationSettings instance must be shared between OAuthAuthenticationManager and the AuthenticationManager given to the client instance.
var sharedAuthSettings = new SimpleAuthenticationSettings
{
 AuthenticationMode = eAuthenticationMode.OAuth
};
OAuthAuthenticationManager.AuthenticationSettings = sharedAuthSettings;
var authManager = new AuthenticationManager(sharedAuthSettings);

When the application is run, the default system browser will open and ask the user to login with their username and password (just as when logging into hh-dev.com).

All relevant authentication classes are in the HHDev.DataManagement.Client.Authentication namespace.

Conceptâ

The general concept of the wrapper follows the same concept as the API, providing functions to get lists of items as well as single items, create and delete items. One of the advantages of the wrapper is that it handles the multi-step process of uploading attached files.

All functions in the API wrapper have an account ID argument which is used in the AccountId header

ApiClientV2â

Instantiationâ

Pass the authentication manager to the constructor:

var apiClient = new ApiClientV2(authManager);

This talks to the default API host, ApiClientV2Config.DEFAULT_API_HOST. To use another one, pass it as the second argument:

var apiClient = new ApiClientV2(authManager, "staging.hh-dev.com:10185");

The authentication manager can be replaced at any time by calling UpdateAuthenticationManager.

ApiClientV2 implements IDisposable and IAsyncDisposable.

Configurationâ

Pass an ApiClientV2Config to control the rest of the behaviour:

var config = new ApiClientV2Config("hhdm-api.hh-dev.com")
{
 Timeout = TimeSpan.FromSeconds(30),
 MaxConcurrentRequests = 10,
 Logger = loggerFactory.CreateLogger<ApiClientV2>(),
};
var apiClient = new ApiClientV2(authManager, config);

ApiHost: the API to talk to. new ApiClientV2Config() uses DEFAULT_API_HOST, but a host that is given and left blank is rejected

Timeout: how long a request may take when it does not pass a timeout of its own. Defaults to 100 seconds. Use Timeout.InfiniteTimeSpan for requests without a deadline

MaxConcurrentRequests: if set, the client keeps no more than this number of requests in flight at once. If it is left null the number of requests is not limited

Logger: receives one event per request, at Debug when it succeeded and at Warning when it did not

SslEnabled: set to false to skip certificate validation when talking to a local API

FeatureFlag: sent as a header on every request

There is also a constructor that takes an HttpMessageHandler, for applications that manage their own handler. A handler passed in this way is not disposed by the client.

Timeouts and cancellationâ

Every function ends with two optional arguments:

Task<ApiResult<ApiSetupModel>> GetSetupByIdAsync(string accountId, string setupId, ApiGetOptions options = null, TimeSpan? timeout = null, CancellationToken cancellationToken = default);

timeout: the deadline for this one request. When it is not given the Timeout from the configuration is used

cancellationToken: cancelling the token abandons the request

Neither raises an exception. Running out of time gives a result with a Status of ClientTimeout, cancelling gives Cancelled.

The attachment functions are the one exception to the timeout: it covers the API calls they make, but not the transfer of the file to storage. That transfer stops only when cancellationToken is cancelled, so a large upload is not cut short by the timeout.

ApiResult and ApiResult<T>â

ApiResult<T> is returned from every function that reads something back, and ApiResult from the rest. Both have the following properties:

bool Success: true when the request completed and the API returned a success status code

eApiResultStatus Status: how the request finished - Success, HttpError, ClientTimeout, Cancelled, NetworkError, AuthenticationFailed, SerializationError or UnexpectedError

HttpStatusCode? StatusCode: the status code of the response, or null when there was no response

string Message: if the request failed this property will provide more information on the reason for the failure

string ErrorContent: the body the API returned along with a failure status code

Exception Exception: the exception that ended the request, if there was one

string RequestMethod, string RequestUri, TimeSpan Duration: what was sent and how long it took

bool IsClientTimeout, bool IsCancelled: shortcuts for the matching Status values

bool HasApiAnswer: true when the API received the request and gave an answer, whether it accepted or refused it. When it is false the request never reached the API, or the API could not answer, so nothing can be concluded about the data

bool IsTransient: true when the failure may pass on its own. Set for a client timeout, a network error, and a 500, 408 or 429 from the API. It classifies the failure only and does not make a retry safe: a request that creates or changes data, such as AddSetupAsync, may already have taken effect on the API. Before you repeat such a request, read the current data to confirm that the change did not happen

bool IsNotFound: true when the API answered that the item does not exist. It is false for every failure that did not reach the API, so a timeout is never read as a deleted item

ApiResult<T> adds:

T Value: if the request is successful the object returned by the API is available in this property, as it would be if a GET request was made. The item will be populated as if parametersToInclude has a value of * unless the get options say otherwise

ToString() gives a one line summary of the request, which is useful in log messages.

Add functionsâ

To add a new item use the AddXXAsync functions. Some IDs will be required as arguments to express where the new item should be created. For example when creating a setup, the eventId and carId will be required. A CreateModel instance is also required which has the properties explained in the creating items section of the API documentation.

The add functions return an ApiResult<T>.

var addSetupResult = await _apiClient.AddSetupAsync(accountId, eventId, carId, new CreateModel()
{
 CopyFromLast = true,
}).ConfigureAwait(false);

if (addSetupResult.Success)
{
 var setup = addSetupResult.Value;
}

Get functionsâ

To get an item there are multiple options, as with the API. A single item can be retrieved by ID, or a list of items can be retrieved by passing in the appropriate parent IDs. For example when getting a list of setups, the eventId and carId will be required. An ApiGetOptions instance carries the parametersToInclude information, and is optional - leave it out to get the same response as *.

The get functions return an ApiResult<T>. The T will be either an item or a list of items depending on the function called.

var getSetupResult = await _apiClient.GetSetupByIdAsync(accountId, setupId, new ApiGetOptions()
{
 ParametersToInclude = new List<string>()
 {
 "*",
 }
}).ConfigureAwait(false);

This will return a ApiResult<ApiSetupModel>.

var getSetupsResult = await _apiClient.GetAllSetupsForEventCarAsync(accountId, eventId, carId).ConfigureAwait(false);

This will return a ApiResult<IReadOnlyList<ApiSetupModel>>.

Update functionsâ

To update an item use the UpdateXXAsync functions. The ID of the item to be updated will need to be provided as an argument. An UpdateModel instance is also required which contains the parameter updates to apply.

The update functions return an ApiResult, which explains why an update failed.

var result = await _apiClient.UpdateSetupAsync(accountId, setupId, new UpdateModel()
{
 ParameterUpdates = new List<ParameterUpdateModel>()
 {
 new ParameterUpdateModel("Param1", "NewValue")
 },
}).ConfigureAwait(false);

if (result.Success == false)
{
 _logger.LogWarning("The setup could not be updated: {Result}", result);
}

Delete functionsâ

To delete an item use the DeleteXXAsync functions. The ID of the item to be deleted will need to be provided as an argument.

The delete functions return an ApiResult.

var result = await _apiClient.DeleteSetupAsync(accountId, setupId).ConfigureAwait(false);

ApiClientâ

warningApiClient is obsolete. New code should use ApiClientV2.

Instantiationâ

Pass the authentication manager to the constructor:

var apiClient = new ApiClient(authManager);

ApiClient implements IDisposable.

Configurationâ

ApiClient is configured through ApiClientConfig:

var apiClient = new ApiClient(authManager, new ApiClientConfig("hhdm-api.hh-dev.com"));

ApiHost: the API to talk to

SslEnabled: set to false to skip certificate validation when talking to a local API

FeatureFlag: sent as a header on every request

MaxConcurrentRequests: only takes effect when RateLimitingEnabled is set as well

There is no per-request timeout and no logging. All requests run under one client wide timeout, set through the static ApiClient.DefaultTimeoutSeconds property.

ApiGetResult<T>â

The generic class ApiGetResult<T> is returned from all Add and Get functions. T will be a different type depending on the endpoint. For the setups endpoint T will be ApiSetupModel.

The ApiGetResult<T> has the following properties:

bool Success: will be false if the request failed - in which case more information can be found in the Message and StatusCode properties

string Message: if the request failed this property will provide more information on the reason for the failure

HttpStatusCode StatusCode: the status code of the request

T ReturnValue: if the request is successful the created object will be available in this property, as it would be if a GET request was made. The item will be populated as if parametersToInclude has a value of *

The Update and Delete functions return a plain bool, so a request that failed cannot be told apart from one the API refused.

Add functionsâ

To add a new item use the AddXX functions. Some IDs will be required as arguments to express where the new item should be created. For example when creating a setup, the eventId and carId will be required. A CreateModel instance is also required which has the properties explained in the creating items section of the API documentation.

The add functions return an ApiGetResult<T>.

var addSetupResult = await _apiClient.AddSetup(accountId, eventId, carId, new CreateModel()
{
 CopyFromLast = true,
});

Get functionsâ

To get an item there are multiple options, as with the API. A single item can be retrieved by ID, or a list of items can be retrieved by passing in the appropriate parent IDs. For example when getting a list of setups, the eventId and carId will be required. An ApiGetOptions instance is also required which contains the parametersToInclude information.

The get functions return an ApiGetResult<T>. The T will be either an item or a List of items depending on the function called.

var getSetupResult = await _apiClient.GetSetupById(accountId, setupId, new ApiGetOptions()
{
 ParametersToInclude = new List<string>()
 {
 "*",
 }
});

This will return a ApiGetResult<ApiSetupModel>.

var getSetupsResult = await _apiClient.GetAllSetupsForEventCar(accountId, eventId, carId, new ApiGetOptions()
{
 ParametersToInclude = new List<string>()
 {
 "*",
 }
});

This will return a ApiGetResult<List<ApiSetupModel>>.

Update functionsâ

To update an item use the UpdateXX functions. The ID of the item to be updated will need to be provided as an argument. An UpdateModel instance is also required which contains the parameter updates to apply.

The update functions return a bool that indicates if the request was successful.

var result = await _apiClient.UpdateSetup(accountId, setupId, new UpdateModel()
{
 ParameterUpdates = new List<ParameterUpdateModel>()
 {
 new ParameterUpdateModel("Param1", "NewValue")
 },
});

Delete functionsâ

To delete an item use the DeleteXX functions. The ID of the item to be deleted will need to be provided as an argument.

The delete functions return a bool that indicates if the request was successful.

var result = await _apiClient.DeleteSetup(accountId, setupId);

Migrating from ApiClient to ApiClientV2â

ApiClientApiClientV2GetSetupById(...)GetSetupByIdAsync(...) - every function gains an Async suffixApiGetResult<T>ApiResult<T>result.ReturnValueresult.ValueTask<bool> from Update and Delete functionsTask<ApiResult>Task<T> from attachment functionsTask<ApiResult<T>>required ApiGetOptions argumentoptional ApiGetOptions argumentApiClientConfigApiClientV2Configstatic ApiClient.DefaultTimeoutSecondsApiClientV2Config.Timeout and the per-request timeout argument
Collectionsâ

Collections are a custom property that allow a user to define an array of objects linked to the current object. Endpoint descriptions are provided in API concepts, their equivalent functions in .NET are provided below (setups are used in the examples below):

Add collection itemâ

var addResult = await _apiClient.AddSetupCollectionItemAsync(accountId, setupId, collectionName, new CreateModel()
{
 CopyAll = true,
 CopyFromLast = true,
 ParameterUpdates = [
 new("Name", "New setup item")
 ]
});

Delete collection item(s)â

var deleteResult = await _apiClient.DeleteSetupCollectionItemsAsync(accountId, setupId, collectionName, new DeleteCollectionItemsModel
{
 IndexesToRemove = [ 0 ],
 ItemIdsToRemove = [ "guid1" ]
});

Add or update collection item with paddingâ

The item at the specified Index is updated, or created, using the UpdateModel provided. If the specified Index is greater than or equal to the number of items in the collection, then item(s) are added to the end of the collection until Index + 1 items exist. If more than one item must be added to create an item at the specified Index, then empty items are added in between as "padding". If -1 is specified, an item is added to the end of the collection with no extra padding items.

var updateResult = await _apiClient.CreateOrUpdateSetupCollectionItemWithPaddingAsync(accountId, setupId, collectionName, new UpdateModel
{
 ParameterUpdates = new()
 {
 new("prop1", "value1")
 }
}, index);

Get collection item attachmentsâ

Follows working with attachments.

var attachedFileInfos = await _apiClient.GetSetupCollectionItemAttachmentsByIdAsync(accountId, setupId, collectionName, collectionItemId, [ attachmentId ]);

Attached Filesâ

Downloading a fileâ

General steps required to download an attached file are outlined in API concepts. The API wrapper simplifies this to three method invocations:

// 1. Get attached file information from the base entity
var championship = await _apiClient.GetChampionshipByIdAsync(accountId, championshipId, new ApiGetOptions()
{
 ParametersToInclude = [ "*", "AttachedFiles.*" ]
});
var attachedFileToDownload = championship.Value.AttachedFiles.FirstOrDefault();

// 2. Get the signed URL to download the file
var attachedFileInfos = await _apiClient.GetChampionshipAttachmentsByIdAsync(accountId, championshipId, [ attachedFileToDownload.Id ]);

// 3. Download the attached file to the local computer
foreach (var apiAttachmentModel in attachedFileInfos.Value)
{
 await _apiClient.DownloadFileAsync(apiAttachmentModel, @"C:\HHDM-Download\downloaded.png");
}

A full example of how to download an attached file can be found in the .NET API wrapper example GitHub.

Uploading a fileâ

General steps required to upload an attached file are outlined in API concepts. Using the API wrapper, adding an attached file only requires one step:

var uploadResult = await _apiClient.AddAttachmentToChampionshipAndWaitForUploadAsync(accountId, championshipId, new ApiPrepareUploadModel()
{
 AutoDownloadMode = eAutoDownloadMode.FromParameter, // setting this to "Yes" overrides the configured auto-download preferences on the CustomPropertyAttachedFile and automatically downloads the file to all users computers that have access to the file
 CustomPropertyAttachedFileName = null, // name of the custom property attached file on the definition, null for normal files
 FileName = Path.GetFileName(filePath), // the name that will appear for the file in the software (here just the name of the file being uploaded)
 IfSingleOverwriteExisting = true, // whether to overwrite the existing file if uploading to a CustomPropertyAttachedFile that only allows one file. Only applicable if CustomPropertyAttachedFileName is not null
}, filePath);

A full example of how to upload an attached file can be found in the .NET API wrapper example GitHub.
