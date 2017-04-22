---
Title: QtQml.State
---

# QtQml.State

<span class="subtitle"></span>
<!-- $$$State-brief -->
<p>Provides a general-purpose state for StateMachine. More...</p>
<!-- @@@State -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QAbstractState.md">QAbstractState</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.StateMachine.md">StateMachine</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#childMode-prop">childMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorState-prop">errorState</a></b></b> : QAbstractState</li>
<li class="fn"><b><b><a href="#initialState-prop">initialState</a></b></b> : QAbstractState</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#finished-signal">finished</a></b></b>()</li>
</ul>
<!-- $$$State-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>State objects can have child states as well as transitions to other states. State is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<h2 id="states-with-child-states">States with Child States</h2>
<p>The <a href="#childMode-prop">childMode</a> property determines how child states are treated. For non-parallel state groups, the <a href="#initialState-prop">initialState</a> property must be used to set the initial state. The child states are mutually exclusive states, and the state machine needs to know which child state to enter when the parent state is the target of a transition.</p>
<p>The state emits the State::finished() signal when a final child state (<a href="QtQml.FinalState.md">FinalState</a>) is entered.</p>
<p>The <a href="#errorState-prop">errorState</a> sets the state's error state. The error state is the state that the state machine will transition to if an error is detected when attempting to enter the state (e.g&#x2e; because no initial state has been set).</p>
<h2 id="example-usage">Example Usage</h2>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">DSM</span>.StateMachine {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="name">initialState</span>: <span class="name">state</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">state</span>
}
}
}</pre>
<br style="clear: both" /><p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a> and <a href="QtQml.FinalState.md">FinalState</a>.</p>
<!-- @@@State -->
<h2>Property Documentation</h2>
<!-- $$$childMode -->
<table class="qmlname"><tr valign="top" id="childMode-prop"><td class="tblQmlPropNode"><p><span class="name">childMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>The child mode of this state</p>
<p>The default value of this property is QState.ExclusiveStates.</p>
<p>This enum specifies how a state's child states are treated:</p>
<ul>
<li>QState.ExclusiveStates The child states are mutually exclusive and an initial state must be set by setting <a href="#initialState-prop">initialState</a> property.</li>
<li>QState.ParallelStates The child states are parallel. When the parent state is entered, all its child states are entered in parallel.</li>
</ul>
<!-- @@@childMode -->
<br/>
<!-- $$$errorState -->
<table class="qmlname"><tr valign="top" id="errorState-prop"><td class="tblQmlPropNode"><p><span class="name">errorState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td></tr></table><p>The error state of this state.</p>
<!-- @@@errorState -->
<br/>
<!-- $$$initialState -->
<table class="qmlname"><tr valign="top" id="initialState-prop"><td class="tblQmlPropNode"><p><span class="name">initialState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td></tr></table><p>The initial state of this state (one of its child states).</p>
<!-- @@@initialState -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$finished -->
<table class="qmlname"><tr valign="top" id="finished-signal"><td class="tblQmlFuncNode"><p><span class="name">finished</span>()</p></td></tr></table><p>This signal is emitted when a final child state of this state is entered.</p>
<p>The corresponding handler is <code>onFinished</code>.</p>
<p><b>See also </b><a href="QtQml.QAbstractState.md#active-prop">QAbstractState::active</a>, <a href="QtQml.QAbstractState.md#entered-signal">QAbstractState::entered</a>, and <a href="QtQml.QAbstractState.md#exited-signal">QAbstractState::exited</a>.</p>
<!-- @@@finished -->
<br/>
