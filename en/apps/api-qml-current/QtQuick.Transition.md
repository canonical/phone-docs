---
Title: QtQuick.Transition
---
        
Transition
==========

<span class="subtitle"></span>
Defines animated transitions that occur on state changes More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[animations](#animations-prop)**** : list&lt;Animation&gt;
-   ****[enabled](#enabled-prop)**** : bool
-   ****[from](#from-prop)**** : string
-   ****[reversible](#reversible-prop)**** : bool
-   ****[running](#running-prop)**** : bool
-   ****[to](#to-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

A Transition defines the animations to be applied when a [State](../QtQuick.State.md) change occurs.

For example, the following [Rectangle](../QtQuick.Rectangle.md) has two states: the default state, and an added "moved" state. In the "moved state, the rectangle's position changes to (50, 50). The added Transition specifies that when the rectangle changes between the default and the "moved" state, any changes to the `x` and `y` properties should be animated, using an `Easing.InOutQuad`.

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    states: State {
        name: "moved"; when: mouseArea.pressed
        PropertyChanges { target: rect; x: 50; y: 50 }
    }
    transitions: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
    }
}
```

Notice the example does not require [to](../QtQuick.PropertyAnimation.md#to-prop) and [from](../QtQuick.PropertyAnimation.md#from-prop) values for the [NumberAnimation](../QtQuick.NumberAnimation.md). As a convenience, these properties are automatically set to the values of `x` and `y` before and after the state change; the `from` values are provided by the current values of `x` and `y`, and the `to` values are provided by the [PropertyChanges](../QtQuick.PropertyChanges.md) object. If you wish, you can provide [to](../QtQuick.PropertyAnimation.md#to-prop) and [from](../QtQuick.PropertyAnimation.md#from-prop) values anyway to override the default values.

By default, a Transition's animations are applied for any state change in the parent item. The Transition [from](#from-prop) and [to](#to-prop) values can be set to restrict the animations to only be applied when changing from one particular state to another.

To define multiple transitions, specify [Item::transitions](../QtQuick.Item.md#transitions-prop) as a list:

``` qml
transitions: [
  Transition {
      from: "stop"; to: "go"
      PropertyAnimation { target: stopLight
                          properties: "color"; duration: 1000 }
  },
  Transition {
      from: "go"; to: "stop"
      PropertyAnimation { target: goLight
                          properties: "color"; duration: 1000 }
  } ]
```

If multiple Transitions are specified, only a single (best-matching) Transition will be applied for any particular state change. In the example above, when changing to `state1`, the first transition will be used, rather than the more generic second transition.

If a state change has a Transition that matches the same property as a [Behavior](../QtQuick.Behavior.md), the Transition animation overrides the [Behavior](../QtQuick.Behavior.md) for that state change.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md), [States example](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animations-prop"></span><span class="qmldefault">[default] </span><span class="name">animations</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Animation.md">Animation</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the animations to be run for this transition.

``` qml
```

The top-level animations are run in parallel. To run them sequentially, define them within a [SequentialAnimation](../QtQuick.SequentialAnimation.md):

``` qml
transitions: Transition {
    SequentialAnimation {
        PropertyAnimation { property: "x"; duration: 1000 }
        ColorAnimation { duration: 1000 }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the Transition will be run when moving from the `from` state to the `to` state.

By default a Transition is enabled.

Note that in some circumstances disabling a Transition may cause an alternative Transition to be used in its place. In the following example, although the first Transition has been set to animate changes from "state1" to "state2", this transition has been disabled by setting `enabled` to `false`, so any such state change will actually be animated by the second Transition instead.

``` qml
Item {
    states: [
        State { name: "state1" },
        State { name: "state2" }
    ]
    transitions: [
        Transition { from: "state1"; to: "state2"; enabled: false },
        Transition {
            // ...
        }
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the `to` and `from` properties, so the animation is always applied when changing between the two states (i.e. when the mouse is pressed and released).

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"; when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow" }
    }
    transitions: Transition {
        ColorAnimation { duration: 1000 }
    }
}
```

If the transition was changed to this:

``` qml
transitions: Transition {
    to: "brighter"
    ColorAnimation { duration: 1000 }
}
```

The animation would only be applied when changing from the default state to the "brighter" state (i.e. when the mouse is pressed, but not on release).

Multiple `to` and `from` values can be set by using a comma-separated string.

**See also** [reversible](#reversible-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reversible-prop"></span><span class="name">reversible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the transition should be automatically reversed when the conditions that triggered this transition are reversed.

The default value is false.

By default, transitions run in parallel and are applied to all state changes if the [from](#from-prop) and [to](#to-prop) states have not been set. In this situation, the transition is automatically applied when a state change is reversed, and it is not necessary to set this property to reverse the transition.

However, if a [SequentialAnimation](../QtQuick.SequentialAnimation.md) is used, or if the [from](#from-prop) or [to](#to-prop) properties have been set, this property will need to be set to reverse a transition when a state change is reverted. For example, the following transition applies a sequential animation when the mouse is pressed, and reverses the sequence of the animation when the mouse is released:

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"
        when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow"; x: 50 }
    }
    transitions: Transition {
        SequentialAnimation {
            PropertyAnimation { property: "x"; duration: 1000 }
            ColorAnimation { duration: 1000 }
        }
    }
}
```

If the transition did not set the `to` and `reversible` values, then on the mouse release, the transition would play the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) before the [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) instead of reversing the sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the transition is currently running.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the `to` and `from` properties, so the animation is always applied when changing between the two states (i.e. when the mouse is pressed and released).

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"; when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow" }
    }
    transitions: Transition {
        ColorAnimation { duration: 1000 }
    }
}
```

If the transition was changed to this:

``` qml
transitions: Transition {
    to: "brighter"
    ColorAnimation { duration: 1000 }
}
```

The animation would only be applied when changing from the default state to the "brighter" state (i.e. when the mouse is pressed, but not on release).

Multiple `to` and `from` values can be set by using a comma-separated string.

**See also** [reversible](#reversible-prop).

