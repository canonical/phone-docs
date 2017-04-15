---
Title: QtContacts.Presence
---
        
Presence
========

<span class="subtitle"></span>
The Presence element provides presence information for an online account of a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[customMessage](#customMessage-prop)**** : string
-   ****[imageUrl](#imageUrl-prop)**** : url
-   ****[nickname](#nickname-prop)**** : string
-   ****[state](#state-prop)**** : enumeration
-   ****[stateText](#stateText-prop)**** : string
-   ****[timestamp](#timestamp-prop)**** : date

<span id="details"></span>
Detailed Description
--------------------

Presence element contains the following field types:

-   Presence.Timestamp
-   Presence.Nickname
-   Presence.State
-   Presence.StateText
-   Presence.ImageUrl
-   Presence.CustomMessage

This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="customMessage-prop"></span><span class="name">customMessage</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the custom status message from the contact for the online account about which this detail stores presence information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageUrl-prop"></span><span class="name">imageUrl</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the last-known status image url of the contact for the online account about which this detail stores presence information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nickname-prop"></span><span class="name">nickname</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the nickname value of the Presence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the presence state enumeration value.

-   Presence.Unknown - Signifies that the presence state of the contact is not currently known (default).
-   Presence.Available - Signifies that the contact is available.
-   Presence.Hidden - Signifies that the contact is hidden.
-   Presence.Busy - Signifies that the contact is busy.
-   Presence.Away - Signifies that the contact is away.
-   Presence.ExtendedAway - Signifies that the contact is away for an extended period of time.
-   Presence.Offline - Signifies that the contact is offline.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stateText-prop"></span><span class="name">stateText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the text corresponding to the current presence state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timestamp-prop"></span><span class="name">timestamp</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the timestamp value of the Presence.

