---
Title: QtQml.QAbstractTransition
---
        
QAbstractTransition
===================

<span class="subtitle"></span>
The QAbstractTransition type is the base type of transitions between QAbstractState objects. More...

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
<td>Inherited By:</td>
<td><p><a href="QtQml.QSignalTransition.md">QSignalTransition</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[sourceState](#sourceState-prop)**** : bool
-   ****[targetState](#targetState-prop)**** : QAbstractState
-   ****[targetStates](#targetStates-prop)**** : list&lt;QAbstractState&gt;

<span id="signals"></span>
Signals
-------

-   ****[triggered](#triggered-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The [QAbstractTransition](index.html) type is the abstract base type of transitions between states ([QAbstractState](../QtQml.QAbstractState.md) objects) of a [StateMachine](../QtQml.StateMachine.md). [QAbstractTransition](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md).

The sourceState() property has the source of the transition. The [targetState](#targetState-prop) and [targetStates](#targetStates-prop) properties return the target(s) of the transition.

The triggered() signal is emitted when the transition has been triggered.

Do not use [QAbstractTransition](index.html) directly; use [SignalTransition](../QtQml.SignalTransition.md) or [TimeoutTransition](../QtQml.TimeoutTransition.md) instead.

**See also** [SignalTransition](../QtQml.SignalTransition.md) and [TimeoutTransition](../QtQml.TimeoutTransition.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceState-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">sourceState</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The source state (parent) of this transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetState-prop"></span><span class="name">targetState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The target state of this transition.

If a transition has no target state, the transition may still be triggered, but this will not cause the state machine's configuration to change (i.e. the current state will not be exited and re-entered).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetStates-prop"></span><span class="name">targetStates</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The target states of this transition.

If multiple states are specified, they all must be descendants of the same parallel group state.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the transition has been triggered.

The corresponding handler is `onTriggered`.

