---
Title: QtQuick.PinchEvent
---

# QtQuick.PinchEvent

<span class="subtitle"></span>
<!-- $$$PinchEvent-brief -->
<p>For specifying information about a pinch event More...</p>
<!-- @@@PinchEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#center-prop">center</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#point1-prop">point1</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#point2-prop">point2</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#pointCount-prop">pointCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#previousAngle-prop">previousAngle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#previousCenter-prop">previousCenter</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#previousScale-prop">previousScale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#scale-prop">scale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startCenter-prop">startCenter</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#startPoint1-prop">startPoint1</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#startPoint2-prop">startPoint2</a></b></b> : QPointF</li>
</ul>
<!-- $$$PinchEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>The PinchEvent type was added in QtQuick 1.1</b></p>
<p>The <code>center</code>, <code>startCenter</code>, <code>previousCenter</code> properties provide the center position between the two touch points.</p>
<p>The <code>scale</code> and <code>previousScale</code> properties provide the scale factor.</p>
<p>The <code>angle</code>, <code>previousAngle</code> and <code>rotation</code> properties provide the angle between the two points and the amount of rotation.</p>
<p>The <code>point1</code>, <code>point2</code>, <code>startPoint1</code>, <code>startPoint2</code> properties provide the positions of the touch points.</p>
<p>The <code>accepted</code> property may be set to false in the <code>onPinchStarted</code> handler if the gesture should not be handled.</p>
<p><b>See also </b><a href="QtQuick.PinchArea.md">PinchArea</a>.</p>
<!-- @@@PinchEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting this property to false in the <code>PinchArea::onPinchStarted</code> handler will result in no further pinch events being generated, and the gesture ignored.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><code>angle</code> is the current angle between the two points in the range -180 to 180.</li>
<li><code>previousAngle</code> is the angle of the previous event.</li>
<li><code>rotation</code> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <code>0.0</code>.</p>
<!-- @@@angle -->
<br/>
<!-- $$$center -->
<table class="qmlname"><tr valign="top" id="center-prop"><td class="tblQmlPropNode"><p><span class="name">center</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><code>center</code> is the current center point</li>
<li><code>previousCenter</code> is the center point of the previous event.</li>
<li><code>startCenter</code> is the center point when the gesture began</li>
</ul>
<!-- @@@center -->
<br/>
<!-- $$$point1 -->
<table class="qmlname"><tr valign="top" id="point1-prop"><td class="tblQmlPropNode"><p><span class="name">point1</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><code>point1</code> and <code>point2</code> hold the current positions of the points.</li>
<li><code>startPoint1</code> and <code>startPoint2</code> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@point1 -->
<br/>
<!-- $$$point2 -->
<table class="qmlname"><tr valign="top" id="point2-prop"><td class="tblQmlPropNode"><p><span class="name">point2</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><code>point1</code> and <code>point2</code> hold the current positions of the points.</li>
<li><code>startPoint1</code> and <code>startPoint2</code> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@point2 -->
<br/>
<!-- $$$pointCount -->
<table class="qmlname"><tr valign="top" id="pointCount-prop"><td class="tblQmlPropNode"><p><span class="name">pointCount</span> : <span class="type">int</span></p></td></tr></table><p>Holds the number of points currently touched. The <a href="QtQuick.PinchArea.md">PinchArea</a> will not react until two touch points have initited a gesture, but will remain active until all touch points have been released.</p>
<!-- @@@pointCount -->
<br/>
<!-- $$$previousAngle -->
<table class="qmlname"><tr valign="top" id="previousAngle-prop"><td class="tblQmlPropNode"><p><span class="name">previousAngle</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><code>angle</code> is the current angle between the two points in the range -180 to 180.</li>
<li><code>previousAngle</code> is the angle of the previous event.</li>
<li><code>rotation</code> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <code>0.0</code>.</p>
<!-- @@@previousAngle -->
<br/>
<!-- $$$previousCenter -->
<table class="qmlname"><tr valign="top" id="previousCenter-prop"><td class="tblQmlPropNode"><p><span class="name">previousCenter</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><code>center</code> is the current center point</li>
<li><code>previousCenter</code> is the center point of the previous event.</li>
<li><code>startCenter</code> is the center point when the gesture began</li>
</ul>
<!-- @@@previousCenter -->
<br/>
<!-- $$$previousScale -->
<table class="qmlname"><tr valign="top" id="previousScale-prop"><td class="tblQmlPropNode"><p><span class="name">previousScale</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the scale factor determined by the change in distance between the two touch points.</p>
<ul>
<li><code>scale</code> is the current scale factor.</li>
<li><code>previousScale</code> is the scale factor of the previous event.</li>
</ul>
<p>When a pinch gesture is started, the scale is <code>1.0</code>.</p>
<!-- @@@previousScale -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top" id="rotation-prop"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><code>angle</code> is the current angle between the two points in the range -180 to 180.</li>
<li><code>previousAngle</code> is the angle of the previous event.</li>
<li><code>rotation</code> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <code>0.0</code>.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top" id="scale-prop"><td class="tblQmlPropNode"><p><span class="name">scale</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the scale factor determined by the change in distance between the two touch points.</p>
<ul>
<li><code>scale</code> is the current scale factor.</li>
<li><code>previousScale</code> is the scale factor of the previous event.</li>
</ul>
<p>When a pinch gesture is started, the scale is <code>1.0</code>.</p>
<!-- @@@scale -->
<br/>
<!-- $$$startCenter -->
<table class="qmlname"><tr valign="top" id="startCenter-prop"><td class="tblQmlPropNode"><p><span class="name">startCenter</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><code>center</code> is the current center point</li>
<li><code>previousCenter</code> is the center point of the previous event.</li>
<li><code>startCenter</code> is the center point when the gesture began</li>
</ul>
<!-- @@@startCenter -->
<br/>
<!-- $$$startPoint1 -->
<table class="qmlname"><tr valign="top" id="startPoint1-prop"><td class="tblQmlPropNode"><p><span class="name">startPoint1</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><code>point1</code> and <code>point2</code> hold the current positions of the points.</li>
<li><code>startPoint1</code> and <code>startPoint2</code> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@startPoint1 -->
<br/>
<!-- $$$startPoint2 -->
<table class="qmlname"><tr valign="top" id="startPoint2-prop"><td class="tblQmlPropNode"><p><span class="name">startPoint2</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><code>point1</code> and <code>point2</code> hold the current positions of the points.</li>
<li><code>startPoint1</code> and <code>startPoint2</code> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@startPoint2 -->
<br/>
