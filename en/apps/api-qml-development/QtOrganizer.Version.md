---
Title: QtOrganizer.Version
---
        
Version
=======

<span class="subtitle"></span>
The Version element contains versioning information of an organizer item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[extendedVersion](#extendedVersion-prop)**** : string
-   ****[version](#version-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** QOrganizerItemVersion.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedVersion-prop"></span><span class="name">extendedVersion</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the extended version of an organizer item, which can be used to represent the version stored in the back-end.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="version-prop"></span><span class="name">version</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the integer version of an organizer item, which can be used as the sequence number as per iCalendar spec.

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

