---
url: https://help.hh-dm.com/extensibility/canopy-simulation/
---

On this pageCanopy Integration

The Canopy integration in HH Data Management allows users to trigger Canopy simulations and visualize their results in HH Data Management.

Canopy Simulation Configurationâ

The Canopy simulation configuration is used to define:

the type of Canopy study to run

how the inputs for the Canopy simulation will be created

how the results of the Canopy simulation will be processed

how the feedback from the Canopy integration should be communicated back to HH Data Management

The Canopy simulation configuration is defined on the account management website.
Multiple configurations can be created, and they will be listed on this page.

New configurations can be created by clicking the icon.

IconDescriptionEdit the current profileDuplicate the current profileExport the current profileCopy the id of the current profileDelete the current profile
infoThe Canopy Config page is only available to users with admin-level permissions on the website.

When creating or editing an existing configuration, a dialog will pop up:

General Informationâ

Name: the name of the profile

Study type: the type of Canopy study to be run

Canopy Worksheetsâ

Studies can, optionally, be saved to a Canopy Worksheet.

Write Study Info To Worksheet: if checked, the Canopy study will be saved to the Canopy Worksheet that is specified by the Path To Worksheet Id.

Path To Worksheet Id: the path (as an HH Data Management expression, relative to the setup) to the parameter that stores the worksheet Id where the study info will be written. For example, if the Worksheet Id is stored in a parameter called CanopyWorksheetId in the Event definition, then the path would be Event.CanopyWorksheetId.

warningA user can only save a simulation to a Worksheet they own.

Simulation Statusâ

All fields in this section are optional (i.e., any of them can be left blank, in which case the information will not be available in HH Data Management).

The status parameters are used to provide feedback for the Canopy simulation currently running. Parameters should be created in the relevant setup definition, and their names entered here. These parameters can be shown on the setup sheet CID.

Simulation Status Parameter Name: a string parameter; this will show a one-word status of the current simulation. The possible values are:

Requested: the request to run a Canopy simulation has been received by the HH Data Management server, and the simulation will be started soon

Simulation start failed: there was an error when sending the simulation request to the Canopy API

Simulation started: the simulation has been successfully submitted to the Canopy API and the simulation is running

Simulation running: the simulation is currently running on Canopy, and the HH Data Management server is waiting for it to complete

Failed to check status: HH Data Management wasn't able to retrieve the information about the current simulation

Simulation completed: the Canopy simulation has completed

Processing results: HH Data Management is starting to process the simulation results (download the outputs from Canopy, post-process them, and upload them to HH Data Management)

Processing failed: there was an error encountered while processing the results

Canopy simulation error: the Canopy simulation had errors and did not complete

Processing completed: HH Data Management has processed all results, and the process is now complete

Simulation Message Parameter Name: a string parameter; in case of a failure state, more information will be given regarding the nature of the error

Simulation Status Update Time Parameter Name: a DateTime parameter; the last time a status update was received

Triggered By Username Parameter Name: an optional string parameter in the setup definition; when set, the display name of the HH Data Management user who triggered or reprocessed the simulation is written here. Leave it blank to disable â it is optional and produces no validation warnings or errors when empty.

Furthermore, the following feedback options are available. Again, parameters with these names must be defined in the setup definition for the information to be available.

Canopy Feedback Error Parameter Name: a string parameter; this will show any errors that were reported by Canopy

Canopy Feedback Warn Parameter Name: a string parameter; this will show any warnings that were reported by Canopy

Canopy Feedback Info Parameter Name: a string parameter; this will show any other information that was reported by Canopy

Canopy Feedback Collection Name: a collection parameter; this will show any other information that was reported by Canopy

Canopy Feedback Collection Message Parameter Name: a string parameter of the collection parameter; this will show any other information that was reported by Canopy

Canopy Feedback Collection Status Parameter Name: a string parameter of the collection parameter; this will show any other information that was reported by Canopy

Inputsâ

Pre-Simulationâ

Sim Version Parameter Name: a string parameter in the AccountOptions definition that will store the current version of the Canopy simulation engine. This can then be used if using Json exports to build the Canopy configuration files.

