---
Title: QtQuick.Path
---
        
Path
====

<span class="subtitle"></span>
Defines a path for use by PathView More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[closed](#closed-prop)**** : bool
-   ****[pathElements](#pathElements-prop)**** : list&lt;PathElement&gt;
-   ****[startX](#startX-prop)**** : real
-   ****[startY](#startY-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

A Path is composed of one or more path segments - [PathLine](../QtQuick.PathLine.md), [PathQuad](../QtQuick.PathQuad.md), [PathCubic](../QtQuick.PathCubic.md), [PathArc](../QtQuick.PathArc.md), [PathCurve](../QtQuick.PathCurve.md), [PathSvg](../QtQuick.PathSvg.md).

The spacing of the items along the Path can be adjusted via a [PathPercent](../QtQuick.PathPercent.md) object.

[PathAttribute](../QtQuick.PathAttribute.md) allows named attributes with values to be defined along the path.

**See also** [PathView](../QtQuick.PathView.md), [PathAttribute](../QtQuick.PathAttribute.md), [PathPercent](../QtQuick.PathPercent.md), [PathLine](../QtQuick.PathLine.md), [PathQuad](../QtQuick.PathQuad.md), [PathCubic](../QtQuick.PathCubic.md), [PathArc](../QtQuick.PathArc.md), [PathCurve](../QtQuick.PathCurve.md), and [PathSvg](../QtQuick.PathSvg.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="closed-prop"></span><span class="name">closed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the start and end of the path are identical.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pathElements-prop"></span><span class="qmldefault">[default] </span><span class="name">pathElements</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.PathElement.md">PathElement</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the objects composing the path.

A path can contain the following path objects:

-   [PathLine](../QtQuick.PathLine.md) - a straight line to a given position.
-   [PathQuad](../QtQuick.PathQuad.md) - a quadratic Bezier curve to a given position with a control point.
-   [PathCubic](../QtQuick.PathCubic.md) - a cubic Bezier curve to a given position with two control points.
-   [PathArc](../QtQuick.PathArc.md) - an arc to a given position with a radius.
-   [PathSvg](../QtQuick.PathSvg.md) - a path specified as an SVG path data string.
-   [PathCurve](../QtQuick.PathCurve.md) - a point on a Catmull-Rom curve.
-   [PathAttribute](../QtQuick.PathAttribute.md) - an attribute at a given position in the path.
-   [PathPercent](../QtQuick.PathPercent.md) - a way to spread out items along various segments of the path.

``` qml
    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate
        path: Path {
            startX: 120; startY: 100
            PathAttribute { name: "iconScale"; value: 1.0 }
            PathAttribute { name: "iconOpacity"; value: 1.0 }
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathAttribute { name: "iconScale"; value: 0.3 }
            PathAttribute { name: "iconOpacity"; value: 0.5 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
```

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

These properties hold the starting position of the path.

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

These properties hold the starting position of the path.

