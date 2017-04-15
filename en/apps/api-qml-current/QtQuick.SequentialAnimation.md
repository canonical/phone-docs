---
Title: QtQuick.SequentialAnimation
---
        
SequentialAnimation
===================

<span class="subtitle"></span>
Allows animations to be run sequentially More...

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

The [SequentialAnimation](index.html) and [ParallelAnimation](../QtQuick.ParallelAnimation.md) types allow multiple animations to be run together. Animations defined in a [SequentialAnimation](index.html) are run one after the other, while animations defined in a [ParallelAnimation](../QtQuick.ParallelAnimation.md) are run at the same time.

The following example runs two number animations in a sequence. The [Rectangle](../QtQuick.Rectangle.md) animates to a `x` position of 50, then to a `y` position of 50.

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    SequentialAnimation {
        running: true
        NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
    }
}
```

Animations defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) are automatically run in parallel, so [SequentialAnimation](index.html) can be used to enclose the animations in a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) if this is the preferred behavior.

Like any other animation type, a [SequentialAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

**Note:** Once an animation has been grouped into a [SequentialAnimation](index.html) or [ParallelAnimation](../QtQuick.ParallelAnimation.md), it cannot be individually started and stopped; the [SequentialAnimation](index.html) or [ParallelAnimation](../QtQuick.ParallelAnimation.md) must be started and stopped as a group.

**See also** [ParallelAnimation](../QtQuick.ParallelAnimation.md), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

