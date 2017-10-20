---
Title: QtQml.QtObject
---

# QtQml.QtObject

<span class="subtitle"></span>
<!-- $$$QtObject-brief -->
<p>A basic QML type More...</p>
<!-- @@@QtObject -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#objectName-prop">objectName</a></b></b> : string</li>
</ul>
<!-- $$$QtObject-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">QtObject</a> type is a non-visual element which contains only the <a href="#objectName-prop">objectName</a> property.</p>
<p>It can be useful to create a <a href="index.html">QtObject</a> if you need an extremely lightweight type to enclose a set of custom properties:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="type"><a href="index.html">QtObject</a></span> {
<span class="name">id</span>: <span class="name">attributes</span>
property <span class="type">string</span> <span class="name">name</span>
property <span class="type">int</span> <span class="name">size</span>
property <span class="type">variant</span> <span class="name">attributes</span>
}
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">attributes</span>.<span class="name">name</span> }
}</pre>
<p>It can also be useful for C++ integration, as it is just a plain QObject. See the QObject documentation for further details.</p>
<!-- @@@QtObject -->
<h2>Property Documentation</h2>
<!-- $$$objectName -->
<table class="qmlname"><tr valign="top" id="objectName-prop"><td class="tblQmlPropNode"><p><span class="name">objectName</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the QObject::objectName for this specific object instance.</p>
<p>This allows a C++ application to locate an item within a QML component using the QObject::findChild() method. For example, the following C++ application locates the child Rectangle item and dynamically changes its <code>color</code> value:</p>
<pre class="qml"><span class="comment">// MyRect.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Rectangle</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">objectName</span>: <span class="string">&quot;myRect&quot;</span>
}
}</pre>
<pre class="cpp"><span class="comment">// main.cpp</span>
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyRect.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="type">QQuickItem</span> <span class="operator">*</span>item <span class="operator">=</span> view<span class="operator">.</span>rootObject()<span class="operator">-</span><span class="operator">&gt;</span>findChild<span class="operator">&lt;</span><span class="type">QQuickItem</span><span class="operator">*</span><span class="operator">&gt;</span>(<span class="string">&quot;myRect&quot;</span>);
<span class="keyword">if</span> (item)
item<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;color&quot;</span><span class="operator">,</span> <span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>yellow));</pre>
<!-- @@@objectName -->
<br/>
