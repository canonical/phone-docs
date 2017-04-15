---
Title: QtLocation.MapGestureArea
---
        
MapGestureArea
==============

<span class="subtitle"></span>
The MapGestureArea type provides Map gesture interaction. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[activeGestures](../../sdk-15.04.1/QtLocation.MapGestureArea.md#activeGestures-prop)**** : enumeration
-   ****[enabled](../../sdk-15.04.1/QtLocation.MapGestureArea.md#enabled-prop)**** : bool
-   ****[flickDeceleration](../../sdk-15.04.1/QtLocation.MapGestureArea.md#flickDeceleration-prop)**** : real
-   ****[isPanActive](../../sdk-15.04.1/QtLocation.MapGestureArea.md#isPanActive-prop)**** : bool
-   ****[isPinchActive](../../sdk-15.04.1/QtLocation.MapGestureArea.md#isPinchActive-prop)**** : bool
-   ****[maximumZoomLevelChange](../../sdk-15.04.1/QtLocation.MapGestureArea.md#maximumZoomLevelChange-prop)**** : real
-   ****[panEnabled](../../sdk-15.04.1/QtLocation.MapGestureArea.md#panEnabled-prop)**** : bool
-   ****[pinchEnabled](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchEnabled-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[flickFinished](../../sdk-15.04.1/QtLocation.MapGestureArea.md#flickFinished-signal)****()
-   ****[flickStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#flickStarted-signal)****()
-   ****[panFinished](../../sdk-15.04.1/QtLocation.MapGestureArea.md#panFinished-signal)****()
-   ****[panStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#panStarted-signal)****()
-   ****[pinchFinished](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchFinished-signal)****(PinchEvent *event*)
-   ****[pinchStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchStarted-signal)****(PinchEvent *event*)
-   ****[pinchUpdated](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchUpdated-signal)****(PinchEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

[MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) objects are used as part of a Map, to provide for panning, flicking and pinch-to-zoom gesture used on touch displays.

A [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) is automatically created with a new Map and available with the [gesture](../../sdk-15.04.1/QtLocation.Map.md#gesture-prop) property. This is the only way to create a [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md), and once created this way cannot be destroyed without its parent Map.

The two most commonly used properties of the [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) are the [enabled](../../sdk-15.04.1/QtLocation.MapGestureArea.md#enabled-prop) and [activeGestures](../../sdk-15.04.1/QtLocation.MapGestureArea.md#activeGestures-prop) properties. Both of these must be set before a [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) will have any effect upon interaction with the Map. The [flickDeceleration](../../sdk-15.04.1/QtLocation.MapGestureArea.md#flickDeceleration-prop) property controls how quickly the map pan slows after contact is released while panning the map.

<span id="performance"></span>
### Performance

The [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md), when enabled, must process all incoming touch events in order to track the shape and size of the "pinch". The overhead added on touch events can be considered constant time.

<span id="example-usage"></span>
### Example Usage

The following example enables the zoom and pan gestures on the map, but not flicking. So the map scrolling will halt immediately on releasing the mouse button / touch.

``` cpp
Map {
    gesture.enabled: true
    gesture.activeGestures: MapGestureArea.ZoomGesture | MapGestureArea.PanGesture
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeGestures-prop"></span><span class="name">activeGestures</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the gestures that will be active. By default the zoom, pan and flick gestures are enabled.

-   [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md).NoGesture - Don't support any additional gestures (value: 0x0000).
-   [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md).ZoomGesture - Support the map zoom gesture (value: 0x0001).
-   [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md).PanGesture - Support the map pan gesture (value: 0x0002).
-   [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md).FlickGesture - Support the map flick gesture (value: 0x0004).

**Note:** For the time being, only [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md).ZoomGesture is supported.

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

This property holds whether the gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickDeceleration-prop"></span><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rate at which a flick will decelerate.

The default value is 2500.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPanActive-prop"></span><span class="name">isPanActive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether any pan gesture (panning or flicking) is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPinchActive-prop"></span><span class="name">isPinchActive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether any pinch gesture is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumZoomLevelChange-prop"></span><span class="name">maximumZoomLevelChange</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum zoom level change per pinch, essentially meant to be used for setting the zoom sensitivity.

It is an indicative measure calculated from the dimensions of the map area, roughly corresponding how much zoom level could change with maximum pinch zoom. Default value is 2.0, maximum value is 10.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panEnabled-prop"></span><span class="name">panEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the pan gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchEnabled-prop"></span><span class="name">pinchEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the pinch gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickFinished-signal"></span><span class="name">flickFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to a flick. The order of panFinished() and flickFinished() is not specified.

The corresponding handler is `onFlickFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickStarted-signal"></span><span class="name">flickStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.

The corresponding handler is `onFlichStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panFinished-signal"></span><span class="name">panFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal is emitted when the flick stops. If a flick was not generated, this signal is emitted when the user stops dragging - that is a mouse or touch release.

The corresponding handler is `onPanFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panStarted-signal"></span><span class="name">panStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view begins moving due to user interaction. Typically this means that the user is dragging a finger - or a mouse with one of more mouse buttons pressed - on the map.

The corresponding handler is `onPanStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchFinished-signal"></span><span class="name">pinchFinished</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted at the end of a pinch gesture.

The corresponding handler is `onPinchFinished`.

**See also** [pinchStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchStarted-signal) and [pinchUpdated](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchUpdated-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchStarted-signal"></span><span class="name">pinchStarted</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a pinch gesture is started.

The corresponding handler is `onPinchStarted`.

**See also** [pinchUpdated](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchUpdated-signal) and [pinchFinished](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchFinished-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchUpdated-signal"></span><span class="name">pinchUpdated</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted as the user's fingers move across the map, after the [pinchStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchStarted-signal) signal is emitted.

The corresponding handler is `onPinchUpdated`.

**See also** [pinchStarted](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchStarted-signal) and [pinchFinished](../../sdk-15.04.1/QtLocation.MapGestureArea.md#pinchFinished-signal).

