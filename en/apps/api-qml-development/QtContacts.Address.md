---
Title: QtContacts.Address
---
        
Address
=======

<span class="subtitle"></span>
The Address element contains an address of a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[country](#country-prop)**** : string
-   ****[locality](#locality-prop)**** : string
-   ****[postOfficeBox](#postOfficeBox-prop)**** : string
-   ****[postcode](#postcode-prop)**** : string
-   ****[region](#region-prop)**** : string
-   ****[street](#street-prop)**** : string
-   ****[subTypes](#subTypes-prop)**** : list&lt;variant&gt;

<span id="details"></span>
Detailed Description
--------------------

The fields in the Address element are based on the segments of the ADR property of a Versit vCard file.

Address element contains the following field types:

-   Address.Street
-   Address.Locality
-   Address.Region
-   Address.PostCode
-   Address.Country
-   Address.SubTypes
-   Address.PostOfficeBox

Versit <sup>®</sup> is a trademark of the Internet Mail Consortium. This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="country-prop"></span><span class="name">country</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the country of the address.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locality-prop"></span><span class="name">locality</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the city, town or suburb of the address.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="postOfficeBox-prop"></span><span class="name">postOfficeBox</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the post office box identifier of the mailing address.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="postcode-prop"></span><span class="name">postcode</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the postal code for the address.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="region-prop"></span><span class="name">region</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name or identifier of the state, province or region of the address.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="street-prop"></span><span class="name">street</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the street number and street name of the address.

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

This property stores the sub types of the address.

-   Address.Parcel - An address for parcel delivery.
-   Address.Postal - An address for postal delivery.
-   Address.Domestic - An address for domestic mail delivery.
-   Address.International - An address for international mail delivery.

