---
Title: QtQuick.State
---
        
State
=====

<span class="subtitle"></span>
Defines configurations of objects and properties More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[changes](#changes-prop)**** : list&lt;Change&gt;
-   ****[extend](#extend-prop)**** : string
-   ****[name](#name-prop)**** : string
-   ****[when](#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

A *state* is a set of batched changes from the default configuration.

All items have a default state that defines the default configuration of objects and property values. New states can be defined by adding State items to the [states](../QtQuick.Item.md#states-prop) property to allow items to switch between different configurations. These configurations can, for example, be used to apply different sets of property values or execute different scripts.

The following example displays a single [Rectangle](../QtQuick.Rectangle.md). In the default state, the rectangle is colored black. In the "clicked" state, a [PropertyChanges](../QtQuick.PropertyChanges.md) object changes the rectangle's color to red. Clicking within the [MouseArea](../QtQuick.MouseArea.md) toggles the rectangle's state between the default state and the "clicked" state, thus toggling the color of the rectangle between black and red.

``` qml
import QtQuick 2.0
Rectangle {
    id: myRect
    width: 100; height: 100
    color: "black"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: myRect.state == 'clicked' ? myRect.state = "" : myRect.state = 'clicked';
    }
    states: [
        State {
            name: "clicked"
            PropertyChanges { target: myRect; color: "red" }
        }
    ]
}
```

Notice the default state is referred to using an empty string ("").

States are commonly used together with [Transitions](../QtQuick.qtquick-statesanimations-animations.md) to provide animations when state changes occur.

**Note:** Setting the state of an object from within another state of the same object is not allowed.

**See also** [States example](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md), [Transitions](../QtQuick.qtquick-statesanimations-animations.md), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="changes-prop"></span><span class="qmldefault">[default] </span><span class="name">changes</span> : <span class="type">list</span>&lt;<span class="type">Change</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the changes to apply for this state

By default these changes are applied against the default state. If the state extends another state, then the changes are applied against the state being extended.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extend-prop"></span><span class="name">extend</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the state that this state extends.

When a state extends another state, it inherits all the changes of that state.

The state being extended is treated as the base state in regards to the changes specified by the extending state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the state.

Each state should have a unique name within its item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds when the state should be applied.

This should be set to an expression that evaluates to `true` when you want the state to be applied. For example, the following [Rectangle](../QtQuick.Rectangle.md) changes in and out of the "hidden" state when the [MouseArea](../QtQuick.MouseArea.md) is pressed:

``` qml
Rectangle {
    id: myRect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "hidden"; when: mouseArea.pressed
        PropertyChanges { target: myRect; opacity: 0 }
    }
}
```

If multiple states in a group have `when` clauses that evaluate to `true` at the same time, the first matching state will be applied. For example, in the following snippet `state1` will always be selected rather than `state2` when sharedCondition becomes `true`.

``` qml
Item {
    states: [
        State { name: "state1"; when: sharedCondition },
        State { name: "state2"; when: sharedCondition }
    ]
    // ...
}
```

