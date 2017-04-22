---
Title: QtQml.StateMachine
---

# QtQml.StateMachine

<span class="subtitle"></span>
<!-- $$$StateMachine-brief -->
<p>Provides a hierarchical finite state machine. More...</p>
<!-- @@@StateMachine -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.StateMachine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.State.md">State</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#globalRestorePolicy-prop">globalRestorePolicy</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#started-signal">started</a></b></b>()</li>
<li class="fn"><b><b><a href="#stopped-signal">stopped</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$StateMachine-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">StateMachine</a> is based on the concepts and notation of <a href="http://www.wisdom.weizmann.ac.il/~dharel/SCANNED.PAPERS/Statecharts.pdf">Statecharts</a>. <a href="index.html">StateMachine</a> is part of <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<p>A state machine manages a set of states and transitions between those states; these states and transitions define a state graph. Once a state graph has been built, the state machine can execute it. <a href="index.html">StateMachine</a>'s execution algorithm is based on the <a href="http://www.w3.org/TR/scxml/">State Chart XML (SCXML)</a> algorithm. The framework's <a href="QtQml.qmlstatemachine.md">overview</a> gives several state graphs and the code to build them.</p>
<p>Before the machine can be started, the <a href="QtQml.State.md#initialState-prop">initialState</a> must be set. The initial state is the state that the machine enters when started. You can then set running property to true or <a href="#start-method">start()</a> the state machine. The started signal is emitted when the initial state is entered.</p>
<p>The state machine processes events and takes transitions until a top-level final state is entered; the state machine then emits the finished() signal. You can also <a href="#stop-method">stop()</a> the state machine explicitly (you can also set running property to false). The stopped signal is emitted in this case.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following snippet shows a state machine that will finish when a button is clicked:</p>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">Rectangle</span> {
<span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Finish state&quot;</span>
<span class="type">DSM</span>.StateMachine {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="name">initialState</span>: <span class="name">state</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">DSM</span>.State {
<span class="name">id</span>: <span class="name">state</span>
<span class="type">DSM</span>.SignalTransition {
<span class="name">targetState</span>: <span class="name">finalState</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
}
<span class="type">DSM</span>.FinalState {
<span class="name">id</span>: <span class="name">finalState</span>
}
<span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
}
}
}</pre>
<p>If an error is encountered, the machine will look for an <a href="QtQml.State.md#errorState-prop">errorState</a>, and if one is available, it will enter this state. After the error state is entered, the type of the error can be retrieved with error(). The execution of the state graph will not stop when the error state is entered. If no error state applies to the erroneous state, the machine will stop executing and an error message will be printed to the console.</p>
<br style="clear: both" /><p><b>See also </b><a href="QtQml.QAbstractState.md">QAbstractState</a>, <a href="QtQml.State.md">State</a>, <a href="QtQml.SignalTransition.md">SignalTransition</a>, <a href="QtQml.TimeoutTransition.md">TimeoutTransition</a>, <a href="QtQml.HistoryState.md">HistoryState</a>, and <a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a>.</p>
<!-- @@@StateMachine -->
<h2>Property Documentation</h2>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>The error string of this state machine.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$globalRestorePolicy -->
<table class="qmlname"><tr valign="top" id="globalRestorePolicy-prop"><td class="tblQmlPropNode"><p><span class="name">globalRestorePolicy</span> : <span class="type">enumeration</span></p></td></tr></table><p>The restore policy for states of this state machine.</p>
<p>The default value of this property is QState.DontRestoreProperties.</p>
<p>This enum specifies the restore policy type. The restore policy takes effect when the machine enters a state which sets one or more properties. If the restore policy is set to QState.RestoreProperties, the state machine will save the original value of the property before the new value is set.</p>
<p>Later, when the machine either enters a state which does not set a value for the given property, the property will automatically be restored to its initial value.</p>
<p>Only one initial value will be saved for any given property. If a value for a property has already been saved by the state machine, it will not be overwritten until the property has been successfully restored.</p>
<ul>
<li>QState.DontRestoreProperties The state machine should not save the initial values of properties and restore them later.</li>
<li>QState.RestoreProperties The state machine should save the initial values of properties and restore them later.</li>
</ul>
<!-- @@@globalRestorePolicy -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>The running state of this state machine.</p>
<p><b>See also </b><a href="#start-method">start()</a> and <a href="#stop-method">stop()</a>.</p>
<!-- @@@running -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$started -->
<table class="qmlname"><tr valign="top" id="started-signal"><td class="tblQmlFuncNode"><p><span class="name">started</span>()</p></td></tr></table><p>This signal is emitted when the state machine has entered its initial state (<a href="QtQml.State.md#initialState-prop">State::initialState</a>).</p>
<p>The corresponding handler is <code>onStarted</code>.</p>
<p><b>See also </b><a href="#running-prop">running</a>, <a href="#start-method">start()</a>, and <a href="QtQml.State.md#finished-signal">State::finished</a>.</p>
<!-- @@@started -->
<br/>
<!-- $$$stopped -->
<table class="qmlname"><tr valign="top" id="stopped-signal"><td class="tblQmlFuncNode"><p><span class="name">stopped</span>()</p></td></tr></table><p>This signal is emitted when the state machine has stopped.</p>
<p>The corresponding handler is <code>onStopped</code>.</p>
<p><b>See also </b><a href="#running-prop">running</a>, <a href="#stop-method">stop()</a>, and <a href="QtQml.State.md#finished-signal">State::finished</a>.</p>
<!-- @@@stopped -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Starts this state machine. The machine will reset its configuration and transition to the initial state. When a final top-level state (<a href="QtQml.FinalState.md">FinalState</a>) is entered, the machine will emit the finished() signal.</p>
<p><b>Note: </b>A state machine will not run without a running event loop, such as the main application event loop started with QCoreApplication::exec() or QApplication::exec().</p><p><b>See also </b><a href="#started-signal">started</a>, <a href="QtQml.State.md#finished-signal">State::finished</a>, <a href="#stop-method">stop()</a>, <a href="QtQml.State.md#initialState-prop">State::initialState</a>, and <a href="#running-prop">running</a>.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops this state machine. The state machine will stop processing events and then emit the stopped signal.</p>
<p><b>See also </b><a href="#stopped-signal">stopped</a>, <a href="#start-method">start()</a>, and <a href="#running-prop">running</a>.</p>
<!-- @@@stop -->
<br/>
