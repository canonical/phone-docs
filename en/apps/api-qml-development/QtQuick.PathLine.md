---
Title: QtQuick.PathLine
---

# QtQuick.PathLine

<span class="subtitle"></span>
<!-- $$$PathLine-brief -->
<p>Defines a straight line More...</p>
<!-- @@@PathLine -->
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
<!-- $$$PathLine-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The example below creates a path consisting of a straight line from 0,100 to 200,100:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathLine</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">100</span> }
}</pre>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathArc.md">PathArc</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@PathLine -->
<h2>Property Documentation</h2>
<!-- $$$relativeX -->
<table class="qmlname"><tr valign="top" id="relativeX-prop"><td class="tblQmlPropNode"><p><span class="name">relativeX</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the line relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeX -->
<br/>
<!-- $$$relativeY -->
<table class="qmlname"><tr valign="top" id="relativeY-prop"><td class="tblQmlPropNode"><p><span class="name">relativeY</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the line relative to its start.</p>
<p>If both a relative and absolute end position are specified for a single axis, the relative position will be used.</p>
<p>Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.</p>
<p><b>See also </b><a href="#x-prop">x</a> and <a href="#y-prop">y</a>.</p>
<!-- @@@relativeY -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the line.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the end point of the line.</p>
<p><b>See also </b><a href="#relativeX-prop">relativeX</a> and <a href="#relativeY-prop">relativeY</a>.</p>
<!-- @@@y -->
<br/>
