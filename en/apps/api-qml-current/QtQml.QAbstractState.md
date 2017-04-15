---
Title: QtQml.QAbstractState
---
        
QAbstractState
==============

<span class="subtitle"></span>
The QAbstractState type is the base type of States of a StateMachine. More...

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
<td><p><a href="QtQml.FinalState.md">FinalState</a>, <a href="QtQml.HistoryState.md">HistoryState</a>, and <a href="QtQml.State.md">State</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[active](#active-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[entered](#entered-signal)****()
-   ****[exited](#exited-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Do not use [QAbstractState](index.html) directly; use State, [FinalState](../QtQml.FinalState.md) or [StateMachine](../QtQml.StateMachine.md) instead.

**See also** [StateMachine](../QtQml.StateMachine.md) and [State](../QtQml.State.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The active property of this state. A state is active between entered() and exited() signals. This property is readonly.

**See also** [entered](#entered-signal) and [exited](#exited-signal).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="name">entered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the State becomes active.

The corresponding handler is `onEntered`.

**See also** [active](#active-prop) and [exited](#exited-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the State becomes inactive.

The corresponding handler is `onExited`.

**See also** [active](#active-prop) and [entered](#entered-signal).

