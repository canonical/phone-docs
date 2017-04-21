---
Title: QtLocation.PluginParameter
---

# QtLocation.PluginParameter

<span class="subtitle"></span>
<!-- $$$PluginParameter-brief -->
<p>The PluginParameter type describes a parameter to a Plugin. More...</p>
<!-- @@@PluginParameter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.PluginParameter.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="QtLocation.PluginParameter.md#value-prop">value</a></b></b> : QVariant</li>
</ul>
<!-- $$$PluginParameter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtLocation.PluginParameter.md">PluginParameter</a> object is used to provide a parameter of some kind to a Plugin. Typically these parameters contain details like an application token for access to a service, or a proxy server to use for network access.</p>
<p>To set such a parameter, declare a <a href="QtLocation.PluginParameter.md">PluginParameter</a> inside a <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> object, and give it <a href="QtLocation.PluginParameter.md#name-prop">name</a> and <a href="QtLocation.PluginParameter.md#value-prop">value</a> properties. A list of valid parameter names for each plugin is available from the <a href="QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin reference pages</a>.</p>
<h3 >Example Usage</h3>
<p>The following example shows an instantiation of the <a href="QtLocation.location-plugin-nokia.md">Nokia</a> plugin with a mapping API <i>app_id</i> and <i>token</i> pair specific to the application.</p>
<pre class="cpp">Plugin {
name: <span class="string">&quot;nokia&quot;</span>
PluginParameter { name: <span class="string">&quot;app_id&quot;</span>; value: <span class="string">&quot;EXAMPLE_API_ID&quot;</span> }
PluginParameter { name: <span class="string">&quot;token&quot;</span>; value: <span class="string">&quot;EXAMPLE_TOKEN_123&quot;</span> }
}</pre>
<!-- @@@PluginParameter -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the plugin parameter as a single formatted string.</p>
<!-- @@@name -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">QVariant</span></p></td></tr></table><p>This property holds the value of the plugin parameter which support different types of values (variant).</p>
<!-- @@@value -->
<br/>
