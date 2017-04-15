---
Title: QtOrganizer.Location
---
        
Location
========

<span class="subtitle"></span>
The Location element contains information about a location which is related to the organizer item in some manner. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[label](#label-prop)**** : string
-   ****[latitude](#latitude-prop)**** : double
-   ****[longitude](#longitude-prop)**** : double

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   Location.FieldLabel
-   Location.FieldLatitude
-   Location.FieldLongitude

**See also** QOrganizerItemLocation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="label-prop"></span><span class="name">label</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the location label value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="latitude-prop"></span><span class="name">latitude</span> : <span class="type">double</span></p></td>
</tr>
</tbody>
</table>

This property holds the location latitude value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="longitude-prop"></span><span class="name">longitude</span> : <span class="type">double</span></p></td>
</tr>
</tbody>
</table>

This property holds the location longitude value .

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

