---
Title: QtOrganizer.EventOccurrence
---
        
EventOccurrence
===============

<span class="subtitle"></span>
The EventOccurrence element provides an occurrence of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : bool
-   ****[endDateTime](#endDateTime-prop)**** : date
-   ****[location](#location-prop)**** : string
-   ****[originalDate](#originalDate-prop)**** : date
-   ****[parentId](#parentId-prop)**** : int
-   ****[priority](#priority-prop)**** : enumeration
-   ****[startDateTime](#startDateTime-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](#onItemChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem.md), [Event](../QtOrganizer.Event.md), [Journal](../QtOrganizer.Journal.md), [Todo](../QtOrganizer.Todo.md), [TodoOccurrence](../QtOrganizer.TodoOccurrence.md), [Note](../QtOrganizer.Note.md), and QOrganizerEventOccurrence.

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

This property indicates whether the time-of-day component of the event occurrence's start date-time or end date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the event occurrence will be an all-day item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endDateTime-prop"></span><span class="name">endDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date time at which the event occurrence ends.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="location-prop"></span><span class="name">location</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the label of the location at which the event occurrence is held.

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

This property holds the id of the event which is this occurrence's parent.

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

This property holds the priority of the event occurrence. The value can be one of:

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

This property holds the start date time of the event occurrence.

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

