---
Title: QtLocation.RouteSegment
---

# QtLocation.RouteSegment

<span class="subtitle"></span>
<!-- $$$RouteSegment-brief -->
<p>The RouteSegment type represents a segment of a Route. More...</p>
<!-- @@@RouteSegment -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.RouteSegment.md#distance-prop">distance</a></b></b> : real</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteSegment.md#maneuver-prop">maneuver</a></b></b> : RouteManeuver</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteSegment.md#path-prop">path</a></b></b> : QJSValue</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteSegment.md#travelTime-prop">travelTime</a></b></b> : int</li>
</ul>
<!-- $$$RouteSegment-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="..//QtLocation.RouteSegment.md">RouteSegment</a> instance has information about the physical layout of the route segment, the length of the route and estimated time required to traverse the route segment and optional RouteManeuvers associated with the end of the route segment.</p>
<p><a href="..//QtLocation.RouteSegment.md">RouteSegment</a> instances can be thought of as edges on a routing graph, with <a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a> instances as optional labels attached to the vertices of the graph.</p>
<p>The primary means of acquiring Route objects is via Routes via <a href="..//QtLocation.RouteModel.md">RouteModel</a>.</p>
<h2 id="example">Example</h2>
<p>The following QML snippet demonstrates how to print information about a route segment:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Segment distance &quot;</span> <span class="operator">+</span> <span class="name">routeSegment</span>.<span class="name">distance</span> <span class="operator">+</span> <span class="string">&quot; meters, &quot;</span> <span class="operator">+</span> <span class="name">routeSegment</span>.<span class="name">path</span>.<span class="name">length</span> <span class="operator">+</span> <span class="string">&quot; points.&quot;</span>
}</pre>
<!-- @@@RouteSegment -->
<h2>Property Documentation</h2>
<!-- $$$distance -->
<table class="qmlname"><tr valign="top" id="distance-prop"><td class="tblQmlPropNode"><p><span class="name">distance</span> : <span class="type">real</span></p></td></tr></table><p>Read-only property which holds the distance covered by this segment of the route, in meters.</p>
<!-- @@@distance -->
<br/>
<!-- $$$maneuver -->
<table class="qmlname"><tr valign="top" id="maneuver-prop"><td class="tblQmlPropNode"><p><span class="name">maneuver</span> : <span class="type"><a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a></span></p></td></tr></table><p>Read-only property which holds the maneuver for this route segment.</p>
<p>Will return invalid maneuver if no information has been attached to the endpoint of this route segment.</p>
<!-- @@@maneuver -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">QJSValue</span></p></td></tr></table><p>Read-only property which holds the geographical coordinates of this segment. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.</p>
<p>To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path[index starting from zero]' gives the actual object.</p>
<p><b>See also </b>QtPositioning::coordinate.</p>
<!-- @@@path -->
<br/>
<!-- $$$travelTime -->
<table class="qmlname"><tr valign="top" id="travelTime-prop"><td class="tblQmlPropNode"><p><span class="name">travelTime</span> : <span class="type">int</span></p></td></tr></table><p>Read-only property which holds the estimated amount of time it will take to traverse this segment, in seconds.</p>
<!-- @@@travelTime -->
<br/>
