---
Title: QtLocation.RouteQuery
---

# QtLocation.RouteQuery

<span class="subtitle"></span>
<!-- $$$RouteQuery-brief -->
<p>The RouteQuery type is used to provide query parameters to a RouteModel. More...</p>
<!-- @@@RouteQuery -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#excludedAreas-prop">excludedAreas</a></b></b> : list&lt;georectangle&gt;</li>
<li class="fn"><b><b><a href="#featureTypes-prop">featureTypes</a></b></b> : QList&lt;FeatureType&gt;</li>
<li class="fn"><b><b><a href="#maneuverDetail-prop">maneuverDetail</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#numberAlternativeRoutes-prop">numberAlternativeRoutes</a></b></b> : int</li>
<li class="fn"><b><b><a href="#routeOptimizations-prop">routeOptimizations</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#segmentDetail-prop">segmentDetail</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#travelModes-prop">travelModes</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#waypoints-prop">waypoints</a></b></b> : QJSValue</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addExcludedArea-method">addExcludedArea</a></b></b>(georectangle)</li>
<li class="fn"><b><b><a href="#addWaypoint-method">addWaypoint</a></b></b>(coordinate)</li>
<li class="fn"><b><b><a href="#clearExcludedAreas-method">clearExcludedAreas</a></b></b>()</li>
<li class="fn"><b><b><a href="#clearWaypoints-method">clearWaypoints</a></b></b>()</li>
<li class="fn">FeatureWeight <b><b><a href="#featureWeight-method">featureWeight</a></b></b>(FeatureType <i>featureType</i>)</li>
<li class="fn"><b><b><a href="#removeExcludedArea-method">removeExcludedArea</a></b></b>(georectangle)</li>
<li class="fn"><b><b><a href="#removeWaypoint-method">removeWaypoint</a></b></b>(coordinate)</li>
<li class="fn"><b><b><a href="#resetFeatureWeights-method">resetFeatureWeights</a></b></b>()</li>
<li class="fn"><b><b><a href="#setFeatureWeight-method">setFeatureWeight</a></b></b>(FeatureType, FeatureWeight)</li>
</ul>
<!-- $$$RouteQuery-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="#">RouteQuery</a> contains all the parameters necessary to make a request to a routing service, which can then populate the contents of a <a href="QtLocation.RouteModel.md">RouteModel</a>.</p>
<p>These parameters describe key details of the route, such as <a href="#travelModes-prop">travelModes</a> in use, as well as detailed preferences on how to optimize the route and what features to prefer or avoid along the path (such as toll roads, highways, etc).</p>
<p><a href="#">RouteQuery</a> objects are used exclusively to fill out the value of a <a href="QtLocation.RouteModel.md">RouteModel</a>'s <a href="QtLocation.RouteModel.md#query-prop">query</a> property, which can then begin the retrieval process to populate the model.</p>
<h3 >Example Usage</h3>
<p>The following snipped shows an incomplete example of creating a <a href="#">RouteQuery</a> object and setting it as the value of a <a href="QtLocation.RouteModel.md">RouteModel</a>'s <a href="QtLocation.RouteModel.md#query-prop">query</a> property.</p>
<pre class="cpp">RouteQuery {
id: aQuery
}
RouteModel {
query: aQuery
autoUpdate: <span class="keyword">false</span>
}</pre>
<p>For a more complete example, see the documentation for the <a href="QtLocation.RouteModel.md">RouteModel</a> type, and the Mapviewer example.</p>
<p><b>See also </b><a href="QtLocation.RouteModel.md">RouteModel</a>.</p>
<!-- @@@RouteQuery -->
<h2>Property Documentation</h2>
<!-- $$$excludedAreas -->
<table class="qmlname"><tr valign="top" id="excludedAreas-prop"><td class="tblQmlPropNode"><p><span class="name">excludedAreas</span> : <span class="type">list</span>&lt;<span class="type">georectangle</span>&gt;</p></td></tr></table><p>Areas that the route must not cross.</p>
<p>Excluded areas can be set as part of the <a href="#">RouteQuery</a> type declaration or dynamically with the functions provided.</p>
<p><b>See also </b><a href="#clearExcludedAreas-method">clearExcludedAreas</a>.</p>
<!-- @@@excludedAreas -->
<br/>
<!-- $$$featureTypes -->
<table class="qmlname"><tr valign="top" id="featureTypes-prop"><td class="tblQmlPropNode"><p><span class="name">featureTypes</span> : <span class="type">QList</span>&lt;<span class="type">FeatureType</span>&gt;</p></td></tr></table><p>List of features that will be considered when planning the route. Features with a weight of NeutralFeatureWeight will not be returned.</p>
<ul>
<li><a href="#">RouteQuery</a>.NoFeature - No features will be taken into account when planning the route</li>
<li><a href="#">RouteQuery</a>.TollFeature - Consider tollways when planning the route</li>
<li><a href="#">RouteQuery</a>.HighwayFeature - Consider highways when planning the route</li>
<li><a href="#">RouteQuery</a>.PublicTransitFeature - Consider public transit when planning the route</li>
<li><a href="#">RouteQuery</a>.FerryFeature - Consider ferries when planning the route</li>
<li><a href="#">RouteQuery</a>.TunnelFeature - Consider tunnels when planning the route</li>
<li><a href="#">RouteQuery</a>.DirtRoadFeature - Consider dirt roads when planning the route</li>
<li><a href="#">RouteQuery</a>.ParksFeature - Consider parks when planning the route</li>
<li><a href="#">RouteQuery</a>.MotorPoolLaneFeature - Consider motor pool lanes when planning the route</li>
</ul>
<p><b>See also </b><a href="#featureWeight-method">featureWeight</a>.</p>
<!-- @@@featureTypes -->
<br/>
<!-- $$$maneuverDetail -->
<table class="qmlname"><tr valign="top" id="maneuverDetail-prop"><td class="tblQmlPropNode"><p><span class="name">maneuverDetail</span> : <span class="type">enumeration</span></p></td></tr></table><p>The level of detail which will be used in the representation of routing maneuvers.</p>
<ul>
<li><a href="#">RouteQuery</a>.NoManeuvers - No maneuvers should be included with the route</li>
<li><a href="#">RouteQuery</a>.BasicManeuvers - Basic maneuvers will be included with the route</li>
</ul>
<p>The default value is <a href="#">RouteQuery</a>.BasicManeuvers</p>
<!-- @@@maneuverDetail -->
<br/>
<!-- $$$numberAlternativeRoutes -->
<table class="qmlname"><tr valign="top" id="numberAlternativeRoutes-prop"><td class="tblQmlPropNode"><p><span class="name">numberAlternativeRoutes</span> : <span class="type">int</span></p></td></tr></table><p>The number of alternative routes requested when requesting routes. The default value is 0.</p>
<!-- @@@numberAlternativeRoutes -->
<br/>
<!-- $$$routeOptimizations -->
<table class="qmlname"><tr valign="top" id="routeOptimizations-prop"><td class="tblQmlPropNode"><p><span class="name">routeOptimizations</span> : <span class="type">enumeration</span></p></td></tr></table><p>The route optimizations which should be considered during the planning of the route. Values can be combined with OR ('|') -operator.</p>
<ul>
<li><a href="#">RouteQuery</a>.ShortestRoute - Minimize the length of the journey</li>
<li><a href="#">RouteQuery</a>.FastestRoute - Minimize the traveling time for the journey</li>
<li><a href="#">RouteQuery</a>.MostEconomicRoute - Minimize the cost of the journey</li>
<li><a href="#">RouteQuery</a>.MostScenicRoute - Maximize the scenic potential of the journey</li>
</ul>
<p>The default value is <a href="#">RouteQuery</a>.FastestRoute</p>
<!-- @@@routeOptimizations -->
<br/>
<!-- $$$segmentDetail -->
<table class="qmlname"><tr valign="top" id="segmentDetail-prop"><td class="tblQmlPropNode"><p><span class="name">segmentDetail</span> : <span class="type">enumeration</span></p></td></tr></table><p>The level of detail which will be used in the representation of routing segments.</p>
<ul>
<li><a href="#">RouteQuery</a>.NoSegmentData - No segment data should be included with the route</li>
<li><a href="#">RouteQuery</a>.BasicSegmentData - Basic segment data will be included with the route</li>
</ul>
<p>The default value is <a href="#">RouteQuery</a>.BasicSegmentData</p>
<!-- @@@segmentDetail -->
<br/>
<!-- $$$travelModes -->
<table class="qmlname"><tr valign="top" id="travelModes-prop"><td class="tblQmlPropNode"><p><span class="name">travelModes</span> : <span class="type">enumeration</span></p></td></tr></table><p>The travel modes which should be considered during the planning of the route. Values can be combined with OR ('|') -operator.</p>
<ul>
<li><a href="#">RouteQuery</a>.CarTravel - The route will be optimized for someone who is driving a car</li>
<li><a href="#">RouteQuery</a>.PedestrianTravel - The route will be optimized for someone who is walking</li>
<li><a href="#">RouteQuery</a>.BicycleTravel - The route will be optimized for someone who is riding a bicycle</li>
<li><a href="#">RouteQuery</a>.PublicTransitTravel - The route will be optimized for someone who is making use of public transit</li>
<li><a href="#">RouteQuery</a>.TruckTravel - The route will be optimized for someone who is driving a truck</li>
</ul>
<p>The default value is <a href="#">RouteQuery</a>.CarTravel</p>
<!-- @@@travelModes -->
<br/>
<!-- $$$waypoints -->
<table class="qmlname"><tr valign="top" id="waypoints-prop"><td class="tblQmlPropNode"><p><span class="name">waypoints</span> : <span class="type">QJSValue</span></p></td></tr></table><p>The waypoint coordinates of the desired route. The waypoints should be given in order from origin to destination. Two or more coordinates are needed.</p>
<p>Waypoints can be set as part of the <a href="#">RouteQuery</a> type declaration or dynamically with the functions provided.</p>
<p><b>See also </b><a href="#clearWaypoints-method">clearWaypoints</a>.</p>
<!-- @@@waypoints -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addExcludedArea -->
<table class="qmlname"><tr valign="top" id="addExcludedArea-method"><td class="tblQmlFuncNode"><p><span class="name">addExcludedArea</span>(<span class="type">georectangle</span>)</p></td></tr></table><p>Adds the given area to excluded areas (areas that the route must not cross). Same area can only be added once.</p>
<p><b>See also </b><a href="#clearExcludedAreas-method">clearExcludedAreas</a>.</p>
<!-- @@@addExcludedArea -->
<br/>
<!-- $$$addWaypoint -->
<table class="qmlname"><tr valign="top" id="addWaypoint-method"><td class="tblQmlFuncNode"><p><span class="name">addWaypoint</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Appends a coordinate to the list of waypoints. Same coordinate can be set multiple times.</p>
<p><b>See also </b><a href="#clearWaypoints-method">clearWaypoints</a>.</p>
<!-- @@@addWaypoint -->
<br/>
<!-- $$$clearExcludedAreas -->
<table class="qmlname"><tr valign="top" id="clearExcludedAreas-method"><td class="tblQmlFuncNode"><p><span class="name">clearExcludedAreas</span>()</p></td></tr></table><p>Clears all excluded areas (areas that the route must not cross).</p>
<p><b>See also </b><a href="#removeExcludedArea-method">removeExcludedArea</a>.</p>
<!-- @@@clearExcludedAreas -->
<br/>
<!-- $$$clearWaypoints -->
<table class="qmlname"><tr valign="top" id="clearWaypoints-method"><td class="tblQmlFuncNode"><p><span class="name">clearWaypoints</span>()</p></td></tr></table><p>Clears all waypoints.</p>
<p><b>See also </b><a href="#addWaypoint-method">addWaypoint</a>.</p>
<!-- @@@clearWaypoints -->
<br/>
<!-- $$$featureWeight -->
<table class="qmlname"><tr valign="top" id="featureWeight-method"><td class="tblQmlFuncNode"><p><span class="type">FeatureWeight</span> <span class="name">featureWeight</span>(<span class="type">FeatureType</span><i> featureType</i>)</p></td></tr></table><p>Gets the weight for the <i>featureType</i>.</p>
<p><b>See also </b><a href="#resetFeatureWeights-method">resetFeatureWeights</a>.</p>
<!-- @@@featureWeight -->
<br/>
<!-- $$$removeExcludedArea -->
<table class="qmlname"><tr valign="top" id="removeExcludedArea-method"><td class="tblQmlFuncNode"><p><span class="name">removeExcludedArea</span>(<span class="type">georectangle</span>)</p></td></tr></table><p>Removes the given area to excluded areas (areas that the route must not cross).</p>
<p><b>See also </b><a href="#clearExcludedAreas-method">clearExcludedAreas</a>.</p>
<!-- @@@removeExcludedArea -->
<br/>
<!-- $$$removeWaypoint -->
<table class="qmlname"><tr valign="top" id="removeWaypoint-method"><td class="tblQmlFuncNode"><p><span class="name">removeWaypoint</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Removes the given from the list of waypoints. In case same coordinate appears multiple times, the most recently added coordinate instance is removed.</p>
<p><b>See also </b><a href="#clearWaypoints-method">clearWaypoints</a>.</p>
<!-- @@@removeWaypoint -->
<br/>
<!-- $$$resetFeatureWeights -->
<table class="qmlname"><tr valign="top" id="resetFeatureWeights-method"><td class="tblQmlFuncNode"><p><span class="name">resetFeatureWeights</span>()</p></td></tr></table><p>Resets all feature weights to their default state (NeutralFeatureWeight).</p>
<p><b>See also </b><a href="#featureWeight-method">featureWeight</a>.</p>
<!-- @@@resetFeatureWeights -->
<br/>
<!-- $$$setFeatureWeight -->
<table class="qmlname"><tr valign="top" id="setFeatureWeight-method"><td class="tblQmlFuncNode"><p><span class="name">setFeatureWeight</span>(<span class="type">FeatureType</span>, <span class="type">FeatureWeight</span>)</p></td></tr></table><p>Defines the weight to associate with a feature during the planning of a route.</p>
<p>Following lists the possible feature weights:</p>
<ul>
<li><a href="#">RouteQuery</a>.NeutralFeatureWeight - The presence or absence of the feature will not affect the planning of the route</li>
<li><a href="#">RouteQuery</a>.PreferFeatureWeight - Routes which contain the feature will be preferred over those that do not</li>
<li><a href="#">RouteQuery</a>.RequireFeatureWeight - Only routes which contain the feature will be considered, otherwise no route will be returned</li>
<li><a href="#">RouteQuery</a>.AvoidFeatureWeight - Routes which do not contain the feature will be preferred over those that do</li>
<li><a href="#">RouteQuery</a>.DisallowFeatureWeight - Only routes which do not contain the feature will be considered, otherwise no route will be returned</li>
</ul>
<p><b>See also </b><a href="#featureWeight-method">featureWeight</a>.</p>
<!-- @@@setFeatureWeight -->
<br/>
