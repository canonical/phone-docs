---
Title: QtQml.WorkerScript
---

# QtQml.WorkerScript

<span class="subtitle"></span>
<!-- $$$WorkerScript-brief -->
<p>Enables the use of threads in a Qt Quick application More...</p>
<!-- @@@WorkerScript -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#message-signal">message</a></b></b>(jsobject <i>msg</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#sendMessage-method">sendMessage</a></b></b>(jsobject <i>message</i>)</li>
</ul>
<!-- $$$WorkerScript-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Use <a href="index.html">WorkerScript</a> to run operations in a new thread. This is useful for running operations in the background so that the main GUI thread is not blocked.</p>
<p>Messages can be passed between the new thread and the parent thread using <a href="#sendMessage-method">sendMessage()</a> and the <code>onMessage()</code> handler.</p>
<p>An example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="type">Text</span> {
<span class="name">id</span>: <span class="name">myText</span>
<span class="name">text</span>: <span class="string">'Click anywhere'</span>
}
<span class="type"><a href="index.html">WorkerScript</a></span> {
<span class="name">id</span>: <span class="name">myWorker</span>
<span class="name">source</span>: <span class="string">&quot;script.js&quot;</span>
<span class="name">onMessage</span>: <span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">messageObject</span>.<span class="name">reply</span>
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">myWorker</span>.<span class="name">sendMessage</span>({ 'x': <span class="name">mouse</span>.<span class="name">x</span>, 'y': <span class="name">mouse</span>.<span class="name">y</span> })
}
}</pre>
<p>The above worker script specifies a JavaScript file, &quot;script.js&quot;, that handles the operations to be performed in the new thread. Here is <code>script.js</code>:</p>
<pre class="cpp"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">message</span>) {
<span class="comment">// ... long-running operations and calculations are done here</span>
<span class="name">WorkerScript</span>.<span class="name">sendMessage</span>({ 'reply': <span class="string">'Mouse is at '</span> <span class="operator">+</span> <span class="name">message</span>.<span class="name">x</span> <span class="operator">+</span> <span class="string">','</span> <span class="operator">+</span> <span class="name">message</span>.<span class="name">y</span> })
}</pre>
<p>When the user clicks anywhere within the rectangle, <code>sendMessage()</code> is called, triggering the <code>WorkerScript.onMessage()</code> handler in <code>script.js</code>. This in turn sends a reply message that is then received by the <code>onMessage()</code> handler of <code>myWorker</code>.</p>
<h4 >Restrictions</h4>
<p>Since the <code>WorkerScript.onMessage()</code> function is run in a separate thread, the JavaScript file is evaluated in a context separate from the main QML engine. This means that unlike an ordinary JavaScript file that is imported into QML, the <code>script.js</code> in the above example cannot access the properties, methods or other attributes of the QML item, nor can it access any context properties set on the QML object through QQmlContext.</p>
<p>Additionally, there are restrictions on the types of values that can be passed to and from the worker script. See the <a href="#sendMessage-method">sendMessage()</a> documentation for details.</p>
<p>Worker script can not use <a href="QtQml.qtqml-javascript-imports.md">.import</a> syntax.</p>
<p><b>See also </b>Qt Quick Examples - Threading and Threaded ListModel Example.</p>
<!-- @@@WorkerScript -->
<h2>Property Documentation</h2>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This holds the url of the JavaScript file that implements the <code>WorkerScript.onMessage()</code> handler for threaded operations.</p>
<!-- @@@source -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$message -->
<table class="qmlname"><tr valign="top" id="message-signal"><td class="tblQmlFuncNode"><p><span class="name">message</span>(<span class="type">jsobject</span><i> msg</i>)</p></td></tr></table><p>This signal is emitted when a message <i>msg</i> is received from a worker script in another thread through a call to <a href="#sendMessage-method">sendMessage()</a>.</p>
<p>The corresponding handler is <code>onMessage</code>.</p>
<!-- @@@message -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$sendMessage -->
<table class="qmlname"><tr valign="top" id="sendMessage-method"><td class="tblQmlFuncNode"><p><span class="name">sendMessage</span>(<span class="type">jsobject</span><i> message</i>)</p></td></tr></table><p>Sends the given <i>message</i> to a worker script handler in another thread. The other worker script handler can receive this message through the onMessage() handler.</p>
<p>The <code>message</code> object may only contain values of the following types:</p>
<ul>
<li>boolean, number, string</li>
<li>JavaScript objects and arrays</li>
<li><a href="QtQml.ListModel.md">ListModel</a> objects (any other type of QObject* is not allowed)</li>
</ul>
<p>All objects and arrays are copied to the <code>message</code>. With the exception of <a href="QtQml.ListModel.md">ListModel</a> objects, any modifications by the other thread to an object passed in <code>message</code> will not be reflected in the original object.</p>
<!-- @@@sendMessage -->
<br/>
