---
Title: QtQml.HistoryState
---
        
HistoryState
============

<span class="subtitle"></span>
The HistoryState type provides a means of returning to a previously active substate. More...

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

<span id="properties"></span>
Properties
----------

-   ****[defaultState](#defaultState-prop)**** : QAbstractState
-   ****[historyType](#historyType-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

A history state is a pseudo-state that represents the child state that the parent state was in the last time the parent state was exited. A transition with a history state as its target is in fact a transition to one of the other child states of the parent state. [HistoryState](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

Use the [defaultState](#defaultState-prop) property to set the state that should be entered if the parent state has never been entered.

<span id="example-usage"></span>
Example Usage
-------------

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        text: "Press me"
        DSM.StateMachine {
            id: stateMachine
            initialState: parentState
            running: true
            DSM.State {
                id: parentState
                initialState: child2
                onEntered: console.log("parentState entered")
                onExited: console.log("parentState exited")
                DSM.State {
                    id: child1
                    onEntered: console.log("child1 entered")
                    onExited: console.log("child1 exited")
                }
                DSM.State {
                    id: child2
                    onEntered: console.log("child2 entered")
                    onExited: console.log("child2 exited")
                }
                DSM.HistoryState {
                    id: historyState
                    defaultState: child1
                }
                DSM.SignalTransition {
                    targetState: historyState
                    // Clicking the button will cause the state machine to enter the child state
                    // that parentState was in the last time parentState was exited, or the history state's default
                    // state if parentState has never been entered.
                    signal: button.clicked
                }
            }
        }
    }
}
```

By default, a history state is shallow, meaning that it will not remember nested states. This can be configured through the [historyType](#historyType-prop) property.

**See also** [StateMachine](../QtQml.StateMachine.md) and [State](../QtQml.State.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultState-prop"></span><span class="name">defaultState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The default state of this history state.

The default state indicates the state to transition to if the parent state has never been entered before.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="historyType-prop"></span><span class="name">historyType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The type of history that this history state records.

The default value of this property is QHistoryState.ShallowHistory.

This enum specifies the type of history that a QHistoryState records.

-   QHistoryState.ShallowHistory Only the immediate child states of the parent state are recorded. In this case, a transition with the history state as its target will end up in the immediate child state that the parent was in the last time it was exited. This is the default.
-   QHistoryState.DeepHistory Nested states are recorded. In this case a transition with the history state as its target will end up in the most deeply nested descendant state the parent was in the last time it was exited.

