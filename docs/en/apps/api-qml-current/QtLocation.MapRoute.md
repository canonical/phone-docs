---
Title: QtLocation.MapRoute
---

# QtLocation.MapRoute

<span class="subtitle"></span>
<!-- $$$MapRoute-brief -->
<p>The MapRoute type displays a Route on a Map. More...</p>
<!-- @@@MapRoute -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#line-prop">line</a></b></b><ul>
<li class="fn"><b><b><a href="#line.width-prop">line.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="#line.color-prop">line.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="#route-prop">route</a></b></b> : Route</li>
</ul>
<!-- $$$MapRoute-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#">MapRoute</a> type displays a Route obtained through a <a href="QtLocation.RouteModel.md">RouteModel</a> or other means, on the Map as a Polyline following the path of the Route.</p>
<p><a href="#route-prop">route</a> property instead of directly in coordinates.</p>
<p>By default, the route is displayed as a 1-pixel thick black line. This can be changed using the <a href="#line.color-prop">line.color</a> properties.</p>
<h3 >Performance</h3>
<p>For notes about the performance on <a href="#">MapRoute</a>, refer to the documentation for <a href="QtLocation.MapPolyline.md">MapPolyline</a>.</p>
<h3 >Example Usage</h3>
<p>Here is how to draw a <a href="QtLocation.Route.md">route</a> on a <a href="QtLocation.Map.md">map</a>:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type"><a href="QtLocation.Map.md">Map</a></span> {
<span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
<span class="name">id</span>: <span class="name">routeModel</span>
}
<span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">routeModel</span>
<span class="name">delegate</span>: <span class="name">routeDelegate</span>
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">routeDelegate</span>
<span class="type"><a href="#">MapRoute</a></span> {
<span class="name">route</span>: <span class="name">routeData</span>
<span class="name">line</span>.color: <span class="string">&quot;blue&quot;</span>
<span class="name">line</span>.width: <span class="number">5</span>
<span class="name">smooth</span>: <span class="number">true</span>
<span class="name">opacity</span>: <span class="number">0.8</span>
}
}
}</pre>
<!-- @@@MapRoute -->
<h2>Property Documentation</h2>
<!-- $$$line -->
<table class="qmlname"><tr valign="top" id="line-prop"><th class="centerAlign"><p><b>line group</b></p></th></tr><tr valign="top" id="line.width-prop"><td class="tblQmlPropNode"><p><span class="name">line.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="line.color-prop"><td class="tblQmlPropNode"><p><span class="name">line.color</span> : <span class="type">color</span></p></td></tr></table><p>This property is part of the line property group. The line property group holds the width and color used to draw the line.</p>
<p>The width is in pixels and is independent of the zoom level of the map. The default values correspond to a black border with a width of 1 pixel.</p>
<p>For no line, use a width of 0 or a transparent color.</p>
<!-- @@@line -->
<br/>
<!-- $$$route -->
<table class="qmlname"><tr valign="top" id="route-prop"><td class="tblQmlPropNode"><p><span class="name">route</span> : <span class="type"><a href="QtLocation.Route.md">Route</a></span></p></td></tr></table><p>This property holds the route to be drawn which can be used to represent one geographical route.</p>
<!-- @@@route -->
<br/>
