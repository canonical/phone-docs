---
Title: QtQml.SignalTransition
---
        
SignalTransition
================

<span class="subtitle"></span>
The SignalTransition type provides a transition based on a Qt signal. More...

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

-   ****[guard](#guard-prop)**** : bool
-   ****[signal](#signal-prop)**** : signal

<span id="details"></span>
Detailed Description
--------------------

[SignalTransition](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

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
            DSM.SignalTransition {
                targetState: finalState
                signal: button.clicked
                guard: guardButton.checked
            }
        }
        DSM.FinalState {
            id: finalState
        }
        onFinished: Qt.quit()
    }
    Row {
        spacing: 2
        Button {
            id: button
            text: "Finish state"
        }
        Button {
            id: guardButton
            checkable: true
            text: checked ? "Press to block the SignalTransition" : "Press to unblock the SignalTransition"
        }
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine.md), [FinalState](../QtQml.FinalState.md), and [TimeoutTransition](../QtQml.TimeoutTransition.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guard-prop"></span><span class="name">guard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Guard conditions affect the behavior of a state machine by enabling transitions only when they evaluate to true and disabling them when they evaluate to false.

When the signal associated with this signal transition is emitted the guard condition is evaluated. In the guard condition the arguments of the signal can be used as demonstrated in the example below.

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        DSM.StateMachine {
            DSM.State {
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.mysignal
                    // the guard condition uses the mystr string argument from mysignal
                    guard: mystr == "test"
                }
            }
            DSM.FinalState {
                id: finalState
            }
        }
        // define the signal the SignalTransition is connected with
        signal mysignal(string mystr)
        // on clicking the button emit the signal with a single string argument
        onClicked: button.mysignal("test")
    }
}
```

**See also** [signal](#signal-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signal-prop"></span><span class="name">signal</span> : <span class="type"><a href="#signal-prop">signal</a></span></p></td>
</tr>
</tbody>
</table>

The signal which is associated with this signal transition.

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        DSM.StateMachine {
            DSM.State {
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.clicked
                }
            }
            DSM.FinalState {
                id: finalState
            }
        }
    }
}
```

