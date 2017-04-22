---
Title: QtQml.HistoryState
---

# QtQml.HistoryState

<span class="subtitle"></span>
<!-- $$$HistoryState-brief -->
<p>The HistoryState type provides a means of returning to a previously active substate. More...</p>
<!-- @@@HistoryState -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QAbstractState.md">QAbstractState</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#defaultState-prop">defaultState</a></b></b> : QAbstractState</li>
<li class="fn"><b><b><a href="#historyType-prop">historyType</a></b></b> : enumeration</li>
</ul>
<!-- $$$HistoryState-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A history state is a pseudo-state that represents the child state that the parent state was in the last time the parent state was exited. A transition with a history state as its target is in fact a transition to one of the other child states of the parent state. <a href="index.html">HistoryState</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<p>Use the <a href="#defaultState-prop">defaultState</a> property to set the state that should be entered if the parent state has never been entered.</p>
<h2 id="example-usage">Example Usage</h2>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="type">DSM</span>.StateMachine {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="name">initialState</span>: <span class="name">parentState</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">parentState</span>
<span class="name">initialState</span>: <span class="name">child2</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;parentState entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;parentState exited&quot;</span>)
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">child1</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child1 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child1 exited&quot;</span>)
}
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">child2</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child2 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;child2 exited&quot;</span>)
}
<span class="type">DSM</span>.HistoryState {
<span class="name">id</span>: <span class="name">historyState</span>
<span class="name">defaultState</span>: <span class="name">child1</span>
}
<span class="type">DSM</span>.SignalTransition {
<span class="name">targetState</span>: <span class="name">historyState</span>
<span class="comment">// Clicking the button will cause the state machine to enter the child state</span>
<span class="comment">// that parentState was in the last time parentState was exited, or the history state's default</span>
<span class="comment">// state if parentState has never been entered.</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
}
}
}
}</pre>
<br style="clear: both" /><p>By default, a history state is shallow, meaning that it will not remember nested states. This can be configured through the <a href="#historyType-prop">historyType</a> property.</p>
<p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a> and <a href="QtQml.State.md">State</a>.</p>
<!-- @@@HistoryState -->
<h2>Property Documentation</h2>
<!-- $$$defaultState -->
<table class="qmlname"><tr valign="top" id="defaultState-prop"><td class="tblQmlPropNode"><p><span class="name">defaultState</span> : <span class="type"><a href="QtQml.QAbstractState.md">QAbstractState</a></span></p></td></tr></table><p>The default state of this history state.</p>
<p>The default state indicates the state to transition to if the parent state has never been entered before.</p>
<!-- @@@defaultState -->
<br/>
<!-- $$$historyType -->
<table class="qmlname"><tr valign="top" id="historyType-prop"><td class="tblQmlPropNode"><p><span class="name">historyType</span> : <span class="type">enumeration</span></p></td></tr></table><p>The type of history that this history state records.</p>
<p>The default value of this property is QHistoryState.ShallowHistory.</p>
<p>This enum specifies the type of history that a QHistoryState records.</p>
<ul>
<li>QHistoryState.ShallowHistory Only the immediate child states of the parent state are recorded. In this case, a transition with the history state as its target will end up in the immediate child state that the parent was in the last time it was exited. This is the default.</li>
<li>QHistoryState.DeepHistory Nested states are recorded. In this case a transition with the history state as its target will end up in the most deeply nested descendant state the parent was in the last time it was exited.</li>
</ul>
<!-- @@@historyType -->
<br/>
