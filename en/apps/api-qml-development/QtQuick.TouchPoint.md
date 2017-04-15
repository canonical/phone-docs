---
Title: QtQuick.TouchPoint
---
        
TouchPoint
==========

<span class="subtitle"></span>
Describes a touch point in a MultiPointTouchArea More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[area](#area-prop)**** : rectangle
-   ****[pointId](#pointId-prop)**** : int
-   ****[pressed](#pressed-prop)**** : bool
-   ****[pressure](#pressure-prop)**** : real
-   ****[previousX](#previousX-prop)**** : real
-   ****[previousY](#previousY-prop)**** : real
-   ****[sceneX](#sceneX-prop)**** : real
-   ****[sceneY](#sceneY-prop)**** : real
-   ****[startX](#startX-prop)**** : real
-   ****[startY](#startY-prop)**** : real
-   ****[velocity](#velocity-prop)**** : vector2d
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [TouchPoint](index.html) type contains information about a touch point, such as the current position, pressure, and area.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="area-prop"></span><span class="name">area</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointId-prop"></span><span class="name">pointId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the point id of the touch point.

Each touch point within a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) will have a unique id.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the touch point is currently pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressure-prop"></span><span class="name">pressure</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousX-prop"></span><span class="name">previousX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the previous position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousY-prop"></span><span class="name">previousY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the previous position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sceneX-prop"></span><span class="name">sceneX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point in scene coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sceneY-prop"></span><span class="name">sceneY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point in scene coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startX-prop"></span><span class="name">startX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startY-prop"></span><span class="name">startY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">vector2d</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point.

