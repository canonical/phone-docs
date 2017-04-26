---
Title: QtLocation.location-maps-cpp
---

# QtLocation.location-maps-cpp

<span class="subtitle"></span>
<!-- $$$location-maps-cpp.html-description -->
<p><b>Maps and Navigation</b> provides C++ utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).</p>
<p>Currently it is not possible to interact with maps via C++. Mapping applications must use the <a href="..//QtLocation.location-maps-qml.md">Maps and Navigation (QML)</a> API.</p>
<h2 id="geocoding">Geocoding</h2>
<p>In C++, an address-to-coordinate query is performed using the geocode() method of the QGeoCodingManager class. For coordinate-to-address queries, the reverseGeocode() method is available on the same class. Instances of QGeoCodingManager are available via QGeoServiceProvider.</p>
<p><b>Key Classes</b></p>
<table class="generic">
<tr valign="top"><td >QGeoServiceProvider</td><td >Provides a QGeoCodingManager instance ready for use.</td></tr>
<tr valign="top"><td >QGeoCodingManager</td><td >Accepts queries and produces QGeoCodeReply objects.</td></tr>
<tr valign="top"><td >QGeoCodeReply</td><td >Contains the results of a geocoding query.</td></tr>
</table>
<h2 id="navigation">Navigation</h2>
<p>In C++, a route query is performed using the calculate() method of the QGeoRoutingManager class. The returned route reply can contain multiple routes to the same destination.</p>
<p><b>Key Classes</b></p>
<table class="generic">
<tr valign="top"><td >QGeoServiceProvider</td><td >Provides a QGeoCodingManager instance ready for use.</td></tr>
<tr valign="top"><td >QGeoRoutingManager</td><td >Accepts queries and produces QGeoRouteReply objects.</td></tr>
<tr valign="top"><td >QGeoRouteReply</td><td >Contains the results of a routing query.</td></tr>
<tr valign="top"><td >QGeoRoute</td><td >Contains information about a route.</td></tr>
</table>
<!-- @@@location-maps-cpp.html -->
