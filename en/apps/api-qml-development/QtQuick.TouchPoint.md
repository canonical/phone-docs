---
Title: QtQuick.TouchPoint
---

# QtQuick.TouchPoint

<span class="subtitle"></span>
<!-- $$$TouchPoint-brief -->
<p>Describes a touch point in a MultiPointTouchArea More...</p>
<!-- @@@TouchPoint -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#area-prop">area</a></b></b> : rectangle</li>
<li class="fn"><b><b><a href="#pointId-prop">pointId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressure-prop">pressure</a></b></b> : real</li>
<li class="fn"><b><b><a href="#previousX-prop">previousX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#previousY-prop">previousY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sceneX-prop">sceneX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sceneY-prop">sceneY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startX-prop">startX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startY-prop">startY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : vector2d</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$TouchPoint-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">TouchPoint</a> type contains information about a touch point, such as the current position, pressure, and area.</p>
<!-- @@@TouchPoint -->
<h2>Property Documentation</h2>
<!-- $$$area -->
<table class="qmlname"><tr valign="top" id="area-prop"><td class="tblQmlPropNode"><p><span class="name">area</span> : <span class="type">rectangle</span></p></td></tr></table><p>These properties hold additional information about the current state of the touch point.</p>
<ul>
<li><code>pressure</code> is a value in the range of 0.0 to 1.0&#x2e;</li>
<li><code>velocity</code> is a vector with magnitude reported in pixels per second.</li>
<li><code>area</code> is a rectangle covering the area of the touch point, centered on the current position of the touch point.</li>
</ul>
<p>Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.</p>
<!-- @@@area -->
<br/>
<!-- $$$pointId -->
<table class="qmlname"><tr valign="top" id="pointId-prop"><td class="tblQmlPropNode"><p><span class="name">pointId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the point id of the touch point.</p>
<p>Each touch point within a <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> will have a unique id.</p>
<!-- @@@pointId -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the touch point is currently pressed.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$pressure -->
<table class="qmlname"><tr valign="top" id="pressure-prop"><td class="tblQmlPropNode"><p><span class="name">pressure</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold additional information about the current state of the touch point.</p>
<ul>
<li><code>pressure</code> is a value in the range of 0.0 to 1.0&#x2e;</li>
<li><code>velocity</code> is a vector with magnitude reported in pixels per second.</li>
<li><code>area</code> is a rectangle covering the area of the touch point, centered on the current position of the touch point.</li>
</ul>
<p>Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.</p>
<!-- @@@pressure -->
<br/>
<!-- $$$previousX -->
<table class="qmlname"><tr valign="top" id="previousX-prop"><td class="tblQmlPropNode"><p><span class="name">previousX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the previous position of the touch point.</p>
<!-- @@@previousX -->
<br/>
<!-- $$$previousY -->
<table class="qmlname"><tr valign="top" id="previousY-prop"><td class="tblQmlPropNode"><p><span class="name">previousY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the previous position of the touch point.</p>
<!-- @@@previousY -->
<br/>
<!-- $$$sceneX -->
<table class="qmlname"><tr valign="top" id="sceneX-prop"><td class="tblQmlPropNode"><p><span class="name">sceneX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the current position of the touch point in scene coordinates.</p>
<!-- @@@sceneX -->
<br/>
<!-- $$$sceneY -->
<table class="qmlname"><tr valign="top" id="sceneY-prop"><td class="tblQmlPropNode"><p><span class="name">sceneY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the current position of the touch point in scene coordinates.</p>
<!-- @@@sceneY -->
<br/>
<!-- $$$startX -->
<table class="qmlname"><tr valign="top" id="startX-prop"><td class="tblQmlPropNode"><p><span class="name">startX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the starting position of the touch point.</p>
<!-- @@@startX -->
<br/>
<!-- $$$startY -->
<table class="qmlname"><tr valign="top" id="startY-prop"><td class="tblQmlPropNode"><p><span class="name">startY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the starting position of the touch point.</p>
<!-- @@@startY -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">vector2d</span></p></td></tr></table><p>These properties hold additional information about the current state of the touch point.</p>
<ul>
<li><code>pressure</code> is a value in the range of 0.0 to 1.0&#x2e;</li>
<li><code>velocity</code> is a vector with magnitude reported in pixels per second.</li>
<li><code>area</code> is a rectangle covering the area of the touch point, centered on the current position of the touch point.</li>
</ul>
<p>Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.</p>
<!-- @@@velocity -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the current position of the touch point.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the current position of the touch point.</p>
<!-- @@@y -->
<br/>
