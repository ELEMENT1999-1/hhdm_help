---
url: https://help.hh-dm.com/event-entities/job-and-issue-lists/
---

On this pageJobs and Issues

To open the job or issue list, click on Event and then Job List or Issues List:

A new display will appear:

noteJob and issues list controls are depending on an event and a car. Then each job list or issue list is classified by sessions.

How to add an issueâ

Select the session when you want to add a job list and issue list, then click on Add Issue to add a blank line.

Issue Parametersâ

Category

Description

Solution

Send an issue to a job listâ

Select an issue and click Send to Job List to create a job from it. A Send Issue to Job List window appears, pre-filled with the issue data:

Choose the Championship, Event, Car and Session that the job is added to. These default to the session the issue belongs to but can be changed to send the job to a different destination.

Set the Job Category, Job Title and Comment for the new job.

Use Assigned To to assign the job to a user. This defaults to the current user.

Click OK to create the job in the selected job list. Any edits made in the window take priority over the pre-filled values.

Property mappingâ

When the job is created, parameters are copied from the issue to the job:

Parameters that have the same name on both the issue and the job are copied automatically. No configuration is required.

Additional parameters can be copied by defining a mapping between issue parameters and job parameters (for example, copy the issue Solution into the job Comment). See Configure issue to job mapping below.

Entity tracking fields (such as Created By and Created Date) are never copied. The new job records the user who sent it as its creator.

Configure issue to job mappingâ

The mapping between issue parameters and job parameters is defined in the IssueToJobMapping collection on the account options. To set it up:

Create a AccountOptionsCollection item definition named IssueToJobMapping with two Text parameters: IssueParameterName and JobParameterName.

On the Account Options definition, add a collection parameter named IssueToJobMapping that uses this definition.

Add a custom view and custom column profile to edit the IssueToJobMapping collection.

In that view, add a row for each parameter to copy. Each row maps one issue parameter to the job parameter it is copied into. For example, map Solution to Comment.

noteMapping is optional. Parameters with matching names are always copied automatically, even when no mapping is configured.

cautionEach issue parameter and each job parameter can be used only once in the mapping. If the mapping contains a duplicate issue or job parameter, a warning is shown and the issue is not sent until the mapping is corrected.

Track issues sent to a job listâ

Add a Boolean parameter named IsSentToJobList to the Session Object Issue definition to track which issues have been sent to a job list. When an issue is sent, this parameter is set automatically.

This parameter can then be used in the Style Options of a custom column profile to highlight sent issues with a background colour expression, for example on the Description column:

If(IsSentToJobList,"#FF0000","#00000000")

With this expression set, the description of an issue that has been sent to a job list is highlighted, and the new job appears in the job list:

How to add a jobâ

Add a blank row using Add Job

Populate from template

Job list templates can be defined in Management => Job List Templates.

Job parametersâ

Category

Job Title

Comment

Assigned to

Complete button to Validate that the job is done

Acknowledge button to validate you saw the job list

Completed jobs have a green background and non-acknowledge jobs have a red background.

Buttons are available to show or hide the completed jobs and to acknowledge all jobs or to show only jobs that are assigned to the current user.

How to delete a job or an issueâ

Select the job or the issue you want to delete and click on Delete Job or Delete Issue.

Printâ

Using the Print button in job list or issue list ribbon bar will save a pdf.

Customize titleâ

It's possible to customize the title of the sessions by creating a math parameter with the name SessionName in the Session definition.
