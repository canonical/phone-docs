---
Title: QtQml.State
---
        
State
=====

<span class="subtitle"></span>
Provides a general-purpose state for StateMachine. More...

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
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="QtQml.StateMachine.md">StateMachine</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[childMode](#childMode-prop)**** : enumeration
-   ****[errorState](#errorState-prop)**** : QAbstractState
-   ****[initialState](#initialState-prop)**** : QAbstractState

<span id="signals"></span>
Signals
-------

-   ****[finished](#finished-signal)****()

<span id="details"></span>
Detailed Description
--------------------

State objects can have child states as well as transitions to other states. State is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

<span id="states-with-child-states"></span>
States with Child States
------------------------

The [childMode](#childMode-prop) property determines how child states are treated. For non-parallel state groups, the [initialState](#initialState-prop) property must be used to set the initial state. The child states are mutually exclusive states, and the state machine needs to know which child state to enter when the parent state is the target of a transition.

The state emits the State::finished() signal when a final child state ([FinalState](../QtQml.FinalState.md)) is entered.

The [errorState](#errorState-prop) sets the state's error state. The error state is the state that the state machine will transition to if an error is detected when attempting to enter the state (e.g. because no initial state has been set).

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
        }
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine.md) and [FinalState](../QtQml.FinalState.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="childMode-prop"></span><span class="name">childMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The child mode of this state

The default value of this property is QState.ExclusiveStates.

This enum specifies how a state's child states are treated:

-   QState.ExclusiveStates The child states are mutually exclusive and an initial state must be set by setting [initialState](#initialState-prop) property.
-   QState.ParallelStates The child states are parallel. When the parent state is entered, all its child states are entered in parallel.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorState-prop"></span><span class="name">errorState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The error state of this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialState-prop"></span><span class="name">initialState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The initial state of this state (one of its child states).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finished-signal"></span><span class="name">finished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a final child state of this state is entered.

The corresponding handler is `onFinished`.

**See also** [QAbstractState::active](../QtQml.QAbstractState.md#active-prop), [QAbstractState::entered](../QtQml.QAbstractState.md#entered-signal), and [QAbstractState::exited](../QtQml.QAbstractState.md#exited-signal).

