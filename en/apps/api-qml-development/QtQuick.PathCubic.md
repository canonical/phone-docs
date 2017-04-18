---
Title: QtQuick.PathCubic
---

# QtQuick.PathCubic

<span class="subtitle"></span>
<!-- $$$PathCubic-brief -->
<p>Defines a cubic Bezier curve with two control points More...</p>
<!-- @@@PathCubic -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#control1X-prop">control1X</a></b></b> : real</li>
<li class="fn"><b><b><a href="#control1Y-prop">control1Y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#control2X-prop">control2X</a></b></b> : real</li>
<li class="fn"><b><b><a href="#control2Y-prop">control2Y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControl1X-prop">relativeControl1X</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControl1Y-prop">relativeControl1Y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControl2X-prop">relativeControl2X</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControl2Y-prop">relativeControl2Y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeX-prop">relativeX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeY-prop">relativeY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$PathCubic-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following QML produces the path shown below:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="../../../../media/declarative-pathcubic.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="index.html">PathCubic</a></span> {
<span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>
<span class="name">control1X</span>: -<span class="number">10</span>; <span class="name">control1Y</span>: <span class="number">90</span>
<span class="name">control2X</span>: <span class="number">210</span>; <span class="name">control2Y</span>: <span class="number">90</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathArc.md">PathArc</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@PathCubic -->
<h2>Property Documentation</h2>
<!-- $$$control1X -->
<table class="qmlname"><tr valign="top" id="control1X-prop"><td class="tblQmlPropNode"><p><span class="name">control1X</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the first control point.</p>
<!-- @@@control1X -->
<br/>
<!-- $$$control1Y -->
<table class="qmlname"><tr valign="top" id="control1Y-prop"><td class="tblQmlPropNode"><p><span class="name">control1Y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the first control point.</p>
<!-- @@@control1Y -->
<br/>
<!-- $$$control2X -->
<table class="qmlname"><tr valign="top" id="control2X-prop"><td class="tblQmlPropNode"><p><span class="name">control2X</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the second control point.</p>
<!-- @@@control2X -->
<br/>
<!-- $$$control2Y -->
<table class="qmlname"><tr valign="top" id="control2Y-prop"><td class="tblQmlPropNode"><p><span class="name">control2Y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the second control point.</p>
<!-- @@@control2Y -->
<br/>
<!-- $$$relativeControl1X -->
<table class="qmlname"><tr valign="top" id="relativeControl1X-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControl1X</span> : <span class="type">real</span></p></td></tr></table><p>Defines the positions of the control points relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.</p>
<p><b>See also </b><a href="#control1X-prop">control1X</a>, <a href="#control1Y-prop">control1Y</a>, <a href="#control2X-prop">control2X</a>, and <a href="#control2Y-prop">control2Y</a>.</p>
<!-- @@@relativeControl1X -->
<br/>
<!-- $$$relativeControl1Y -->
<table class="qmlname"><tr valign="top" id="relativeControl1Y-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControl1Y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the positions of the control points relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.</p>
<p><b>See also </b><a href="#control1X-prop">control1X</a>, <a href="#control1Y-prop">control1Y</a>, <a href="#control2X-prop">control2X</a>, and <a href="#control2Y-prop">control2Y</a>.</p>
<!-- @@@relativeControl1Y -->
<br/>
<!-- $$$relativeControl2X -->
<table class="qmlname"><tr valign="top" id="relativeControl2X-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControl2X</span> : <span class="type">real</span></p></td></tr></table><p>Defines the positions of the control points relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.</p>
<p><b>See also </b><a href="#control1X-prop">control1X</a>, <a href="#control1Y-prop">control1Y</a>, <a href="#control2X-prop">control2X</a>, and <a href="#control2Y-prop">control2Y</a>.</p>
<!-- @@@relativeControl2X -->
<br/>
<!-- $$$relativeControl2Y -->
<table class="qmlname"><tr valign="top" id="relativeControl2Y-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControl2Y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the positions of the control points relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.</p>
<p><b>See also </b><a href="#control1X-prop">control1X</a>, <a href="#control1Y-prop">control1Y</a>, <a href="#control2X-prop">control2X</a>, and <a href="#control2Y-prop">control2Y</a>.</p>
<!-- @@@relativeControl2Y -->
<br/>
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
