---
url: https://help.hh-dm.com/management-entities/global-issue-list/
---

On this pageGlobal Issue List

The Global Issue List is an advanced version of a todo-list. To get started review the global issue list configuration section and make sure that an issue list as well as a workflow is created.

Conceptâ

Issueâ

The central element of the global issue list is the issue. Every Issue has by default certain parameters that are explained below:

Id: the Id of an issue in a unique identifier. It can be customized through the CustomId math parameter in the issue list issue definition. By default it consists of the Key of the owning Issue List and the Key of the issue. The key of the issue is set by the HH Data Management server once an issue is added the the list, to ensure its uniqueness within the issue list.

Issue List: every issue belongs to an Issue List.

Component: see issue list component

Title: The title of the issue, which is usually a very short summary

Description: The full description of the issue.

Type: see issue type

State: see state

Priority: sets the priority of an issue. There are five priorities available: Blocker (Critical), Major, Normal, Minor (low), Trivial

Due Date: the date at which an issue is due

Owner: a user on the account that is defined as owner of the issue. It's not necessarily the same user than the user that created the issue

Championship: see associations

Event: see associations

Car: see associations

Session: see associations

Run: see associations

Lap: see associations

Creator: the user that created the issue

Creation Date UTC: the date at which the issue was created. The value is shown in UTC time, because an issue is not related to an entity that defines a timezone.

Updator: the last user that modified the issue

Update Date UTC: the date at which the issue was the last time modified. The value is shown in UTC time, because an issue is not related to an entity that defines a timezone.

Issue Typeâ

Every issue needs to have an Issue Type. An Issue Type defines the workflow and is therefore mandatory. Additionally it can be used to categorize the issues, similar to the issue list component.

Workflowâ

A workflow is defined by states and transitions. Every issue in the global issue list has a state and to control how the users can transition the state of an issue the workflow is used. A workflow is always assigned to an issue type, which means if you have multiple issue types they can follow the same workflow, or they can have different workflows.

Example:

A workflow with the name Workflow 1 is defined and it contains three states:

In Progress

Started

Done

The start state of Workflow 1 is defined as 'Started'. Additionally there are three transitions available:

NameStart StateEnd StateRestartedDoneStartedWork finishedIn ProgressDoneWork startedStartedIn Progress
That means that when a new issue is created, and the issue type of the new issue is set to a type that is assigned to Workflow 1, the state will be set to 'Started'. Afterwards the user has the possibility to transition the state from 'Started' to 'In Progress', but not to 'Done'. There is only one transition with the Start State 'Started' (Work Started) that allows 'Started' -> 'In Progress'. Once the state is set to 'In Progress' in can be transitioned to 'Done', but not to anything else.

Stateâ

A state describes the current state of an issue. It follows transitions, which are defined by the owning workflow.

Transitionâ

A transition is defined by a start state and an end state. It defines how the state of an issue can be changed (transitioned) to ensure a certain workflow.

Issue List Componentâ

Defines a sub-section of an issue list. It can be used to categorize issues within an issue list.

Associationsâ

An issue can be associated to certain entities. This helps to filter issues by for example championship and also it adds context information to the issue.

Global Issue List viewâ

The global issue list view is accessed from the Management tab on the ribbon bar:

The global issue list view will open:

There are multiple ways to modify an issue:

double clicking a row

selecting a row and clicking the Edit Issue button in the ribbon

changing the value directly in the table. However this isn't supported for all fields (for example all the association fields)

through the detail view, which can be opened by clicking the small arrow at the bottom (see image below). The size of the detail view can be changed by dragging the splitter control.

Add/Edit Issueâ

To add an issue click the Add Issue button and populate the fields with the required information and to edit an issue the Edit Issue button needs to get clicked or an issue needs to be double clicked. Additionally to the parameters that are described in the issue section, comments can be added/removed, attached files, associations and linked issues can be managed.

Commentsâ

Allows to add or delete comments to issues.

Attached Filesâ

Attached files can be managed for each issue. See attached files for more information how to manage attached files.

noteAttached files can be added to newly created issues. To be able to add attached files, the issue needs to get added to the issue list by clicking the ok button, and then it can be edited to manage the attached files.

Associationsâ

Associations can be managed through the link button on the right side of the window.

Linked Issuesâ

Issues can get linked to other issues. For each link type there is a matching related link type. If a link of type 'Is Blocked By' with target Issue B is added to Issue A, then Issue B will show a link 'Blocks' Issue A.

Link TypeRelated Link TypeIs Blocked ByBlocksIs Cloned ByClonesIs Duplicated ByDuplicatesRelates ToRelates To

Links are managed in the bottom part of the window.
