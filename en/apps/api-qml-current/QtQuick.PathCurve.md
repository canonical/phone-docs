---
Title: QtQuick.PathCurve
---

# QtQuick.PathCurve

<span class="subtitle"></span>
<!-- $$$PathCurve-brief -->
<p>Defines a point on a Catmull-Rom curve More...</p>
<!-- @@@PathCurve -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#relativeX-prop">relativeX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeY-prop">relativeY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$PathCurve-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PathCurve</a> provides an easy way to specify a curve passing directly through a set of points. Typically multiple PathCurves are used in a series, as the following example demonstrates:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Canvas.md">Canvas</a></span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">contextType</span>: <span class="string">&quot;2d&quot;</span>
<span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">id</span>: <span class="name">myPath</span>
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">75</span>; <span class="name">y</span>: <span class="number">75</span> }
<span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">150</span> }
<span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">325</span>; <span class="name">y</span>: <span class="number">25</span> }
<span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">400</span>; <span class="name">y</span>: <span class="number">100</span> }
}
<span class="name">onPaint</span>: {
<span class="name">context</span>.<span class="name">strokeStyle</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">.4</span>,<span class="number">.6</span>,<span class="number">.8</span>);
<span class="name">context</span>.<span class="name">path</span> <span class="operator">=</span> <span class="name">myPath</span>;
<span class="name">context</span>.<span class="name">stroke</span>();
}
}</pre>
<p>This example produces the following path (with the starting point and <a href="index.html">PathCurve</a> points highlighted in red):</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/26204aee-225c-4e0c-abd7-29cb2a5e7452-../QtQuick.PathCurve/images/declarative-pathcurve.png" alt="" /></p><p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathArc.md">PathArc</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@PathCurve -->
<h2>Property Documentation</h2>
<!-- $$$relativeX -->
<table class="qmlname"><tr valign="top" id="relativeX-prop"><td class="tblQmlPropNode"><p><span class="name">relativeX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the curve relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeX -->
<br/>
<!-- $$$relativeY -->
<table class="qmlname"><tr valign="top" id="relativeY-prop"><td class="tblQmlPropNode"><p><span class="name">relativeY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the curve relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeY -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the curve.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the curve.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@y -->
<br/>
