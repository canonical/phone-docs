---
Title: QtQuick.SmoothedAnimation
---
        
SmoothedAnimation
=================

<span class="subtitle"></span>
Allows a property to smoothly track a value More...

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

-   ****[duration](#duration-prop)**** : int
-   ****[maximumEasingTime](#maximumEasingTime-prop)**** : int
-   ****[reversingMode](#reversingMode-prop)**** : enumeration
-   ****[velocity](#velocity-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

A [SmoothedAnimation](index.html) animates a property's value to a set target value using an ease in/out quad easing curve. When the target value changes, the easing curves used to animate between the old and new target values are smoothly spliced together to create a smooth movement to the new target value that maintains the current velocity.

The follow example shows one [Rectangle](../QtQuick.Rectangle.md) tracking the position of another using [SmoothedAnimation](index.html). The green rectangle's `x` and `y` values are bound to those of the red rectangle. Whenever these values change, the green rectangle smoothly animates to its new position:

``` qml
import QtQuick 2.0
Rectangle {
    width: 800; height: 600
    color: "blue"
    Rectangle {
        width: 60; height: 60
        x: rect1.x - 5; y: rect1.y - 5
        color: "green"
        Behavior on x { SmoothedAnimation { velocity: 200 } }
        Behavior on y { SmoothedAnimation { velocity: 200 } }
    }
    Rectangle {
        id: rect1
        width: 50; height: 50
        color: "red"
    }
    focus: true
    Keys.onRightPressed: rect1.x = rect1.x + 100
    Keys.onLeftPressed: rect1.x = rect1.x - 100
    Keys.onUpPressed: rect1.y = rect1.y - 100
    Keys.onDownPressed: rect1.y = rect1.y + 100
}
```

A [SmoothedAnimation](index.html) can be configured by setting the [velocity](#velocity-prop) at which the animation should occur, or the [duration](#duration-prop) that the animation should take. If both the [velocity](#velocity-prop) and [duration](#duration-prop) are specified, the one that results in the quickest animation is chosen for each change in the target value.

For example, animating from 0 to 800 will take 4 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 4 seconds with both a velocity of 200 and a duration of 8000 set. Animating from 0 to 20000 will take 10 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 8 seconds with both a velocity of 200 and a duration of 8000 set.

The default velocity of [SmoothedAnimation](index.html) is 200 units/second. Note that if the range of the value being animated is small, then the velocity will need to be adjusted appropriately. For example, the opacity of an item ranges from 0 - 1.0. To enable a smooth animation in this range the velocity will need to be set to a value such as 0.5 units/second. Animating from 0 to 1.0 with a velocity of 0.5 will take 2000 ms to complete.

Like any other animation type, a [SmoothedAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) documentation shows a variety of methods for creating animations.

**See also** [SpringAnimation](../QtQuick.SpringAnimation.md), [NumberAnimation](../QtQuick.NumberAnimation.md), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the animation duration, in msecs, used when tracking the source.

Setting this to -1 (the default) disables the duration value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumEasingTime-prop"></span><span class="name">maximumEasingTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum time, in msecs, any "eases" during the follow should take. Setting this property causes the velocity to "level out" after at a time. Setting a negative value reverts to the normal mode of easing over the entire animation duration.

The default value is -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reversingMode-prop"></span><span class="name">reversingMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets how the [SmoothedAnimation](index.html) behaves if an animation direction is reversed.

Possible values are:

-   [SmoothedAnimation](index.html).Eased (default) - the animation will smoothly decelerate, and then reverse direction
-   [SmoothedAnimation](index.html).Immediate - the animation will immediately begin accelerating in the reverse direction, beginning with a velocity of 0
-   [SmoothedAnimation](index.html).Sync - the property is immediately set to the target value

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

This property holds the average velocity allowed when tracking the 'to' value.

The default velocity of [SmoothedAnimation](index.html) is 200 units/second.

Setting this to -1 disables the velocity value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

