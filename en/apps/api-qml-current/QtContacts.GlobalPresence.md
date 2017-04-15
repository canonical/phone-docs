---
Title: QtContacts.GlobalPresence
---
        
GlobalPresence
==============

<span class="subtitle"></span>
The GlobalPresence element provides aggregated presence information for a contact, synthesized or supplied by the backend. More...

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

[GlobalPresence](index.html) element contains the following field types:

-   [GlobalPresence](index.html).Timestamp
-   [GlobalPresence](index.html).Nickname
-   [GlobalPresence](index.html).State
-   [GlobalPresence](index.html).StateText
-   [GlobalPresence](index.html).ImageUrl
-   [GlobalPresence](index.html).CustomMessage

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

This property holds the nickname value of the [GlobalPresence](index.html).

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

This property holds the timestamp value of the [GlobalPresence](index.html).

