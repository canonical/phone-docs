---
Title: QtQuick.Path
---

# QtQuick.Path

<span class="subtitle"></span>
<!-- $$$Path-brief -->
<p>Defines a path for use by PathView More...</p>
<!-- @@@Path -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#closed-prop">closed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pathElements-prop">pathElements</a></b></b> : list&lt;PathElement&gt;</li>
<li class="fn"><b><b><a href="#startX-prop">startX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startY-prop">startY</a></b></b> : real</li>
</ul>
<!-- $$$Path-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Path is composed of one or more path segments - <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathArc.md">PathArc</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<p>The spacing of the items along the Path can be adjusted via a <a href="QtQuick.PathPercent.md">PathPercent</a> object.</p>
<p><a href="QtQuick.PathAttribute.md">PathAttribute</a> allows named attributes with values to be defined along the path.</p>
<p><b>See also </b><a href="QtQuick.PathView.md">PathView</a>, <a href="QtQuick.PathAttribute.md">PathAttribute</a>, <a href="QtQuick.PathPercent.md">PathPercent</a>, <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a>, <a href="QtQuick.PathCubic.md">PathCubic</a>, <a href="QtQuick.PathArc.md">PathArc</a>, <a href="QtQuick.PathCurve.md">PathCurve</a>, and <a href="QtQuick.PathSvg.md">PathSvg</a>.</p>
<!-- @@@Path -->
<h2>Property Documentation</h2>
<!-- $$$closed -->
<table class="qmlname"><tr valign="top" id="closed-prop"><td class="tblQmlPropNode"><p><span class="name">closed</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the start and end of the path are identical.</p>
<!-- @@@closed -->
<br/>
<!-- $$$pathElements -->
<table class="qmlname"><tr valign="top" id="pathElements-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">pathElements</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.PathElement.md">PathElement</a></span>&gt;</p></td></tr></table><p>This property holds the objects composing the path.</p>
<p>A path can contain the following path objects:</p>
<ul>
<li><a href="QtQuick.PathLine.md">PathLine</a> - a straight line to a given position.</li>
<li><a href="QtQuick.PathQuad.md">PathQuad</a> - a quadratic Bezier curve to a given position with a control point.</li>
<li><a href="QtQuick.PathCubic.md">PathCubic</a> - a cubic Bezier curve to a given position with two control points.</li>
<li><a href="QtQuick.PathArc.md">PathArc</a> - an arc to a given position with a radius.</li>
<li><a href="QtQuick.PathSvg.md">PathSvg</a> - a path specified as an SVG path data string.</li>
<li><a href="QtQuick.PathCurve.md">PathCurve</a> - a point on a Catmull-Rom curve.</li>
<li><a href="QtQuick.PathAttribute.md">PathAttribute</a> - an attribute at a given position in the path.</li>
<li><a href="QtQuick.PathPercent.md">PathPercent</a> - a way to spread out items along various segments of the path.</li>
</ul>
<pre class="qml">    <span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">delegate</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">0.3</span> }
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">0.5</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
}
}</pre>
<!-- @@@pathElements -->
<br/>
<!-- $$$startX -->
<table class="qmlname"><tr valign="top" id="startX-prop"><td class="tblQmlPropNode"><p><span class="name">startX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the starting position of the path.</p>
<!-- @@@startX -->
<br/>
<!-- $$$startY -->
<table class="qmlname"><tr valign="top" id="startY-prop"><td class="tblQmlPropNode"><p><span class="name">startY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the starting position of the path.</p>
<!-- @@@startY -->
<br/>
