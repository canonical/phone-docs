---
Title: QtQuick.RotationAnimation
---
        
RotationAnimation
=================

<span class="subtitle"></span>
Animates changes in rotation values More...

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

-   ****[direction](#direction-prop)**** : enumeration
-   ****[from](#from-prop)**** : real
-   ****[to](#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[RotationAnimation](index.html) is a specialized [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) that gives control over the direction of rotation during an animation.

By default, it rotates in the direction of the numerical change; a rotation from 0 to 240 will rotate 240 degrees clockwise, while a rotation from 240 to 0 will rotate 240 degrees counterclockwise. The [direction](#direction-prop) property can be set to specify the direction in which the rotation should occur.

In the following example we use [RotationAnimation](index.html) to animate the rotation between states via the shortest path:

``` qml
import QtQuick 2.0
Item {
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 150; height: 100; anchors.centerIn: parent
        color: "red"
        antialiasing: true
        states: State {
            name: "rotated"
            PropertyChanges { target: rect; rotation: 180 }
        }
        transitions: Transition {
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
    }
    MouseArea { anchors.fill: parent; onClicked: rect.state = "rotated" }
}
```

Notice the [RotationAnimation](index.html) did not need to set a `target` value. As a convenience, when used in a transition, [RotationAnimation](index.html) will rotate all properties named "rotation" or "angle". You can override this by providing your own properties via [properties](../QtQuick.PropertyAnimation.md#properties-prop) or [property](../QtQuick.PropertyAnimation.md#property-prop).

Also, note the [Rectangle](../QtQuick.Rectangle.md) will be rotated around its default [transformOrigin](../QtQuick.Item.md#transformOrigin-prop) (which is `Item.Center`). To use a different transform origin, set the origin in the [PropertyChanges](../QtQuick.PropertyChanges.md) object and apply the change at the start of the animation using [PropertyAction](../QtQuick.PropertyAction.md). See the [PropertyAction](../QtQuick.PropertyAction.md) documentation for more details.

Like any other animation type, a [RotationAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the rotation.

Possible values are:

-   [RotationAnimation](index.html).Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.
-   [RotationAnimation](index.html).Clockwise - Rotate clockwise between the two values
-   [RotationAnimation](index.html).Counterclockwise - Rotate counterclockwise between the two values
-   [RotationAnimation](index.html).Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

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

For example, the following animation is not applied until the `angle` value has reached 100:

``` qml
Item {
    states: [
        // ...
    ]
    transition: Transition {
        RotationAnimation { properties: "angle"; from: 100; duration: 2000 }
    }
}
```

If the [RotationAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

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

This property holds the end value for the animation..

If the [RotationAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

