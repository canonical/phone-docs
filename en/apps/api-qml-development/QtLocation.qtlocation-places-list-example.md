---
Title: QtLocation.qtlocation-places-list-example
---

# QtLocation.qtlocation-places-list-example

<span class="subtitle"></span>
<!-- $$$places_list-description -->
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/b7976ed5-places-list.png" alt="" /></p><p>To write a QML application that will show places in a list, we start by making the following import declarations.</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3</pre>
<p>Instantiate a <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> instance. The <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> is effectively the backend from where places are sourced from. Because the <code>nokia</code> plugin has been specified, some mandatory parameters need to be filled in, see the <a href="QtLocation.location-plugin-nokia.md#mandatory-parameters">Nokia Plugin</a> documentation for details:</p>
<pre class="qml"><span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span> {
<span class="name">id</span>: <span class="name">myPlugin</span>
<span class="name">name</span>: <span class="string">&quot;nokia&quot;</span>
<span class="comment">//specify plugin parameters as necessary</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//...</span>
}</pre>
<p>Next we instantiate a <a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> which we can use to specify search parameters and perform a places search operation. For illustrative purposes, <a href="QtLocation.PlaceSearchModel.md#update-method">update()</a> is invoked once construction of the model is complete. Typically <a href="QtLocation.PlaceSearchModel.md#update-method">update()</a> would be invoked in response to a user action such as a button click.</p>
<pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
<span class="name">id</span>: <span class="name">searchModel</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
<span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
<span class="name">Component</span>.onCompleted: <span class="name">update</span>()
}</pre>
<p>Finally we instantiate a ListView to show the search results found by the model. An inline delegate has been used and we have assumed that every search result is of <a href="QtLocation.PlaceSearchModel.md#search-result-types">type</a> <code>PlaceSearchesult</code>. Consequently it is assumed that we always have access to the <i>place</i> <a href="QtLocation.PlaceSearchModel.md#placesearchmodel-roles">role</a>, other search result types may not have a <i>place</i> <a href="QtLocation.PlaceSearchModel.md#placesearchmodel-roles">role</a>.</p>
<pre class="qml"><span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">searchModel</span>
<span class="name">delegate</span>: <span class="name">Component</span> {
<span class="type">Column</span> {
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">text</span> }
}
}
<span class="name">spacing</span>: <span class="number">10</span>
}</pre>
<p>Files:</p>
<ul>
<li>places_list/places_list.qml</li>
<li>places_list/main.cpp</li>
<li>places_list/places_list.pro</li>
</ul>
<!-- @@@places_list -->
