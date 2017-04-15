---
Title: QtQml.QSignalTransition
---
        
QSignalTransition
=================

<span class="subtitle"></span>
The QSignalTransition type provides a transition based on a Qt signal. More...

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
<td><p><a href="QtQml.QAbstractTransition.md">QAbstractTransition</a></p></td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="QtQml.SignalTransition.md">SignalTransition</a> and <a href="QtQml.TimeoutTransition.md">TimeoutTransition</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[senderObject](#senderObject-prop)**** : QObject
-   ****[signal](#signal-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Do not use [QSignalTransition](index.html) directly; use [SignalTransition](../QtQml.SignalTransition.md) or [TimeoutTransition](../QtQml.TimeoutTransition.md) instead.

**See also** [SignalTransition](../QtQml.SignalTransition.md) and [TimeoutTransition](../QtQml.TimeoutTransition.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="senderObject-prop"></span><span class="name">senderObject</span> : <span class="type">QObject</span></p></td>
</tr>
</tbody>
</table>

The sender object which is associated with this signal transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signal-prop"></span><span class="name">signal</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The signal which is associated with this signal transition.