Generalâ

Study Name Expression: a math expression that is evaluated in the scope of the setup; that is, the name the study will be given in Canopy. If this is left blank then a default name will be used.

Parameter Name To Save Study Id: a string parameter in the setup definition where the current Canopy study ID can be saved. This is useful for debugging the simulation in the Canopy web UI or when reprocessing results without needing to rerun the Canopy simulation.

Use Custom Sim Version: if selected, the Canopy simulation version will be set based on the specified Path To Custom Sim Version.

Path To Custom Sim Version: the path (as an HH Data Management expression, relative to the setup) to the parameter that stores the custom version of the Canopy simulation engine to use for the study. For example, if the ID is stored in the event in a parameter called CanopyCustomSimVersion, then the path would be Event.CanopyCustomSimVersion.

Configurationsâ

The available inputs depend on the selected study type. Some configuration types are required, and others are optional.

Study TypeCarWeatherTrackCornering OptionsLimit OptionsSub Limit OptionsUser MathsConstraintsExplorationsStraight Simrrn/an/an/an/aoooCornering Simrrn/aon/an/aoooQuasi-Static Laprrrn/an/an/aoooDynamic Laprrrn/an/an/aoooApex Sim *rrn/an/an/an/aoooLimit Sim *rrn/an/aon/aoooSub Limit Sim *rrn/an/an/arooo
r: required o: optional n/a: not applicable

cautionThe study types marked with * (Apex Sim, Limit Sim, and Sub Limit Sim) have been deprecated by Canopy and will be removed at the end of 2026. Use Cornering Sim instead of Apex Sim.

The following options are available:

None: this configuration type won't be added to the simulation

PathToCanopyId: the path (as an HH Data Management expression, relative to the setup) of the Text Parameter that stored the Id of the Canopy Json configuration. For example, if the Car configuration Id is stored in a parameter called CanopyCarConfigId in the Car definition, then the path would be Car.CanopyCarConfigId.

TextParameter: the path (as an HH Data Management expression, relative to the setup) of the Text Parameter that stored the content of the Canopy Json configuration.

JsonExportId: the Json Export Profile used to generate the Json configuration file. The configuration will be uploaded to Canopy as part of running the simulation.

AttachedFileName: the name of the attached file parameter where the Json configuration file is stored in HH Data Management. This configuration will be uploaded to Canopy as part of running the simulation.

infoThe configuration Id can be retrieved from the address bar of the web browser:

Sign in to the Canopy portal

Open the configuration

Copy the second Guid

Outputsâ

Generalâ

As with the configuration inputs, these inputs will only be available if applicable for the selected study type. These allow additional configurations to be created and used for results processing of additional results in the output. For example, when running a Dynamic Lap study, the Straight Sim and Cornering Sim initialisation results can also be processed by creating additional Straight Sim and Cornering Sim configuration profiles and referencing them in the Dynamic Lap configuration profile.

Additional Straight Simulation Configuration: an additional Canopy configuration that will be used to process the Straight Sim results

Additional Cornering Simulation Configuration: an additional Canopy configuration that will be used to process the Cornering Sim results

Scalar Resultsâ

Scalar Results Save Option: an option indicating how the scalar results will be processed and saved into HH Data Management

None: no post-processing of the results will be done

HHDMParameter: the scalar results will be saved into Parameters in HH Data Management in the Setup definition

Save Original Scalar File: if checked, then the original CSV file from Canopy will be uploaded to HH Data Management into the specified named attached file parameter in the Setup definition.

Attached File Name For Original Scalar File: the name of the attached file parameter where the CSV file is stored in HH Data Management.

Scalar Results Mappingsâ

A mapping that is used to define which scalar outputs from the simulation will be saved to HH Data Management. The mappings define the name of the parameter in the Canopy scalar results and the name of the parameter in the Setup definition in HH Data Management.

tipUnit conversion will be automatically performed whenever the Canopy scalar results and HH Data Management parameter have matching dimensions.

For example, the Canopy results hRideF200 expressed in meters will be converted to millimeters when creating a parameter hRideF200_StraightSim with the following dimension/unit:

