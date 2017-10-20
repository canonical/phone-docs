---
Title: QtQml.QAbstractState
---

# QtQml.QAbstractState

<span class="subtitle"></span>
<!-- $$$QAbstractState-brief -->
<p>The QAbstractState type is the base type of States of a StateMachine. More...</p>
<!-- @@@QAbstractState -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.FinalState.md">FinalState</a>, <a href="QtQml.HistoryState.md">HistoryState</a>, and <a href="QtQml.State.md">State</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#entered-signal">entered</a></b></b>()</li>
<li class="fn"><b><b><a href="#exited-signal">exited</a></b></b>()</li>
</ul>
<!-- $$$QAbstractState-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Do not use <a href="index.html">QAbstractState</a> directly; use State, <a href="QtQml.FinalState.md">FinalState</a> or <a href="QtQml.StateMachine.md">StateMachine</a> instead.</p>
<p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a> and <a href="QtQml.State.md">State</a>.</p>
<!-- @@@QAbstractState -->
<h2>Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p>The active property of this state. A state is active between entered() and exited() signals. This property is readonly.</p>
<p><b>See also </b><a href="#entered-signal">entered</a> and <a href="#exited-signal">exited</a>.</p>
<!-- @@@active -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$entered -->
<table class="qmlname"><tr valign="top" id="entered-signal"><td class="tblQmlFuncNode"><p><span class="name">entered</span>()</p></td></tr></table><p>This signal is emitted when the State becomes active.</p>
<p>The corresponding handler is <code>onEntered</code>.</p>
<p><b>See also </b><a href="#active-prop">active</a> and <a href="#exited-signal">exited</a>.</p>
<!-- @@@entered -->
<br/>
<!-- $$$exited -->
<table class="qmlname"><tr valign="top" id="exited-signal"><td class="tblQmlFuncNode"><p><span class="name">exited</span>()</p></td></tr></table><p>This signal is emitted when the State becomes inactive.</p>
<p>The corresponding handler is <code>onExited</code>.</p>
<p><b>See also </b><a href="#active-prop">active</a> and <a href="#entered-signal">entered</a>.</p>
<!-- @@@exited -->
<br/>
