---
Title: QtLocation.qtlocation-mapviewer-example
---

# QtLocation.qtlocation-mapviewer-example

<span class="subtitle"></span>
<!-- $$$mapviewer-description -->
<p>This is a large example covering many basic uses of maps, positioning, and navigation services in Qt Location. This page is divided into sections covering each of these areas of functionality with snippets from the code.</p>
<p>The Map Viewer example can work with any of the available geo services plugins. However, some plugins may require additional <a href="QtLocation.PluginParameter.md">plugin parameters</a> in order to function correctly. <a href="QtLocation.PluginParameter.md">Plugin parameters</a> can be passed on the command line using the <code>--plugin</code> argument, which takes the form:</p>
<pre class="cpp"><span class="operator">-</span><span class="operator">-</span>plugin<span class="operator">.</span><span class="operator">&lt;</span>parameter name<span class="operator">&gt;</span> <span class="operator">&lt;</span>parameter value<span class="operator">&gt;</span></pre>
<p>Refer to the documentation for each of the geo services plugins for details on what plugin parameters they support. The Nokia services plugin supplied with Qt requires an <i>app_id</i> and <i>token</i> pair. See &quot;<a href="QtLocation.location-plugin-nokia.md">Qt Location Nokia Plugin</a>&quot; for details.</p>
<p>QML types shown in this example:</p>
<ul>
<li>Displaying a map<ul>
<li><a href="QtLocation.Map.md">Map</a></li>
<li><a href="QtLocation.MapGestureArea.md">MapGestureArea</a></li>
<li>coordinate</li>
</ul>
</li>
<li>Finding an address<ul>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a></li>
<li><a href="QtLocation.MapItemView.md">MapItemView</a></li>
<li><a href="QtLocation.MapCircle.md">MapCircle</a></li>
</ul>
</li>
<li>Directions and travel routes<ul>
<li><a href="QtLocation.RouteModel.md">RouteModel</a></li>
<li><a href="QtLocation.MapRoute.md">MapRoute</a></li>
</ul>
</li>
</ul>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/011bd6d2-c505-42c3-8044-175a014ac70f-api/apps/qml/sdk-15.04.1/qtlocation-mapviewer-example/images/example-mapviewer.png" alt="" /></p>
<h3 >Displaying a Map</h3>
<p>Drawing a map on-screen is accomplished using the Map type, as shown below.</p>
<pre class="qml"><span class="type"><a href="QtLocation.Map.md">Map</a></span> {
<span class="name">id</span>: <span class="name">map</span>
<span class="name">zoomLevel</span>: (<span class="name">maximumZoomLevel</span> <span class="operator">-</span> <span class="name">minimumZoomLevel</span>)<span class="operator">/</span><span class="number">2</span>
<span class="type">center</span> {
<span class="name">latitude</span>: -<span class="number">27.5796</span>
<span class="name">longitude</span>: <span class="number">153.1003</span>
}
<span class="comment">// Enable pinch gestures to zoom in and out</span>
<span class="name">gesture</span>.flickDeceleration: <span class="number">3000</span>
<span class="name">gesture</span>.enabled: <span class="number">true</span>
<span class="type">center</span> {
<span class="name">latitude</span>: -<span class="number">27.5796</span>
<span class="name">longitude</span>: <span class="number">153.1003</span>
}
}</pre>
<p>In this example, we give the map an initial center coordinate with a set latitude and longitude. We also set the initial zoom level to 50% (halfway between the maximum and minimum).</p>
<p>The calls to &quot;pinch&quot; and &quot;flick&quot; are used to enable gestures on the map. The flick gesture is also sometimes known as &quot;kinetic panning&quot;, and provides a more intuitive feel for panning the map both on touch screens and with a mouse.</p>
<p>As we do not specify a plugin for supplying map data, the platform default will be used. This is typically the &quot;nokia&quot; plugin, which provides data from Nokia services. Additional licensing conditions do apply to the use of this data, please see the documentation for further details.</p>
<h3 >Finding an Address (Geocoding)</h3>
<p>To locate a certain address or place on the map uses a process called geocoding. In order to perform a geocode operation, we first need to adjust our Map object to be able to receive the result.</p>
<p>Receiving results of geocoding is done through a <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>, which is typically instantiated as a property of the Map component:</p>
<pre class="qml">    property <span class="type"><a href="QtLocation.GeocodeModel.md">GeocodeModel</a></span> <span class="name">geocodeModel</span>: <span class="name">GeocodeModel</span> {
}</pre>
<p>Then, to display the contents of the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> we use a <a href="QtLocation.MapItemView.md">MapItemView</a>:</p>
<pre class="qml">    <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">geocodeModel</span>
<span class="name">delegate</span>: <span class="name">pointDelegate</span>
}</pre>
<p><a href="QtLocation.MapItemView.md">MapItemView</a> uses an object called a &quot;delegate&quot; to act as a template for the items it creates. This can contain any map object desired, but in this case we show a <a href="QtLocation.MapCircle.md">MapCircle</a>:</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">pointDelegate</span>
<span class="type"><a href="QtLocation.MapCircle.md">MapCircle</a></span> {
<span class="name">radius</span>: <span class="number">1000</span>
<span class="name">color</span>: <span class="name">circleMouseArea</span>.<span class="name">containsMouse</span> ? <span class="string">&quot;lime&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="name">opacity</span>: <span class="number">0.6</span>
<span class="name">center</span>: <span class="name">locationData</span>.<span class="name">coordinate</span>
}
}</pre>
<p>With these three objects, we have enough to receive Geocode responses and display them on our Map. The final piece is to send the actual Geocode request.</p>
<p>In this example, we have a utility component called Dialog which we use to display the user interface requesting geocoding parameters. You can create a similar component yourself using Dialog.qml in this example as a reference, or drive the process using any other UI you wish.</p>
<p>To send a geocode request, first we create an Address object, and fill it in with the desired parameters. Then we set &quot;map.geocodeModel.query&quot; to the filled in Address, and call update() on the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.</p>
<pre class="qml">    <span class="type">InputDialog</span> {
<span class="name">id</span>: <span class="name">geocodeDialog</span>
<span class="type">Address</span> {
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
}
}</pre>
<h3 >Directions and Travel Routes</h3>
<p>Similar to the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>, Qt Location also features the <a href="QtLocation.RouteModel.md">RouteModel</a> type, which allows information about routes (for example driving directions) between two or more points, to be received and used with a Map.</p>
<p>Here again, we instantiate the <a href="QtLocation.RouteModel.md">RouteModel</a> as a property of our Map:</p>
<pre class="qml">    property <span class="type"><a href="QtLocation.RouteQuery.md">RouteQuery</a></span> <span class="name">routeQuery</span>: <span class="name">RouteQuery</span> {}
property <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> <span class="name">routeModel</span>: <span class="name">RouteModel</span> {
<span class="name">plugin</span> : <span class="name">map</span>.<span class="name">plugin</span>
<span class="name">query</span>: <span class="name">routeQuery</span>
}</pre>
<p>To display the contents of a model to the user, we need a view. Once again we will use a <a href="QtLocation.MapItemView.md">MapItemView</a>, to display the Routes as objects on the Map:</p>
<pre class="qml">    <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">routeModel</span>
<span class="name">delegate</span>: <span class="name">routeDelegate</span>
<span class="name">autoFitViewport</span>: <span class="number">true</span>
}</pre>
<p>To act as a template for the objects we wish the view to create, we create a delegate component:</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">routeDelegate</span>
<span class="type"><a href="QtLocation.MapRoute.md">MapRoute</a></span> {
<span class="name">route</span>: <span class="name">routeData</span>
<span class="name">line</span>.color: <span class="name">routeMouseArea</span>.<span class="name">containsMouse</span> ? <span class="string">&quot;lime&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="name">line</span>.width: <span class="number">5</span>
<span class="name">smooth</span>: <span class="number">true</span>
<span class="name">opacity</span>: <span class="number">0.8</span>
}</pre>
<p>With the model, view and delegate now complete, the only missing component is some kind of control over the model to begin the Route request process. In the simplest case, we can fill out a Route request using two already available coordinates, which we store inside the RouteDialog component:</p>
<pre class="qml">    <span class="type">RouteDialog</span> {
<span class="name">id</span>: <span class="name">routeDialog</span>
property <span class="type">variant</span> <span class="name">startCoordinate</span>
property <span class="type">variant</span> <span class="name">endCoordinate</span>
}</pre>
<p>In the next snippet, we show how to set up the request object and instruct the model to update. We also instruct the map to center on the start coordinate for our routing request.</p>
<pre class="qml">        <span class="keyword">function</span> <span class="name">calculateRoute</span>() {
<span class="comment">// clear away any old data in the query</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">clearWaypoints</span>();
<span class="comment">// add the start and end coords as waypoints on the route</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">startCoordinate</span>)
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">endCoordinate</span>)
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">travelModes</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">travelMode</span>
<span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">routeOptimizations</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">routeOptimization</span>
<span class="name">map</span>.<span class="name">routeModel</span>.<span class="name">update</span>();
<span class="comment">// center the map on the start coord</span>
<span class="name">map</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">startCoordinate</span>;</pre>
<p>This is all that is required to display a Route on the Map. However, it is also useful to be able to retrieve the written directions and explanation of the travel route. In the example, these are displayed in the pull-out on the left-hand side of the map. To create this pull-out's contents, we use a standard ListModel and ListView pair. The data in the ListModel is built from the routeModel's output:</p>
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
}</pre>
<p>Inside the <a href="QtLocation.RouteModel.md">RouteModel</a>, we add an <a href="QtLocation.RouteModel.md#status-prop">onStatusChanged</a> handler, which calls the <code>update()</code> function we defined on the model:</p>
<pre class="qml">        <span class="name">onStatusChanged</span>: {
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
}</pre>
<p>Files:</p>
<ul>
<li>mapviewer/mapviewer.qml</li>
<li>mapviewer/qmlmapviewerwrapper.cpp</li>
<li>mapviewer/content/dialogs/Message.qml</li>
<li>mapviewer/content/dialogs/RouteDialog.qml</li>
<li>mapviewer/content/map/3dItem.qml</li>
<li>mapviewer/content/map/CircleItem.qml</li>
<li>mapviewer/content/map/ImageItem.qml</li>
<li>mapviewer/content/map/MapComponent.qml</li>
<li>mapviewer/content/map/Marker.qml</li>
<li>mapviewer/content/map/MiniMap.qml</li>
<li>mapviewer/content/map/PolygonItem.qml</li>
<li>mapviewer/content/map/PolylineItem.qml</li>
<li>mapviewer/content/map/RectangleItem.qml</li>
<li>mapviewer/content/map/VideoItem.qml</li>
<li>mapviewer/mapviewer.pro</li>
<li>mapviewer/mapviewerwrapper.qrc</li>
</ul>
<!-- @@@mapviewer -->
