---
Title: QtQuick.PathCurve
---
        
PathCurve
=========

<span class="subtitle"></span>
Defines a point on a Catmull-Rom curve More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[relativeX](#relativeX-prop)**** : real
-   ****[relativeY](#relativeY-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[PathCurve](index.html) provides an easy way to specify a curve passing directly through a set of points. Typically multiple PathCurves are used in a series, as the following example demonstrates:

``` qml
import QtQuick 2.0
Canvas {
    width: 400; height: 200
    contextType: "2d"
    Path {
        id: myPath
        startX: 0; startY: 100
        PathCurve { x: 75; y: 75 }
        PathCurve { x: 200; y: 150 }
        PathCurve { x: 325; y: 25 }
        PathCurve { x: 400; y: 100 }
    }
    onPaint: {
        context.strokeStyle = Qt.rgba(.4,.6,.8);
        context.path = myPath;
        context.stroke();
    }
}
```

This example produces the following path (with the starting point and [PathCurve](index.html) points highlighted in red):

![](https://developer.ubuntu.com/static/devportal_uploaded/fd3a5c32-eb73-4f9f-b062-29664dfc31de-api/apps/qml/sdk-15.04.6/QtQuick.PathCurve/images/declarative-pathcurve.png)

**See also** [Path](../QtQuick.Path.md), [PathLine](../QtQuick.PathLine.md), [PathQuad](../QtQuick.PathQuad.md), [PathCubic](../QtQuick.PathCubic.md), [PathArc](../QtQuick.PathArc.md), and [PathSvg](../QtQuick.PathSvg.md).

Property Documentation
----------------------

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

