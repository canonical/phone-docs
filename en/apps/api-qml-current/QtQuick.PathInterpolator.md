---
Title: QtQuick.PathInterpolator
---
        
PathInterpolator
================

<span class="subtitle"></span>
Specifies how to manually animate along a path More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[angle](#angle-prop)**** : real
-   ****[path](#path-prop)**** : Path
-   ****[progress](#progress-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[PathInterpolator](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#pathinterpolator) provides `x`, `y`, and `angle` information for a particular `progress` along a path.

In the following example, we animate a green rectangle along a bezier path.

``` qml
import QtQuick 2.0
Rectangle {
    width: 400
    height: 400
    PathInterpolator {
        id: motionPath
        path: Path {
            startX: 0; startY: 0
            PathCubic {
                x: 350; y: 350
                control1X: 350; control1Y: 0
                control2X: 0; control2Y: 350
            }
        }
        NumberAnimation on progress { from: 0; to: 1; duration: 2000 }
    }
    Rectangle {
        width: 50; height: 50
        color: "green"
        //bind our attributes to follow the path as progress changes
        x: motionPath.x
        y: motionPath.y
        rotation: motionPath.angle
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
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the angle of the path tangent at [progress](#progress-prop).

Angles are reported clockwise, with zero degrees at the 3 o'clock position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type"><a href="QtQuick.Path.md">Path</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the path to interpolate.

For more information on defining a path see the [Path](../QtQuick.Path.md) documentation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current progress along the path.

Typical usage of [PathInterpolator](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#pathinterpolator) is to set the progress (often via a [NumberAnimation](../QtQuick.NumberAnimation.md)), and read the corresponding values for x, y, and angle (often via bindings to these values).

Progress ranges from 0.0 to 1.0.

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

These properties hold the position of the path at [progress](#progress-prop).

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

These properties hold the position of the path at [progress](#progress-prop).

