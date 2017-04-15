---
Title: QtOrganizer.ItemType
---
        
ItemType
========

<span class="subtitle"></span>
The ItemType element contains the type of an organizer item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[itemType](#itemType-prop)**** : enum

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [ItemType](index.html).FieldType

**See also** QOrganizerItemType.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemType-prop"></span><span class="name">itemType</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the item. The value can be one of:

-   [ItemType](index.html).Event
-   [ItemType](index.html).[EventOccurrence](../QtOrganizer.EventOccurrence.md)
-   [ItemType](index.html).Todo
-   [ItemType](index.html).[TodoOccurrence](../QtOrganizer.TodoOccurrence.md)
-   [ItemType](index.html).Note
-   [ItemType](index.html).Journal
-   [ItemType](index.html).Customized

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

