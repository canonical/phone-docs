---
Title: QtLocation.qml-location5-maps
---

# QtLocation.qml-location5-maps

<span class="subtitle"></span>
<!-- $$$qml-location5-maps.html-description -->
<h2 id="overview">Overview</h2>
<p>The <a href="..//QtLocation.Map.md">Map</a> type allows the display of a map and placing objects within the map. Various points of interest can be defined and added to the map for display. Also the <a href="..//QtLocation.Map.md">Map</a> has features to control how the map is displayed. With the Map item you can center the map, zoom, pinch and make the item flickable.</p>
<p>The places to be added to the map are <a href="..//QtLocation.location-maps-qml.md#putting-objects-on-a-map-map-overlay-objects">MapItems</a>. The item's position is defined by a coordinate which includes latitude, longitude and altitude. The item is then displayed automatically after it is added to the Map. <a href="..//QtLocation.location-maps-qml.md#putting-objects-on-a-map-map-overlay-objects">MapItems</a> or <a href="..//QtLocation.Map.md">Map</a>.</p>
<h3 >Position on map</h3>
<p>All position APIs are part of the QtPositioning module. The basic piece of position information is the coordinate. A coordinate encapsulates data for the latitude, longitude and altitude of the location. Altitude is in meters. It also has a method to determine distance to another coordinate. The coordinate type may also be held within a Location element, this will also have information on a bounding box size to determine sufficient proximity to the location and a location address.</p>
<p>Here is an example of a client that uses a position source to center a <a href="..//QtLocation.Map.md">map</a> on the current position:</p>
<pre class="cpp">Rectangle {
import <span class="type">QtPositioning</span> <span class="number">5.2</span>
import <span class="type">QtLocation</span> <span class="number">5.3</span>
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
map : Map {
<span class="comment">// initialize map</span>
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
}
PositionSource {
onPositionChanged: {
<span class="comment">// center the map on the current position</span>
map<span class="operator">.</span>center <span class="operator">=</span> position<span class="operator">.</span>coordinate
}
}
}</pre>
<h3 >Geocoding</h3>
<p><a href="http://en.wikipedia.org/wiki/Geocoding">Geocoding</a> is the derivation of geographical coordinates (latitude and longitude) from other geographical references to the locations. For example, this can be a street address. Reverse geocoding is also possible with a street address being used to determine a geographical coordinate. Geocoding is performed by using the GeoCodeModel type.</p>
<p>The following code examples are a small part of the <code>map</code> component in the <a href="QtLocation.mapviewer/">Map Viewer (QML)</a> example. The snippets demonstrate the declaration of the <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a> component.</p>
<p>In the snippet we see that the <code>geocodeModel</code> property contains the plugin and two signal handlers. One for changes in status (<code>onStatusChanged</code> ) and the other to update the centering of the Map object (<code>onLocationsChanged</code> ).</p>
<pre class="qml">    property <span class="type"><a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a></span> <span class="name">geocodeModel</span>: <span class="name">GeocodeModel</span> {
<span class="name">plugin</span>: <span class="name">map</span>.<span class="name">plugin</span>
<span class="name">onStatusChanged</span>: {
<span class="keyword">if</span> ((<span class="name">status</span> <span class="operator">==</span> <span class="name">GeocodeModel</span>.<span class="name">Ready</span>) <span class="operator">||</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">GeocodeModel</span>.<span class="name">Error</span>))
<span class="name">map</span>.<span class="name">geocodeFinished</span>()
}
<span class="name">onLocationsChanged</span>:
{
<span class="keyword">if</span> (<span class="name">count</span> <span class="operator">==</span> <span class="number">1</span>) {
<span class="name">map</span>.<span class="name">center</span>.<span class="name">latitude</span> <span class="operator">=</span> <span class="name">get</span>(<span class="number">0</span>).<span class="name">coordinate</span>.<span class="name">latitude</span>
<span class="name">map</span>.<span class="name">center</span>.<span class="name">longitude</span> <span class="operator">=</span> <span class="name">get</span>(<span class="number">0</span>).<span class="name">coordinate</span>.<span class="name">longitude</span>
}
}
}
<span class="type"><a href="..//QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">geocodeModel</span>
<span class="name">delegate</span>: <span class="name">pointDelegate</span>
}</pre>
<p>These geocoding features are called from a higher level piece of code. In this snippet we see an <code>onGoButtonClicked</code> signal handler that extracts the address from the user interface and then creates a query for the <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a> to process and determine the geographical coordinates.</p>
<pre class="qml">        <span class="type">Address</span> {
<span class="name">id</span>: <span class="name">geocodeAddress</span>
}
<span class="name">onGoButtonClicked</span>: {
<span class="comment">// manage the UI state transitions</span>
<span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
<span class="name">messageDialog</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
<span class="comment">// fill out the Address element</span>
<span class="name">geocodeAddress</span>.<span class="name">street</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">inputText</span>
<span class="name">geocodeAddress</span>.<span class="name">city</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">1</span>).<span class="name">inputText</span>
<span class="name">geocodeAddress</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">2</span>).<span class="name">inputText</span>
<span class="name">geocodeAddress</span>.<span class="name">country</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">3</span>).<span class="name">inputText</span>
<span class="name">geocodeAddress</span>.<span class="name">postalCode</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">4</span>).<span class="name">inputText</span>
<span class="comment">// send the geocode request</span>
<span class="name">map</span>.<span class="name">geocodeModel</span>.<span class="name">query</span> <span class="operator">=</span> <span class="name">geocodeAddress</span>
<span class="name">map</span>.<span class="name">geocodeModel</span>.<span class="name">update</span>()
}</pre>
<h3 >Navigation</h3>
<p>A very important function of the <a href="..//QtLocation.Map.md">Map</a> type is navigation from one place to a destination with possible waypoints along the route. The route will be divided up into a series of segments. At the end of each segment is a vertex called a <i>maneuver</i>. The <i>segments</i> contain information about the time and distance to the end of the segment. The <i>maneuvers</i> contain information about what to do next, how to get onto the next segment, if there is one. So a <i>maneuver</i> contains navigational information, for example &quot;turn right now&quot;.</p>
<p>To find a suitable route we will need to use a <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> to define the selection criteria and adding any required waypoints. The <a href="..//QtLocation.RouteModel.md">RouteModel</a> should return a list of <a href="..//QtLocation.RouteSegment.md">RouteSegment</a>s that defines the route to the destination complete with navigation advice at the joins between segments, called <a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a>s</p>
<p>There are many options that you can add to the query to narrow the criteria. The <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> properties can include</p>
<table class="generic" width="60%">
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#numberAlternativeRoutes-prop">numberAlternativeRoutes</a></td><td >The number of alternative routes</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#travelModes-prop">travelModes</a></td><td >Travel modes</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#routeOptimizations-prop">routeOptimizations</a></td><td >Required route optimizations</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#segmentDetail-prop">segmentDetail</a></td><td >Level of detail in segments</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#maneuverDetail-prop">maneuverDetail</a></td><td >Level of detail in maneuvers between segments</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#waypoints-prop">waypoints</a></td><td >A list of waypoints</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#excludedAreas-prop">excludedAreas</a></td><td >A list of excluded areas that the route must not cross</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteQuery.md#featureTypes-prop">featureTypes</a></td><td >Relevant map features, for example highway, ferry</td></tr>
</table>
<p>In the following example a default <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> is declared, later to be defined by some user input, and used in <code>routeModel</code> as the query. The <code>routeInfoModel</code> is a ListModel that can be updated using an <code>update()</code> function that we will look at later.</p>
<pre class="qml">    property <span class="type"><a href="..//QtLocation.RouteQuery.md">RouteQuery</a></span> <span class="name">routeQuery</span>: <span class="name">RouteQuery</span> {}
property <span class="type"><a href="..//QtLocation.RouteModel.md">RouteModel</a></span> <span class="name">routeModel</span>: <span class="name">RouteModel</span> {
<span class="name">plugin</span> : <span class="name">map</span>.<span class="name">plugin</span>
<span class="name">query</span>: <span class="name">routeQuery</span>
<span class="name">onStatusChanged</span>: {
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Ready</span>) {
<span class="keyword">switch</span> (<span class="name">count</span>) {
<span class="keyword">case</span> <span class="number">0</span>:
<span class="name">clearAll</span>() <span class="comment">// technically not an error</span>
<span class="name">map</span>.<span class="name">routeError</span>()
<span class="keyword">break</span>
<span class="keyword">case</span> <span class="number">1</span>:
<span class="name">routeInfoModel</span>.<span class="name">update</span>()
<span class="keyword">break</span>
}
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Error</span>) {
<span class="name">clearAll</span>()
<span class="name">map</span>.<span class="name">routeError</span>()
}
}
<span class="keyword">function</span> <span class="name">clearAll</span>() {
<span class="name">routeInfoModel</span>.<span class="name">update</span>()
}
}</pre>
<p>The user enters, via a dialog, some information such as the starting point of the route, some waypoints and the destination. All of these locations are waypoints so the locations from start to finish will be entered as a sequence of waypoints. Then other query properties can be set that may be specific to this trip.</p>
<pre class="qml">        <span class="keyword">function</span> <span class="name">calculateRoute</span>() {
<span class="comment">// clear away any old data in the query</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">clearWaypoints</span>();
<span class="comment">// add the start and end coords as waypoints on the route</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">startCoordinate</span>)
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">endCoordinate</span>)
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">travelModes</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">travelMode</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">routeOptimizations</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">routeOptimization</span>
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">9</span>; i++) {
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">setFeatureWeight</span>(<span class="name">i</span>, <span class="number">0</span>)
}
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">routeDialog</span>.<span class="name">features</span>.<span class="name">length</span>; i++) {
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">setFeatureWeight</span>(<span class="name">routeDialog</span>.<span class="name">features</span>[<span class="name">i</span>], <span class="name">RouteQuery</span>.<span class="name">AvoidFeatureWeight</span>)
}
<span class="name">map</span>.<span class="name">routeModel</span>.<span class="name">update</span>();
<span class="comment">// center the map on the start coord</span>
<span class="name">map</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">startCoordinate</span>;
}</pre>
<p>The <code>routeInfoModel</code> ListModel is used to grab the results of the query and construct a suitable list for display. The ListModel <code>routeInfoModel</code> contains an <code>update()</code> function that loops through the segments extracting the segment length, instruction text and distance to the next instruction. The extracted data is formatted for display as it is retrieved.</p>
<pre class="qml">    <span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">routeInfoModel</span>
property <span class="type">string</span> <span class="name">travelTime</span>
property <span class="type">string</span> <span class="name">distance</span>
<span class="keyword">function</span> <span class="name">update</span>() {
<span class="name">clear</span>()
<span class="keyword">if</span> (<span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>.<span class="name">length</span>; i++) {
<span class="name">append</span>({
&quot;instruction&quot;: <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>[<span class="name">i</span>].<span class="name">maneuver</span>.<span class="name">instructionText</span>,
&quot;distance&quot;: <span class="name">formatDistance</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>[<span class="name">i</span>].<span class="name">maneuver</span>.<span class="name">distanceToNextInstruction</span>)
});
}
}
<span class="name">travelTime</span> <span class="operator">=</span> <span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="string">&quot;&quot;</span> : <span class="name">formatTime</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">travelTime</span>)
<span class="name">distance</span> <span class="operator">=</span> <span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="string">&quot;&quot;</span> : <span class="name">formatDistance</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">distance</span>)
}
}
<span class="type"><a href="..//QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">routeModel</span>
<span class="name">delegate</span>: <span class="name">routeDelegate</span>
<span class="name">autoFitViewport</span>: <span class="number">true</span>
}</pre>
<p>For more information on the example see the <a href="QtLocation.mapviewer/">Map Viewer (QML)</a> example.</p>
<h3 >Zoom, Pinch and Flickable</h3>
<p>The <a href="..//QtLocation.Map.md">Map</a> item also supports user interface interactions with the map using tactile and mouse gestures. That is features such as swiping to pan, pinching to zoom.</p>
<p>Enabling and configuring pinch and flickable is easy within the <a href="..//QtLocation.Map.md">Map</a> type.</p>
<pre class="qml"><span class="type"><a href="..//QtLocation.Map.md">Map</a></span> {
<span class="name">id</span>: <span class="name">map</span>
<span class="name">zoomLevel</span>: (<span class="name">maximumZoomLevel</span> <span class="operator">-</span> <span class="name">minimumZoomLevel</span>)<span class="operator">/</span><span class="number">2</span>
<span class="type">center</span> {
<span class="name">latitude</span>: -<span class="number">27.5796</span>
<span class="name">longitude</span>: <span class="number">153.1003</span>
}
<span class="comment">// Enable pinch gestures to zoom in and out</span>
<span class="name">gesture</span>.flickDeceleration: <span class="number">3000</span>
<span class="name">gesture</span>.enabled: <span class="number">true</span>
}</pre>
<p>Zoom can also be controlled by other objects like sliders, as shown in the example, by implementing the <code>onValueChanged</code> handler to update the Map <a href="..//QtLocation.Map.md#zoomLevel-prop">zoomLevel</a>.</p>
<h2 id="types">Types</h2>
<h4 >Maps</h4>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.Map.md">Map</a></p></td><td class="tblDescr"><p>Type displays a map</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.MapCircle.md">MapCircle</a></p></td><td class="tblDescr"><p>Type displays a geographic circle on a Map</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a></p></td><td class="tblDescr"><p>Type provides Map gesture interaction</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.MapItemView.md">MapItemView</a></p></td><td class="tblDescr"><p>Used to populate Map from a model</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.MapPinchEvent.md">MapPinchEvent</a></p></td><td class="tblDescr"><p>Type provides basic information about pinch event</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.MapPolygon.md">MapPolygon</a></p></td><td class="tblDescr"><p>Type displays a polygon on a Map</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.MapPolyline.md">MapPolyline</a></p></td><td class="tblDescr"><p>Type displays a polyline on a map</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a></p></td><td class="tblDescr"><p>Type displays an arbitrary Qt Quick object on a Map</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.MapRectangle.md">MapRectangle</a></p></td><td class="tblDescr"><p>Type displays a rectangle on a Map</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.MapRoute.md">MapRoute</a></p></td><td class="tblDescr"><p>Type displays a Route on a Map</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.MapType.md">MapType</a></p></td><td class="tblDescr"><p>Type holds information about a map type</p></td></tr>
</table>
<h4 >Geocoding</h4>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a></p></td><td class="tblDescr"><p>Type provides support for searching operations related to geographic information</p></td></tr>
</table>
<h4 >Routing</h4>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.Route.md">Route</a></p></td><td class="tblDescr"><p>Type represents one geographical route</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a></p></td><td class="tblDescr"><p>Type represents the information relevant to the point at which two RouteSegments meet</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.RouteModel.md">RouteModel</a></p></td><td class="tblDescr"><p>Type provides access to routes</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.RouteQuery.md">RouteQuery</a></p></td><td class="tblDescr"><p>Type is used to provide query parameters to a RouteModel</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.RouteSegment.md">RouteSegment</a></p></td><td class="tblDescr"><p>Type represents a segment of a Route</p></td></tr>
</table>
<h2 id="example">Example</h2>
<p>The above snippets are taken from the <a href="QtLocation.mapviewer/">Map Viewer (QML)</a> example.</p>
<!-- @@@qml-location5-maps.html -->
