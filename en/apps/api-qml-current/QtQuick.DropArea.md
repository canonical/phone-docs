---
Title: QtQuick.DropArea
---
        
DropArea
========

<span class="subtitle"></span>
For specifying drag and drop handling in an area More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[containsDrag](#containsDrag-prop)**** : bool
-   ****[drag](#drag-prop)****
    -   ****[drag.x](#drag.x-prop)**** : qreal
    -   ****[drag.y](#drag.y-prop)**** : qreal
-   ****[drag.source](#drag.source-prop)**** : Object
-   ****[keys](#keys-prop)**** : stringlist

<span id="signals"></span>
Signals
-------

-   ****[dropped](#dropped-signal)****(DragEvent *drop*)
-   ****[entered](#entered-signal)****(DragEvent *drag*)
-   ****[exited](#exited-signal)****()
-   ****[positionChanged](#positionChanged-signal)****(DragEvent *drag*)

<span id="details"></span>
Detailed Description
--------------------

A [DropArea](index.html) is an invisible item which receives events when other items are dragged over it.

The [Drag](../QtQuick.Drag.md) attached property can be used to notify the [DropArea](index.html) when an Item is dragged over it.

The [keys](#keys-prop) property can be used to filter drag events which don't include a matching key.

The [drag.source](#drag.source-prop) property is communicated to the source of a drag event as the recipient of a drop on the drag target.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsDrag-prop"></span><span class="name">containsDrag</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property identifies whether the [DropArea](index.html) currently contains any dragged items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="drag-prop"></span><strong>drag group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="drag.x-prop"></span><span class="name">drag.x</span> : <span class="type">qreal</span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.y-prop"></span><span class="name">drag.y</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the last drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drag.source-prop"></span><span class="name">drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the source of a drag.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-prop"></span><span class="name">keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of drag keys a [DropArea](index.html) will accept.

If no keys are listed the [DropArea](index.html) will accept events from any drag source, otherwise the drag source must have at least one compatible key.

**See also** [QtQuick::Drag::keys](../QtQuick.Drag.md#keys-attached-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropped-signal"></span><span class="name">dropped</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span> <em>drop</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drop event occurs within the bounds of a [DropArea](index.html).

The corresponding handler is `onDropped`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="name">entered</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span> <em>drag</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a *drag* enters the bounds of a [DropArea](index.html).

The corresponding handler is `onEntered`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag exits the bounds of a [DropArea](index.html).

The corresponding handler is `onExited`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionChanged-signal"></span><span class="name">positionChanged</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span> <em>drag</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the position of a drag has changed.

The corresponding handler is `onPositionChanged`.

