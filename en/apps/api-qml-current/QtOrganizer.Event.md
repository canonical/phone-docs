---
Title: QtOrganizer.Event
---
        
Event
=====

<span class="subtitle"></span>
The Event element provides an event in time which may reoccur. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : bool
-   ****[attendees](#attendees-prop)**** : list&lt;Detail&gt;
-   ****[endDateTime](#endDateTime-prop)**** : date
-   ****[location](#location-prop)**** : string
-   ****[priority](#priority-prop)**** : enumeration
-   ****[recurrence](#recurrence-prop)**** : Recurrence
-   ****[startDateTime](#startDateTime-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](#onItemChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clearDetails](#clearDetails-method)****()
-   void ****[removeDetail](#removeDetail-method)****(detail)
-   void ****[setDetail](#setDetail-method)****(detail)

<span id="details"></span>
Detailed Description
--------------------

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem.md), [EventOccurrence](../QtOrganizer.EventOccurrence.md), [Journal](../QtOrganizer.Journal.md), [Todo](../QtOrganizer.Todo.md), [TodoOccurrence](../QtOrganizer.TodoOccurrence.md), [Note](../QtOrganizer.Note.md), and QOrganizerEvent.

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

This property indicates whether the time-of-day component of the event's start date-time or end date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the event will be an all-day item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attendees-prop"></span><span class="name">attendees</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the attendees list of the event.

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

This property holds the end date time of the event.

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

This property holds the label of the location at which the event occurs.

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

This property holds the priority of the event. The value can be one of:

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

This property holds the recurrence element of the event item.

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

This property holds the start date time of the event.

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

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearDetails-method"></span><span class="name">clearDetails</span>()</p></td>
</tr>
</tbody>
</table>

Removes all details from the organizer event.

**See also** [removeDetail()](#removeDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Removes given *detail* from the organizer event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setDetail-method"></span><span class="type">void</span> <span class="name">setDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Saves the given *detail* in the organizer event, and sets its id.

