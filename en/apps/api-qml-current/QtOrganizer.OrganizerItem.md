---
Title: QtOrganizer.OrganizerItem
---
        
OrganizerItem
=============

<span class="subtitle"></span>
The OrganizerItem element represents the in-memory version of a organizer item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[collectionId](#collectionId-prop)**** : string
-   ****[description](#description-prop)**** : string
-   ****[displayLabel](#displayLabel-prop)**** : string
-   ****[guid](#guid-prop)**** : string
-   ****[itemDetails](#itemDetails-prop)**** : list&lt;Detail&gt;
-   ****[itemId](#itemId-prop)**** : string
-   ****[itemType](#itemType-prop)**** : enum
-   ****[manager](#manager-prop)**** : string
-   ****[modified](#modified-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](#onItemChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clearDetails](#clearDetails-method)****()
-   Detail ****[detail](#detail-method)****(type)
-   list&lt;Detail&gt; ****[details](#details-method)****(type)
-   void ****[removeDetail](#removeDetail-method)****(detail)
-   ****[save](#save-method)****()
-   void ****[setDetail](#setDetail-method)****(detail)

<span id="details"></span>
Detailed Description
--------------------

A [OrganizerItem](index.html) has a number of mandatory details. Different subclasses of [OrganizerItem](index.html) (i.e., Event, [EventOccurrence](../QtOrganizer.EventOccurrence.md), Journal, Todo, [TodoOccurrence](../QtOrganizer.TodoOccurrence.md), Note) may have more mandatory details.

Most frequently-used details can also be accessed through convenient properties, e.g. [displayLabel](#displayLabel-prop), while all details can be accessed through [detail()](#detail-method), [details()](#details-method), saveDetail(), among others.

**See also** Event, EventOccurrence, Journal, Todo, TodoOccurrence, Note, QOrganizerManager, and QOrganizerItem.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collectionId-prop"></span><span class="name">collectionId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of collection where the item belongs to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the description text of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayLabel-prop"></span><span class="name">displayLabel</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the display label of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guid-prop"></span><span class="name">guid</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the GUID string of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemDetails-prop"></span><span class="name">itemDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the details of the [OrganizerItem](index.html) object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemId-prop"></span><span class="name">itemId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the [OrganizerItem](index.html) object.

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

This property holds the type of the [OrganizerItem](index.html) object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager uri which the [OrganizerItem](index.html) object comes from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modified-prop"></span><span class="name">modified</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds the dirty flag of the [OrganizerItem](index.html) object.

**See also** [save](#save-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onItemChanged-signal"></span><span class="name">onItemChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [OrganizerItem](index.html)'s or child element's (like Event, Todo etc) properties have been changed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearDetails-method"></span><span class="name">clearDetails</span>()</p></td>
</tr>
</tbody>
</table>

Removes all details from the organizer item.

**See also** [removeDetail](#removeDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-method"></span><span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span> <span class="name">detail</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the first detail stored in the organizer item with the given *type*.

**See also** [Detail::type](../QtOrganizer.Detail.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="details-method"></span><span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt; <span class="name">details</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns all the details stored in the organizer item with the given *type*.

**See also** [Detail::type](../QtOrganizer.Detail.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type"><a href="#detail-method">detail</a></span>)</p></td>
</tr>
</tbody>
</table>

Removes given *detail* from the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

Saves this [OrganizerItem](index.html) if the item has been modified.

**See also** [modified](#modified-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setDetail-method"></span><span class="type">void</span> <span class="name">setDetail</span>(<span class="type"><a href="#detail-method">detail</a></span>)</p></td>
</tr>
</tbody>
</table>

Saves the given *detail* in the organizer item, and sets its id.

