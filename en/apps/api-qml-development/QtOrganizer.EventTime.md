---
Title: QtOrganizer.EventTime
---
        
EventTime
=========

<span class="subtitle"></span>
The EventTime element contains the start and end dates and times of a recurring event series, or occurrence of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : date
-   ****[endDateTime](#endDateTime-prop)**** : date
-   ****[startDateTime](#startDateTime-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [EventTime](index.html).FieldStartDateTime
-   [EventTime](index.html).FieldEndDateTime
-   [EventTime](index.html).FieldAllDay

**See also** QOrganizerEventTime.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allDay-prop"></span><span class="name">allDay</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the time is significant in the start datetime.

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

This property holds the end date and time value of the event.

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

This property holds the start date and time value of the event.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onDetailChanged-signal"></span><span class="name">onDetailChanged</span>()</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::onDetailChanged](../QtOrganizer.Detail.md#onDetailChanged-signal).

