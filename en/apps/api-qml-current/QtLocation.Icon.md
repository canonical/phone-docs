---
Title: QtLocation.Icon
---

# QtLocation.Icon

<span class="subtitle"></span>
<!-- $$$Icon-brief -->
<p>The Icon type represents an icon image source which can have multiple sizes. More...</p>
<!-- @@@Icon -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.Icon.md#icon-prop">icon</a></b></b> : QPlaceIcon</li>
<li class="fn"><b><b><a href="QtLocation.Icon.md#parameters-prop">parameters</a></b></b> : Object</li>
<li class="fn"><b><b><a href="QtLocation.Icon.md#plugin-prop">plugin</a></b></b> : Plugin</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">url <b><b><a href="QtLocation.Icon.md#url-method">url</a></b></b>(size <i>size</i>)</li>
</ul>
<!-- $$$Icon-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Icon type can be used in conjunction with an Image type to display an icon. The <a href="QtLocation.Icon.md#url-method">url()</a> function is used to construct an icon URL of a requested size, the icon which most closely matches the requested size is returned.</p>
<p>The Icon type also has a parameters map which is a set of key value pairs. The precise keys to use depend on the <a href="QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin</a> being used. The parameters map is used by the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> to determine which URL to return.</p>
<p>In the case where an icon can only possibly have one image URL, the parameter key of <code>&quot;singleUrl&quot;</code> can be used with a QUrl value. Any Icon with this parameter will always return the specified URL regardless of the requested icon size and not defer to any Plugin.</p>
<p>The following code shows how to display a 64x64 pixel icon:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type">Image</span> {
<span class="name">source</span>: <span class="name">icon</span>.<span class="name">url</span>(<span class="name">Qt</span>.<span class="name">size</span>(<span class="number">64</span>, <span class="number">64</span>))
}</pre>
<p>Alternatively, a default sized icon can be specified like so:</p>
<pre class="qml"><span class="name">source</span>: <span class="name">icon</span>.<span class="name">url</span>()</pre>
<!-- @@@Icon -->
<h2>Property Documentation</h2>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top" id="icon-prop"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type">QPlaceIcon</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@icon -->
<br/>
<!-- $$$parameters -->
<table class="qmlname"><tr valign="top" id="parameters-prop"><td class="tblQmlPropNode"><p><span class="name">parameters</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds the parameters of the icon and is a map. These parameters are used by the plugin to return the appropriate URL when <a href="QtLocation.Icon.md#url-method">url()</a> is called and to specify locations to save to when saving icons.</p>
<p>Consult the <a href="QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin documentation</a> for what parameters are supported and how they should be used.</p>
<p>Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the parameters in QML, assignment of parameters keys and values can only be accomplished by JavaScript.</p>
<!-- @@@parameters -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>The property holds the plugin that is responsible for managing this icon.</p>
<!-- @@@plugin -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtLocation.Icon.md#url-method">url</a></span> <span class="name">url</span>(<span class="type">size</span><i> size</i>)</p></td></tr></table><p>Returns a URL for the icon image that most closely matches the given <i>size</i>.</p>
<p>If no plugin has been assigned to the icon, and the parameters do not contain the 'singleUrl' key, a default constructed URL is returned.</p>
<!-- @@@url -->
<br/>
