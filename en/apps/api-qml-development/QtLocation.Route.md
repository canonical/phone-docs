---
Title: QtLocation.Route
---

# QtLocation.Route

<span class="subtitle"></span>
<!-- $$$Route-brief -->
<p>The Route type represents one geographical route. More...</p>
<!-- @@@Route -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.Route.md#bounds-prop">bounds</a></b></b> : georectangle</li>
<li class="fn"><b><b><a href="QtLocation.Route.md#distance-prop">distance</a></b></b> : real</li>
<li class="fn"><b><b><a href="QtLocation.Route.md#path-prop">path</a></b></b> : QJSValue</li>
<li class="fn"><b><b><a href="QtLocation.Route.md#segments-prop">segments</a></b></b> : list&lt;RouteSegment&gt;</li>
<li class="fn"><b><b><a href="QtLocation.Route.md#travelTime-prop">travelTime</a></b></b> : int</li>
</ul>
<!-- $$$Route-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Route type contains high level information about a route, such as the length the route, the estimated travel time for the route, and enough information to render a basic image of the route on a map.</p>
<p>The QGeoRoute object also contains a list of RouteSegment objects which describe subsections of the route in greater detail.</p>
<p>The primary means of acquiring Route objects is <a href="QtLocation.RouteModel.md">RouteModel</a>.</p>
<h2 id="example">Example</h2>
<p>This example shows how to display a route's maneuvers in a ListView:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
<span class="name">id</span>: <span class="name">routeModel</span>
<span class="comment">// model initialization</span>
}
<span class="type">ListView</span> {
<span class="name">spacing</span>: <span class="number">10</span>
<span class="name">model</span>: <span class="name">routeModel</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Ready</span> ? <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span> : <span class="number">null</span>
<span class="name">visible</span>: <span class="name">model</span> ? <span class="number">true</span> : <span class="number">false</span>
<span class="name">delegate</span>: <span class="name">Row</span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">spacing</span>: <span class="number">10</span>
property <span class="type">bool</span> <span class="name">hasManeuver</span> : <span class="name">modelData</span>.<span class="name">maneuver</span> <span class="operator">&amp;&amp;</span> <span class="name">modelData</span>.<span class="name">maneuver</span>.<span class="name">valid</span>
<span class="name">visible</span>: <span class="name">hasManeuver</span>
<span class="type">Text</span> { <span class="name">text</span>: (<span class="number">1</span> <span class="operator">+</span> <span class="name">index</span>) <span class="operator">+</span> <span class="string">&quot;.&quot;</span> }
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">hasManeuver</span> ? <span class="name">modelData</span>.<span class="name">maneuver</span>.<span class="name">instructionText</span> : <span class="string">&quot;&quot;</span>
}
}
}</pre>
<!-- @@@Route -->
<h2>Property Documentation</h2>
<!-- $$$bounds -->
<table class="qmlname"><tr valign="top" id="bounds-prop"><td class="tblQmlPropNode"><p><span class="name">bounds</span> : <span class="type">georectangle</span></p></td></tr></table><p>Read-only property which holds a bounding box which encompasses the entire route.</p>
<!-- @@@bounds -->
<br/>
<!-- $$$distance -->
<table class="qmlname"><tr valign="top" id="distance-prop"><td class="tblQmlPropNode"><p><span class="name">distance</span> : <span class="type">real</span></p></td></tr></table><p>Read-only property which holds distance covered by this route, in meters.</p>
<!-- @@@distance -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">QJSValue</span></p></td></tr></table><p>Read-only property which holds the geographical coordinates of this route. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.</p>
<p>To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path[index starting from zero]' gives the actual object.</p>
<p><b>See also </b>QtPositioning::coordinate.</p>
<!-- @@@path -->
<br/>
<!-- $$$segments -->
<table class="qmlname"><tr valign="top" id="segments-prop"><td class="tblQmlPropNode"><p><span class="name">segments</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtLocation.RouteSegment.md">RouteSegment</a></span>&gt;</p></td></tr></table><p>Read-only property which holds the list of <a href="QtLocation.RouteSegment.md">RouteSegment</a> objects of this route.</p>
<p>To access individual segments you can use standard list accessors: 'segments.length' indicates the number of objects and 'segments[index starting from zero]' gives the actual objects.</p>
<p><b>See also </b><a href="QtLocation.RouteSegment.md">RouteSegment</a>.</p>
<!-- @@@segments -->
<br/>
<!-- $$$travelTime -->
<table class="qmlname"><tr valign="top" id="travelTime-prop"><td class="tblQmlPropNode"><p><span class="name">travelTime</span> : <span class="type">int</span></p></td></tr></table><p>Read-only property which holds the estimated amount of time it will take to traverse this route, in seconds.</p>
<!-- @@@travelTime -->
<br/>
