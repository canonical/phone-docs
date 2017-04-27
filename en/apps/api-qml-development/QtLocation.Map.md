---
Title: QtLocation.Map
---

# QtLocation.Map

<span class="subtitle"></span>
<!-- $$$Map-brief -->
<p>The Map type displays a map. More...</p>
<!-- @@@Map -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeMapType-prop">activeMapType</a></b></b> : MapType</li>
<li class="fn"><b><b><a href="#center-prop">center</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="#gesture-prop">gesture</a></b></b> : MapGestureArea</li>
<li class="fn"><b><b><a href="#mapItems-prop">mapItems</a></b></b> : list&lt;MapItem&gt;</li>
<li class="fn"><b><b><a href="#maximumZoomLevel-prop">maximumZoomLevel</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumZoomLevel-prop">minimumZoomLevel</a></b></b> : real</li>
<li class="fn"><b><b><a href="#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="#supportedMapTypes-prop">supportedMapTypes</a></b></b> : list&lt;MapType&gt;</li>
<li class="fn"><b><b><a href="#zoomLevel-prop">zoomLevel</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addMapItem-method">addMapItem</a></b></b>(MapItem <i>item</i>)</li>
<li class="fn">void <b><b><a href="#cameraStopped-method">cameraStopped</a></b></b>()</li>
<li class="fn">void <b><b><a href="#clearMapItems-method">clearMapItems</a></b></b>()</li>
<li class="fn"><b><b><a href="#fitViewportToGeoShape-method">fitViewportToGeoShape</a></b></b>(QGeoShape <i>shape</i>)</li>
<li class="fn"><b><b><a href="#fitViewportToMapItems-method">fitViewportToMapItems</a></b></b>()</li>
<li class="fn">void <b><b><a href="#pan-method">pan</a></b></b>(int <i>dx</i>, int <i>dy</i>)</li>
<li class="fn">void <b><b><a href="#removeMapItem-method">removeMapItem</a></b></b>(MapItem <i>item</i>)</li>
<li class="fn"><b><b><a href="#toCoordinate-method">toCoordinate</a></b></b>(QPointF <i>screenPosition</i>)</li>
<li class="fn"><b><b><a href="#toScreenPosition-method">toScreenPosition</a></b></b>(coordinate <i>coordinate</i>)</li>
</ul>
<!-- $$$Map-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Map type is used to display a map or image of the Earth, with the capability to also display interactive objects tied to the map's surface.</p>
<p>There are a variety of different ways to visualize the Earth's surface in a 2-dimensional manner, but all of them involve some kind of projection: a mathematical relationship between the 3D coordinates (latitude, longitude and altitude) and 2D coordinates (X and Y in pixels) on the screen.</p>
<p>Different sources of map data can use different projections, and from the point of view of the Map type, we treat these as one replaceable unit: the Map plugin. A Map plugin consists of a data source, as well as all other details needed to display its data on-screen.</p>
<p>The current Map plugin in use is contained in the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> property of the Map item. In order to display any image in a Map item, you will need to set this property. See the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> type for a description of how to retrieve an appropriate plugin for use.</p>
<p>The geographic region displayed in the Map item is referred to as its viewport, and this is defined by the properties <a href="#zoomLevel-prop">zoomLevel</a> controls the scale of the map. See each of these properties for further details about their values.</p>
<p>When the map is displayed, each possible geographic coordinate that is visible will map to some pixel X and Y coordinate on the screen. To perform conversions between these two, Map provides the <a href="#toScreenPosition-method">toScreenPosition</a> functions, which are of general utility.</p>
<h3 >Map Objects</h3>
<p>Map related objects can be declared within the body of a Map object in Qt Quick and will automatically appear on the Map. To add objects programmatically, first be sure they are created with the Map as their parent (for example in an argument to Component::createObject), and then call the <a href="#removeMapItem-method">removeMapItem</a> method also exists to do the opposite and remove an object from the Map.</p>
<p>Moving Map objects around, resizing them or changing their shape normally does not involve any special interaction with Map itself -- changing these details about a map object will automatically update the display.</p>
<h3 >Interaction</h3>
<p>The Map type includes support for pinch and flick gestures to control zooming and panning. These are enabled by default, and available at any time by using the <a href="#gesture-prop">gesture</a> object. The actual GestureArea is constructed specially at startup and cannot be replaced or destroyed. Its properties can be altered, however, to control its behavior.</p>
<h3 >Performance</h3>
<p>Maps are rendered using OpenGL (ES) and the Qt Scene Graph stack, and as a result perform quite well where GL accelerated hardware is available.</p>
<p>For &quot;online&quot; Map plugins, network bandwidth and latency can be major contributors to the user's perception of performance. Extensive caching is performed to mitigate this, but such mitigation is not always perfect. For &quot;offline&quot; plugins, the time spent retrieving the stored geographic data and rendering the basic map features can often play a dominant role. Some offline plugins may use hardware acceleration themselves to (partially) avert this.</p>
<p>In general, large and complex Map items such as polygons and polylines with large numbers of vertices can have an adverse effect on UI performance. Further, more detailed notes on this are in the documentation for each map item type.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a simple Map and the necessary Plugin type to use it. The map is centered near Brisbane, Australia, zoomed out to the minimum zoom level, with gesture interaction enabled.</p>
<pre class="cpp">Plugin {
id: somePlugin
<span class="comment">// code here to choose the plugin as necessary</span>
}
Map {
id: map
plugin: somePlugin
center {
latitude: <span class="operator">-</span><span class="number">27</span>
longitude: <span class="number">153</span>
}
zoomLevel: map<span class="operator">.</span>minimumZoomLevel
gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
}</pre>
<p class="centerAlign"><img src="../../../media/api-map.png" alt="" /></p><!-- @@@Map -->
<h2>Property Documentation</h2>
<!-- $$$activeMapType -->
<table class="qmlname"><tr valign="top" id="activeMapType-prop"><td class="tblQmlPropNode"><p><span class="name">activeMapType</span> : <span class="type"><a href="QtLocation.MapType.md">MapType</a></span></p></td></tr></table><p>Access to the currently active <a href="QtLocation.MapType.md">map type</a>.</p>
<p>This property can be set to change the active <a href="#supportedMapTypes-prop">supportedMapTypes</a> property for possible values.</p>
<p><b>See also </b><a href="QtLocation.MapType.md">MapType</a>.</p>
<!-- @@@activeMapType -->
<br/>
<!-- $$$center -->
<table class="qmlname"><tr valign="top" id="center-prop"><td class="tblQmlPropNode"><p><span class="name">center</span> : <span class="type">coordinate</span></p></td></tr></table><p>This property holds the coordinate which occupies the center of the mapping viewport. Invalid center coordinates are ignored.</p>
<p>The default value is an arbitrary valid coordinate.</p>
<!-- @@@center -->
<br/>
<!-- $$$gesture -->
<table class="qmlname"><tr valign="top" id="gesture-prop"><td class="tblQmlPropNode"><p><span class="name">gesture</span> : <span class="type"><a href="QtLocation.MapGestureArea.md">MapGestureArea</a></span></p></td></tr></table><p>Contains the <a href="QtLocation.MapGestureArea.md">MapGestureArea</a> created with the Map. This covers pan, flick and pinch gestures. Use <code>gesture.enabled: true</code> to enable basic gestures, or see <a href="QtLocation.MapGestureArea.md">MapGestureArea</a> for further details.</p>
<!-- @@@gesture -->
<br/>
<!-- $$$mapItems -->
<table class="qmlname"><tr valign="top" id="mapItems-prop"><td class="tblQmlPropNode"><p><span class="name">mapItems</span> : <span class="type">list</span>&lt;<span class="type">MapItem</span>&gt;</p></td></tr></table><p>Returns the list of all map items in no particular order. These items include items that were declared statically as part of the type declaration, as well as dynamical items (<a href="#addMapItem-method">addMapItem</a>, <a href="QtLocation.MapItemView.md">MapItemView</a>).</p>
<p><b>See also </b><a href="#clearMapItems-method">clearMapItems</a>.</p>
<!-- @@@mapItems -->
<br/>
<!-- $$$maximumZoomLevel -->
<table class="qmlname"><tr valign="top" id="maximumZoomLevel-prop"><td class="tblQmlPropNode"><p><span class="name">maximumZoomLevel</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum valid zoom level for the map.</p>
<p>The maximum zoom level is defined by the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> used. If a plugin supporting mapping is not set, -1.0 is returned.</p>
<!-- @@@maximumZoomLevel -->
<br/>
<!-- $$$minimumZoomLevel -->
<table class="qmlname"><tr valign="top" id="minimumZoomLevel-prop"><td class="tblQmlPropNode"><p><span class="name">minimumZoomLevel</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the minimum valid zoom level for the map.</p>
<p>The minimum zoom level is defined by the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> used. If a plugin supporting mapping is not set, -1.0 is returned.</p>
<!-- @@@minimumZoomLevel -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the plugin which provides the mapping functionality.</p>
<p>This is a write-once property. Once the map has a plugin associated with it, any attempted modifications of the plugin will be ignored.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$supportedMapTypes -->
<table class="qmlname"><tr valign="top" id="supportedMapTypes-prop"><td class="tblQmlPropNode"><p><span class="name">supportedMapTypes</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtLocation.MapType.md">MapType</a></span>&gt;</p></td></tr></table><p>This read-only property holds the set of <a href="QtLocation.MapType.md">map types</a> supported by this map.</p>
<p><b>See also </b><a href="#activeMapType-prop">activeMapType</a>.</p>
<!-- @@@supportedMapTypes -->
<br/>
<!-- $$$zoomLevel -->
<table class="qmlname"><tr valign="top" id="zoomLevel-prop"><td class="tblQmlPropNode"><p><span class="name">zoomLevel</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the zoom level for the map.</p>
<p>Larger values for the zoom level provide more detail. Zoom levels are always non-negative. The default value is 8.0&#x2e;</p>
<!-- @@@zoomLevel -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addMapItem -->
<table class="qmlname"><tr valign="top" id="addMapItem-method"><td class="tblQmlFuncNode"><p><span class="name">addMapItem</span>(<span class="type">MapItem</span><i> item</i>)</p></td></tr></table><p>Adds the given <i>item</i> to the Map (for example <a href="QtLocation.MapQuickItem.md">MapQuickItem</a>, <a href="QtLocation.MapCircle.md">MapCircle</a>). If the object already is on the Map, it will not be added again.</p>
<p>As an example, consider the case where you have a <a href="QtLocation.MapCircle.md">MapCircle</a> representing your current position:</p>
<pre class="qml">import QtQuick 2.0
import QtLocation 5.3
<span class="type">PositionSource</span> {
<span class="name">id</span>: <span class="name">positionSource</span>
}
<span class="type"><a href="#">Map</a></span> {
<span class="name">id</span>: <span class="name">map</span>
property <span class="type"><a href="QtLocation.MapCircle.md">MapCircle</a></span> <span class="name">circle</span>
<span class="name">Component</span>.onCompleted: {
<span class="name">circle</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; MapCircle {}'</span>, <span class="name">page</span>)
<span class="name">circle</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">positionSource</span>.<span class="name">position</span>.<span class="name">coordinate</span>
<span class="name">circle</span>.<span class="name">radius</span> <span class="operator">=</span> <span class="number">5000.0</span>
<span class="name">circle</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'green'</span>
<span class="name">circle</span>.<span class="name">border</span>.<span class="name">width</span> <span class="operator">=</span> <span class="number">3</span>
<span class="name">map</span>.<span class="name">addMapItem</span>(<span class="name">circle</span>)
}
}</pre>
<p><b>Note: </b>MapItemViews cannot be added with this method.</p><p><b>See also </b><a href="#clearMapItems-method">clearMapItems</a>.</p>
<!-- @@@addMapItem -->
<br/>
<!-- $$$cameraStopped -->
<table class="qmlname"><tr valign="top" id="cameraStopped-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">cameraStopped</span>()</p></td></tr></table><p>Optional hint that allows the map to prefetch during this idle period</p>
<!-- @@@cameraStopped -->
<br/>
<!-- $$$clearMapItems -->
<table class="qmlname"><tr valign="top" id="clearMapItems-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">clearMapItems</span>()</p></td></tr></table><p>Removes all items from the map.</p>
<p><b>See also </b><a href="#removeMapItem-method">removeMapItem</a>.</p>
<!-- @@@clearMapItems -->
<br/>
<!-- $$$fitViewportToGeoShape -->
<table class="qmlname"><tr valign="top" id="fitViewportToGeoShape-method"><td class="tblQmlFuncNode"><p><span class="name">fitViewportToGeoShape</span>(<span class="type">QGeoShape</span><i> shape</i>)</p></td></tr></table><p>Fits the current viewport to the boundary of the shape. The camera is positioned in the center of the shape, and at the largest integral zoom level possible which allows the whole shape to be visible on screen</p>
<!-- @@@fitViewportToGeoShape -->
<br/>
<!-- $$$fitViewportToMapItems -->
<table class="qmlname"><tr valign="top" id="fitViewportToMapItems-method"><td class="tblQmlFuncNode"><p><span class="name">fitViewportToMapItems</span>()</p></td></tr></table><p>Fits the current viewport to the boundary of all map items. The camera is positioned in the center of the map items, and at the largest integral zoom level possible which allows all map items to be visible on screen</p>
<!-- @@@fitViewportToMapItems -->
<br/>
<!-- $$$pan -->
<table class="qmlname"><tr valign="top" id="pan-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">pan</span>(<span class="type">int</span><i> dx</i>, <span class="type">int</span><i> dy</i>)</p></td></tr></table><p>Starts panning the map by <i>dx</i> pixels along the x-axis and by <i>dy</i> pixels along the y-axis.</p>
<p>Positive values for <i>dx</i> move the map right, negative values left. Positive values for <i>dy</i> move the map down, negative values up.</p>
<p>During panning the <a href="#zoomLevel-prop">zoomLevel</a> may change.</p>
<!-- @@@pan -->
<br/>
<!-- $$$removeMapItem -->
<table class="qmlname"><tr valign="top" id="removeMapItem-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">removeMapItem</span>(<span class="type">MapItem</span><i> item</i>)</p></td></tr></table><p>Removes the given <i>item</i> from the Map (for example <a href="QtLocation.MapQuickItem.md">MapQuickItem</a>, <a href="QtLocation.MapCircle.md">MapCircle</a>). If the MapItem does not exist or was not previously added to the map, the method does nothing.</p>
<p><b>See also </b><a href="#clearMapItems-method">clearMapItems</a>.</p>
<!-- @@@removeMapItem -->
<br/>
<!-- $$$toCoordinate -->
<table class="qmlname"><tr valign="top" id="toCoordinate-method"><td class="tblQmlFuncNode"><p><span class="name">toCoordinate</span>(<span class="type">QPointF</span><i> screenPosition</i>)</p></td></tr></table><p>Returns the coordinate which corresponds to the screen position <i>screenPosition</i>.</p>
<p>Returns an invalid coordinate if <i>screenPosition</i> is not within the current viewport.</p>
<!-- @@@toCoordinate -->
<br/>
<!-- $$$toScreenPosition -->
<table class="qmlname"><tr valign="top" id="toScreenPosition-method"><td class="tblQmlFuncNode"><p><span class="name">toScreenPosition</span>(<span class="type">coordinate</span><i> coordinate</i>)</p></td></tr></table><p>Returns the screen position which corresponds to the coordinate <i>coordinate</i>.</p>
<p>Returns an invalid QPointF if <i>coordinate</i> is not within the current viewport.</p>
<!-- @@@toScreenPosition -->
<br/>
