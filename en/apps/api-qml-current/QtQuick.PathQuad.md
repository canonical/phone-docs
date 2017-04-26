---
Title: QtQuick.PathQuad
---

# QtQuick.PathQuad

<span class="subtitle"></span>
<!-- $$$PathQuad-brief -->
<p>Defines a quadratic Bezier curve with a control point More...</p>
<!-- @@@PathQuad -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#controlX-prop">controlX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#controlY-prop">controlY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControlX-prop">relativeControlX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeControlY-prop">relativeControlY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeX-prop">relativeX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#relativeY-prop">relativeY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$PathQuad-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following QML produces the path shown below:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/87fee07c-74a9-4b62-9410-d132b86f042c-../QtQuick.PathQuad/images/declarative-pathquad.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="index.html">PathQuad</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">100</span>; <span class="name">controlY</span>: <span class="number">150</span> }
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathArc.md">PathArc</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@PathQuad -->
<h2>Property Documentation</h2>
<!-- $$$controlX -->
<table class="qmlname"><tr valign="top" id="controlX-prop"><td class="tblQmlPropNode"><p><span class="name">controlX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the control point.</p>
<!-- @@@controlX -->
<br/>
<!-- $$$controlY -->
<table class="qmlname"><tr valign="top" id="controlY-prop"><td class="tblQmlPropNode"><p><span class="name">controlY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the control point.</p>
<!-- @@@controlY -->
<br/>
<!-- $$$relativeControlX -->
<table class="qmlname"><tr valign="top" id="relativeControlX-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControlX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the control point relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control x and an absolute control y.</p>
<p><b>See also </b><a href="#controlX-prop">controlX</a> and <a href="#controlY-prop">controlY</a>.</p>
<!-- @@@relativeControlX -->
<br/>
<!-- $$$relativeControlY -->
<table class="qmlname"><tr valign="top" id="relativeControlY-prop"><td class="tblQmlPropNode"><p><span class="name">relativeControlY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the position of the control point relative to the curve's start.</p>
<p>If both a relative and absolute control position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative control x and an absolute control y.</p>
<p><b>See also </b><a href="#controlX-prop">controlX</a> and <a href="#controlY-prop">controlY</a>.</p>
<!-- @@@relativeControlY -->
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
