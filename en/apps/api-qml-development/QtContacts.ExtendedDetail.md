---
Title: QtContacts.ExtendedDetail
---
        
ExtendedDetail
==============

<span class="subtitle"></span>
The ExtendedDetail element contains an extended detail of a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : variant
-   ****[name](#name-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Note for the jsondb manager backend: it converts extended detail data of type date, time or javascript Date to a string expressed in local timezone in ISO 8601 format without timezone specified. Javascript function Date.parse() cannot be used to parse this string, since it interprets the string without timezone specified being in UTC. It is recommended to convert dates to strings before storing them to extended details. For example, javascript functions Date.toISOString() and Date.parse() can be used for the conversion.

[ExtendedDetail](index.html) element contains the following field types:

-   [ExtendedDetail](index.html).Name
-   [ExtendedDetail](index.html).Data

This element is part of the **QtContacts** module.

**See also** QContactExtendedDetail.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="name">data</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the data of the extended detail.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the extended detail.

