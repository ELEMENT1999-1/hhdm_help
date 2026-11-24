---
url: https://help.hh-dm.com/configuration-entities/global-issue-list/
---

On this pageGlobal Issue List Configuration

For a description how the global issue list is working, please follow the link. This section will explain the individual configuration entities that are available in the global issue list.

Global Issue List Configuration viewâ

The global issue list configuration view is accessed from the Admin tab on the ribbon bar:

The global issue list configuration view will open:

It is split into two tabs.

Global Settings

Issue Lists

Global Settingsâ

Workflowsâ

Used to create or delete workflows. The start state of a workflow gets set here:

Statesâ

Used to add or delete states to the current workflow.

Transitionsâ

Used to add or delete transitions to the current workflow.

Issue Listsâ

Issue Listsâ

Used to create or delete issue lists.

The Issue Lists table lets the user define the issue lists. Each issue list is defined by a name and a key. The name is mainly used for navigation within the software and the key is used in the Id of each issue belonging to that issue list. In the previous image the name of the global issue lists is set to 'Global Issue List' and the key is set to 'GIL'. That means that by default every issue in that issue list will have a key that looks like GIL-1, GIL-2 etc.

Issue List Componentsâ

Used to add or delete issue list components to an issue list. For better visualization an icon can be set for each component. New icons can be added through the pencil icon:

Clicking the pencil button will open the icons management attached files view, which is explained also in custom views. After an icon is added through that view, it becomes available in the dropdown of the Issue List Component.

Issue Typesâ

Used to add or delete issue types to an issue list. For better visualization an icon can be set for each issue type. When creating a new issue type a workflow needs to get set.

warningThe pencil icon lets the user change the workflow of existing issue types. This is a breaking operation, and will reset the state of all issues of that issue type to the start state of the new workflow.
