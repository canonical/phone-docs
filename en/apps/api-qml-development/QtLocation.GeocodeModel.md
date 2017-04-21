---
Title: QtLocation.GeocodeModel
---

# QtLocation.GeocodeModel

<span class="subtitle"></span>
<!-- $$$GeocodeModel-brief -->
<p>The GeocodeModel type provides support for searching operations related to geographic information. More...</p>
<!-- @@@GeocodeModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#bounds-prop">bounds</a></b></b> : geoshape</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#error-prop">error</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#limit-prop">limit</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#offset-prop">offset</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#query-prop">query</a></b></b> : QVariant</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#cancel-method">cancel</a></b></b>()</li>
<li class="fn">Location <b><b><a href="QtLocation.GeocodeModel.md#get-method">get</a></b></b>(int)</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#reset-method">reset</a></b></b>()</li>
<li class="fn"><b><b><a href="QtLocation.GeocodeModel.md#update-method">update</a></b></b>()</li>
</ul>
<!-- $$$GeocodeModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> type is used as part of a model/view grouping to match addresses or search strings with geographic locations. How the geographic locations generated are used or displayed is decided by any Views attached to the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> (for example a <a href="QtLocation.MapItemView.md">MapItemView</a> or ListView).</p>
<p>Like <a href="QtLocation.Map.md">Map</a> and <a href="QtLocation.RouteModel.md">RouteModel</a>, all the data for a <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> to work comes from a services plugin. This is contained in the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> property, and this must be set before the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> can do any useful work.</p>
<p>Once the plugin is set, the <a href="QtLocation.GeocodeModel.md#query-prop">query</a> property can be used to specify the address or search string to match. If <a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a> is enabled, the Model will update its output automatically. Otherwise, the <a href="QtLocation.GeocodeModel.md#update-method">update</a> method may be used. By default, <a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a> is disabled.</p>
<p>The data stored and returned in the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> consists of Location objects, as a list with the role name &quot;locationData&quot;. See the documentation for Location for further details on its structure and contents.</p>
<h3 >Example Usage</h3>
<p>The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the geocodeModel's <a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a> property to false, and call <a href="QtLocation.GeocodeModel.md#update-method">update</a> once the query is set up. In this case, as we use a string value in <a href="QtLocation.GeocodeModel.md#query-prop">query</a>, only one update would occur, even with <a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a> enabled. However, if we provided an Address object we may inadvertently trigger multiple requests whilst setting its properties.</p>
<pre class="cpp">Plugin {
id: aPlugin
}
GeocodeModel {
id: geocodeModel
plugin: aPlugin
autoUpdate: <span class="keyword">false</span>
}</pre>
<pre class="cpp">{
geocodeModel<span class="operator">.</span>query <span class="operator">=</span> <span class="string">&quot;53 Brandl St, Eight Mile Plains, Australia&quot;</span>
geocodeModel<span class="operator">.</span>update()
}</pre>
<!-- @@@GeocodeModel -->
<h2>Property Documentation</h2>
<!-- $$$autoUpdate -->
<table class="qmlname"><tr valign="top" id="autoUpdate-prop"><td class="tblQmlPropNode"><p><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td></tr></table><p>This property controls whether the Model automatically updates in response to changes in its attached query. The default value of this property is false.</p>
<p>If setting this value to 'true' and using an Address or coordinate as the query, note that any change at all in the object's properties will trigger a new request to be sent. If you are adjusting many properties of the object whilst autoUpdate is enabled, this can generate large numbers of useless (and later discarded) requests.</p>
<!-- @@@autoUpdate -->
<br/>
<!-- $$$bounds -->
<table class="qmlname"><tr valign="top" id="bounds-prop"><td class="tblQmlPropNode"><p><span class="name">bounds</span> : <span class="type">geoshape</span></p></td></tr></table><p>This property holds the bounding area used to limit the results to those within the area. This is particularly useful if query is only partially filled out, as the service will attempt to (reverse) geocode all matches for the specified data.</p>
<p>Accepted types are georectangle and geocircle.</p>
<!-- @@@bounds -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds how many locations the model currently has. Amongst other uses, you can use this value when accessing locations via the <a href="QtLocation.GeocodeModel.md#get-method">GeocodeModel::get</a> -method.</p>
<!-- @@@count -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property holds the latest error value of the geocoding request.</p>
<ul>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.NoError - No error has occurred</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.EngineNotSetError - The plugin/service provider used does not support (reverse) geocoding</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.CommunicationError - An error occurred while communicating with the service provider</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.ParseError - The response from the service provider was in an unrecognizable format</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.CombinationError - An error occurred while results where being combined from multiple sources</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.UnknownError - An error occurred which does not fit into any of the other categories</li>
</ul>
<!-- @@@error -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the textual presentation of latest geocoding error. If no error has occurred or the model has been reset, an empty string is returned.</p>
<p>An empty string may also be returned if an error occurred which has no associated textual representation.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$limit -->
<table class="qmlname"><tr valign="top" id="limit-prop"><td class="tblQmlPropNode"><p><span class="name">limit</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the maximum number of results. The limit and <a href="QtLocation.GeocodeModel.md#offset-prop">offset</a> values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).</p>
<p>If limit is -1 the entire result set will be returned, otherwise at most limit results will be returned. The limit and <a href="QtLocation.GeocodeModel.md#offset-prop">offset</a> results can be used together to implement paging.</p>
<!-- @@@limit -->
<br/>
<!-- $$$offset -->
<table class="qmlname"><tr valign="top" id="offset-prop"><td class="tblQmlPropNode"><p><span class="name">offset</span> : <span class="type">int</span></p></td></tr></table><p>This property tells not to return the first 'offset' number of the results. The <a href="QtLocation.GeocodeModel.md#limit-prop">limit</a> and offset values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).</p>
<p>The <a href="QtLocation.GeocodeModel.md#limit-prop">limit</a> and offset results can be used together to implement paging.</p>
<!-- @@@offset -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the plugin that provides the actual geocoding service. Note that all plugins do not necessarily provide geocoding (could for example provide only routing or maps).</p>
<p><b>See also </b><a href="QtLocation.location-places-qml.md#plugin">Plugin</a>.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$query -->
<table class="qmlname"><tr valign="top" id="query-prop"><td class="tblQmlPropNode"><p><span class="name">query</span> : <span class="type">QVariant</span></p></td></tr></table><p>This property holds the data of the geocoding request. The property accepts three types of queries which determine both the data and the type of action to be performed:</p>
<ul>
<li>Address - Geocoding (address to coordinate)</li>
<li>coordinate - Reverse geocoding (coordinate to address)</li>
<li>string - Geocoding (address to coordinate)</li>
</ul>
<!-- @@@query -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property holds the current status of the model.</p>
<ul>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Null - No geocode requests have been issued or <a href="QtLocation.GeocodeModel.md#reset-method">reset</a> has been called.</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Ready - Geocode request(s) have finished successfully.</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Loading - Geocode request has been issued but not yet finished</li>
<li><a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Error - Geocoding error has occurred, details are in <a href="QtLocation.GeocodeModel.md#error-prop">error</a> and <a href="QtLocation.GeocodeModel.md#errorString-prop">errorString</a></li>
</ul>
<!-- @@@status -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="name">cancel</span>()</p></td></tr></table><p>Cancels any outstanding requests and clears errors. Model status will be set to either <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Null or <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Ready.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">Location</span> <span class="name">get</span>(<span class="type">int</span>)</p></td></tr></table><p>Returns the Location at given index. Use <a href="QtLocation.GeocodeModel.md#count-prop">count</a> property to check the amount of locations available. The locations are indexed from zero, so the accessible range is 0..&#x2e;(count - 1).</p>
<p>If you access out of bounds, a zero (null object) is returned and a warning is issued.</p>
<!-- @@@get -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="name">reset</span>()</p></td></tr></table><p>Resets the model. All location data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to <a href="QtLocation.GeocodeModel.md">GeocodeModel</a>.Null</p>
<!-- @@@reset -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-method"><td class="tblQmlFuncNode"><p><span class="name">update</span>()</p></td></tr></table><p>Instructs the <a href="QtLocation.GeocodeModel.md">GeocodeModel</a> to update its data. This is most useful when <a href="QtLocation.GeocodeModel.md#autoUpdate-prop">autoUpdate</a> is disabled, to force a refresh when the query has been changed.</p>
<!-- @@@update -->
<br/>
