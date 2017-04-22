---
Title: QtTest.SignalSpy
---

# QtTest.SignalSpy

<span class="subtitle"></span>
<!-- $$$SignalSpy-brief -->
<p>Enables introspection of signal emission More...</p>
<!-- @@@SignalSpy -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtTest 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 4.8</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#signalArguments-prop">signalArguments</a></b></b> : list</li>
<li class="fn"><b><b><a href="#signalName-prop">signalName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : var</li>
<li class="fn"><b><b><a href="#valid-prop">valid</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clear-method">clear</a></b></b>()</li>
<li class="fn"><b><b><a href="#wait-method">wait</a></b></b>(<i>timeout</i>)</li>
</ul>
<!-- $$$SignalSpy-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>In the following example, a <a href="index.html">SignalSpy</a> is installed to watch the &quot;clicked&quot; signal on a user-defined Button type. When the signal is emitted, the <a href="#count-prop">count</a> property on the spy will be increased.</p>
<pre class="cpp">Button {
id: button
SignalSpy {
id: spy
target: button
signalName: <span class="string">&quot;clicked&quot;</span>
}
TestCase {
name: <span class="string">&quot;ButtonClick&quot;</span>
function test_click() {
compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">0</span>)
button<span class="operator">.</span>clicked();
compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">1</span>)
}
}
}</pre>
<p>The above style of test is suitable for signals that are emitted synchronously. For asynchronous signals, the <a href="#wait-method">wait()</a> method can be used to block the test until the signal occurs (or a timeout expires).</p>
<p><b>See also </b><a href="QtTest.TestCase.md">TestCase</a> and Qt Quick Test Reference Documentation.</p>
<!-- @@@SignalSpy -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property defines the number of times that <a href="#signalName-prop">signalName</a> has been emitted from <a href="#target-prop">target</a> since the last call to <a href="#clear-method">clear()</a>.</p>
<p><b>See also </b><a href="#target-prop">target</a>, <a href="#signalName-prop">signalName</a>, and <a href="#clear-method">clear()</a>.</p>
<!-- @@@count -->
<br/>
<!-- $$$signalArguments -->
<table class="qmlname"><tr valign="top" id="signalArguments-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">signalArguments</span> : <span class="type">list</span></p></td></tr></table><p>This property holds a list of emitted signal arguments. Each emission of the signal will append one item to the list, containing the arguments of the signal. When connecting to a new <a href="#target-prop">target</a> or new <a href="#signalName-prop">signalName</a> or calling the <a href="#clear-method">clear()</a> method, the signalArguments will be reset to empty.</p>
<p><b>See also </b><a href="#signalName-prop">signalName</a> and <a href="#clear-method">clear()</a>.</p>
<!-- @@@signalArguments -->
<br/>
<!-- $$$signalName -->
<table class="qmlname"><tr valign="top" id="signalName-prop"><td class="tblQmlPropNode"><p><span class="name">signalName</span> : <span class="type">string</span></p></td></tr></table><p>This property defines the name of the signal on <a href="#target-prop">target</a> to listen for.</p>
<p><b>See also </b><a href="#target-prop">target</a> and <a href="#count-prop">count</a>.</p>
<!-- @@@signalName -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">var</span></p></td></tr></table><p>This property defines the target object that will be used to listen for emissions of the <a href="#signalName-prop">signalName</a> signal.</p>
<p><b>See also </b><a href="#signalName-prop">signalName</a> and <a href="#count-prop">count</a>.</p>
<!-- @@@target -->
<br/>
<!-- $$$valid -->
<table class="qmlname"><tr valign="top" id="valid-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">valid</span> : <span class="type">bool</span></p></td></tr></table><p>This property defines the current signal connection status. It will be true when the <a href="#signalName-prop">signalName</a> of the <a href="#target-prop">target</a> is connected successfully, otherwise it will be false.</p>
<p><b>See also </b><a href="#count-prop">count</a>, <a href="#target-prop">target</a>, <a href="#signalName-prop">signalName</a>, and <a href="#clear-method">clear()</a>.</p>
<!-- @@@valid -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$clear -->
<table class="qmlname"><tr valign="top" id="clear-method"><td class="tblQmlFuncNode"><p><span class="name">clear</span>()</p></td></tr></table><p>Clears <a href="#count-prop">count</a> to 0, resets <a href="#valid-prop">valid</a> to false and clears the <a href="#signalArguments-prop">signalArguments</a> to empty.</p>
<p><b>See also </b><a href="#count-prop">count</a> and <a href="#wait-method">wait()</a>.</p>
<!-- @@@clear -->
<br/>
<!-- $$$wait -->
<table class="qmlname"><tr valign="top" id="wait-method"><td class="tblQmlFuncNode"><p><span class="name">wait</span>(<i> timeout</i>)</p></td></tr></table><p>Waits for the signal <a href="#signalName-prop">signalName</a> on <a href="#target-prop">target</a> to be emitted, for up to <i>timeout</i> milliseconds. The test case will fail if the signal is not emitted.</p>
<pre class="cpp">SignalSpy {
id: spy
target: button
signalName: <span class="string">&quot;clicked&quot;</span>
}
function test_async_click() {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="comment">// do something that will cause clicked() to be emitted</span>
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
spy<span class="operator">.</span>wait()
compare(spy<span class="operator">.</span>count<span class="operator">,</span> <span class="number">1</span>)
}</pre>
<p>There are two possible scenarios: the signal has already been emitted when wait() is called, or the signal has not yet been emitted. The wait() function handles the first scenario by immediately returning if the signal has already occurred.</p>
<p>The <a href="#clear-method">clear()</a> method can be used to discard information about signals that have already occurred to synchronize wait() with future signal emissions.</p>
<p><b>See also </b><a href="#clear-method">clear()</a> and <a href="QtTest.TestCase.md#tryCompare-method">TestCase::tryCompare()</a>.</p>
<!-- @@@wait -->
<br/>
