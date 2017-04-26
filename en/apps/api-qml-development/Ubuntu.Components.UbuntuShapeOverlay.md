---
Title: Ubuntu.Components.UbuntuShapeOverlay
---

# Ubuntu.Components.UbuntuShapeOverlay

<span class="subtitle"></span>
<!-- $$$UbuntuShapeOverlay-brief -->
<p>Extended UbuntuShape adding a colored overlay layer. More...</p>
<!-- @@@UbuntuShapeOverlay -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#overlayColor-prop">overlayColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#overlayRect-prop">overlayRect</a></b></b> : rect</li>
</ul>
<!-- $$$UbuntuShapeOverlay-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">UbuntuShapeOverlay</a> is a rounded rectangle (based on a <a href="https://en.wikipedia.org/wiki/Squircle">squircle</a>) containing a set of layers composed, from top to bottom, of a colored rectangle overlay, an optional source image and a background color (solid or linear gradient). Different properties allow to change the look of the shape.</p>
<p>Example:</p>
<pre class="qml">import Ubuntu.Components 1.2
<span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
<span class="name">backgroundColor</span>: <span class="string">&quot;white&quot;</span>
<span class="name">overlayColor</span>: <span class="string">&quot;black&quot;</span>
<span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">0.25</span>, <span class="number">0.25</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
}</pre>
<!-- @@@UbuntuShapeOverlay -->
<h2>Property Documentation</h2>
<!-- $$$overlayColor -->
<table class="qmlname"><tr valign="top" id="overlayColor-prop"><td class="tblQmlPropNode"><p><span class="name">overlayColor</span> : <span class="type">color</span></p></td></tr></table><p>This property sets the color of the overlay rectangle defined by <a href="#overlayRect-prop">overlayRect</a>. The default value is transparent black.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@overlayColor -->
<br/>
<!-- $$$overlayRect -->
<table class="qmlname"><tr valign="top" id="overlayRect-prop"><td class="tblQmlPropNode"><p><span class="name">overlayRect</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-rect.html">rect</a></span></p></td></tr></table><p>This property sets the overlay rectangle. The default value is the empty rectangle.</p>
<p>It is defined by a position and a size in normalized item coordinates (in the range between 0 and 1) with the origin at the top-left corner. An overlay covering the bottom part and starting at the vertical center can be done like that:</p>
<pre class="qml"><span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">overlayColor</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.0</span>, <span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
<span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">1.0</span>, <span class="number">0.5</span>)
}</pre>
<p>Converting a position and a size in pixels to normalized item coordinates can be done with a division by the size. Here is an equivalent of the previous code sample:</p>
<pre class="qml"><span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">overlayColor</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.0</span>, <span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
<span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">100.0</span><span class="operator">/</span><span class="name">width</span>, <span class="number">100.0</span><span class="operator">/</span><span class="name">height</span>, <span class="number">200.0</span><span class="operator">/</span><span class="name">width</span>, <span class="number">100.0</span><span class="operator">/</span><span class="name">height</span>)
}</pre>
<p>A geometry exceeding the item area is cropped.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@overlayRect -->
<br/>
