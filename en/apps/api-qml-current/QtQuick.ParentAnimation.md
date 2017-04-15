---
Title: QtQuick.ParentAnimation
---
        
ParentAnimation
===============

<span class="subtitle"></span>
Animates changes in parent values More...

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

-   ****[newParent](#newParent-prop)**** : Item
-   ****[target](#target-prop)**** : Item
-   ****[via](#via-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

[ParentAnimation](index.html) is used to animate a parent change for an [Item](../QtQuick.Item.md).

For example, the following [ParentChange](../QtQuick.ParentChange.md) changes `blueRect` to become a child of `redRect` when it is clicked. The inclusion of the [ParentAnimation](index.html), which defines a [NumberAnimation](../QtQuick.NumberAnimation.md) to be applied during the transition, ensures the item animates smoothly as it moves to its new parent:

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 100
    Rectangle {
        id: redRect
        width: 100; height: 100
        color: "red"
    }
    Rectangle {
        id: blueRect
        x: redRect.width
        width: 50; height: 50
        color: "blue"
        states: State {
            name: "reparented"
            ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
        }
        transitions: Transition {
            ParentAnimation {
                NumberAnimation { properties: "x,y"; duration: 1000 }
            }
        }
        MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
    }
}
```

A [ParentAnimation](index.html) can contain any number of animations. These animations will be run in parallel; to run them sequentially, define them within a [SequentialAnimation](../QtQuick.SequentialAnimation.md).

In some cases, such as when reparenting between items with clipping enabled, it is useful to animate the parent change via another item that does not have clipping enabled. Such an item can be set using the [via](#via-prop) property.

[ParentAnimation](index.html) is typically used within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) in conjunction with a [ParentChange](../QtQuick.ParentChange.md). When used in this manner, it animates any [ParentChange](../QtQuick.ParentChange.md) that has occurred during the state change. This can be overridden by setting a specific target item using the [target](#target-prop) property.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="newParent-prop"></span><span class="name">newParent</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The new parent to animate to.

If the [ParentAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition).

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

The item to reparent.

When used in a transition, if no target is specified, all [ParentChange](../QtQuick.ParentChange.md) occurrences are animated by the [ParentAnimation](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="via-prop"></span><span class="name">via</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item to reparent via. This provides a way to do an unclipped animation when both the old parent and new parent are clipped.

``` qml
ParentAnimation {
    target: myItem
    via: topLevelItem
    // ...
}
```

**Note:** This only works when the [ParentAnimation](index.html) is used in a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) in conjunction with a [ParentChange](../QtQuick.ParentChange.md).

