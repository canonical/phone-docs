---
Title: QtQuick.PropertyAction
---
        
PropertyAction
==============

<span class="subtitle"></span>
Specifies immediate property changes during animation More...

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

-   ****[exclude](#exclude-prop)**** : list&lt;Object&gt;
-   ****[properties](#properties-prop)**** : string
-   ****[property](#property-prop)**** : string
-   ****[target](#target-prop)**** : Object
-   ****[targets](#targets-prop)**** : list&lt;Object&gt;
-   ****[value](#value-prop)**** : any

<span id="details"></span>
Detailed Description
--------------------

[PropertyAction](index.html) is used to specify an immediate property change during an animation. The property change is not animated.

It is useful for setting non-animated property values during an animation.

For example, here is a [SequentialAnimation](../QtQuick.SequentialAnimation.md) that sets the image's [opacity](../QtQuick.Item.md#opacity-prop) property to `.5`, animates the width of the image, then sets [opacity](../QtQuick.Item.md#opacity-prop) back to `1`:

``` qml
SequentialAnimation {
    PropertyAction { target: img; property: "opacity"; value: .5 }
    NumberAnimation { target: img; property: "width"; to: 300; duration: 1000 }
    PropertyAction { target: img; property: "opacity"; value: 1 }
}
```

[PropertyAction](index.html) is also useful for setting the exact point at which a property change should occur during a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition). For example, if [PropertyChanges](../QtQuick.PropertyChanges.md) was used in a [State](../QtQuick.State.md) to rotate an item around a particular [transformOrigin](../QtQuick.Item.md#transformOrigin-prop), it might be implemented like this:

``` qml
Item {
    width: 400; height: 400
    Rectangle {
        id: rect
        width: 200; height: 100
        color: "red"
        states: State {
            name: "rotated"
            PropertyChanges { target: rect; rotation: 180; transformOrigin: Item.BottomRight }
        }
        transitions: Transition {
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: rect.state = "rotated"
        }
    }
}
```

However, with this code, the `transformOrigin` is not set until *after* the animation, as a [State](../QtQuick.State.md) is taken to define the values at the *end* of a transition. The animation would rotate at the default `transformOrigin`, then jump to `Item.BottomRight`. To fix this, insert a [PropertyAction](index.html) before the [RotationAnimation](../QtQuick.RotationAnimation.md) begins:

``` qml
transitions: Transition {
    SequentialAnimation {
        PropertyAction { target: rect; property: "transformOrigin" }
        RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
    }
}
```

This immediately sets the `transformOrigin` property to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) (i.e. the value defined in the [PropertyAction](index.html) object) so that the rotation animation begins with the correct transform origin.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exclude-prop"></span><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the objects that should not be affected by this action.

**See also** [targets](#targets-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="properties-prop"></span><span class="name">properties</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation.md#properties-prop) [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation.md#properties-prop) [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation.md#properties-prop) [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation.md#properties-prop) [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

This property holds the value to be set on the property.

If the [PropertyAction](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

