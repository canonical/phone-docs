---
Title: QtOrganizer.Timestamp
---
        
Timestamp
=========

<span class="subtitle"></span>
The Timestamp element contains the created and last modified timestamp of an organizer item's creating date and time. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[created](#created-prop)**** : date
-   ****[lastModified](#lastModified-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   Timestamp.FieldCreated
-   Timestamp.FieldLastModified

**See also** QOrganizerItemTimestamp.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="created-prop"></span><span class="name">created</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the item's creation date and time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lastModified-prop"></span><span class="name">lastModified</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the item's last modified date and time.

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

