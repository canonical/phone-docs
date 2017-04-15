---
Title: QtQuick.StateGroup
---
        
StateGroup
==========

<span class="subtitle"></span>
Provides built-in state support for non-Item types More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[state](#state-prop)**** : string
-   ****[states](#states-prop)**** : list&lt;State&gt;
-   ****[transitions](#transitions-prop)**** : list&lt;Transition&gt;

<span id="details"></span>
Detailed Description
--------------------

Item (and all derived types) provides built in support for states and transitions via its [state](../QtQuick.Item.md#state-prop), [states](../QtQuick.Item.md#states-prop) and [transitions](../QtQuick.Item.md#transitions-prop) properties. [StateGroup](index.html) provides an easy way to use this support in other (non-Item-derived) types.

``` qml
MyCustomObject {
    StateGroup {
        id: myStateGroup
        states: State {
            name: "state1"
            // ...
        }
        transitions: Transition {
            // ...
        }
    }
    onSomethingHappened: myStateGroup.state = "state1";
}
```

**See also** [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md), [Transitions](../QtQuick.qtquick-statesanimations-animations.md), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the current state of the state group.

This property is often used in scripts to change between states. For example:

``` js
function toggle() {
    if (button.state == 'On')
        button.state = 'Off';
    else
        button.state = 'On';
}
```

If the state group is in its base state (i.e. no explicit state has been set), `state` will be a blank string. Likewise, you can return a state group to its base state by setting its current state to `''`.

**See also** [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="states-prop"></span><span class="name">states</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.State.md">State</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of states defined by the state group.

``` qml
StateGroup {
    states: [
        State {
            // State definition...
        },
        State {
            // ...
        }
        // Other states...
    ]
}
```

**See also** [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transitions-prop"></span><span class="name">transitions</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transition.md">Transition</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of transitions defined by the state group.

``` qml
StateGroup {
    transitions: [
        Transition {
          // ...
        },
        Transition {
          // ...
        }
        // ...
    ]
}
```

**See also** [Transitions](../QtQuick.qtquick-statesanimations-animations.md).

