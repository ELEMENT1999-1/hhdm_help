---
url: https://help.hh-dm.com/support/connection-requirements/
---

On this pageHH Data Management Client External Connection Requirements

To function properly the HH Data Management client requires some external connections. Depending on your IT set up it may be necessary to implement some firewall exceptions to allow these connections.

HH Data Management Data Syncâ

This connection is used by the HH Data Management client to connect to the server and download and upload the data entered in the software.

Host: hhdm-sync.hh-dev.com
Port: 8780
This connection is encrypted using TLS and uses a proprietary protocol over a TCP socket for communication.

HH Data Management Attached Filesâ

This connection is used by the HH Data Management client to download large files that are not stored in the database or transferred via the data synchronization connection.

The URL is of the form: https://hhdm-attached-file-storage-compressed.s3.eu-central-1.amazonaws.com/*

HH Data Management APIâ

This connection is used by the HH Data Management client in a limited fashion to perform large calculations that are not managed by the synchronization server, such as mileage calculations.

The URL is of the form: https://hhdm-api.hh-dev.com/*

Auto Updateâ

This connection is used by the HH Data Management client to download auto updates for either the main software or plugins.

The URL is of the form: https://hh-build-output.s3.eu-central-1.amazonaws.com/*

OAuth (optional, only necessary when using OAuth as authentication method)â

This connection is used by the HH Data Management client to validate the authentication to connect to the server.

The URL is of the form: https://auth.hh-dev.com/*
