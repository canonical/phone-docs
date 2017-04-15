---
Title: QtOrganizer.TodoOccurrence
---
        
TodoOccurrence
==============

<span class="subtitle"></span>
The TodoOccurrence element provides an occurrence of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : bool
-   ****[dueDateTime](#dueDateTime-prop)**** : date
-   ****[finishedDateTime](#finishedDateTime-prop)**** : date
-   ****[originalDate](#originalDate-prop)**** : date
-   ****[parentId](#parentId-prop)**** : int
-   ****[percentageComplete](#percentageComplete-prop)**** : int
-   ****[priority](#priority-prop)**** : enumeration
-   ****[startDateTime](#startDateTime-prop)**** : date
-   ****[status](#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](#onItemChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** OrganizerItem, Event, EventOccurrence, Journal, Todo, Note, and QOrganizerTodoOccurrence.

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

This property indicates whether the time-of-day component of the todo occurrence's start date-time or due date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the todo occurrence will be an all-day item.

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
<td><p><span id="originalDate-prop"></span><span class="name">originalDate</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date at which the occurrence was originally going to occur.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentId-prop"></span><span class="name">parentId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the todo which is this occurrence's parent.

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

This property holds the priority of the todo occurrence. The value can be one of:

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

This property holds the progress status of the task described by the todo occurrence. The value can be one of:

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

