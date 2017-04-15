---
Title: QtQuick.Flipable
---
        
Flipable
========

<span class="subtitle"></span>
Provides a surface that can be flipped More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[back](#back-prop)**** : Item
-   ****[front](#front-prop)**** : Item
-   ****[side](#side-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Flipable is an item that can be visibly "flipped" between its front and back sides, like a card. It may used together with [Rotation](../QtQuick.Rotation.md), [State](../QtQuick.State.md) and [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) types to produce a flipping effect.

The [front](#front-prop) and [back](#back-prop) properties are used to hold the items that are shown respectively on the front and back sides of the flipable item.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows a Flipable item that flips whenever it is clicked, rotating about the y-axis.

This flipable item has a `flipped` boolean property that is toggled whenever the [MouseArea](../QtQuick.MouseArea.md) within the flipable is clicked. When `flipped` is true, the item changes to the "back" state; in this state, the `angle` of the [Rotation](../QtQuick.Rotation.md) item is changed to 180 degrees to produce the flipping effect. When `flipped` is false, the item reverts to the default state, in which the `angle` value is 0.

``` qml
import QtQuick 2.0
Flipable {
    id: flipable
    width: 240
    height: 240
    property bool flipped: false
    front: Image { source: "front.png"; anchors.centerIn: parent }
    back: Image { source: "back.png"; anchors.centerIn: parent }
    transform: Rotation {
        id: rotation
        origin.x: flipable.width/2
        origin.y: flipable.height/2
        axis.x: 0; axis.y: 1; axis.z: 0     // set axis.y to 1 to rotate around y-axis
        angle: 0    // the default angle
    }
    states: State {
        name: "back"
        PropertyChanges { target: rotation; angle: 180 }
        when: flipable.flipped
    }
    transitions: Transition {
        NumberAnimation { target: rotation; property: "angle"; duration: 4000 }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: flipable.flipped = !flipable.flipped
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/929f4808-5199-44a4-b039-a2aa7ccd9cdc-api/apps/qml/sdk-15.04.6/QtQuick.Flipable/images/flipable.gif)

The [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) creates the animation that changes the angle over four seconds. When the item changes between its "back" and default states, the [NumberAnimation](../QtQuick.NumberAnimation.md) animates the angle between its old and new values.

See [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md) for details on state changes and the default state, and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) for more information on how animations work within transitions.

**See also** [UI Components: Flipable Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.customitems-flipable/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="back-prop"></span><span class="name">back</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The front and back sides of the flipable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="front-prop"></span><span class="name">front</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The front and back sides of the flipable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="side-prop"></span><span class="name">side</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The side of the Flipable currently visible. Possible values are `Flipable.Front` and `Flipable.Back`.

