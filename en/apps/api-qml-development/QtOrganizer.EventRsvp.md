---
Title: QtOrganizer.EventRsvp
---
        
EventRsvp
=========

<span class="subtitle"></span>
The EventRsvp element contains Rsvp-information of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[organizerEmail](#organizerEmail-prop)**** : variant
-   ****[organizerName](#organizerName-prop)**** : variant
-   ****[participationRole](#participationRole-prop)**** : variant
-   ****[participationStatus](#participationStatus-prop)**** : variant
-   ****[responseDate](#responseDate-prop)**** : variant
-   ****[responseDeadline](#responseDeadline-prop)**** : variant
-   ****[responseRequirement](#responseRequirement-prop)**** : variant

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[setValue](#setValue-method)****(field, value)
-   variant ****[value](#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

[EventRsvp](index.html) detail contains user specific information about calendar event like participation status and role, information about response dates and information about organizer of the event. See more details from the properties themselves and the QOrganizerEventRsvp.

**See also** QOrganizerEventRsvp.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizerEmail-prop"></span><span class="name">organizerEmail</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds organizer's email of the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizerName-prop"></span><span class="name">organizerName</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds organizer's name of the event.

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

This property holds the calendar user's participation role related to the event. See [EventAttendee::participationRole](../QtOrganizer.EventAttendee.md#participationRole-prop) for more details.

**See also** [EventAttendee::participationRole](../QtOrganizer.EventAttendee.md#participationRole-prop).

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

This property holds the calendar user's participation status related to the event. See [EventAttendee::participationStatus](../QtOrganizer.EventAttendee.md#participationStatus-prop) for more details.

**See also** [EventAttendee::participationStatus](../QtOrganizer.EventAttendee.md#participationStatus-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseDate-prop"></span><span class="name">responseDate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the date when user responded to the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseDeadline-prop"></span><span class="name">responseDeadline</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the last date for responding the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseRequirement-prop"></span><span class="name">responseRequirement</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the response requirement of the event. The value can be one of:

-   [EventRsvp](index.html).ResponseNotRequired
-   [EventRsvp](index.html).ResponseRequired

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

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setValue-method"></span><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::setValue](../QtOrganizer.Detail.md#setValue-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-method"></span><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::value](../QtOrganizer.Detail.md#value-method).

