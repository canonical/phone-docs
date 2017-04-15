---
Title: QtQml.TimeoutTransition
---
        
TimeoutTransition
=================

<span class="subtitle"></span>
The TimeoutTransition type provides a transition based on a timer. More...

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
<td><p><a href="QtQml.QSignalTransition.md">QSignalTransition</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[timeout](#timeout-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

[Timer](../QtQml.Timer.md) type can be combined with [SignalTransition](../QtQml.SignalTransition.md) to enact more complex timeout based transitions.

[TimeoutTransition](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

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
        text: "Finish state"
        enabled: !stateMachine.running
        onClicked: stateMachine.running = true
        DSM.StateMachine {
            id: stateMachine
            initialState: state
            running: true
            DSM.State {
                id: state
                DSM.TimeoutTransition {
                    targetState: finalState
                    timeout: 1000
                }
            }
            DSM.FinalState {
                id: finalState
            }
        }
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine.md), [SignalTransition](../QtQml.SignalTransition.md), [FinalState](../QtQml.FinalState.md), and [HistoryState](../QtQml.HistoryState.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timeout-prop"></span><span class="name">timeout</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The timeout interval in milliseconds.

