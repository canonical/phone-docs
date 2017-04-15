---
Title: QtQuick.PinchArea
---
        
PinchArea
=========

<span class="subtitle"></span>
Enables simple pinch gesture handling More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[pinch](#pinch-prop)****
    -   ****[pinch.target](#pinch.target-prop)**** : Item
    -   ****[pinch.active](#pinch.active-prop)**** : bool
    -   ****[pinch.minimumScale](#pinch.minimumScale-prop)**** : real
    -   ****[pinch.maximumScale](#pinch.maximumScale-prop)**** : real
    -   ****[pinch.minimumRotation](#pinch.minimumRotation-prop)**** : real
    -   ****[pinch.maximumRotation](#pinch.maximumRotation-prop)**** : real
    -   ****[pinch.dragAxis](#pinch.dragAxis-prop)**** : enumeration
    -   ****[pinch.minimumX](#pinch.minimumX-prop)**** : real
    -   ****[pinch.maximumX](#pinch.maximumX-prop)**** : real
    -   ****[pinch.minimumY](#pinch.minimumY-prop)**** : real
    -   ****[pinch.maximumY](#pinch.maximumY-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[pinchFinished](#pinchFinished-signal)****()
-   ****[pinchStarted](#pinchStarted-signal)****()
-   ****[pinchUpdated](#pinchUpdated-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**The PinchArea type was added in QtQuick 1.1**

A [PinchArea](index.html) is an invisible item that is typically used in conjunction with a visible item in order to provide pinch gesture handling for that item.

The [enabled](#enabled-prop) property is used to enable and disable pinch handling for the proxied item. When disabled, the pinch area becomes transparent to mouse/touch events.

[PinchArea](index.html) can be used in two ways:

-   setting a `pinch.target` to provide automatic interaction with an item
-   using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

**See also** [PinchEvent](../QtQuick.PinchEvent.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item accepts pinch gestures.

This property defaults to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="pinch-prop"></span><strong>pinch group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="pinch.target-prop"></span><span class="name">pinch.target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.active-prop"></span><span class="name">pinch.active</span> : <span class="type">bool</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.minimumScale-prop"></span><span class="name">pinch.minimumScale</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.maximumScale-prop"></span><span class="name">pinch.maximumScale</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.minimumRotation-prop"></span><span class="name">pinch.minimumRotation</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.maximumRotation-prop"></span><span class="name">pinch.maximumRotation</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.dragAxis-prop"></span><span class="name">pinch.dragAxis</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.minimumX-prop"></span><span class="name">pinch.minimumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.maximumX-prop"></span><span class="name">pinch.maximumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.minimumY-prop"></span><span class="name">pinch.minimumY</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.maximumY-prop"></span><span class="name">pinch.maximumY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

`pinch` provides a convenient way to make an item react to pinch gestures.

-   `pinch.target` specifies the id of the item to drag.
-   `pinch.active` specifies if the target item is currently being dragged.
-   `pinch.minimumScale` and `pinch.maximumScale` limit the range of the Item.scale property, but not the `PinchEvent` [scale](../QtQuick.PinchEvent.md) property.
-   `pinch.minimumRotation` and `pinch.maximumRotation` limit the range of the Item.rotation property, but not the `PinchEvent` [rotation](../QtQuick.PinchEvent.md) property.
-   `pinch.dragAxis` specifies whether dragging in not allowed (`Pinch.NoDrag`), can be done horizontally (`Pinch.XAxis`), vertically (`Pinch.YAxis`), or both (`Pinch.XAndYAxis`)
-   `pinch.minimum` and `pinch.maximum` limit how far the target can be dragged along the corresponding axes.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchFinished-signal"></span><span class="name">pinchFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has finished.

The [pinch](../QtQuick.PinchEvent.md) parameter (not the same as the [pinch](index.html) property) provides information about the pinch gesture, including the scale, center and angle of the pinch.

The corresponding handler is `onPinchFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchStarted-signal"></span><span class="name">pinchStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has started: two touch points (fingers) have been detected, and they have moved beyond the startDragDistance threshold for the gesture to begin.

The [pinch](../QtQuick.PinchEvent.md) parameter (not the same as the [pinch](index.html) property) provides information about the pinch gesture, including the scale, center and angle of the pinch. At the time of the `pinchStarted` signal, these values are reset to the default values, regardless of the results from previous gestures: pinch.scale will be `1.0` and pinch.rotation will be `0.0`. As the gesture progresses, [pinchUpdated](#pinchUpdated-signal) will report the deviation from those defaults.

To ignore this gesture set the `pinch.accepted` property to false. The gesture will be canceled and no further events will be sent.

The corresponding handler is `onPinchStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchUpdated-signal"></span><span class="name">pinchUpdated</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has changed.

The [pinch](../QtQuick.PinchEvent.md) parameter provides information about the pinch gesture, including the scale, center and angle of the pinch. These values reflect changes only since the beginning of the current gesture, and therefore are not limited by the minimum and maximum limits in the [pinch](index.html) property.

The corresponding handler is `onPinchUpdated`.

