---
url: https://help.hh-dm.com/extensibility/callbacks/
---

On this pageCallbacks

Callbacks are used to send data changes from the HH Data Management server to external services. A callback in HH Data Management is triggered when a client sends a sync operation to the server, which then forwards this sync op to the resource defined by the callback. There are two kinds of callbacks currently supported by HH Data Management:

AWS SQS: the HH DM server can put data into an AWS (Amazon Web Services) SQS (Simple Queue Service) that the user specifies

HTTP: the HH DM server can make an HTTP POST to a URL that the user specifies

To define a callback, visit the Integrations section on the website:

AWS SQSâ

When a new AWS SQS callback is created some information for the SQS queue will need to be entered:

Name:Â a name to identify the callback.

Description:Â any further information that should be recorded for the callback.

IAM Access Key: theÂ HH Data Management server needs an IAM identity with access to the target SQS queue.Â  Enter the access key for this IAM user in this field.

IAM SecretÂ Key:Â theÂ HH Data Management server needs an IAM identity with access to the target SQS queue.Â  Enter the secret key for this IAM user in this field.

AWS Account ID:Â the AWS account ID that owns the SQS queue (this is required to build the SQS queue URL).

Region Name:Â the AWS region where the SQS queue is hosted (this is required to build the SQS queue URL).

Queue Name:Â the name of the target SQS queue (this is required to build the SQS queue URL).

Message Filter:Â a semi-colon separated list of HH Data Management messages that should be added to the SQS queue.Â  An example might be AddSetupMessage;UpdateSetupMessage;DeleteSetupMessage if a queue should be notified of any changes to setups.Â  If this field is left blank then all messages will be added to the SQS queue.

FIFO Queue: set this to true when the target queue is an AWS SQS FIFO queue. When enabled, HH Data Management sends a deduplication id and a message group id with each callback message.

FIFO Group Id Source: controls how the FIFO MessageGroupId is chosen when FIFO Queue is enabled:

AccountId: uses the HH Data Management account id as the message group id.

ItemId: uses the sync message item id as the message group id.

This setting is only relevant for FIFO queues.

HTTPâ

When a new HTTP callback is created some information for the HTTP request will need to be entered:

Name:Â a name to identify the callback.

Description:Â any further information that should be recorded for the callback.

Address:Â the address of the API endpoint that should be called. Please note that the HH Data Management server does a POST to this address.

Auth Key:Â a key that can be included in the headers of the request. The name of the header is authkey. If this field is left blank the header will not be included.

Message Filter:Â a semi-colon separated list of HH Data Management messages that should be added to the SQS queue. An example might be AddSetupMessage;UpdateSetupMessage;DeleteSetupMessage if a queue should be notified of any changes to setups.Â  If this field is left blank then all messages will be added to the SQS queue.

Example Contentâ

An example of the content that would be sent to a callback is:

{
 "MessageType": "UpdateSetupMessage",
 "ItemId": "0adf0ecf-389e-4dfe-9af4-96ff90aab4ad",
 "Payload": {
 "CustomPropertyDefinitionId": "71d5a9b2-7e9a-42c2-abe3-f9add1ec2bb4",
 "CustomProperties": [
 {
 "CustomPropertyType": 0,
 "Name": "CamberFL",
 "Value": "5"
 }
 ],
 "CollectionItemsAdded": [],
 "CollectionItemsUpdated": [],
 "CollectionItemsDeleted": [],
 "CollectionOrderUpdates": [],
 "EntityProperties": [
 {
 "Name": "LastModifiedBy",
 "Value": "5a808284-6fb7-47a6-95b3-e199600e05dd"
 },
 {
 "Name": "LastModifiedDate",
 "Value": "2021-01-17T15:11:15Z"
 }
 ]
 }
}
