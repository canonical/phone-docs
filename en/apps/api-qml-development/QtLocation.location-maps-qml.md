---
Title: QtLocation.location-maps-qml
---

# QtLocation.location-maps-qml

<span class="subtitle"></span>
<!-- $$$location-maps-qml.html-description -->
<p><b>Maps and Navigation</b> provides QtQuick user interface types for displaying geographic information on a map, as well as allowing user interaction with map overlay objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).</p>
<p>It builds upon the API concepts and types in the QML Positioning API. A more hands-on introduction of the Maps and Navigation types can be found in the <a href="..//QtLocation.qml-location5-maps.md">Maps and Navigation tutorial</a>.</p>
<h2 id="maps">Maps</h2>
<h3 >Displaying Maps</h3>
<p>Displaying a map is done using the <a href="..//QtLocation.Map.md">Map</a> QML types. The Map type supports user interaction through the <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a> QML type. The Map object draws the map on-screen using OpenGL (ES), allowing for hardware-accelerated rendering where available.</p>
<p><b>Key Types</b></p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.Plugin.md">Plugin</a></td><td >A location-based services plugin provides data including map data which is then displayed in a Map object.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.Map.md">Map</a></td><td >QtQuick item to display a map on-screen.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a></td><td >Interaction helper for panning, flicking and pinch-to-zoom gesture on a Map.</td></tr>
</table>
<p>Note that the client must create a <a href="..//QtLocation.Plugin.md">Plugin</a> object prior to using a <a href="..//QtLocation.Map.md">Map</a> type in order to have access to map data to display.</p>
<h3 >Putting Objects on a Map (Map Overlay Objects)</h3>
<p>Maps can also contain map overlay objects, which are used to display information on its surface. There is a set of basic pre-defined map overlay objects, as well as the ability to implement custom map overlay objects using the <a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a> type, which can contain any standard QtQuick item.</p>
<p><b>Key Types</b></p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.MapCircle.md">MapCircle</a></td><td >A geographic circle (all points at a set distance from a center), optionally with a border.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.MapRectangle.md">MapRectangle</a></td><td >A rectangle whose top left and bottom right points are specified as coordinate types, optionally with a border.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.MapPolygon.md">MapPolygon</a></td><td >A polygon made of an arbitrary list of coordinates.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.MapPolyline.md">MapPolyline</a></td><td >A polyline made of an arbitrary list of coordinates.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a></td><td >Turns any arbitrary QtQuick Item into a map overlay object. <a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a> is an enabler for specifying custom map overlay objects.</td></tr>
</table>
<h3 >Model-View Design with Map Overlay Objects</h3>
<p>To automatically generate map overlay objects based on the contents of a QtQuick model (for example a ListModel item), the <a href="..//QtLocation.MapItemView.md">MapItemView</a> type is available. It accepts any map overlay object as its delegate, and can only be created within a <a href="..//QtLocation.Map.md">Map</a>.</p>
<p><b>Key Types</b></p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.MapItemView.md">MapItemView</a></td><td >Populates a Map with map overlay objects based on the data provided by a model.</td></tr>
</table>
<h3 >Interaction with Map Overlay Objects</h3>
<p>Properties of map overlay objects that influence their appearance on the display can be changed at any time, and many can also be used in animations. Animating coordinate-based map overlay objects, such as <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> and <a href="..//QtLocation.MapPolyline.md">MapPolyline</a>, is not yet available.</p>
<h2 id="geocoding-address-to-coordinate-and-vice-versa">Geocoding -- Address to Coordinate and Vice Versa</h2>
<p>Geocoding is the translation of geographic coordinates into addresses, or vice versa. Such a translation usually involves sending the source data to a server which then performs the translation and returns the results, although some location-based service provider <a href="..//QtLocation.Plugin.md">plugins</a> may be able to provide some geocoding functionality without sending data to a remote server. The availability and accuracy of the translation usually depends on the location or address being translated, as different areas of the Earth are mapped to varying degrees of accuracy.</p>
<p>A geocoding query in QML is performed using the <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a> type. For an address-to-coordinate query, its <code>query</code> property may be set to either an Address object or a string containing the textual form of the address to search for. To perform the reverse, the same property can be set to a coordinate instead. Results are made available in the contents of the model.</p>
<p><b>Key Types</b></p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.Plugin.md">Plugin</a></td><td >A location-based services plugin provides data including geocoding translation results which are exposed to clients via a <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a>.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a></td><td >Queries the Plugin for geocoding translations and provides access to results via indexes in the model.</td></tr>
<tr valign="top"><td >Address</td><td >Structured address for use in queries and results of geocoding.</td></tr>
</table>
<p>Note that the client must create a <a href="..//QtLocation.Plugin.md">Plugin</a> object prior to using a <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a> object. This will enable access to geocoding translation services and thus data to display.</p>
<h2 id="routing-and-navigation">Routing and Navigation</h2>
<p>Routing is the determination of a navigable path from one point to another on a map. Given a map that is aware of features that aid or hinder navigation, such as bridges, waterways and so on, a series of segments that make up the journey can be constructed. If these <a href="..//QtLocation.RouteSegment.md">RouteSegment</a>s are simple then we can add navigation information at the connecting points, <a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a>s, between the segments.</p>
<p><b>Key Types</b></p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.Route.md">Route</a></td><td >The entire path to be navigated.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteSegment.md">RouteSegment</a></td><td >The individual components of a route.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteManeuver.md">RouteManeuver</a></td><td >The navigation information that joins segments.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.RouteModel.md">RouteModel</a></td><td >The means of making requests on the backend to supply route information.</td></tr>
</table>
<!-- @@@location-maps-qml.html -->
