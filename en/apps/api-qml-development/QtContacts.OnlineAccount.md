---
Title: QtContacts.OnlineAccount
---
        
OnlineAccount
=============

<span class="subtitle"></span>
The OnlineAccount element contains a note associated with a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[accountUri](#accountUri-prop)**** : string
-   ****[capabilities](#capabilities-prop)**** : list&lt;string&gt;
-   ****[protocol](#protocol-prop)**** : enumeration
-   ****[serviceProvider](#serviceProvider-prop)**** : string
-   ****[subTypes](#subTypes-prop)**** : list&lt;variant&gt;

<span id="details"></span>
Detailed Description
--------------------

[OnlineAccount](index.html) element contains the following field types:

-   [OnlineAccount](index.html).AccountUri - the account uri value.
-   [OnlineAccount](index.html).ServiceProvider - the account service provider name.
-   [OnlineAccount](index.html).Protocol - the account protocol value.
-   [OnlineAccount](index.html).Capabilities - the account capabilities value.
-   [OnlineAccount](index.html).SubTypes - the sub types of an online account.

This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountUri-prop"></span><span class="name">accountUri</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the account uri.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="capabilities-prop"></span><span class="name">capabilities</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the value of the account capabilities.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="protocol-prop"></span><span class="name">protocol</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the protocol enumeration value.

-   [OnlineAccount](index.html).Unknown - indicates this online account is for one unsupported protocol.
-   [OnlineAccount](index.html).Aim - indicates this online account is for the AIM protocol.
-   [OnlineAccount](index.html).Icq - indicates this online account is for the ICQ protocol.
-   [OnlineAccount](index.html).Irc - indicates this online account is for the IRC protocol.
-   [OnlineAccount](index.html).Jabber - indicates this online account is for the jabber protocol.
-   [OnlineAccount](index.html).Msn - indicates this online account is for the MSN protocol.
-   [OnlineAccount](index.html).Qq - indicates this online account is for the QQ protocol.
-   [OnlineAccount](index.html).Skype - indicates this online account is for the Skype protocol.
-   [OnlineAccount](index.html).Yahoo - indicates this online account is for the Yahoo protocol.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceProvider-prop"></span><span class="name">serviceProvider</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the account service provider name.

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

This property holds the value of the sub types of an online account.

-   [OnlineAccount](index.html).Unknown (default)
-   [OnlineAccount](index.html).Sip - indicating this online account supports SIP.
-   [OnlineAccount](index.html).SipVoip - indicating this online account supports SIP based VOIP.
-   [OnlineAccount](index.html).Impp - indicating this online account supports IMPP.
-   [OnlineAccount](index.html).VideoShare - indicating this online account supports VideoShare.

