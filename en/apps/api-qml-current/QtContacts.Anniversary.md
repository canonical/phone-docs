---
Title: QtContacts.Anniversary
---
        
Anniversary
===========

<span class="subtitle"></span>
The Anniversary element contains an anniversary of a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[calendarId](#calendarId-prop)**** : string
-   ****[event](#event-prop)**** : string
-   ****[originalDate](#originalDate-prop)**** : date
-   ****[subType](#subType-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Anniversary element contains the following field types:

-   Anniversary.CalendarId
-   Anniversary.OriginalDate
-   Anniversary.Event
-   Anniversary.SubType

This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="calendarId-prop"></span><span class="name">calendarId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the calendar event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="event-prop"></span><span class="name">event</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the event value.

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

This property holds the original anniversary date value. This property is either a date, or a date and time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subType-prop"></span><span class="name">subType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the sub type of an Anniversary.

-   Unknown - Unknown sub type (default).
-   Wedding - A wedding anniversary.
-   Engagement - An engagement anniversary.
-   House - A new residence anniversary.
-   Employment - A start of employment anniversary.
-   Memorial - An event of sentimental significance.

