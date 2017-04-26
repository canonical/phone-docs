---
Title: QtQml.TimeoutTransition
---

# QtQml.TimeoutTransition

<span class="subtitle"></span>
<!-- $$$TimeoutTransition-brief -->
<p>The TimeoutTransition type provides a transition based on a timer. More...</p>
<!-- @@@TimeoutTransition -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QSignalTransition.md">QSignalTransition</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#timeout-prop">timeout</a></b></b> : int</li>
</ul>
<!-- $$$TimeoutTransition-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQml.Timer.md">Timer</a> type can be combined with <a href="QtQml.SignalTransition.md">SignalTransition</a> to enact more complex timeout based transitions.</p>
<p><a href="index.html">TimeoutTransition</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<h2 id="example-usage">Example Usage</h2>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
<span class="name">enabled</span>: !<span class="name">stateMachine</span>.<span class="name">running</span>
<span class="name">onClicked</span>: <span class="name">stateMachine</span>.<span class="name">running</span> <span class="operator">=</span> <span class="number">true</span>
<span class="type">DSM</span>.StateMachine {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="name">initialState</span>: <span class="name">state</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">state</span>
<span class="type">DSM</span>.TimeoutTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">timeout</span>: <span class="number">1000</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
}
}
}</pre>
<br style="clear: both" /><p><b>See also </b><a href="QtQml.StateMachine.md">StateMachine</a>, <a href="QtQml.SignalTransition.md">SignalTransition</a>, <a href="QtQml.FinalState.md">FinalState</a>, and <a href="QtQml.HistoryState.md">HistoryState</a>.</p>
<!-- @@@TimeoutTransition -->
<h2>Property Documentation</h2>
<!-- $$$timeout -->
<table class="qmlname"><tr valign="top" id="timeout-prop"><td class="tblQmlPropNode"><p><span class="name">timeout</span> : <span class="type">int</span></p></td></tr></table><p>The timeout interval in milliseconds.</p>
<!-- @@@timeout -->
<br/>
