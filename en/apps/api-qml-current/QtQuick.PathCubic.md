---
Title: QtQuick.PathCubic
---
        
PathCubic
=========

<span class="subtitle"></span>
Defines a cubic Bezier curve with two control points More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[control1X](#control1X-prop)**** : real
-   ****[control1Y](#control1Y-prop)**** : real
-   ****[control2X](#control2X-prop)**** : real
-   ****[control2Y](#control2Y-prop)**** : real
-   ****[relativeControl1X](#relativeControl1X-prop)**** : real
-   ****[relativeControl1Y](#relativeControl1Y-prop)**** : real
-   ****[relativeControl2X](#relativeControl2X-prop)**** : real
-   ****[relativeControl2Y](#relativeControl2Y-prop)**** : real
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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/994da620-77ec-43ed-bb61-c66dddac7346-api/apps/qml/sdk-15.04.5/QtQuick.PathCubic/images/declarative-pathcubic.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 20; startY: 0
    PathCubic {
        x: 180; y: 0
        control1X: -10; control1Y: 90
        control2X: 210; control2Y: 90
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path.md), [PathQuad](../QtQuick.PathQuad.md), [PathLine](../QtQuick.PathLine.md), [PathArc](../QtQuick.PathArc.md), [PathCurve](../QtQuick.PathCurve.md), and [PathSvg](../QtQuick.PathSvg.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control1X-prop"></span><span class="name">control1X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the first control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control1Y-prop"></span><span class="name">control1Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the first control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control2X-prop"></span><span class="name">control2X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the second control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control2Y-prop"></span><span class="name">control2Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the second control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl1X-prop"></span><span class="name">relativeControl1X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](#control1X-prop), [control1Y](#control1Y-prop), [control2X](#control2X-prop), and [control2Y](#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl1Y-prop"></span><span class="name">relativeControl1Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](#control1X-prop), [control1Y](#control1Y-prop), [control2X](#control2X-prop), and [control2Y](#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl2X-prop"></span><span class="name">relativeControl2X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](#control1X-prop), [control1Y](#control1Y-prop), [control2X](#control2X-prop), and [control2Y](#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl2Y-prop"></span><span class="name">relativeControl2Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](#control1X-prop), [control1Y](#control1Y-prop), [control2X](#control2X-prop), and [control2Y](#control2Y-prop).

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

