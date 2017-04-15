---
Title: QtQml.StateMachine
---
        
StateMachine
============

<span class="subtitle"></span>
Provides a hierarchical finite state machine. More...

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
<td><p><a href="QtQml.State.md">State</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[errorString](#errorString-prop)**** : string
-   ****[globalRestorePolicy](#globalRestorePolicy-prop)**** : enumeration
-   ****[running](#running-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[started](#started-signal)****()
-   ****[stopped](#stopped-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[start](#start-method)****()
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

[StateMachine](index.html) is based on the concepts and notation of [Statecharts](http://www.wisdom.weizmann.ac.il/~dharel/SCANNED.PAPERS/Statecharts.pdf). [StateMachine](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

A state machine manages a set of states and transitions between those states; these states and transitions define a state graph. Once a state graph has been built, the state machine can execute it. [StateMachine](index.html)'s execution algorithm is based on the [State Chart XML (SCXML)](http://www.w3.org/TR/scxml/) algorithm. The framework's [overview](../QtQml.qmlstatemachine.md) gives several state graphs and the code to build them.

Before the machine can be started, the [initialState](../QtQml.State.md#initialState-prop) must be set. The initial state is the state that the machine enters when started. You can then set running property to true or [start()](#start-method) the state machine. The started signal is emitted when the initial state is entered.

The state machine processes events and takes transitions until a top-level final state is entered; the state machine then emits the finished() signal. You can also [stop()](#stop-method) the state machine explicitly (you can also set running property to false). The stopped signal is emitted in this case.

<span id="example-usage"></span>
Example Usage
-------------

The following snippet shows a state machine that will finish when a button is clicked:

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        text: "Finish state"
        DSM.StateMachine {
            id: stateMachine
            initialState: state
            running: true
            DSM.State {
                id: state
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.clicked
                }
            }
            DSM.FinalState {
                id: finalState
            }
            onFinished: Qt.quit()
        }
    }
}
```

If an error is encountered, the machine will look for an [errorState](../QtQml.State.md#errorState-prop), and if one is available, it will enter this state. After the error state is entered, the type of the error can be retrieved with error(). The execution of the state graph will not stop when the error state is entered. If no error state applies to the erroneous state, the machine will stop executing and an error message will be printed to the console.

**See also** [QAbstractState](../QtQml.QAbstractState.md), [State](../QtQml.State.md), [SignalTransition](../QtQml.SignalTransition.md), [TimeoutTransition](../QtQml.TimeoutTransition.md), [HistoryState](../QtQml.HistoryState.md), and [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The error string of this state machine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalRestorePolicy-prop"></span><span class="name">globalRestorePolicy</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The restore policy for states of this state machine.

The default value of this property is QState.DontRestoreProperties.

This enum specifies the restore policy type. The restore policy takes effect when the machine enters a state which sets one or more properties. If the restore policy is set to QState.RestoreProperties, the state machine will save the original value of the property before the new value is set.

Later, when the machine either enters a state which does not set a value for the given property, the property will automatically be restored to its initial value.

Only one initial value will be saved for any given property. If a value for a property has already been saved by the state machine, it will not be overwritten until the property has been successfully restored.

-   QState.DontRestoreProperties The state machine should not save the initial values of properties and restore them later.
-   QState.RestoreProperties The state machine should save the initial values of properties and restore them later.

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

The running state of this state machine.

**See also** [start()](#start-method) and [stop()](#stop-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="started-signal"></span><span class="name">started</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the state machine has entered its initial state ([State::initialState](../QtQml.State.md#initialState-prop)).

The corresponding handler is `onStarted`.

**See also** [running](#running-prop), [start()](#start-method), and [State::finished](../QtQml.State.md#finished-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stopped-signal"></span><span class="name">stopped</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the state machine has stopped.

The corresponding handler is `onStopped`.

**See also** [running](#running-prop), [stop()](#stop-method), and [State::finished](../QtQml.State.md#finished-signal).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts this state machine. The machine will reset its configuration and transition to the initial state. When a final top-level state ([FinalState](../QtQml.FinalState.md)) is entered, the machine will emit the finished() signal.

**Note:** A state machine will not run without a running event loop, such as the main application event loop started with QCoreApplication::exec() or QApplication::exec().

**See also** [started](#started-signal), [State::finished](../QtQml.State.md#finished-signal), [stop()](#stop-method), [State::initialState](../QtQml.State.md#initialState-prop), and [running](#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops this state machine. The state machine will stop processing events and then emit the stopped signal.

**See also** [stopped](#stopped-signal), [start()](#start-method), and [running](#running-prop).

