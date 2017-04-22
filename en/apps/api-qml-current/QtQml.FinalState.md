---
Title: QtQml.FinalState
---

# QtQml.FinalState

<span class="subtitle"></span>
<!-- $$$FinalState-brief -->
<p>Provides a final state. More...</p>
<!-- @@@FinalState -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QAbstractState.md">QAbstractState</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$FinalState-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A final state is used to communicate that (part of) a <a href="QtQml.StateMachine.md">StateMachine</a> has finished its work. When a final top-level state is entered, the state machine's <a href="QtQml.State.md#finished-signal">finished</a>() signal is emitted. In general, when a final substate (a child of a State) is entered, the parent state's <a href="QtQml.State.md#finished-signal">finished</a>() signal is emitted. <a href="index.html">FinalState</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<p>To use a final state, you create a <a href="index.html">FinalState</a> object and add a transition to it from another state.</p>
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
<span class="type">DSM</span>.TimeoutTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">timeout</span>: <span class="number">200</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
<span class="name">onFinished</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;state finished&quot;</span>)
}
}</pre>
<br style="clear: both" /><p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a> and <a href="QtQml.State.md">State</a>.</p>
<!-- @@@FinalState -->
