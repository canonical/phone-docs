---
Title: QtQuick.NumberAnimation
---
        
NumberAnimation
===============

<span class="subtitle"></span>
Animates changes in qreal-type values More...

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
<td><p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a> and <a href="QtQuick.SpringAnimation.md">SpringAnimation</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[from](#from-prop)**** : real
-   ****[to](#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[NumberAnimation](index.html) is a specialized [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) that defines an animation to be applied when a numerical value changes.

Here is a [NumberAnimation](index.html) applied to the `x` property of a [Rectangle](../QtQuick.Rectangle.md) as a property value source. It animates the `x` value from its current value to a value of 50, over 1000 milliseconds:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    NumberAnimation on x { to: 50; duration: 1000 }
}
```

Like any other animation type, a [NumberAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

Note that [NumberAnimation](index.html) may not animate smoothly if there are irregular changes in the number value that it is tracking. If this is the case, use [SmoothedAnimation](../QtQuick.SmoothedAnimation.md) instead.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the starting value for the animation.

For example, the following animation is not applied until the `x` value has reached 100:

``` qml
Item {
    states: [
        // ...
    ]
    transition: Transition {
        NumberAnimation { properties: "x"; from: 100; duration: 200 }
    }
}
```

If the [NumberAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the end value for the animation.

If the [NumberAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

