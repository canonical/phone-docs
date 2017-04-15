---
Title: QtQuick.SpringAnimation
---
        
SpringAnimation
===============

<span class="subtitle"></span>
Allows a property to track a value in a spring-like motion More...

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
<td><p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[damping](#damping-prop)**** : real
-   ****[epsilon](#epsilon-prop)**** : real
-   ****[mass](#mass-prop)**** : real
-   ****[modulus](#modulus-prop)**** : real
-   ****[spring](#spring-prop)**** : real
-   ****[velocity](#velocity-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[SpringAnimation](index.html) mimics the oscillatory behavior of a spring, with the appropriate [spring](#spring-prop) constant to control the acceleration and the [damping](#damping-prop) to control how quickly the effect dies away.

You can also limit the maximum [velocity](#velocity-prop) of the animation.

The following [Rectangle](../QtQuick.Rectangle.md) moves to the position of the mouse using a [SpringAnimation](index.html) when the mouse is clicked. The use of the [Behavior](../QtQuick.Behavior.md) on the `x` and `y` values indicates that whenever these values are changed, a [SpringAnimation](index.html) should be applied.

``` qml
import QtQuick 2.0
Item {
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 50; height: 50
        color: "red"
        Behavior on x { SpringAnimation { spring: 2; damping: 0.2 } }
        Behavior on y { SpringAnimation { spring: 2; damping: 0.2 } }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.x = mouse.x - rect.width/2
            rect.y = mouse.y - rect.height/2
        }
    }
}
```

Like any other animation type, a [SpringAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

**See also** [SmoothedAnimation](../QtQuick.SmoothedAnimation.md), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/), and [Qt Quick Demo - Clocks](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.demos-clocks/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="damping-prop"></span><span class="name">damping</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the spring damping value.

This value describes how quickly the spring-like motion comes to rest. The default value is 0.

The useful value range is 0 - 1.0. The lower the value, the faster it comes to rest.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="epsilon-prop"></span><span class="name">epsilon</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the spring epsilon.

The epsilon is the rate and amount of change in the value which is close enough to 0 to be considered equal to zero. This will depend on the usage of the value. For pixel positions, 0.25 would suffice. For scale, 0.005 will suffice.

The default is 0.01. Tuning this value can provide small performance improvements.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mass-prop"></span><span class="name">mass</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the "mass" of the property being moved.

The value is 1.0 by default.

A greater mass causes slower movement and a greater spring-like motion when an item comes to rest.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modulus-prop"></span><span class="name">modulus</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the modulus value. The default value is 0.

Setting a *modulus* forces the target value to "wrap around" at the modulus. For example, setting the modulus to 360 will cause a value of 370 to wrap around to 10.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spring-prop"></span><span class="name">spring</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property describes how strongly the target is pulled towards the source. The default value is 0 (that is, the spring-like motion is disabled).

The useful value range is 0 - 5.0.

When this property is set and the [velocity](#velocity-prop) value is greater than 0, the [velocity](#velocity-prop) limits the maximum speed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum velocity allowed when tracking the source.

The default value is 0 (no maximum velocity).

