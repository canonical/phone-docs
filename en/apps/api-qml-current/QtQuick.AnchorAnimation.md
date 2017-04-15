---
Title: QtQuick.AnchorAnimation
---
        
AnchorAnimation
===============

<span class="subtitle"></span>
Animates changes in anchor values More...

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

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int
-   ****[easing](#easing-prop)****
    -   ****[easing.type](#easing.type-prop)**** : enumeration
    -   ****[easing.amplitude](#easing.amplitude-prop)**** : real
    -   ****[easing.overshoot](#easing.overshoot-prop)**** : real
    -   ****[easing.period](#easing.period-prop)**** : real
-   ****[targets](#targets-prop)**** : list&lt;Item&gt;

<span id="details"></span>
Detailed Description
--------------------

[AnchorAnimation](index.html) is used to animate an anchor change.

In the following snippet we animate the addition of a right anchor to a [Rectangle](../QtQuick.Rectangle.md):

``` qml
import QtQuick 2.0
Item {
    id: container
    width: 200; height: 200
    Rectangle {
        id: myRect
        width: 100; height: 100
        color: "red"
    }
    states: State {
        name: "reanchored"
        AnchorChanges { target: myRect; anchors.right: container.right }
    }
    transitions: Transition {
        // smoothly reanchor myRect and move into new position
        AnchorAnimation { duration: 1000 }
    }
    Component.onCompleted: container.state = "reanchored"
}
```

When an [AnchorAnimation](index.html) is used in a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), it will animate any [AnchorChanges](../QtQuick.AnchorChanges.md) that have occurred during the state change. This can be overridden by setting a specific target item using the [AnchorChanges.target](../QtQuick.AnchorChanges.md#target-prop) property.

**Note:** [AnchorAnimation](index.html) can only be used in a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) and in conjunction with an AnchorChange. It cannot be used in behaviors and other types of animations.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [AnchorChanges](../QtQuick.AnchorChanges.md).

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
<td><p><span id="easing.overshoot-prop"></span><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.period-prop"></span><span class="name">easing.period</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot. The default easing curve is Linear.

``` qml
AnchorAnimation { easing.type: Easing.InOutQuad }
```

See the [PropertyAnimation::easing.type](../QtQuick.PropertyAnimation.md#easing.type-prop) documentation for information about the different types of easing curves.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The items to reanchor.

If no targets are specified all [AnchorChanges](../QtQuick.AnchorChanges.md) will be animated by the [AnchorAnimation](index.html).

