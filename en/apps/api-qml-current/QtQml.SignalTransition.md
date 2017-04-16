---
Title: QtQml.SignalTransition
---

# QtQml.SignalTransition

<span class="subtitle"></span>
<!-- $$$SignalTransition-brief -->
<p>The SignalTransition type provides a transition based on a Qt signal. More...</p>
<!-- @@@SignalTransition -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QSignalTransition.md">QSignalTransition</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#guard-prop">guard</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#signal-prop">signal</a></b></b> : signal</li>
</ul>
<!-- $$$SignalTransition-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">SignalTransition</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
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
<span class="type">DSM</span>.SignalTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
<span class="name">guard</span>: <span class="name">guardButton</span>.<span class="name">checked</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
<span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
}
<span class="type">Row</span> {
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">guardButton</span>
<span class="name">checkable</span>: <span class="number">true</span>
<span class="name">text</span>: <span class="name">checked</span> ? <span class="string">&quot;Press to block the SignalTransition&quot;</span> : <span class="string">&quot;Press to unblock the SignalTransition&quot;</span>
}
}
}</pre>
<br style="clear: both" /><p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a>, <a href="QtQml.FinalState.md">FinalState</a>, and <a href="QtQml.TimeoutTransition.md">TimeoutTransition</a>.</p>
<!-- @@@SignalTransition -->
<h2>Property Documentation</h2>
<!-- $$$guard -->
<table class="qmlname"><tr valign="top" id="guard-prop"><td class="tblQmlPropNode"><p><span class="name">guard</span> : <span class="type">bool</span></p></td></tr></table><p>Guard conditions affect the behavior of a state machine by enabling transitions only when they evaluate to true and disabling them when they evaluate to false.</p>
<p>When the signal associated with this signal transition is emitted the guard condition is evaluated. In the guard condition the arguments of the signal can be used as demonstrated in the example below.</p>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="type">DSM</span>.StateMachine {
<span class="type">DSM</span>.State {
<span class="type">DSM</span>.SignalTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">mysignal</span>
<span class="comment">// the guard condition uses the mystr string argument from mysignal</span>
<span class="name">guard</span>: <span class="name">mystr</span> <span class="operator">==</span> <span class="string">&quot;test&quot;</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
}
<span class="comment">// define the signal the SignalTransition is connected with</span>
signal <span class="type">mysignal</span>(string mystr)
<span class="comment">// on clicking the button emit the signal with a single string argument</span>
<span class="name">onClicked</span>: <span class="name">button</span>.<span class="name">mysignal</span>(<span class="string">&quot;test&quot;</span>)
}
}</pre>
<p><b>See also </b><a href="#signal-prop">signal</a>.</p>
<!-- @@@guard -->
<br/>
<!-- $$$signal -->
<table class="qmlname"><tr valign="top" id="signal-prop"><td class="tblQmlPropNode"><p><span class="name">signal</span> : <span class="type"><a href="#signal-prop">signal</a></span></p></td></tr></table><p>The signal which is associated with this signal transition.</p>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="type">DSM</span>.StateMachine {
<span class="type">DSM</span>.State {
<span class="type">DSM</span>.SignalTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
}
}
}</pre>
<!-- @@@signal -->
<br/>
