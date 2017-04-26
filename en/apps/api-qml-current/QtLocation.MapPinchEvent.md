---
Title: QtLocation.MapPinchEvent
---

# QtLocation.MapPinchEvent

<span class="subtitle"></span>
<!-- $$$MapPinchEvent-brief -->
<p>MapPinchEvent type provides basic information about pinch event. More...</p>
<!-- @@@MapPinchEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#center-prop">center</a></b></b> : QPoint</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#point1-prop">point1</a></b></b> : QPoint</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#point2-prop">point2</a></b></b> : QPoint</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPinchEvent.md#pointCount-prop">pointCount</a></b></b> : int</li>
</ul>
<!-- $$$MapPinchEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="..//QtLocation.MapPinchEvent.md">MapPinchEvent</a> type provides basic information about pinch event. They are present in handlers of MapPinch (for example pinchStarted/pinchUpdated). Events are only guaranteed to be valid for the duration of the handler.</p>
<p>Except for the <a href="..//QtLocation.MapPinchEvent.md#accepted-prop">accepted</a> property, all properties are read-only.</p>
<h3 >Example Usage</h3>
<p>The following example enables the pinch gesture on a map and reacts to the finished event.</p>
<pre class="cpp">Map {
id: map
gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
gesture<span class="operator">.</span>onPinchFinished:{
var coordinate1 <span class="operator">=</span> map<span class="operator">.</span>toCoordinate(gesture<span class="operator">.</span>point1)
var coordinate2 <span class="operator">=</span> map<span class="operator">.</span>toCoordinate(gesture<span class="operator">.</span>point2)
console<span class="operator">.</span>log(<span class="string">&quot;Pinch started at:&quot;</span>)
console<span class="operator">.</span>log(<span class="string">&quot;        Points (&quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point1<span class="operator">.</span>x <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point1<span class="operator">.</span>y <span class="operator">+</span> <span class="string">&quot;) - (&quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point2<span class="operator">.</span>x <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> gesture<span class="operator">.</span>point2<span class="operator">.</span>y <span class="operator">+</span> <span class="string">&quot;)&quot;</span>)
console<span class="operator">.</span>log(<span class="string">&quot;   Coordinates (&quot;</span> <span class="operator">+</span> coordinate1<span class="operator">.</span>latitude <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> coordinate1<span class="operator">.</span>longitude <span class="operator">+</span> <span class="string">&quot;) - (&quot;</span> <span class="operator">+</span> coordinate2<span class="operator">.</span>latitude <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> coordinate2<span class="operator">.</span>longitude <span class="operator">+</span> <span class="string">&quot;)&quot;</span>)
}
}</pre>
<!-- @@@MapPinchEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting this property to false in the <code>MapPinch::onPinchStarted</code> handler will result in no further pinch events being generated, and the gesture ignored.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>This read-only property holds the current angle between the two points in the range -180 to 180. Positive values for the angles mean counter-clockwise while negative values mean the clockwise direction. Zero degrees is at the 3 o'clock position.</p>
<!-- @@@angle -->
<br/>
<!-- $$$center -->
<table class="qmlname"><tr valign="top" id="center-prop"><td class="tblQmlPropNode"><p><span class="name">center</span> : <span class="type">QPoint</span></p></td></tr></table><p>This read-only property holds the current center point.</p>
<!-- @@@center -->
<br/>
<!-- $$$point1 -->
<table class="qmlname"><tr valign="top" id="point1-prop"><td class="tblQmlPropNode"><p><span class="name">point1</span> : <span class="type">QPoint</span></p></td></tr></table><p>These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.</p>
<!-- @@@point1 -->
<br/>
<!-- $$$point2 -->
<table class="qmlname"><tr valign="top" id="point2-prop"><td class="tblQmlPropNode"><p><span class="name">point2</span> : <span class="type">QPoint</span></p></td></tr></table><p>These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.</p>
<!-- @@@point2 -->
<br/>
<!-- $$$pointCount -->
<table class="qmlname"><tr valign="top" id="pointCount-prop"><td class="tblQmlPropNode"><p><span class="name">pointCount</span> : <span class="type">int</span></p></td></tr></table><p>This read-only property holds the number of points currently touched. The MapPinch will not react until two touch points have initiated a gesture, but will remain active until all touch points have been released.</p>
<!-- @@@pointCount -->
<br/>