Vector Resultsâ

Save Original Vector File: if checked, then the original CSV file from Canopy will be uploaded to HH Data Management into the specified named attached file parameter in the Setup definition.

Attached File Name For Original Vector File: the name of the attached file parameter where the CSV file is stored in HH Data Management.

Converted Vector Resultsâ

Save Converted Vector File: if checked, then the original CSV file from Canopy will be uploaded to HH Data Management into the specified named attached file parameter in the Setup definition.

Attached File Name For Converted Vector File: the name of the attached file parameter where the CSV file is stored in HH Data Management.

infoConverted vector files can be visualized using the Data Viewer.

Constraints Resultsâ

Constraints Results Save Option: an option indicating how the constraints results will be processed and saved into HH Data Management

None: no post-processing of the results will be done

HHDMParameter: the constraints results will be saved into Parameters in HH Data Management in the Setup definition

Save Constraints File: if checked, then the original CSV file from Canopy will be uploaded to HH Data Management into the specified named attached file parameter in the Setup definition.

Attached File Name For Original Constraints File: the name of the attached file parameter where the CSV file is stored in HH Data Management.

Constraints Results Mappingâ

A mapping that is used to define which constraints outputs from the simulation will be saved to HH Data Management. The mappings define the name of the parameter in the Canopy constraint results and the name of the parameter in the Setup definition in HH Data Management.

Authenticationâ

For the HH Data Management Canopy integration to be able to interact with the Canopy API, authentication credentials must be provided. There are two ways to do this: connecting the account once from the website (recommended for shared use), or entering per-user credentials in the desktop backstage options.

In both cases these are the same credentials used to sign in to the Canopy portal, except for the Client Secret, which must be requested from Canopy directly.

tipCredentials can be verified by clicking the Authorize button on the Canopy Swagger.

Connecting an accountâ

An administrator can connect the account once from the Canopy Config page on the account management website. After the account is connected, simulations triggered without request credentials â including via the API endpoints â authenticate using the stored connection, so individual users do not need to enter â or have access to â the account's Canopy credentials. Requests that supply complete credentials continue to authenticate with them directly.

infoThe Canopy Config page, and therefore connecting the account, is only available to users with admin-level permissions on the website.

To connect the account:

Open the Canopy Config page.

Click Connect Canopy.

Enter the account's Canopy Client ID, Client Secret, Username, and Password, then click Connect.

The credentials are used to authenticate against Canopy a single time. Only the resulting tokens (and the Client Secret needed to refresh them) are stored, keyed to the account â the password is never stored. The current connection state is shown at the top of the Canopy Config page.

The stored connection is refreshed automatically as simulations run.

While the account is connected, the Connect Canopy button is replaced by Disconnect Canopy. Disconnecting (after a confirmation prompt) deletes the stored tokens, so simulations triggered without user credentials stop authenticating until the account is reconnected.

warningPer Canopy's documentation, a connection is valid for approximately one year (the Canopy refresh token lifetime). After it expires, simulations triggered for the account will no longer authenticate, and an administrator must reconnect the account using the steps above.

Per-user credentialsâ

Alternatively, credentials for the current user can be entered in the backstage options.

Trigger/Reprocess Simulationsâ

Simulations can be triggered/reprocessed from the Setup, Setup Comparison, or Custom Views.

Trigger Canopy Simulation and Reprocess Canopy Simulation buttons can be added to CID or CGD definitions.

Simulations can also be triggered/reprocessed programmatically through the CanopySimulations API endpoints, which accept an array of setups so that one or many simulations can be triggered/reprocessed in a single request.

tipNew scalar results can be added without re-running the simulation by simply

Updating the Canopy Simulation Profile Outputs to add new item(s) to the parameter mapping list

Clicking the Reprocess Canopy Simulation Button

Roadmapâ

infoThis feature is still in active development; please be sure to report any bugs, undesirable behaviour from the system, or general feedback.

Topics that we plan to work on in the near future

option for any user to submit a simulation to a worksheet they do not own

ability to auto-trigger simulations (e.g., when a setup parameter changes, automatically trigger a simulation run)
