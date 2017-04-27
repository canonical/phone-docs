---
Title: QtLocation.RouteManeuver
---

# QtLocation.RouteManeuver

<span class="subtitle"></span>
<!-- $$$RouteManeuver-brief -->
<p>The RouteManeuver type represents the information relevant to the point at which two RouteSegments meet. More...</p>
<!-- @@@RouteManeuver -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#distanceToNextInstruction-prop">distanceToNextInstruction</a></b></b> : real</li>
<li class="fn"><b><b><a href="#instructionText-prop">instructionText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="#timeToNextInstruction-prop">timeToNextInstruction</a></b></b> : int</li>
<li class="fn"><b><b><a href="#valid-prop">valid</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#waypoint-prop">waypoint</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="#waypointValid-prop">waypointValid</a></b></b> : bool</li>
</ul>
<!-- $$$RouteManeuver-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="#">RouteManeuver</a> instances as optional labels attached to the vertices of the graph.</p>
<p>The most interesting information held in a <a href="#position-prop">position</a> respectively.</p>
<h2 id="example">Example</h2>
<p>The following QML snippet demonstrates how to print information about a route maneuver:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Distance till next maneuver: &quot;</span> <span class="operator">+</span> <span class="name">routeManeuver</span>.<span class="name">distanceToNextInstruction</span> <span class="operator">+</span> <span class="string">&quot; meters, estimated time: &quot;</span> <span class="operator">+</span> <span class="name">routeManeuver</span>.<span class="name">timeToNextInstruction</span> <span class="operator">+</span> <span class="string">&quot; seconds.&quot;</span>
}</pre>
<!-- @@@RouteManeuver -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>Describes the change in direction associated with the instruction text that is associated with a <a href="#">RouteManeuver</a>.</p>
<ul>
<li><a href="#">RouteManeuver</a>.NoDirection - There is no direction associated with the instruction text</li>
<li><a href="#">RouteManeuver</a>.DirectionForward - The instruction indicates that the direction of travel does not need to change</li>
<li><a href="#">RouteManeuver</a>.DirectionBearRight - The instruction indicates that the direction of travel should bear to the right</li>
<li><a href="#">RouteManeuver</a>.DirectionLightRight - The instruction indicates that a light turn to the right is required</li>
<li><a href="#">RouteManeuver</a>.DirectionRight - The instruction indicates that a turn to the right is required</li>
<li><a href="#">RouteManeuver</a>.DirectionHardRight - The instruction indicates that a hard turn to the right is required</li>
<li><a href="#">RouteManeuver</a>.DirectionUTurnRight - The instruction indicates that a u-turn to the right is required</li>
<li><a href="#">RouteManeuver</a>.DirectionUTurnLeft - The instruction indicates that a u-turn to the left is required</li>
<li><a href="#">RouteManeuver</a>.DirectionHardLeft - The instruction indicates that a hard turn to the left is required</li>
<li><a href="#">RouteManeuver</a>.DirectionLeft - The instruction indicates that a turn to the left is required</li>
<li><a href="#">RouteManeuver</a>.DirectionLightLeft - The instruction indicates that a light turn to the left is required</li>
<li><a href="#">RouteManeuver</a>.DirectionBearLeft - The instruction indicates that the direction of travel should bear to the left</li>
</ul>
<!-- @@@direction -->
<br/>
<!-- $$$distanceToNextInstruction -->
<table class="qmlname"><tr valign="top" id="distanceToNextInstruction-prop"><td class="tblQmlPropNode"><p><span class="name">distanceToNextInstruction</span> : <span class="type">real</span></p></td></tr></table><p>This read-only property holds the distance, in meters, between the point at which the associated instruction was issued and the point that the next instruction should be issued.</p>
<!-- @@@distanceToNextInstruction -->
<br/>
<!-- $$$instructionText -->
<table class="qmlname"><tr valign="top" id="instructionText-prop"><td class="tblQmlPropNode"><p><span class="name">instructionText</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds textual navigation instruction.</p>
<!-- @@@instructionText -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">coordinate</span></p></td></tr></table><p>This read-only property holds where the <a href="#instructionText-prop">instructionText</a> should be displayed.</p>
<!-- @@@position -->
<br/>
<!-- $$$timeToNextInstruction -->
<table class="qmlname"><tr valign="top" id="timeToNextInstruction-prop"><td class="tblQmlPropNode"><p><span class="name">timeToNextInstruction</span> : <span class="type">int</span></p></td></tr></table><p>This read-only property holds the estimated time it will take to travel from the point at which the associated instruction was issued and the point that the next instruction should be issued, in seconds.</p>
<!-- @@@timeToNextInstruction -->
<br/>
<!-- $$$valid -->
<table class="qmlname"><tr valign="top" id="valid-prop"><td class="tblQmlPropNode"><p><span class="name">valid</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property holds whether this maneuver is valid or not.</p>
<p>Invalid maneuvers are used when there is no information that needs to be attached to the endpoint of a QGeoRouteSegment instance.</p>
<!-- @@@valid -->
<br/>
<!-- $$$waypoint -->
<table class="qmlname"><tr valign="top" id="waypoint-prop"><td class="tblQmlPropNode"><p><span class="name">waypoint</span> : <span class="type">coordinate</span></p></td></tr></table><p>This property holds the waypoint associated with this maneuver. All maneuvers do not have a waypoint associated with them, this can be checked with <a href="#waypointValid-prop">waypointValid</a>.</p>
<!-- @@@waypoint -->
<br/>
<!-- $$$waypointValid -->
<table class="qmlname"><tr valign="top" id="waypointValid-prop"><td class="tblQmlPropNode"><p><span class="name">waypointValid</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property holds whether this <a href="#waypoint-prop">waypoint</a>, associated with this maneuver, is valid or not.</p>
<!-- @@@waypointValid -->
<br/>
