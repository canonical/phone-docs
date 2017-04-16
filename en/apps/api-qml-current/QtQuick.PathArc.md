---
Title: QtQuick.PathArc
---

# QtQuick.PathArc

<span class="subtitle"></span>
<!-- $$$PathArc-brief -->
<p>Defines an arc with the given radius More...</p>
<!-- @@@PathArc -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#radiusX-prop">radiusX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#radiusY-prop">radiusY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeX-prop">relativeX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeY-prop">relativeY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#useLargeArc-prop">useLargeArc</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$PathArc-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PathArc</a> provides a simple way of specifying an arc that ends at a given position and uses the specified radius. It is modeled after the SVG elliptical arc command.</p>
<p>The following QML produces the path shown below:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/357b1e11-01fb-4ecc-a979-faeadc469fba-../QtQuick.PathArc/images/declarative-patharc.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">100</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">100</span>; <span class="name">radiusY</span>: <span class="number">100</span>
<span class="name">useLargeArc</span>: <span class="number">true</span>
}
}</pre>
</td></tr>
</table>
<p>Note that a single <a href="index.html">PathArc</a> cannot be used to specify a circle. Instead, you can use two <a href="index.html">PathArc</a> elements, each specifying half of the circle.</p>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@PathArc -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>Defines the direction of the arc. Possible values are <a href="index.html">PathArc</a>.Clockwise (default) and <a href="index.html">PathArc</a>.Counterclockwise.</p>
<p>The following QML can produce either of the two illustrated arcs below by changing the value of direction.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6a525e6b-d3f1-4030-bac6-995c24fa8a7c-../QtQuick.PathArc/images/declarative-arcdirection.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">50</span>; <span class="name">startY</span>: <span class="number">50</span>
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">50</span>
<span class="name">radiusX</span>: <span class="number">75</span>; <span class="name">radiusY</span>: <span class="number">50</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#useLargeArc-prop">useLargeArc</a>.</p>
<!-- @@@direction -->
<br/>
<!-- $$$radiusX -->
<table class="qmlname"><tr valign="top" id="radiusX-prop"><td class="tblQmlPropNode"><p><span class="name">radiusX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the radius of the arc.</p>
<p>The following QML demonstrates how different radius values can be used to change the shape of the arc:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/cfb4d3d4-88d2-4178-a053-8aa1af61af6a-../QtQuick.PathArc/images/declarative-arcradius.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">15</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">25</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">50</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">50</span>; <span class="name">radiusY</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
</table>
<!-- @@@radiusX -->
<br/>
<!-- $$$radiusY -->
<table class="qmlname"><tr valign="top" id="radiusY-prop"><td class="tblQmlPropNode"><p><span class="name">radiusY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the radius of the arc.</p>
<p>The following QML demonstrates how different radius values can be used to change the shape of the arc:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/419ab223-a5a5-4e03-98c1-ee6b770f74fd-../QtQuick.PathArc/images/declarative-arcradius.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">15</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">25</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">50</span>
}
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
<span class="name">radiusX</span>: <span class="number">50</span>; <span class="name">radiusY</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
</table>
<!-- @@@radiusY -->
<br/>
<!-- $$$relativeX -->
<table class="qmlname"><tr valign="top" id="relativeX-prop"><td class="tblQmlPropNode"><p><span class="name">relativeX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the arc relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeX -->
<br/>
<!-- $$$relativeY -->
<table class="qmlname"><tr valign="top" id="relativeY-prop"><td class="tblQmlPropNode"><p><span class="name">relativeY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the arc relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeY -->
<br/>
<!-- $$$useLargeArc -->
<table class="qmlname"><tr valign="top" id="useLargeArc-prop"><td class="tblQmlPropNode"><p><span class="name">useLargeArc</span> : <span class="type">bool</span></p></td></tr></table><p>Whether to use a large arc as defined by the arc points.</p>
<p>Given fixed start and end positions, radius, and direction, there are two possible arcs that can fit the data. useLargeArc is used to distinguish between these. For example, the following QML can produce either of the two illustrated arcs below by changing the value of useLargeArc.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/e46afb61-47fc-4f45-bde1-071b7c831c27-../QtQuick.PathArc/images/declarative-largearc.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathArc</a></span> {
<span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">200</span>
<span class="name">radiusX</span>: <span class="number">100</span>; <span class="name">radiusY</span>: <span class="number">100</span>
<span class="name">direction</span>: <span class="name">PathArc</span>.<span class="name">Clockwise</span>
}
}</pre>
</td></tr>
</table>
<p>The default value is false.</p>
<!-- @@@useLargeArc -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the arc.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the arc.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@y -->
<br/>
