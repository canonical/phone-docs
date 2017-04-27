---
Title: QtLocation.MapItemView
---

# QtLocation.MapItemView

<span class="subtitle"></span>
<!-- $$$MapItemView-brief -->
<p>The MapItemView is used to populate Map from a model. More...</p>
<!-- @@@MapItemView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoFitViewport-prop">autoFitViewport</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : model</li>
</ul>
<!-- $$$MapItemView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#">MapItemView</a> type only makes sense when contained in a Map, meaning that it has no standalone presentation.</p>
<h3 >Example Usage</h3>
<p>This example demonstrates how to use the MapViewItem object to display a <a href="QtLocation.Route.md">route</a> on a <a href="QtLocation.Map.md">map</a>:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type"><a href="QtLocation.Map.md">Map</a></span> {
<span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
<span class="name">id</span>: <span class="name">routeModel</span>
}
<span class="type"><a href="#">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">routeModel</span>
<span class="name">delegate</span>: <span class="name">routeDelegate</span>
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">routeDelegate</span>
<span class="type"><a href="QtLocation.MapRoute.md">MapRoute</a></span> {
<span class="name">route</span>: <span class="name">routeData</span>
<span class="name">line</span>.color: <span class="string">&quot;blue&quot;</span>
<span class="name">line</span>.width: <span class="number">5</span>
<span class="name">smooth</span>: <span class="number">true</span>
<span class="name">opacity</span>: <span class="number">0.8</span>
}
}
}</pre>
<!-- @@@MapItemView -->
<h2>Property Documentation</h2>
<!-- $$$autoFitViewport -->
<table class="qmlname"><tr valign="top" id="autoFitViewport-prop"><td class="tblQmlPropNode"><p><span class="name">autoFitViewport</span> : <span class="type">Component</span></p></td></tr></table><p>This property controls whether to automatically pan and zoom the viewport to display all map items when items are added or removed.</p>
<p>Defaults to false.</p>
<!-- @@@autoFitViewport -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the delegate which defines how each item in the model should be displayed. The Component must contain exactly one MapItem -derived object as the root object.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type">model</span></p></td></tr></table><p>This property holds the model that provides data used for creating the map items defined by the delegate. Only QAbstractItemModel based models are supported.</p>
<!-- @@@model -->
<br/>
