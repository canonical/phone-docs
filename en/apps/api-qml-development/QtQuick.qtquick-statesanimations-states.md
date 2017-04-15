---
Title: QtQuick.qtquick-statesanimations-states
---
        
Qt Quick States
===============

<span class="subtitle"></span>
details
Related Types
-------------

Many user interface designs are *state driven*; interfaces have configurations that differ depending on the current state. For example, a traffic signal will configure its flags or lights depending on its state. While in the signal's `stop` state, a red light will turn on while the yellow and the green lights will turn off. In the `caution` state, the yellow light is on while the other lights are turned off.

In QML, *states* are a set of property configurations defined in a [State](../QtQuick.State.md) type. Different configurations could, for example:

-   Show some UI components and hide others
-   Present different available actions to the user
-   Start, stop, or pause animations
-   Execute some script required in the new state
-   Change a property value for a particular item
-   Show a different view or screen

All [Item](../QtQuick.Item.md)-based objects have a `state` property, and can specify additional states by adding new `State` objects to the item's [states](../QtQuick.Item.md#states-prop) property. Each state within a component has a unique `name`, an empty string being the default. To change the current state of an item, set the [state](../QtQuick.Item.md#state-prop) property to the name of the state.

Non-Item objects may use states through the [StateGroup](../QtQuick.StateGroup.md) type.

<span id="creating-states"></span>
Creating States
---------------

To create a state, add a [State](../QtQuick.State.md) object to the item's [states](../QtQuick.Item.md#states-prop) property, which holds a list of states for that item.

A warning `signal` component may have two states, the `NORMAL` and the `CRITICAL` state. Suppose that in the `NORMAL` state, the `color` of the signal should be `green` and the warning `flag` is down. Meanwhile, in the `CRITICAL` state, the `color` should be `red` and the flag is `up`. We may model the states using the `State` type and the color and flag configurations with the `PropertyChanges` type.

``` qml
Rectangle {
    id: signal
    width: 200; height: 200
    state: "NORMAL"
    states: [
        State {
            name: "NORMAL"
            PropertyChanges { target: signal; color: "green"}
            PropertyChanges { target: flag; state: "FLAG_DOWN"}
        },
        State {
            name: "CRITICAL"
            PropertyChanges { target: signal; color: "red"}
            PropertyChanges { target: flag; state: "FLAG_UP"}
        }
    ]
}
```

The [PropertyChanges](../QtQuick.PropertyChanges.md) type will change the values of object properties. Objects are referenced through their id. Objects outside the component are also referenced using the `id` property, exemplified by the property change to the external `flag` object.

Further, the state may change by assigning the `state` property with the appropriate signal state. A state switch could be in a [MouseArea](../QtQuick.MouseArea.md) type, assigning a different state whenever the signal receives a mouse click.

``` qml
Rectangle {
    id: signalswitch
    width: 75; height: 75
    color: "blue"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (signal.state == "NORMAL")
                signal.state = "CRITICAL"
            else
                signal.state = "NORMAL"
        }
    }
}
```

The State type is not limited to performing modifications on property values. It can also:

-   Run some script using [StateChangeScript](../QtQuick.StateChangeScript.md)
-   Override an existing signal handler for an object using [PropertyChanges](../QtQuick.PropertyChanges.md)
-   Re-parent an [Item](../QtQuick.Item.md) using [ParentChange](../QtQuick.ParentChange.md)
-   Modify anchor values using [AnchorChanges](../QtQuick.AnchorChanges.md)

<span id="the-default-state"></span>
The Default State
-----------------

Every [Item](../QtQuick.Item.md) based component has a `state` property and a *default state*. The default state is the empty string (`""`) and contains all of an item's initial property values. The default state is useful for managing property values before state changes. Setting the `state` property to an empty string will load the default state.

<span id="the-when-property"></span>
The `when` Property
-------------------

For convenience, the [State](../QtQuick.State.md) type has a `when` property that can bind to expressions to change the state whenever the bound expression evaluates to `true`. The `when` property will revert the state back to the [default state](#the-default-state) when the expression evaluates to false.

``` qml
Rectangle {
    id: bell
    width: 75; height: 75
    color: "yellow"
    states: State {
                name: "RINGING"
                when: (signal.state == "CRITICAL")
                PropertyChanges {target: speaker; play: "RING!"}
            }
}
```

The `bell` component will change to the `RINGING` state whenever the `signal.state` is `CRITICAL`.

<span id="animating-state-changes"></span>
Animating State Changes
-----------------------

State changes induce abrupt value changes. The [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) type allow smoother changes during state changes. In transitions, animations and interpolation behaviors are definable. The [Animation and Transitions](../QtQuick.qtquick-statesanimations-animations.md) article has more information about creating state animations.

The States and Transitions example demonstrates how to declare a basic set of states and apply animated transitions between them.

[Using Qt Quick Behaviors with States](../QtQuick.qtquick-statesanimations-behaviors.md) explains a common problem when using Behaviors to animate state changes.

<span id="state-fast-forwarding"></span>
State Fast Forwarding
---------------------

In order for Transition to correctly animate state changes, it is sometimes necessary for the engine to fast forward and rewind a state (that is, internally set and unset the state) before it is finally applied. The process is as follows:

1.  The state is fast forwarded to determine the complete set of end values.
2.  The state is rewound.
3.  The state is fully applied, with transitions.

In some cases this may cause unintended behavior. For example, a state that changes a view's *model* or a Loader's *sourceComponent* will set these properties multiple times (to apply, rewind, and then reapply), which can be relatively expensive.

State fast forwarding should be considered an implementation detail, and may change in later versions.

