---
Title: QtQml.QAbstractTransition
---

# QtQml.QAbstractTransition

<span class="subtitle"></span>
<!-- $$$QAbstractTransition-brief -->
<p>The QAbstractTransition type is the base type of transitions between QAbstractState objects. More...</p>
<!-- @@@QAbstractTransition -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QSignalTransition.md">QSignalTransition</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#sourceState-prop">sourceState</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#targetState-prop">targetState</a></b></b> : QAbstractState</li>
<li class="fn"><b><b><a href="#targetStates-prop">targetStates</a></b></b> : list&lt;QAbstractState&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>()</li>
</ul>
<!-- $$$QAbstractTransition-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">QAbstractTransition</a> type is the abstract base type of transitions between states (<a href="QtQml.QAbstractState.md">QAbstractState</a> objects) of a <a href="QtQml.StateMachine.md">StateMachine</a>. <a href="index.html">QAbstractTransition</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<p>The sourceState() property has the source of the transition. The <a href="#targetState-prop">targetState</a> and <a href="#targetStates-prop">targetStates</a> properties return the target(s) of the transition.</p>
<p>The triggered() signal is emitted when the transition has been triggered.</p>
<p>Do not use <a href="index.html">QAbstractTransition</a> directly; use <a href="QtQml.SignalTransition.md">SignalTransition</a> or <a href="QtQml.TimeoutTransition.md">TimeoutTransition</a> instead.</p>
<p><b>See also </b><a href="QtQml.SignalTransition.md">SignalTransition</a> and <a href="QtQml.TimeoutTransition.md">TimeoutTransition</a>.</p>
<!-- @@@QAbstractTransition -->
<h2>Property Documentation</h2>
<!-- $$$sourceState -->
<table class="qmlname"><tr valign="top" id="sourceState-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">sourceState</span> : <span class="type">bool</span></p></td></tr></table><p>The source state (parent) of this transition.</p>
<!-- @@@sourceState -->
<br/>
<!-- $$$targetState -->
<table class="qmlname"><tr valign="top" id="targetState-prop"><td class="tblQmlPropNode"><p><span class="name">targetState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td></tr></table><p>The target state of this transition.</p>
<p>If a transition has no target state, the transition may still be triggered, but this will not cause the state machine's configuration to change (i.e&#x2e; the current state will not be exited and re-entered).</p>
<!-- @@@targetState -->
<br/>
<!-- $$$targetStates -->
<table class="qmlname"><tr valign="top" id="targetStates-prop"><td class="tblQmlPropNode"><p><span class="name">targetStates</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span>&gt;</p></td></tr></table><p>The target states of this transition.</p>
<p>If multiple states are specified, they all must be descendants of the same parallel group state.</p>
<!-- @@@targetStates -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top" id="triggered-signal"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>()</p></td></tr></table><p>This signal is emitted when the transition has been triggered.</p>
<p>The corresponding handler is <code>onTriggered</code>.</p>
<!-- @@@triggered -->
<br/>
