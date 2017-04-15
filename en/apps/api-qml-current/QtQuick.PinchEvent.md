---
Title: QtQuick.PinchEvent
---
        
PinchEvent
==========

<span class="subtitle"></span>
For specifying information about a pinch event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool
-   ****[angle](#angle-prop)**** : real
-   ****[center](#center-prop)**** : QPointF
-   ****[point1](#point1-prop)**** : QPointF
-   ****[point2](#point2-prop)**** : QPointF
-   ****[pointCount](#pointCount-prop)**** : int
-   ****[previousAngle](#previousAngle-prop)**** : real
-   ****[previousCenter](#previousCenter-prop)**** : QPointF
-   ****[previousScale](#previousScale-prop)**** : real
-   ****[rotation](#rotation-prop)**** : real
-   ****[scale](#scale-prop)**** : real
-   ****[startCenter](#startCenter-prop)**** : QPointF
-   ****[startPoint1](#startPoint1-prop)**** : QPointF
-   ****[startPoint2](#startPoint2-prop)**** : QPointF

<span id="details"></span>
Detailed Description
--------------------

**The PinchEvent type was added in QtQuick 1.1**

The `center`, `startCenter`, `previousCenter` properties provide the center position between the two touch points.

The `scale` and `previousScale` properties provide the scale factor.

The `angle`, `previousAngle` and `rotation` properties provide the angle between the two points and the amount of rotation.

The `point1`, `point2`, `startPoint1`, `startPoint2` properties provide the positions of the touch points.

The `accepted` property may be set to false in the `onPinchStarted` handler if the gesture should not be handled.

**See also** [PinchArea](../QtQuick.PinchArea.md).

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

Setting this property to false in the `PinchArea::onPinchStarted` handler will result in no further pinch events being generated, and the gesture ignored.

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

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point1-prop"></span><span class="name">point1</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point2-prop"></span><span class="name">point2</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

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

Holds the number of points currently touched. The [PinchArea](../QtQuick.PinchArea.md) will not react until two touch points have initited a gesture, but will remain active until all touch points have been released.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousAngle-prop"></span><span class="name">previousAngle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousCenter-prop"></span><span class="name">previousCenter</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousScale-prop"></span><span class="name">previousScale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the scale factor determined by the change in distance between the two touch points.

-   `scale` is the current scale factor.
-   `previousScale` is the scale factor of the previous event.

When a pinch gesture is started, the scale is `1.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-prop"></span><span class="name">scale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the scale factor determined by the change in distance between the two touch points.

-   `scale` is the current scale factor.
-   `previousScale` is the scale factor of the previous event.

When a pinch gesture is started, the scale is `1.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startCenter-prop"></span><span class="name">startCenter</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPoint1-prop"></span><span class="name">startPoint1</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPoint2-prop"></span><span class="name">startPoint2</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

