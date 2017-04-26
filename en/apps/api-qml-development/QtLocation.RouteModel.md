---
Title: QtLocation.RouteModel
---

# QtLocation.RouteModel

<span class="subtitle"></span>
<!-- $$$RouteModel-brief -->
<p>The RouteModel type provides access to routes. More...</p>
<!-- @@@RouteModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#autoUpdate-prop">autoUpdate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#error-prop">error</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#measurementSystem-prop">measurementSystem</a></b></b> : Locale::MeasurementSystem</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#query-prop">query</a></b></b> : RouteQuery</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#cancel-method">cancel</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#get-method">get</a></b></b>(int)</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#reset-method">reset</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.RouteModel.md#update-method">update</a></b></b>()</li>
</ul>
<!-- $$$RouteModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.RouteModel.md">RouteModel</a> type is used as part of a model/view grouping to retrieve geographic routes from a backend provider. Routes include data about driving directions between two points, walking directions with multiple waypoints, and various other similar concepts. It functions much like other Model types in QML (see for example ListModel and XmlListModel), and interacts with views such as <a href="..//QtLocation.MapItemView.md">MapItemView</a>, and ListView.</p>
<p>Like <a href="..//QtLocation.Map.md">Map</a> and <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a>, all the data for a <a href="..//QtLocation.RouteModel.md">RouteModel</a> to work comes from a services plugin. This is contained in the <a href="..//QtLocation.location-places-qml.md#plugin">plugin</a> property, and this must be set before the <a href="..//QtLocation.RouteModel.md">RouteModel</a> can do any useful work.</p>
<p>Once the plugin is set, create a <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> with the appropriate waypoints and other settings, and set the <a href="..//QtLocation.RouteModel.md">RouteModel</a>'s <a href="..//QtLocation.RouteModel.md#query-prop">query</a> property. If <a href="..//QtLocation.RouteModel.md#autoUpdate-prop">autoUpdate</a> is enabled, the update will being automatically. Otherwise, the <a href="..//QtLocation.RouteModel.md#update-method">update</a> method may be used. By default, <a href="..//QtLocation.RouteModel.md#autoUpdate-prop">autoUpdate</a> is disabled.</p>
<p>The data stored and returned in the <a href="..//QtLocation.RouteModel.md">RouteModel</a> consists of <a href="..//QtLocation.Route.md">Route</a> objects, as a list with the role name &quot;routeData&quot;. See the documentation for <a href="..//QtLocation.Route.md">Route</a> for further details on its structure and contents.</p>
<h3 >Example Usage</h3>
<p>The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the routeModel's <a href="..//QtLocation.RouteModel.md#autoUpdate-prop">autoUpdate</a> property to false, and call <a href="..//QtLocation.RouteModel.md#update-method">update</a> once the query is set up, to avoid useless extra requests halfway through the set up of the query.</p>
<pre class="cpp">Plugin {
id: aPlugin
name: <span class="string">&quot;nokia&quot;</span>
}
RouteQuery {
id: aQuery
}
RouteModel {
id: routeModel
plugin: aPlugin
query: aQuery
autoUpdate: <span class="keyword">false</span>
}</pre>
<pre class="cpp">{
aQuery<span class="operator">.</span>addWaypoint(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>)
aQuery<span class="operator">.</span>addWaypoint(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>)
aQuery<span class="operator">.</span>travelModes <span class="operator">=</span> <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
routeModel<span class="operator">.</span>update()
}</pre>
<!-- @@@RouteModel -->
<h2>Property Documentation</h2>
<!-- $$$autoUpdate -->
<table class="qmlname"><tr valign="top" id="autoUpdate-prop"><td class="tblQmlPropNode"><p><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td></tr></table><p>This property controls whether the Model automatically updates in response to changes in its attached <a href="..//QtLocation.RouteQuery.md">RouteQuery</a>. The default value of this property is false.</p>
<p>If setting this value to 'true', note that any change at all in the <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> object set in the <a href="..//QtLocation.RouteModel.md#query-prop">query</a> property will trigger a new request to be sent. If you are adjusting many properties of the <a href="..//QtLocation.RouteQuery.md">RouteQuery</a> with autoUpdate enabled, this can generate large numbers of useless (and later discarded) requests.</p>
<!-- @@@autoUpdate -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds how many routes the model currently has. Amongst other uses, you can use this value when accessing routes via the <a href="..//QtLocation.RouteModel.md#get-method">QtLocation::RouteModel::get</a> -method.</p>
<!-- @@@count -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property holds the latest error value of the routing request.</p>
<ul>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.NoError - No error has occurred</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.EngineNotSetError - The plugin/service provider used does not support routing</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.CommunicationError - An error occurred while communicating with the service provider</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.ParseError - The response from the service provider was in an unrecognizable format</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.UnknownError - An error occurred which does not fit into any of the other categories</li>
</ul>
<!-- @@@error -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the textual presentation of latest routing error. If no error has occurred or the model has been reset, an empty string is returned.</p>
<p>An empty string may also be returned if an error occurred which has no associated textual representation.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$measurementSystem -->
<table class="qmlname"><tr valign="top" id="measurementSystem-prop"><td class="tblQmlPropNode"><p><span class="name">measurementSystem</span> : <span class="type">Locale::MeasurementSystem</span></p></td></tr></table><p>This property holds the measurement system which will be used when calculating the route. This property is changed when the <a href="..//QtLocation.Plugin.md#locales-prop">Plugin::locales</a> property of <a href="..//QtLocation.RouteModel.md#plugin-prop">plugin</a> changes.</p>
<p>If setting this property it must be set after the <a href="..//QtLocation.RouteModel.md#plugin-prop">plugin</a> property is set.</p>
<!-- @@@measurementSystem -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the plugin that providers the actual routing service. Note that all plugins do not necessarily provide routing (could for example provide only geocoding or maps).</p>
<p>A valid plugin must be set before the <a href="..//QtLocation.RouteModel.md">RouteModel</a> can perform any useful operations.</p>
<p><b>See also </b><a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$query -->
<table class="qmlname"><tr valign="top" id="query-prop"><td class="tblQmlPropNode"><p><span class="name">query</span> : <span class="type"><a href="..//QtLocation.RouteQuery.md">RouteQuery</a></span></p></td></tr></table><p>This property holds the data of the route request. The primary data are the waypoint coordinates and possible further preferences (means of traveling, things to avoid on route etc).</p>
<!-- @@@query -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property holds the current status of the model.</p>
<ul>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.Null - No route requests have been issued or <a href="..//QtLocation.RouteModel.md#reset-method">reset</a> has been called.</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.Ready - Route request(s) have finished successfully.</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.Loading - Route request has been issued but not yet finished</li>
<li><a href="..//QtLocation.RouteModel.md">RouteModel</a>.Error - Routing error has occurred, details are in <a href="..//QtLocation.RouteModel.md#error-prop">error</a> and <a href="..//QtLocation.RouteModel.md#errorString-prop">errorString</a></li>
</ul>
<!-- @@@status -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="name">cancel</span>()</p></td></tr></table><p>Cancels any outstanding requests and clears errors. Model status will be set to either <a href="..//QtLocation.RouteModel.md">RouteModel</a>.Null or <a href="..//QtLocation.RouteModel.md">RouteModel</a>.Ready.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="name">get</span>(<span class="type">int</span>)</p></td></tr></table><p>Returns the Route at given index. Use <a href="..//QtLocation.RouteModel.md#count-prop">count</a> property to check the amount of routes available. The routes are indexed from zero, so the accessible range is 0..&#x2e;(count - 1).</p>
<p>If you access out of bounds, a zero (null object) is returned and a warning is issued.</p>
<!-- @@@get -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="name">reset</span>()</p></td></tr></table><p>Resets the model. All route data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to <a href="..//QtLocation.RouteModel.md">RouteModel</a>.Null</p>
<!-- @@@reset -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-method"><td class="tblQmlFuncNode"><p><span class="name">update</span>()</p></td></tr></table><p>Instructs the <a href="..//QtLocation.RouteModel.md">RouteModel</a> to update its data. This is most useful when <a href="..//QtLocation.RouteModel.md#autoUpdate-prop">autoUpdate</a> is disabled, to force a refresh when the query has been changed.</p>
<!-- @@@update -->
<br/>
