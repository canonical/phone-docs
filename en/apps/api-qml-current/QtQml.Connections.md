---
Title: QtQml.Connections
---

# QtQml.Connections

<span class="subtitle"></span>
<!-- $$$Connections-brief -->
<p>Describes generalized connections to signals More...</p>
<!-- @@@Connections -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#ignoreUnknownSignals-prop">ignoreUnknownSignals</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
</ul>
<!-- $$$Connections-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Connections object creates a connection to a QML signal.</p>
<p>When connecting to signals in QML, the usual way is to create an &quot;on&lt;Signal&gt;&quot; handler that reacts when a signal is received, like this:</p>
<pre class="qml"><span class="type">MouseArea</span> {
<span class="name">onClicked</span>: { <span class="name">foo</span>(<span class="name">parameters</span>) }
}</pre>
<p>However, it is not possible to connect to a signal in this way in some cases, such as when:</p>
<ul>
<li>Multiple connections to the same signal are required</li>
<li>Creating connections outside the scope of the signal sender</li>
<li>Connecting to targets not defined in QML</li>
</ul>
<p>When any of these are needed, the Connections type can be used instead.</p>
<p>For example, the above code can be changed to use a Connections object, like this:</p>
<pre class="qml"><span class="type">MouseArea</span> {
<span class="type"><a href="index.html">Connections</a></span> {
<span class="name">onClicked</span>: <span class="name">foo</span>(<span class="name">parameters</span>)
}
}</pre>
<p>More generally, the Connections object can be a child of some object other than the sender of the signal:</p>
<pre class="qml"><span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">area</span>
}
<span class="comment">// ...</span></pre>
<pre class="qml"><span class="type"><a href="index.html">Connections</a></span> {
<span class="name">target</span>: <span class="name">area</span>
<span class="name">onClicked</span>: <span class="name">foo</span>(<span class="name">parameters</span>)
}</pre>
<p><b>See also </b><a href="QtQml.qtqml-index.md">Qt QML</a>.</p>
<!-- @@@Connections -->
<h2>Property Documentation</h2>
<!-- $$$ignoreUnknownSignals -->
<table class="qmlname"><tr valign="top" id="ignoreUnknownSignals-prop"><td class="tblQmlPropNode"><p><span class="name">ignoreUnknownSignals</span> : <span class="type">bool</span></p></td></tr></table><p>Normally, a connection to a non-existent signal produces runtime errors.</p>
<p>If this property is set to <code>true</code>, such errors are ignored. This is useful if you intend to connect to different types of objects, handling a different set of signals for each object.</p>
<!-- @@@ignoreUnknownSignals -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds the object that sends the signal.</p>
<p>If this property is not set, the <code>target</code> defaults to the parent of the Connection.</p>
<p>If set to null, no connection is made and any signal handlers are ignored until the target is not null.</p>
<!-- @@@target -->
<br/>
