---
Title: QtQuick.PathSvg
---

# QtQuick.PathSvg

<span class="subtitle"></span>
<!-- $$$PathSvg-brief -->
<p>Defines a path using an SVG path data string More...</p>
<!-- @@@PathSvg -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#path-prop">path</a></b></b> : string</li>
</ul>
<!-- $$$PathSvg-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following QML produces the path shown below:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="../../../../media/declarative-pathsvg.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">50</span>; <span class="name">startY</span>: <span class="number">50</span>
<span class="type"><a href="index.html">PathSvg</a></span> { <span class="name">path</span>: <span class="string">&quot;L 150 50 L 100 150 z&quot;</span> }
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathArc.md">PathArc</a>, and <a href="QtQuick.PathCurve.md">PathCurve</a>.</p>
<!-- @@@PathSvg -->
<h2>Property Documentation</h2>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">string</span></p></td></tr></table><p>The SVG path data string specifying the path.</p>
<p>See <a href="http://www.w3.org/TR/SVG/paths.html#PathData">W3C SVG Path Data</a> for more details on this format.</p>
<!-- @@@path -->
<br/>
