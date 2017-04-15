---
Title: QtLocation.MapPinchEvent
---
        
MapPinchEvent
=============

<span class="subtitle"></span>
MapPinchEvent type provides basic information about pinch event. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[accepted](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#accepted-prop)**** : bool
-   ****[angle](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#angle-prop)**** : real
-   ****[center](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#center-prop)**** : QPoint
-   ****[point1](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#point1-prop)**** : QPoint
-   ****[point2](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#point2-prop)**** : QPoint
-   ****[pointCount](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#pointCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

[MapPinchEvent](../../sdk-15.04.1/QtLocation.MapPinchEvent.md) type provides basic information about pinch event. They are present in handlers of MapPinch (for example pinchStarted/pinchUpdated). Events are only guaranteed to be valid for the duration of the handler.

Except for the [accepted](../../sdk-15.04.1/QtLocation.MapPinchEvent.md#accepted-prop) property, all properties are read-only.

<span id="example-usage"></span>
### Example Usage

The following example enables the pinch gesture on a map and reacts to the finished event.

``` cpp
Map {
    id: map
    gesture.enabled: true
    gesture.onPinchFinished:{
        var coordinate1 = map.toCoordinate(gesture.point1)
        var coordinate2 = map.toCoordinate(gesture.point2)
        console.log("Pinch started at:")
        console.log("        Points (" + gesture.point1.x + ", " + gesture.point1.y + ") - (" + gesture.point2.x + ", " + gesture.point2.y + ")")
        console.log("   Coordinates (" + coordinate1.latitude + ", " + coordinate1.longitude + ") - (" + coordinate2.latitude + ", " + coordinate2.longitude + ")")
    }
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
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting this property to false in the `MapPinch::onPinchStarted` handler will result in no further pinch events being generated, and the gesture ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the current angle between the two points in the range -180 to 180. Positive values for the angles mean counter-clockwise while negative values mean the clockwise direction. Zero degrees is at the 3 o'clock position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the current center point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point1-prop"></span><span class="name">point1</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point2-prop"></span><span class="name">point2</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointCount-prop"></span><span class="name">pointCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the number of points currently touched. The MapPinch will not react until two touch points have initiated a gesture, but will remain active until all touch points have been released.

