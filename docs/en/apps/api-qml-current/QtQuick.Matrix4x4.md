---
Title: QtQuick.Matrix4x4
---

# QtQuick.Matrix4x4

<span class="subtitle"></span>
<!-- $$$Matrix4x4-brief -->
<p>Provides a way to apply a 4x4 tranformation matrix to an Item More...</p>
<!-- @@@Matrix4x4 -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#matrix-prop">matrix</a></b></b> : QMatrix4x4</li>
</ul>
<!-- $$$Matrix4x4-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Matrix4x4 type provides a way to apply a transformation to an <a href="QtQuick.Item.md">Item</a> through a 4x4 matrix.</p>
<p>It allows for a combination of rotation, scale, translatation and shearing by using just one tranformation provided in a 4x4-matrix.</p>
<p>The following example rotates a Rectangle 45 degress (PI/4):</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">transform</span>: <span class="name">Matrix4x4</span> {
property <span class="type">real</span> <span class="name">a</span>: <span class="name">Math</span>.<span class="name">PI</span> <span class="operator">/</span> <span class="number">4</span>
<span class="name">matrix</span>: <span class="name">Qt</span>.<span class="name">matrix4x4</span>(<span class="name">Math</span>.<span class="name">cos</span>(<span class="name">a</span>), -<span class="name">Math</span>.<span class="name">sin</span>(<span class="name">a</span>), <span class="number">0</span>, <span class="number">0</span>,
<span class="name">Math</span>.<span class="name">sin</span>(<span class="name">a</span>),  <span class="name">Math</span>.<span class="name">cos</span>(<span class="name">a</span>), <span class="number">0</span>, <span class="number">0</span>,
<span class="number">0</span>,           <span class="number">0</span>,            <span class="number">1</span>, <span class="number">0</span>,
<span class="number">0</span>,           <span class="number">0</span>,            <span class="number">0</span>, <span class="number">1</span>)
}
}</pre>
<!-- @@@Matrix4x4 -->
<h2>Property Documentation</h2>
<!-- $$$matrix -->
<table class="qmlname"><tr valign="top" id="matrix-prop"><td class="tblQmlPropNode"><p><span class="name">matrix</span> : <span class="type">QMatrix4x4</span></p></td></tr></table><p>4x4-matrix which will be used in the tranformation of an <a href="QtQuick.Item.md">Item</a></p>
<!-- @@@matrix -->
<br/>
