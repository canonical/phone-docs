---
Title: QtQuick.PropertyChanges
---
        
PropertyChanges
===============

<span class="subtitle"></span>
Describes new property bindings or values for a state More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[explicit](#explicit-prop)**** : bool
-   ****[restoreEntryValues](#restoreEntryValues-prop)**** : bool
-   ****[target](#target-prop)**** : Object

<span id="details"></span>
Detailed Description
--------------------

[PropertyChanges](index.html) is used to define the property values or bindings in a [State](../QtQuick.State.md). This enables an item's property values to be changed when it [changes between states](../QtQuick.qtquick-statesanimations-states.md).

To create a [PropertyChanges](index.html) object, specify the [target](#target-prop) item whose properties are to be modified, and define the new property values or bindings. For example:

``` qml
import QtQuick 2.0
Item {
    id: container
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea {
           id: mouseArea
           anchors.fill: parent
        }
        states: State {
           name: "resized"; when: mouseArea.pressed
           PropertyChanges { target: rect; color: "blue"; height: container.height }
        }
    }
}
```

When the mouse is pressed, the [Rectangle](../QtQuick.Rectangle.md) changes to the *resized* state. In this state, the [PropertyChanges](index.html) object sets the rectangle's color to blue and the `height` value to that of `container.height`.

Note this automatically binds `rect.height` to `container.height` in the *resized* state. If a property binding should not be established, and the height should just be set to the value of `container.height` at the time of the state change, set the [explicit](#explicit-prop) property to `true`.

A [PropertyChanges](index.html) object can also override the default signal handler for an object to implement a signal handler specific to the new state:

``` qml
PropertyChanges {
    target: myMouseArea
    onClicked: doSomethingDifferent()
}
```

**Note:** [PropertyChanges](index.html) can be used to change anchor margins, but not other anchor values; use [AnchorChanges](../QtQuick.AnchorChanges.md) for this instead. Similarly, to change an [Item](../QtQuick.Item.md)'s [parent](../QtQuick.Item.md#parent-prop) value, use [ParentChange](../QtQuick.ParentChange.md) instead.

<span id="resetting-property-values"></span>
### Resetting property values

The `undefined` value can be used to reset the property value for a state. In the following example, when `myText` changes to the *widerText* state, its `width` property is reset, giving the text its natural width and displaying the whole string on a single line.

``` qml
Rectangle {
    width: 300; height: 200
    Text {
        id: myText
        width: 50
        wrapMode: Text.WordWrap
        text: "a text string that is longer than 50 pixels"
        states: State {
            name: "widerText"
            PropertyChanges { target: myText; width: undefined }
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: myText.state = "widerText"
    }
}
```

<span id="immediate-property-changes-in-transitions"></span>
### Immediate property changes in transitions

When [Transitions](../QtQuick.qtquick-statesanimations-animations.md) are used to animate state changes, they animate properties from their values in the current state to those defined in the new state (as defined by [PropertyChanges](index.html) objects). However, it is sometimes desirable to set a property value *immediately* during a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), without animation; in these cases, the [PropertyAction](../QtQuick.PropertyAction.md) type can be used to force an immediate property change.

See the [PropertyAction](../QtQuick.PropertyAction.md) documentation for more details.

**Note:** The [visible](../QtQuick.Item.md#visible-prop) and [enabled](../QtQuick.Item.md#enabled-prop) properties of [Item](../QtQuick.Item.md) do not behave exactly the same as other properties in [PropertyChanges](index.html). Since these properties can be changed implicitly through their parent's state, they should be set explicitly in all [PropertyChanges](index.html). An item will still not be enabled/visible if one of its parents is not enabled or visible.

**See also** [States example](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="explicit-prop"></span><span class="name">explicit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If explicit is set to true, any potential bindings will be interpreted as once-off assignments that occur when the state is entered.

In the following example, the addition of explicit prevents `myItem.width` from being bound to `parent.width`. Instead, it is assigned the value of `parent.width` at the time of the state change.

``` qml
PropertyChanges {
    target: myItem
    explicit: true
    width: parent.width
}
```

By default, explicit is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restoreEntryValues-prop"></span><span class="name">restoreEntryValues</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the previous values should be restored when leaving the state.

The default value is `true`. Setting this value to `false` creates a temporary state that has permanent effects on property values.

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

This property holds the object which contains the properties to be changed.

