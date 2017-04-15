---
Title: QtContacts.PhoneNumber
---
        
PhoneNumber
===========

<span class="subtitle"></span>
The PhoneNumber element provides a phone number of a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[number](#number-prop)**** : string
-   ****[subTypes](#subTypes-prop)**** : list&lt;variant&gt;

<span id="details"></span>
Detailed Description
--------------------

[PhoneNumber](index.html) element contains the following field types:

-   [PhoneNumber](index.html).Number
-   [PhoneNumber](index.html).SubTypes

This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="number-prop"></span><span class="name">number</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the phone number.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subTypes-prop"></span><span class="name">subTypes</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the sub types of a [PhoneNumber](index.html).

-   [PhoneNumber](index.html).Unknown - indicating this phone number type is unknown(default).
-   [PhoneNumber](index.html).Landline - indicating this phone number is a landline number.
-   [PhoneNumber](index.html).Mobile - ndicating this phone number is a mobile (cellular) number.
-   [PhoneNumber](index.html).Fax - indicating this phone number is a fax number.
-   [PhoneNumber](index.html).Pager - indicating this phone number is a pager number.
-   [PhoneNumber](index.html).Voice - indicating this phone number supports voice transmission.
-   [PhoneNumber](index.html).Modem - indicating this phone number supports data transmission.
-   [PhoneNumber](index.html).Video - indicating this phone number supports video transmission.
-   [PhoneNumber](index.html).Car - indicating this phone number is a car phone.
-   [PhoneNumber](index.html).BulletinBoardSystem - indicating this phone number is a bulletin board system.
-   [PhoneNumber](index.html).MessagingCapable - indicating this phone number supports messaging services.
-   [PhoneNumber](index.html).Assistant - indicating this phone number is the number of an assistant.
-   [PhoneNumber](index.html).DtmfMenu - indicating this phone number supports DTMF-controlled voice menu navigation.

