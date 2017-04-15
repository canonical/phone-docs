---
Title: QtQuick.Drag
---
        
Drag
====

<span class="subtitle"></span>
For specifying drag and drop events for moved Items More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[active](#active-attached-prop)**** : bool
-   ****[dragType](#dragType-attached-prop)**** : enumeration
-   ****[hotSpot](#hotSpot-attached-prop)**** : QPointF
-   ****[keys](#keys-attached-prop)**** : stringlist
-   ****[mimeData](#mimeData-attached-prop)**** : stringlist
-   ****[proposedAction](#proposedAction-attached-prop)**** : enumeration
-   ****[source](#source-attached-prop)**** : Object
-   ****[supportedActions](#supportedActions-attached-prop)**** : flags
-   ****[target](#target-attached-prop)**** : Object

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[dragFinished](#dragFinished-signal)****(DropAction *action*)
-   ****[dragStarted](#dragStarted-signal)****()

<span id="attached-methods"></span>
Attached Methods
----------------

-   void ****[cancel](#cancel-method)****()
-   enumeration ****[drop](#drop-method)****()
-   void ****[start](#start-method)****(flags *supportedActions*)
-   void ****[startDrag](#startDrag-method)****(flags *supportedActions*)

<span id="details"></span>
Detailed Description
--------------------

Using the Drag attached property, any Item can be made a source of drag and drop events within a scene.

When a drag is [active](#active-attached-prop) on an item, any change in that item's position will generate a drag event that will be sent to any [DropArea](../QtQuick.DropArea.md) that intersects with the new position of the item. Other items which implement drag and drop event handlers can also receive these events.

The following snippet shows how an item can be dragged with a [MouseArea](../QtQuick.MouseArea.md). However, dragging is not limited to mouse drags; anything that can move an item can generate drag events, including touch events, animations and bindings.

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 200
    DropArea {
        x: 75; y: 75
        width: 50; height: 50
        Rectangle {
            anchors.fill: parent
            color: "green"
            visible: parent.containsDrag
        }
    }
    Rectangle {
        x: 10; y: 10
        width: 20; height: 20
        color: "red"
        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10
        MouseArea {
            id: dragArea
            anchors.fill: parent
            drag.target: parent
        }
    }
}
```

A drag can be terminated either by canceling it with Drag.[cancel()](#cancel-method) or setting Drag.active to false, or it can be terminated with a drop event by calling Drag.[drop()](#drop-method). If the drop event is accepted, Drag.[drop()](#drop-method) will return the [drop action](#supportedActions-attached-prop) chosen by the recipient of the event, otherwise it will return Qt.IgnoreAction.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-attached-prop"></span><span class="name">Drag.active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether a drag event sequence is currently active.

Binding this property to the active property of [MouseArea::drag](../QtQuick.MouseArea.md#drag-prop) will cause [startDrag](#startDrag-method) to be called when the user starts dragging.

Setting this property to true will also send a QDragEnter event to the scene with the item's current position. Setting it to false will send a QDragLeave event.

While a drag is active any change in an item's position will send a QDragMove event with item's new position to the scene.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragType-attached-prop"></span><span class="name">Drag.dragType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether to automatically start drags, do nothing, or to use backwards compatible internal drags. The default is to use backwards compatible internal drags.

A drag can also be started manually using [startDrag](#startDrag-method).

-   Drag.None - do not start drags automatically
-   Drag.Automatic - start drags automatically
-   Drag.Internal (default) - start backwards compatible drags automatically

When using `Drag.Automatic` you should also define [mimeData](#mimeData-attached-prop) and bind the [active](#active-attached-prop) property to the active property of MouseArea.drag.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hotSpot-attached-prop"></span><span class="name">Drag.hotSpot</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

This property holds the drag position relative to the top left of the item.

By default this is (0, 0).

Changes to hotSpot trigger a new drag move with the updated position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-attached-prop"></span><span class="name">Drag.keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of keys that can be used by a [DropArea](../QtQuick.DropArea.md) to filter drag events.

Changing the keys while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mimeData-attached-prop"></span><span class="name">Drag.mimeData</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a map of mimeData that is used during [startDrag](#startDrag-method).

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proposedAction-attached-prop"></span><span class="name">Drag.proposedAction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds an action that is recommended by the drag source as a return value from Drag.[drop()](#drop-method).

Changes to proposedAction will trigger a move event with the updated proposal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-attached-prop"></span><span class="name">Drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds an object that is identified to recipients of drag events as the source of the events. By default this is the item that the Drag property is attached to.

Changing the source while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedActions-attached-prop"></span><span class="name">Drag.supportedActions</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds return values of Drag.[drop()](#drop-method) supported by the drag source.

Changing the supportedActions while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-attached-prop"></span><span class="name">Drag.target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

While a drag is active this property holds the last object to accept an enter event from the dragged item, if the current drag position doesn't intersect any accepting targets it is null.

When a drag is not active this property holds the object that accepted the drop event that ended the drag, if no object accepted the drop or the drag was canceled the target will then be null.

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragFinished-signal"></span><span class="name">dragFinished</span>(<span class="type">DropAction</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag finishes and the drag was started with the [startDrag()](#startDrag-method) method or started automatically using the [dragType](#dragType-attached-prop) property.

The corresponding handler is `onDragFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragStarted-signal"></span><span class="name">dragStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag is started with the [startDrag()](#startDrag-method) method or when it is started automatically using the [dragType](#dragType-attached-prop) property.

The corresponding handler is `onDragStarted`.

Attached Method Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="type">void</span> <span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Ends a drag sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drop-method"></span><span class="type">enumeration</span> <span class="name">drop</span>()</p></td>
</tr>
</tbody>
</table>

Ends a drag sequence by sending a drop event to the target item.

Returns the action accepted by the target item. If the target item or a parent doesn't accept the drop event then Qt.IgnoreAction will be returned.

The returned drop action may be one of:

-   Qt.CopyAction Copy the data to the target
-   Qt.MoveAction Move the data from the source to the target
-   Qt.LinkAction Create a link from the source to the target.
-   Qt.IgnoreAction Ignore the action (do nothing with the data).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">void</span> <span class="name">start</span>(<span class="type">flags</span> <em>supportedActions</em>)</p></td>
</tr>
</tbody>
</table>

Starts sending drag events. Used for starting old-style internal drags. [startDrag](#startDrag-method) is the new-style, preferred method of starting drags.

The optional *supportedActions* argument can be used to override the [supportedActions](#supportedActions-attached-prop) property for the started sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startDrag-method"></span><span class="type">void</span> <span class="name">startDrag</span>(<span class="type">flags</span> <em>supportedActions</em>)</p></td>
</tr>
</tbody>
</table>

Starts sending drag events.

The optional *supportedActions* argument can be used to override the [supportedActions](#supportedActions-attached-prop) property for the started sequence.

