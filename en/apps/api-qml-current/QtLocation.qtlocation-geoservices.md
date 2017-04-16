---
Title: QtLocation.qtlocation-geoservices
---

# QtLocation.qtlocation-geoservices

<span class="subtitle"></span>
<!-- $$$qtlocation-geoservices.html-description -->
<p>The Qt Location provides the majority of its functionality through GeoService plugins. This document outlines how to develop a new GeoService plugin.</p>
<h2 id="plugin-description">Plugin Description</h2>
<p>Each plugin is described by a json file. The json describes the plugins capabilities and version. Below is an example of a json file used by the OpenStreenMap plugin:</p>
<pre class="cpp">{
&quot;Keys&quot;: [<span class="string">&quot;osm&quot;</span>],
&quot;Provider&quot;: <span class="string">&quot;osm&quot;</span>,
&quot;Version&quot;: <span class="number">100</span>,
&quot;Experimental&quot;: <span class="number">false</span>,
&quot;Features&quot;: [
<span class="string">&quot;OnlineMappingFeature&quot;</span>,
<span class="string">&quot;OnlineGeocodingFeature&quot;</span>,
<span class="string">&quot;ReverseGeocodingFeature&quot;</span>,
<span class="string">&quot;OnlineRoutingFeature&quot;</span>
]
}</pre>
<p>The entries have the following meaning:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Key</th><th >Description</th></tr></thead>
<tr valign="top"><td >Keys</td><td >The unique name/key of the plugin. Each GeoService plugin must have a unique name.</td></tr>
<tr valign="top"><td >Provider</td><td >The provider name of the services. Multiple plugins may have the same name. In such cases the Version string will be used to further distinguish the plugins.</td></tr>
<tr valign="top"><td >Experimental</td><td >Marks the service plugin as experimental. API developers may choose to ignore such plugins when instanciating QGeoServiceProvider::QGeoServiceProvider().</td></tr>
<tr valign="top"><td >Version</td><td >The plugin version. If multiple plugins have the same provider name, the plugin with the higest version will be used.</td></tr>
<tr valign="top"><td >Features</td><td >List of features provided by the plugin/service. Each feature is a string representation of the corresponding features in QGeoServiceProvider. For more details see QGeoServiceProvider::routingFeatures(), QGeoServiceProvider::geocodingFeatures() and QGeoServiceProvider::placesFeatures().</td></tr>
</table>
<h2 id="implementing-plugins">Implementing Plugins</h2>
<p>A plugin implementer needs to subclass QGeoServiceProviderFactory and as many of the ManagerEngine classes as they want to provide implementations for.</p>
<p>Subclassing QGeoServiceProviderFactory will only involves overriding of one of the following methods:</p>
<ul>
<li>QGeoServiceProviderFactory::createGeocodingManagerEngine()</li>
<li>QGeoServiceProviderFactory::createRoutingManagerEngine()</li>
<li>QGeoServiceProviderFactory::createPlaceManagerEngine()</li>
</ul>
<p>If a plugin does not provide an engine the relevant function should return 0.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QGeoCodingManagerEngine</p></td><td class="tblDescr"><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoRoutingManagerEngine</p></td><td class="tblDescr"><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGeoServiceProviderFactory</p></td><td class="tblDescr"><p>Factory class used as the plugin interface for services related to geographical information</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceManagerEngine</p></td><td class="tblDescr"><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td></tr>
</table>
<!-- @@@qtlocation-geoservices.html -->
