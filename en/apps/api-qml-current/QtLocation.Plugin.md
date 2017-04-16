---
Title: QtLocation.Plugin
---

# QtLocation.Plugin

<span class="subtitle"></span>
<!-- $$$Plugin-brief -->
<p>The Plugin type describes a Location based services plugin. More...</p>
<!-- @@@Plugin -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#allowExperimental-prop">allowExperimental</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#availableServiceProviders-prop">availableServiceProviders</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#isAttached-prop">isAttached</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#locales-prop">locales</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#parameters-prop">parameters</a></b></b> : list&lt;PluginParameter&gt;</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#preferred-prop">preferred</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="..//QtLocation.Plugin.md#required-prop">required</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="..//QtLocation.Plugin.md#supportsGeocoding-method">supportsGeocoding</a></b></b>(GeocodingFeatures <i>features</i>)</li>
<li class="fn">bool <b><b><a href="..//QtLocation.Plugin.md#supportsMapping-method">supportsMapping</a></b></b>(MappingFeatures <i>features</i>)</li>
<li class="fn">bool <b><b><a href="..//QtLocation.Plugin.md#supportsPlaces-method">supportsPlaces</a></b></b>(PlacesFeatures <i>features</i>)</li>
<li class="fn">bool <b><b><a href="..//QtLocation.Plugin.md#supportsRouting-method">supportsRouting</a></b></b>(RoutingFeatures <i>features</i>)</li>
</ul>
<!-- $$$Plugin-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Plugin type is used to declaratively specify which available GeoServices plugin should be used for various tasks in the Location API. Plugins are used by <a href="..//QtLocation.Map.md">Map</a>, <a href="..//QtLocation.RouteModel.md">RouteModel</a>, and <a href="..//QtLocation.GeocodeModel.md">GeocodeModel</a> types, as well as a variety of others.</p>
<p>Plugins recognized by the system have a <a href="..//QtLocation.Plugin.md#name-prop">name</a> property, a simple string normally indicating the name of the service that the Plugin retrieves data from. They also have a variety of features, which can be test for using the <a href="..//QtLocation.Plugin.md#supportsRouting-method">supportsRouting()</a>, <a href="..//QtLocation.Plugin.md#supportsGeocoding-method">supportsGeocoding()</a>, <a href="..//QtLocation.Plugin.md#supportsMapping-method">supportsMapping()</a> and <a href="..//QtLocation.Plugin.md#supportsPlaces-method">supportsPlaces()</a> methods.</p>
<p>When a Plugin object is created, it is &quot;detached&quot; and not associated with any actual service plugin. Once it has received information via setting its <a href="..//QtLocation.Plugin.md#name-prop">name</a>, <a href="..//QtLocation.Plugin.md#preferred-prop">preferred</a>, or <a href="..//QtLocation.Plugin.md#required-prop">required</a> properties, it will choose an appropriate service plugin to attach to. Plugin objects can only be attached once; to use multiple plugins, create multiple Plugin objects.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a Plugin object being created with the <a href="..//QtLocation.Plugin.md#required-prop">required</a> and <a href="..//QtLocation.Plugin.md#preferred-prop">preferred</a> properties set. This Plugin will attach to the first plugin found plugin that supports both mapping and geocoding, and will prefer plugins named &quot;nokia&quot; or &quot;foo&quot; to any others.</p>
<pre class="cpp">Plugin {
id: plugin
preferred: <span class="operator">[</span><span class="string">&quot;nokia&quot;</span><span class="operator">,</span> <span class="string">&quot;foo&quot;</span><span class="operator">]</span>
required: Plugin<span class="operator">.</span>AnyMappingFeatures <span class="operator">|</span> Plugin<span class="operator">.</span>AnyGeocodingFeatures
}</pre>
<!-- @@@Plugin -->
<h2>Property Documentation</h2>
<!-- $$$allowExperimental -->
<table class="qmlname"><tr valign="top" id="allowExperimental-prop"><td class="tblQmlPropNode"><p><span class="name">allowExperimental</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates if experimental plugins can be used.</p>
<!-- @@@allowExperimental -->
<br/>
<!-- $$$availableServiceProviders -->
<table class="qmlname"><tr valign="top" id="availableServiceProviders-prop"><td class="tblQmlPropNode"><p><span class="name">availableServiceProviders</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a list of all available service plugins' names. This can be used to manually enumerate the available plugins if the control provided by <a href="..//QtLocation.Plugin.md#name-prop">name</a> and <a href="..//QtLocation.Plugin.md#required-prop">required</a> is not sufficient for your needs.</p>
<!-- @@@availableServiceProviders -->
<br/>
<!-- $$$isAttached -->
<table class="qmlname"><tr valign="top" id="isAttached-prop"><td class="tblQmlPropNode"><p><span class="name">isAttached</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates if the Plugin is attached to another Plugin.</p>
<!-- @@@isAttached -->
<br/>
<!-- $$$locales -->
<table class="qmlname"><tr valign="top" id="locales-prop"><td class="tblQmlPropNode"><p><span class="name">locales</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property contains an ordered list of preferred plugin locales. If the first locale cannot be accommodated, then the backend falls back to using the second, and so on. By default the locales property contains the system locale.</p>
<p>The locales are specified as strings which have the format &quot;language[_script][_country]&quot; or &quot;C&quot;, where:</p>
<ul>
<li>language is a lowercase, two-letter, ISO 639 language code,</li>
<li>script is a titlecase, four-letter, ISO 15924 script code,</li>
<li>country is an uppercase, two- or three-letter, ISO 3166 country code (also &quot;419&quot; as defined by United Nations),</li>
<li>the &quot;C&quot; locale is identical in behavior to English/UnitedStates as per QLocale</li>
</ul>
<p>If the first specified locale cannot be accommodated, the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> falls back to the next and so forth. Some <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> backends may not support a set of locales which are rigidly defined. An arbitrary example is that some <a href="..//QtLocation.location-cpp-qml.md#place">Place</a>'s in France could have French and English localizations, while certain areas in America may only have the English localization available. In the above scenario, the set of supported locales is context dependent on the search location.</p>
<p>If the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> cannot accommodate any of the preferred locales, the manager falls back to using a supported language that is backend specific.</p>
<p>For <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>'s that do not support locales, the locales list is always empty.</p>
<p>The following code demonstrates how to set a single and multiple locales:</p>
<pre class="qml"><span class="comment">//single locale</span>
<span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span> {
<span class="name">locales</span>: <span class="string">&quot;en_US&quot;</span>
}
<span class="comment">//multiple locales</span>
<span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span> {
<span class="name">locales</span>: [<span class="string">&quot;fr_FR&quot;</span>,<span class="string">&quot;en_US&quot;</span>]
}</pre>
<!-- @@@locales -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the plugin. Setting this property will cause the Plugin to only attach to a plugin with exactly this name. The value of <a href="..//QtLocation.Plugin.md#required-prop">required</a> will be ignored.</p>
<!-- @@@name -->
<br/>
<!-- $$$parameters -->
<table class="qmlname"><tr valign="top" id="parameters-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">parameters</span> : <span class="type">list</span>&lt;<span class="type"><a href="..//QtLocation.PluginParameter.md">PluginParameter</a></span>&gt;</p></td></tr></table><p>This property holds the list of plugin parameters.</p>
<!-- @@@parameters -->
<br/>
<!-- $$$preferred -->
<table class="qmlname"><tr valign="top" id="preferred-prop"><td class="tblQmlPropNode"><p><span class="name">preferred</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property contains an ordered list of preferred plugin names, which will be checked for the required features set in <a href="..//QtLocation.Plugin.md#required-prop">required</a> before any other available plugins are checked.</p>
<!-- @@@preferred -->
<br/>
<!-- $$$required -->
<table class="qmlname"><tr valign="top" id="required-prop"><td class="tblQmlPropNode"><p><span class="name">required</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property contains the set of features that will be required by the Plugin object when choosing which service plugin to attach to. If the <a href="..//QtLocation.Plugin.md#name-prop">name</a> property is set, this has no effect.</p>
<p>Any of the following values or a bitwise combination of multiple values may be set:</p>
<ul>
<li>Plugin.NoFeatures</li>
<li>Plugin.GeocodingFeature</li>
<li>Plugin.ReverseGeocodingFeature</li>
<li>Plugin.RoutingFeature</li>
<li>Plugin.MappingFeature</li>
<li>Plugin.AnyPlacesFeature</li>
</ul>
<!-- @@@required -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$supportsGeocoding -->
<table class="qmlname"><tr valign="top" id="supportsGeocoding-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">supportsGeocoding</span>(<span class="type">GeocodingFeatures</span><i> features</i>)</p></td></tr></table><p>This method returns a boolean indicating whether the specified set of <i>features</i> are supported by the geo service provider plugin. True is returned if all specified <i>features</i> are supported; otherwise false is returned.</p>
<p>The <i>features</i> parameter can be any flag combination of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Feature</th><th >Description</th></tr></thead>
<tr valign="top"><td >Plugin.NoGeocodingFeatures</td><td >No geocoding features are supported.</td></tr>
<tr valign="top"><td >Plugin.OnlineGeocodingFeature</td><td >Online geocoding is supported.</td></tr>
<tr valign="top"><td >Plugin.OfflineGeocodingFeature</td><td >Offline geocoding is supported.</td></tr>
<tr valign="top"><td >Plugin.ReverseGeocodingFeature</td><td >Reverse geocoding is supported.</td></tr>
<tr valign="top"><td >Plugin.LocalizedGeocodingFeature</td><td >Supports returning geocoding results with localized addresses.</td></tr>
<tr valign="top"><td >Plugin.AnyGeocodingFeatures</td><td >Matches a geo service provider that provides any geocoding features.</td></tr>
</table>
<!-- @@@supportsGeocoding -->
<br/>
<!-- $$$supportsMapping -->
<table class="qmlname"><tr valign="top" id="supportsMapping-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">supportsMapping</span>(<span class="type">MappingFeatures</span><i> features</i>)</p></td></tr></table><p>This method returns a boolean indicating whether the specified set of <i>features</i> are supported by the geo service provider plugin. True is returned if all specified <i>features</i> are supported; otherwise false is returned.</p>
<p>The <i>features</i> parameter can be any flag combination of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Feature</th><th >Description</th></tr></thead>
<tr valign="top"><td >Plugin.NoMappingFeatures</td><td >No mapping features are supported.</td></tr>
<tr valign="top"><td >Plugin.OnlineMappingFeature</td><td >Online mapping is supported.</td></tr>
<tr valign="top"><td >Plugin.OfflineMappingFeature</td><td >Offline mapping is supported.</td></tr>
<tr valign="top"><td >Plugin.LocalizedMappingFeature</td><td >Supports returning localized map data.</td></tr>
<tr valign="top"><td >Plugin.AnyMappingFeatures</td><td >Matches a geo service provider that provides any mapping features.</td></tr>
</table>
<!-- @@@supportsMapping -->
<br/>
<!-- $$$supportsPlaces -->
<table class="qmlname"><tr valign="top" id="supportsPlaces-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">supportsPlaces</span>(<span class="type">PlacesFeatures</span><i> features</i>)</p></td></tr></table><p>This method returns a boolean indicating whether the specified set of <i>features</i> are supported by the geo service provider plugin. True is returned if all specified <i>features</i> are supported; otherwise false is returned.</p>
<p>The <i>features</i> parameter can be any flag combination of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Feature</th><th >Description</th></tr></thead>
<tr valign="top"><td >Plugin.NoPlacesFeatures</td><td >No places features are supported.</td></tr>
<tr valign="top"><td >Plugin.OnlinePlacesFeature</td><td >Online places is supported.</td></tr>
<tr valign="top"><td >Plugin.OfflinePlacesFeature</td><td >Offline places is supported.</td></tr>
<tr valign="top"><td >Plugin.SavePlaceFeature</td><td >Saving categories is supported.</td></tr>
<tr valign="top"><td >Plugin.RemovePlaceFeature</td><td >Removing or deleting places is supported.</td></tr>
<tr valign="top"><td >Plugin.PlaceRecommendationsFeature</td><td >Searching for recommended places similar to another place is supported.</td></tr>
<tr valign="top"><td >Plugin.SearchSuggestionsFeature</td><td >Search suggestions is supported.</td></tr>
<tr valign="top"><td >Plugin.LocalizedPlacesFeature</td><td >Supports returning localized place data.</td></tr>
<tr valign="top"><td >Plugin.NotificationsFeature</td><td >Notifications of place and category changes is supported.</td></tr>
<tr valign="top"><td >Plugin.PlaceMatchingFeature</td><td >Supports matching places from two different geo service providers.</td></tr>
<tr valign="top"><td >Plugin.AnyPlacesFeatures</td><td >Matches a geo service provider that provides any places features.</td></tr>
</table>
<!-- @@@supportsPlaces -->
<br/>
<!-- $$$supportsRouting -->
<table class="qmlname"><tr valign="top" id="supportsRouting-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">supportsRouting</span>(<span class="type">RoutingFeatures</span><i> features</i>)</p></td></tr></table><p>This method returns a boolean indicating whether the specified set of <i>features</i> are supported by the geo service provider plugin. True is returned if all specified <i>features</i> are supported; otherwise false is returned.</p>
<p>The <i>features</i> parameter can be any flag combination of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Feature</th><th >Description</th></tr></thead>
<tr valign="top"><td >Plugin.NoRoutingFeatures</td><td >No routing features are supported.</td></tr>
<tr valign="top"><td >Plugin.OnlineRoutingFeature</td><td >Online routing is supported.</td></tr>
<tr valign="top"><td >Plugin.OfflineRoutingFeature</td><td >Offline routing is supported.</td></tr>
<tr valign="top"><td >Plugin.LocalizedRoutingFeature</td><td >Supports returning routes with localized addresses and instructions.</td></tr>
<tr valign="top"><td >Plugin.RouteUpdatesFeature</td><td >Updating an existing route based on the current position is supported.</td></tr>
<tr valign="top"><td >Plugin.AlternativeRoutesFeature</td><td >Supports returning alternative routes.</td></tr>
<tr valign="top"><td >Plugin.ExcludeAreasRoutingFeature</td><td >Supports specifying a areas which the returned route must not cross.</td></tr>
<tr valign="top"><td >Plugin.AnyRoutingFeatures</td><td >Matches a geo service provider that provides any routing features.</td></tr>
</table>
<!-- @@@supportsRouting -->
<br/>
