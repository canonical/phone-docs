---
Title: QtOrganizer.EventAttendee
---
        
EventAttendee
=============

<span class="subtitle"></span>
The EventAttendee element contains information about an attendee of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[attendeeId](#attendeeId-prop)**** : variant
-   ****[emailAddress](#emailAddress-prop)**** : variant
-   ****[name](#name-prop)**** : variant
-   ****[participationRole](#participationRole-prop)**** : variant
-   ****[participationStatus](#participationStatus-prop)**** : variant

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [EventAttendee](index.html).FieldName
-   [EventAttendee](index.html).FieldEmailAddress
-   [EventAttendee](index.html).FieldAddendeeId
-   [EventAttendee](index.html).FieldParticipationStatus
-   [EventAttendee](index.html).FieldParticipationRole

**See also** QOrganizerEventAttendee.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attendeeId-prop"></span><span class="name">attendeeId</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique identifier of the attendee.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emailAddress-prop"></span><span class="name">emailAddress</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the email address of the attendee.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the attendee.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participationRole-prop"></span><span class="name">participationRole</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the participation role of the attendee of the event.The value can be one of:

-   [EventAttendee](index.html).RoleUnknown
-   [EventAttendee](index.html).RoleOrganizer
-   [EventAttendee](index.html).RoleChairperson
-   [EventAttendee](index.html).RoleHost
-   [EventAttendee](index.html).RoleRequiredParticipant
-   [EventAttendee](index.html).RoleOptionalParticipant
-   [EventAttendee](index.html).RoleNonParticipant

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participationStatus-prop"></span><span class="name">participationStatus</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the participation status of the attendee of the event. The value can be one of:

-   [EventAttendee](index.html).StatusUnknown
-   [EventAttendee](index.html).StatusAccepted
-   [EventAttendee](index.html).StatusDeclined
-   [EventAttendee](index.html).StatusTentative
-   [EventAttendee](index.html).StatusDelegated
-   [EventAttendee](index.html).StatusInProcess
-   [EventAttendee](index.html).StatusCompleted

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

