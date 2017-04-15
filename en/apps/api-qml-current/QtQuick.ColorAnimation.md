---
Title: QtQuick.ColorAnimation
---
        
ColorAnimation
==============

<span class="subtitle"></span>
Animates changes in color values More...

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
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[from](#from-prop)**** : color
-   ****[to](#to-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

[ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is a specialized [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) that defines an animation to be applied when a color value changes.

Here is a [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) applied to the `color` property of a [Rectangle](../QtQuick.Rectangle.md) as a property value source. It animates the `color` property's value from its current value to a value of "red", over 1000 milliseconds:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    ColorAnimation on color { to: "yellow"; duration: 1000 }
}
```

Like any other animation type, a [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

For convenience, when a [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is used in a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), it will animate any `color` properties that have been modified during the state change. If a [property](../QtQuick.PropertyAnimation.md#property-prop) or [properties](../QtQuick.PropertyAnimation.md#properties-prop) are explicitly set for the animation, then those are used instead.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color value at which the animation should begin.

For example, the following animation is not applied until a color value has reached "\#c0c0c0":

``` qml
Item {
    states: [
        // States are defined here...
    ]
    transition: Transition {
        ColorAnimation { from: "#c0c0c0"; duration: 2000 }
    }
}
```

If the [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color value at which the animation should end.

If the [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

