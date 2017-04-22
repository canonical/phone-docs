---
Title: QtLocation.qtlocation-places-map-example
---

# QtLocation.qtlocation-places-map-example

<span class="subtitle"></span>
<!-- $$$places_map-description -->
<p class="centerAlign"><img src="../../../../media/places-map.jpg" alt="" /></p><p>To write a QML application that will show places on a map, we start by making the following import declarations.</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3</pre>
<p>Instantiate a <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> instance. The <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> is effectively the backend from where places are sourced from. Because the <code>nokia</code> plugin has been specified, some mandatory parameters need to be filled in, see the <a href="QtLocation.location-plugin-nokia.md#mandatory-parameters">Nokia Plugin</a> documentation for details:</p>
<pre class="qml"><span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span> {
<span class="name">id</span>: <span class="name">myPlugin</span>
<span class="name">name</span>: <span class="string">&quot;nokia&quot;</span>
<span class="comment">//specify plugin parameters if necessary</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//...</span>
}</pre>
<p>Next we instantiate a <a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> which we can use to specify search parameters and perform a places search operation. For illustrative purposes, <a href="QtLocation.PlaceSearchModel.md#update-method">update()</a> is invoked once construction of the model is complete. Typically <a href="QtLocation.PlaceSearchModel.md#update-method">update()</a> would be invoked in response to a user action such as a button click.</p>
<pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
<span class="name">id</span>: <span class="name">searchModel</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">searchTerm</span>: <span class="string">&quot;Pizza&quot;</span>
<span class="comment">//Brisbane</span>
<span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">QtPositioning</span>.<span class="name">coordinate</span>(-<span class="number">27.46778</span>, <span class="number">153.02778</span>))
<span class="name">Component</span>.onCompleted: <span class="name">update</span>()
}</pre>
<p>The map is displayed by using the <a href="QtLocation.Map.md">Map</a> type and inside we declare the <a href="QtLocation.MapItemView.md">MapItemView</a> and supply the search model and a delegate. An inline delegate has been used and we have assumed that every search result is of <a href="QtLocation.PlaceSearchModel.md#search-result-types">type</a> <code>PlaceSerachesult</code>. Consequently it is assumed that we always have access to the <i>place</i> <a href="QtLocation.PlaceSearchModel.md#placesearchmodel-roles">role</a>, other search result types may not have a <i>place</i> <a href="QtLocation.PlaceSearchModel.md#placesearchmodel-roles">role</a>.</p>
<pre class="qml"><span class="type"><a href="QtLocation.Map.md">Map</a></span> {
<span class="name">id</span>: <span class="name">map</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>;
<span class="type">center</span> {
<span class="name">latitude</span>: -<span class="number">27.47</span>
<span class="name">longitude</span>: <span class="number">153.025</span>
}
<span class="name">zoomLevel</span>: <span class="number">13</span>
<span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
<span class="name">model</span>: <span class="name">searchModel</span>
<span class="name">delegate</span>: <span class="name">MapQuickItem</span> {
<span class="name">coordinate</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>
<span class="name">anchorPoint</span>.x: <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> <span class="number">0.5</span>
<span class="name">anchorPoint</span>.y: <span class="name">image</span>.<span class="name">height</span>
<span class="name">sourceItem</span>: <span class="name">Image</span> {
<span class="name">id</span>: <span class="name">image</span>
<span class="name">source</span>: <span class="string">&quot;marker.png&quot;</span>
}
}
}
}</pre>
<p>Files:</p>
<ul>
<li>places_map/places_map.qml</li>
<li>places_map/main.cpp</li>
<li>places_map/places_map.pro</li>
</ul>
<!-- @@@places_map -->
