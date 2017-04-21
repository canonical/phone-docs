---
Title: QtLocation.qtlocation-index
---

# QtLocation.qtlocation-index

<span class="subtitle"></span>
<!-- $$$qtlocation-index.html-description -->
<p>The Qt Location API provides mapping, navigation, and place search via QML and C++ interfaces.</p>
<p>The API has not been released yet but due to its platform-independent nature is available on all Qt platforms.</p>
<h2 id="overview">Overview</h2>
<p>The Qt Location API gives developers the ability to determine a position by using a variety of possible sources, including satellite, or wifi, or text file, and so on. That information can then be used to determine a position in a map context with appropriate navigation and to embed, in the map, defined places with descriptive metadata. These three parts allow a device to know where it is and its location with respect to important features. Using features such as roads, destinations, routes, and other navigation attributes, applications can specify beginning and end-points for navigation and awareness of objects that may aid or hinder a journey.</p>
<h2 id="getting-started">Getting Started</h2>
<p>To load the Qt Location module, add the following statement to your .qml files</p>
<pre class="cpp">import <span class="type">QtLocation</span> <span class="number">5.3</span></pre>
<p>For C++ projects include the header appropriate for the current use case, for example applications using routes may use</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QGeoRoute&gt; </span></pre>
<p>The .pro file should have the <i>location</i> keyword added</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> location</pre>
<h3 >API Sub-Modules</h3>
<p>The API is split into sub-modules, which each have QML and C++ APIs. It focuses on Map and Place information. The required position data can be retrieved via the QtPositioning module.</p>
<h4 >Places</h4>
<p>Places is the natural complement to Positioning, providing a source of geographic data about places of interest (POIs). As well as providing the location, size and other vitals about a POI, the Places API can also retrieve images, reviews and other rich content related to the place.</p>
<table class="generic">
<tr valign="top"><td >Places introduction:</td><td ><a href="QtLocation.location-places-qml.md">for QML</a></td><td ><a href="QtLocation.location-places-cpp.md">for C++</a></td></tr>
</table>
<h4 >Maps and Navigation</h4>
<p>Maps and Navigation provides Qt Quick user interface components for displaying geographic information on a map, as well as allowing user interaction with map objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).</p>
<table class="generic">
<tr valign="top"><td >Maps and Navigation introduction:</td><td ><a href="QtLocation.location-maps-qml.md">for QML</a></td><td ><a href="QtLocation.location-maps-cpp.md">for C++</a></td></tr>
</table>
<h2 id="api-references-and-examples">API References and Examples</h2>
<p>Alphabetized lists of all classes and user interface components in the API, as well as detailed example applications to demonstrate their usage.</p>
<table class="generic">
<tr valign="top"><td >QML API Reference</td><td >Full list of QML components in the Qt Location API</td></tr>
<tr valign="top"><td ><a href="QtLocation.qtlocation-cpp.md">C++ API Reference by domain</a></td><td >Full list of C++ classes and methods of the Qt Location APIs sorted by domain</td></tr>
<tr valign="top"><td >C++ API Reference</td><td >Full list of C++ classes and methods of the Qt Location APIs</td></tr>
<tr valign="top"><td >Example Apps</td><td >Examples demonstrating use of the Qt Location APIs</td></tr>
<tr valign="top"><td ><a href="QtLocation.qml-location5-maps.md">Maps and Navigation Tutorial</a></td><td >Tutorial introducing the QML Maps Types</td></tr>
</table>
<h2 id="plugin-references-and-parameters">Plugin References and Parameters</h2>
<p>Information about plugins, important notes on their usage, parameters that can be provided to influence their behavior.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtLocation.location-plugin-nokia.md">Qt Location Nokia Plugin</a></p></td><td class="tblDescr"><p>Uses the relevant Nokia services provided by Nokia.</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtLocation.location-plugin-osm.md">Qt Location Open Street Map Plugin</a></p></td><td class="tblDescr"><p>Uses Open Street Map and related services.</p></td></tr>
</table>
<h3 >Implementing New Back-Ends and Porting</h3>
<p>For systems integrators and distributors, information relating to making Qt Location available for a new platform.</p>
<table class="generic">
<tr valign="top"><td ><a href="QtLocation.qtlocation-geoservices.md">GeoServices</a></td><td >Information about the Qt Location GeoServices plugins</td></tr>
<tr valign="top"><td ><a href="QtLocation.location-places-backend.md">Places</a></td><td >Information for places backend implementors</td></tr>
</table>
<h2 id="new-since-qt-4">New Since Qt 4</h2>
<p>In Qt 4 Qt Mobility provided some location functionality for Positioning and Maps with Landmarks support. The new Qt Location API has had an extensive reworking of <a href="QtLocation.Map.md">Map</a>s and <a href="QtLocation.location-cpp-qml.md#place">Place</a>s (formerly Landmarks). Also both C++ and QML APIs have been reworked to be simpler to use.</p>
<p>New features of Qt Location includes</p>
<ul>
<li>Maps are now part of the Qt Quick scenegraph, and rendered using hardware-accelerated OpenGL</li>
<li>Arbitrary Qt Quick items on the map are supported using <a href="QtLocation.MapQuickItem.md">MapQuickItem</a></li>
<li>Now possible to create map overlays with a model</li>
<li>Built-in support for pinch-to-zoom gestures, flicking , and panning (see <a href="QtLocation.MapGestureArea.md">MapGestureArea</a>)</li>
<li>Vast performance improvements over Qt Mobility 1.2, especially for large map polylines and objects in general</li>
<li>Full QML API now available for routing and geocoding -- compatible with standard QML model-view design</li>
<li>Service provider feature detection without having to open all the available plugins</li>
<li>Unified <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> QML type used by routing/geocoding/maps etc with easy-to-set <a href="QtLocation.PluginParameter.md">PluginParameter</a></li>
<li>Two plugins are supplied with Qt (a Nokia and an OSM plugin for GeoServices).</li>
<li>Landmarks API is replaced by the Places API</li>
<li><a href="QtLocation.location-cpp-qml.md#place">Place</a> supports viewing of richer content such as reviews, images, and editorials</li>
<li><a href="QtLocation.location-cpp-qml.md#place">Place</a> supports locale handling, sponsored search results, and supplier attribution</li>
</ul>
<!-- @@@qtlocation-index.html -->
