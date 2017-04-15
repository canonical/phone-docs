---
Title: QtQuick.PathAnimation
---
        
PathAnimation
=============

<span class="subtitle"></span>
Animates an item along a path More...

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
<td>Since:</td>
<td>Qt 5.0</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQuick.Animation.md">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[anchorPoint](#anchorPoint-prop)**** : point
-   ****[duration](#duration-prop)**** : int
-   ****[easing](#easing-prop)****
    -   ****[easing.type](#easing.type-prop)**** : enumeration
    -   ****[easing.amplitude](#easing.amplitude-prop)**** : real
    -   ****[easing.bezierCurve](#easing.bezierCurve-prop)**** : list&lt;real&gt;
    -   ****[easing.overshoot](#easing.overshoot-prop)**** : real
    -   ****[easing.period](#easing.period-prop)**** : real
-   ****[endRotation](#endRotation-prop)**** : real
-   ****[orientation](#orientation-prop)**** : enumeration
-   ****[orientationEntryDuration](#orientationEntryDuration-prop)**** : real
-   ****[orientationExitDuration](#orientationExitDuration-prop)**** : real
-   ****[path](#path-prop)**** : Path
-   ****[target](#target-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

When used in a transition, the path can be specified without start or end points, for example:

``` qml
PathAnimation {
    path: Path {
        //no startX, startY
        PathCurve { x: 100; y: 100}
        PathCurve {}    //last element is empty with no end point specified
    }
}
```

In the above case, the path start will be the item's current position, and the path end will be the item's target position in the target state.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [PathInterpolator](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathinterpolator).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorPoint-prop"></span><span class="name">anchorPoint</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the anchor point for the item being animated.

By default, the upper-left corner of the target (its 0,0 point) will be anchored to (or follow) the path. The anchorPoint property can be used to specify a different point for anchoring. For example, specifying an anchorPoint of 5,5 for a 10x10 item means the center of the item will follow the path.

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

This property holds the duration of the animation, in milliseconds.

The default value is 250.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="easing-prop"></span><strong>easing group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="easing.type-prop"></span><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.amplitude-prop"></span><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.bezierCurve-prop"></span><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td>
</tr>
<tr class="even">
<td><p><span id="easing.overshoot-prop"></span><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.period-prop"></span><span class="name">easing.period</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

the easing curve used for the animation.

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period, overshoot or custom bezierCurve data. The default easing curve is `Easing.Linear`.

See the [PropertyAnimation::easing.type](../QtQuick.PropertyAnimation.md#easing.type-prop) documentation for information about the different types of easing curves.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endRotation-prop"></span><span class="name">endRotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ending rotation for the target.

If an orientation has been specified for the [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation), and the path doesn't end with the item at the desired rotation, the endRotation property can be used to manually specify an end rotation.

This property is typically used with [orientationExitDuration](#orientationExitDuration-prop), as specifying an endRotation without an [orientationExitDuration](#orientationExitDuration-prop) may cause a jump to the final rotation, rather than a smooth transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property controls the rotation of the item as it animates along the path.

If a value other than `Fixed` is specified, the [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation) will rotate the item to achieve the specified orientation as it travels along the path.

-   [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).Fixed (default) - the [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation) will not control the rotation of the item.
-   [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).RightFirst - The right side of the item will lead along the path.
-   [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).LeftFirst - The left side of the item will lead along the path.
-   [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).BottomFirst - The bottom of the item will lead along the path.
-   [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).TopFirst - The top of the item will lead along the path.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientationEntryDuration-prop"></span><span class="name">orientationEntryDuration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration (in milliseconds) of the transition in to the orientation.

If an orientation has been specified for the [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation), and the starting rotation of the item does not match that given by the orientation, orientationEntryDuration can be used to smoothly transition from the item's starting rotation to the rotation given by the path orientation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientationExitDuration-prop"></span><span class="name">orientationExitDuration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration (in milliseconds) of the transition out of the orientation.

If an orientation and [endRotation](#endRotation-prop) have been specified for the [PathAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation), orientationExitDuration can be used to smoothly transition from the rotation given by the path orientation to the specified [endRotation](#endRotation-prop).

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

This property holds the path to animate along.

For more information on defining a path see the [Path](../QtQuick.Path.md) documentation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the item to animate.

