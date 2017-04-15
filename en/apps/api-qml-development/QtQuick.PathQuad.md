---
Title: QtQuick.PathQuad
---
        
PathQuad
========

<span class="subtitle"></span>
Defines a quadratic Bezier curve with a control point More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[controlX](#controlX-prop)**** : real
-   ****[controlY](#controlY-prop)**** : real
-   ****[relativeControlX](#relativeControlX-prop)**** : real
-   ****[relativeControlY](#relativeControlY-prop)**** : real
-   ****[relativeX](#relativeX-prop)**** : real
-   ****[relativeY](#relativeY-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The following QML produces the path shown below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/8d9d0827-df9a-4bd4-88df-c5ae5cdc7e97-api/apps/qml/sdk-15.04.6/QtQuick.PathQuad/images/declarative-pathquad.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 0; startY: 0
    PathQuad { x: 200; y: 0; controlX: 100; controlY: 150 }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path.md), [PathCubic](../QtQuick.PathCubic.md), [PathLine](../QtQuick.PathLine.md), [PathArc](../QtQuick.PathArc.md), [PathCurve](../QtQuick.PathCurve.md), and [PathSvg](../QtQuick.PathSvg.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="controlX-prop"></span><span class="name">controlX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="controlY-prop"></span><span class="name">controlY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControlX-prop"></span><span class="name">relativeControlX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control x and an absolute control y.

**See also** [controlX](#controlX-prop) and [controlY](#controlY-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControlY-prop"></span><span class="name">relativeControlY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the control point relative to the curve's start.

If both a relative and absolute control position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control x and an absolute control y.

**See also** [controlX](#controlX-prop) and [controlY](#controlY-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeX-prop"></span><span class="name">relativeX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** [x](#x-prop) and [y](#y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeY-prop"></span><span class="name">relativeY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** [x](#x-prop) and [y](#y-prop).

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

Defines the end point of the curve.

**See also** [relativeX](#relativeX-prop) and [relativeY](#relativeY-prop).

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

Defines the end point of the curve.

**See also** [relativeX](#relativeX-prop) and [relativeY](#relativeY-prop).

