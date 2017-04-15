---
Title: QtQml.FinalState
---
        
FinalState
==========

<span class="subtitle"></span>
Provides a final state. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQml.StateMachine 1.0</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 5.4</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQml.QAbstractState.md">QAbstractState</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

A final state is used to communicate that (part of) a [StateMachine](../QtQml.StateMachine.md) has finished its work. When a final top-level state is entered, the state machine's [finished](../QtQml.State.md#finished-signal)() signal is emitted. In general, when a final substate (a child of a State) is entered, the parent state's [finished](../QtQml.State.md#finished-signal)() signal is emitted. [FinalState](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

To use a final state, you create a [FinalState](index.html) object and add a transition to it from another state.

<span id="example-usage"></span>
Example Usage
-------------

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    DSM.StateMachine {
        id: stateMachine
        initialState: state
        running: true
        DSM.State {
            id: state
            DSM.TimeoutTransition {
                targetState: finalState
                timeout: 200
            }
        }
        DSM.FinalState {
            id: finalState
        }
        onFinished: console.log("state finished")
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine.md) and [State](../QtQml.State.md).

