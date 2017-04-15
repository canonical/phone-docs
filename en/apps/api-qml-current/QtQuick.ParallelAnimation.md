---
Title: QtQuick.ParallelAnimation
---
        
ParallelAnimation
=================

<span class="subtitle"></span>
Enables animations to be run in parallel More...

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
<td><p><a href="QtQuick.Animation.md">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

The [SequentialAnimation](../QtQuick.SequentialAnimation.md) and [ParallelAnimation](index.html) types allow multiple animations to be run together. Animations defined in a [SequentialAnimation](../QtQuick.SequentialAnimation.md) are run one after the other, while animations defined in a [ParallelAnimation](index.html) are run at the same time.

The following animation runs two number animations in parallel. The [Rectangle](../QtQuick.Rectangle.md) moves to (50,50) by animating its `x` and `y` properties at the same time.

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    ParallelAnimation {
        running: true
        NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
    }
}
```

Like any other animation type, a [ParallelAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

**Note:** Once an animation has been grouped into a [SequentialAnimation](../QtQuick.SequentialAnimation.md) or [ParallelAnimation](index.html), it cannot be individually started and stopped; the [SequentialAnimation](../QtQuick.SequentialAnimation.md) or [ParallelAnimation](index.html) must be started and stopped as a group.

**See also** [SequentialAnimation](../QtQuick.SequentialAnimation.md), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

