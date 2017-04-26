---
Title: QtQuick.PathInterpolator
---

# QtQuick.PathInterpolator

<span class="subtitle"></span>
<!-- $$$PathInterpolator-brief -->
<p>Specifies how to manually animate along a path More...</p>
<!-- @@@PathInterpolator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#path-prop">path</a></b></b> : Path</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$PathInterpolator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#pathinterpolator">PathInterpolator</a> provides <code>x</code>, <code>y</code>, and <code>angle</code> information for a particular <code>progress</code> along a path.</p>
<p>In the following example, we animate a green rectangle along a bezier path.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">400</span>
<span class="name">height</span>: <span class="number">400</span>
<span class="type"><a href="index.html">PathInterpolator</a></span> {
<span class="name">id</span>: <span class="name">motionPath</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.PathCubic.md">PathCubic</a></span> {
<span class="name">x</span>: <span class="number">350</span>; <span class="name">y</span>: <span class="number">350</span>
<span class="name">control1X</span>: <span class="number">350</span>; <span class="name">control1Y</span>: <span class="number">0</span>
<span class="name">control2X</span>: <span class="number">0</span>; <span class="name">control2Y</span>: <span class="number">350</span>
}
}
NumberAnimation on <span class="name">progress</span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">2000</span> }
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="comment">//bind our attributes to follow the path as progress changes</span>
<span class="name">x</span>: <span class="name">motionPath</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">motionPath</span>.<span class="name">y</span>
<span class="name">rotation</span>: <span class="name">motionPath</span>.<span class="name">angle</span>
}
}</pre>
<!-- @@@PathInterpolator -->
<h2>Property Documentation</h2>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the angle of the path tangent at <a href="#progress-prop">progress</a>.</p>
<p>Angles are reported clockwise, with zero degrees at the 3 o'clock position.</p>
<!-- @@@angle -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type"><a href="QtQuick.Path.md">Path</a></span></p></td></tr></table><p>This property holds the path to interpolate.</p>
<p>For more information on defining a path see the <a href="QtQuick.Path.md">Path</a> documentation.</p>
<!-- @@@path -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the current progress along the path.</p>
<p>Typical usage of <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#pathinterpolator">PathInterpolator</a> is to set the progress (often via a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>), and read the corresponding values for x, y, and angle (often via bindings to these values).</p>
<p>Progress ranges from 0.0 to 1.0&#x2e;</p>
<!-- @@@progress -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the position of the path at <a href="#progress-prop">progress</a>.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the position of the path at <a href="#progress-prop">progress</a>.</p>
<!-- @@@y -->
<br/>
