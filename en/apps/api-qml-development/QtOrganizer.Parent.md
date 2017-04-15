---
Title: QtOrganizer.Parent
---
        
Parent
======

<span class="subtitle"></span>
The Parent element contains information about the event or todo that generated this item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[isDetached](#isDetached-prop)**** : string
-   ****[originalDate](#originalDate-prop)**** : date
-   ****[parentId](#parentId-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[setValue](#setValue-method)****(field, value)
-   variant ****[value](#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   Parent.FieldParentId
-   Parent.FieldOriginalDate

**See also** QOrganizerItemParent.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isDetached-prop"></span><span class="name">isDetached</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds if the event is a detached recurrence or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="originalDate-prop"></span><span class="name">originalDate</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the original date of this instance origin item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentId-prop"></span><span class="name">parentId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the organizer item id of the parent recurrent event or todo.

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

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setValue-method"></span><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::setValue](../QtOrganizer.Detail.md#setValue-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-method"></span><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::value](../QtOrganizer.Detail.md#value-method).

