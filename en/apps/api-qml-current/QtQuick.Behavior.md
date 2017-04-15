---
Title: QtQuick.Behavior
---
        
Behavior
========

<span class="subtitle"></span>
Defines a default animation for a property change More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[animation](#animation-prop)**** : Animation
-   ****[enabled](#enabled-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

A Behavior defines the default animation to be applied whenever a particular property value changes.

For example, the following Behavior defines a [NumberAnimation](../QtQuick.NumberAnimation.md) to be run whenever the [Rectangle](../QtQuick.Rectangle.md)'s `width` value changes. When the [MouseArea](../QtQuick.MouseArea.md) is clicked, the `width` is changed, triggering the behavior's animation:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    Behavior on width {
        NumberAnimation { duration: 1000 }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: rect.width = 50
    }
}
```

Note that a property cannot have more than one assigned Behavior. To provide multiple animations within a Behavior, use [ParallelAnimation](../QtQuick.ParallelAnimation.md) or [SequentialAnimation](../QtQuick.SequentialAnimation.md).

If a [state change](../QtQuick.qtquick-statesanimations-states.md) has a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) that matches the same property as a Behavior, the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) animation overrides the Behavior for that state change. For general advice on using Behaviors to animate state changes, see [Using Qt Quick Behaviors with States](../QtQuick.qtquick-statesanimations-behaviors.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), [Behavior example](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#behaviors), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animation-prop"></span><span class="qmldefault">[default] </span><span class="name">animation</span> : <span class="type"><a href="QtQuick.Animation.md">Animation</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the animation to run when the behavior is triggered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the behavior will be triggered when the tracked property changes value.

By default a Behavior is enabled.

