---
Title: QtOrganizer.Todo
---
        
Todo
====

<span class="subtitle"></span>
The Todo element provides a task which should be completed. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : bool
-   ****[dueDateTime](#dueDateTime-prop)**** : date
-   ****[finishedDateTime](#finishedDateTime-prop)**** : date
-   ****[percentageComplete](#percentageComplete-prop)**** : int
-   ****[priority](#priority-prop)**** : enumeration
-   ****[recurrence](#recurrence-prop)**** : Recurrence
-   ****[startDateTime](#startDateTime-prop)**** : date
-   ****[status](#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](#onItemChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem.md), [Event](../QtOrganizer.Event.md), [EventOccurrence](../QtOrganizer.EventOccurrence.md), [Journal](../QtOrganizer.Journal.md), [TodoOccurrence](../QtOrganizer.TodoOccurrence.md), [Note](../QtOrganizer.Note.md), and QOrganizerTodo.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allDay-prop"></span><span class="name">allDay</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the time-of-day component of the Todo's start date-time or due date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the todo will be an all-day item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dueDateTime-prop"></span><span class="name">dueDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date time by which the task should be completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finishedDateTime-prop"></span><span class="name">finishedDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date and time at which the task was completed, if known.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="percentageComplete-prop"></span><span class="name">percentageComplete</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the percentage of progress completed on the task described by the todo item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the priority of the todo item. The value can be one of:

-   Priority.Unknown
-   Priority.Highest
-   Priority.ExtremelyHigh
-   Priority.VeryHigh
-   Priority.High
-   Priority.Medium
-   Priority.Low
-   Priority.VeryLow
-   Priority.ExtremelyLow
-   Priority.Lowest

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recurrence-prop"></span><span class="name">recurrence</span> : <span class="type"><a href="QtOrganizer.Recurrence.md">Recurrence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the recurrence element of the todo item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startDateTime-prop"></span><span class="name">startDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date time at which the task should be started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the progress status of the task described by the todo. The value can be one of:

-   [TodoProgress](../QtOrganizer.TodoProgress.md).NotStarted
-   [TodoProgress](../QtOrganizer.TodoProgress.md).InProgress
-   [TodoProgress](../QtOrganizer.TodoProgress.md).Complete

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onItemChanged-signal"></span><span class="name">onItemChanged</span>()</p></td>
</tr>
</tbody>
</table>

**See also** [OrganizerItem::onItemChanged](../QtOrganizer.OrganizerItem.md#onItemChanged-signal).

