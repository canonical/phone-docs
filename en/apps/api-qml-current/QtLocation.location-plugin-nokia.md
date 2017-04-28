---
Title: QtLocation.location-plugin-nokia
---

# QtLocation.location-plugin-nokia

<span class="subtitle"></span>
<!-- $$$location-plugin-nokia.html-description -->
<h2 id="overview">Overview</h2>
<p>Included with Qt Location is a geo services plugin which accesses the relevant Nokia services provided by Nokia. The use of these services is governed by the terms and conditions available at <a href="QtLocation.location-plugin-nokia-terms.md">Qt Location Nokia Plugin - Nokia Services Terms and Conditions</a>.</p>
<p>Note that accepting the terms and conditions only applies those terms and conditions to the use of the Nokia geo services plugin and does not limit the use of the other geo services plugins that may be included with Qt.</p>
<p>The Nokia geo services plugin can be loaded by using the plugin key &quot;nokia&quot;.</p>
<p>The online plugin uses the tiled map classes, which caches tile data in heap memory and texture memory.</p>
<h2 id="parameters">Parameters</h2>
<h3 >Mandatory parameters</h3>
<p>The following table lists mandatory parameters that <i>must</i> be passed to the Nokia plugin.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Parameter</th><th >Description</th></tr></thead>
<tr valign="top"><td >app_id</td><td >Client <i>app_id</i> part of the app_id/token pair used for authentication by all managers.</td></tr>
<tr valign="top"><td >token</td><td >Client <i>token</i> part of the app_id/token pair for the service used for authentication by all managers.</td></tr>
</table>
<p>The Nokia geo services plugin requires an application id and token pair to authenticate the application with the Nokia services. To obtain an application id and token pair visit <a href="https://networks.nokia.com/developer/mn/">https://networks.nokia.com/developer/mn/</a></p>
<h3 >Optional parameters</h3>
<p>The following table lists optional parameters that can be passed to the Nokia plugin.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Parameter</th><th >Description</th></tr></thead>
<tr valign="top"><td >proxy</td><td >Proxy server URL used by all managers. For usage of the system proxy just pass &quot;system&quot; as value.<p><b>Note: </b>See the notes in QNetworkProxyFactory::systemProxyForQuery() for further information.</p></td></tr>
<tr valign="top"><td >mapping.host</td><td >Base map tile service URL used by mapping manager.</td></tr>
<tr valign="top"><td >mapping.host.aerial</td><td >Aerial map tile service URL used by mapping manager. For all satellite, hybrid and terrain schemes.</td></tr>
<tr valign="top"><td >mapping.cache.directory</td><td >Map tile cache directory used as network disk cache.<p>Default place for the cache is &quot;QtLocation&quot; directory in QStandardPaths::writableLocation(QStandardPaths::GenericCacheLocation).</p>
</td></tr>
<tr valign="top"><td >mapping.cache.disk.size</td><td >Map tile disk cache size in bytes. Default size of the cache is 20MB.</td></tr>
<tr valign="top"><td >mapping.cache.memory.size</td><td >Map tile memory cache size in bytes. Default size of the cache is 3MB.</td></tr>
<tr valign="top"><td >mapping.cache.texture.size</td><td >Map tile texture cache size in bytes. Default size of the cache is 6MB. Note that the texture cache has a hard minimum size which depends on the size of the map viewport (it must contain enough data to display the tiles currently visible on the display). This value is the amount of cache to be used in addition to the bare minimum.</td></tr>
<tr valign="top"><td >geocoding.host</td><td >Geocoding service URL used by geocoding manager.</td></tr>
<tr valign="top"><td >routing.host</td><td >Routing service URL used by routing manager.</td></tr>
<tr valign="top"><td >places.host</td><td >Search service URL used by search manager.</td></tr>
<tr valign="top"><td >places.api_version</td><td >Version of the REST API used by the places manager. Currently versions 1 and 2 are supported. The version 1 is deprecated and will not be part of the final Qt release. The default is version 2.</td></tr>
<tr valign="top"><td >places.theme</td><td >Specifies the icon theme to be used for places and categories. If no theme is explicitly provided then the platform theme is used. A default non-platform specific theme can be specified using a value of &quot;default&quot;. The supported themes are &quot;wp7_dark&quot; and &quot;default&quot;. On desktop platforms the &quot;default&quot; theme is the platform theme.</td></tr>
</table>
<h2 id="parameter-usage-example">Parameter Usage Example</h2>
<p>The following two examples show how to create a Nokia plugin instance with parameters supplied for an application id and token, which is required for authentication.</p>
<h3 >QML</h3>
<pre class="cpp">Plugin {
name: <span class="string">&quot;nokia&quot;</span>
PluginParameter { name: <span class="string">&quot;app_id&quot;</span>; value: <span class="string">&quot;myapp&quot;</span> }
PluginParameter { name: <span class="string">&quot;token&quot;</span>; value: <span class="string">&quot;abcdefg12345&quot;</span> }
}</pre>
<h3 >C++</h3>
<pre class="cpp"><span class="type">QMap</span><span class="operator">&lt;</span><span class="type">QString</span><span class="operator">,</span><span class="type">QVariant</span><span class="operator">&gt;</span> params;
params<span class="operator">[</span><span class="string">&quot;app_id&quot;</span><span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;myapp&quot;</span>;
params<span class="operator">[</span><span class="string">&quot;token&quot;</span><span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;abcdefg12345&quot;</span>;
<span class="type">QGeoServiceProvider</span> <span class="operator">*</span>gsp <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QGeoServiceProvider</span>(<span class="string">&quot;nokia&quot;</span><span class="operator">,</span> params);</pre>
<h2 id="places">Places</h2>
<p>The Nokia provider remotely accesses places (read-only) from a REST based server. The specific capabilities and behaviours are outlined below:</p>
<h3 >Capabilities</h3>
<table class="generic">
<tr valign="top"><td >Storage</td><td >remote</td></tr>
<tr valign="top"><td >Read/Write</td><td >read-only</td></tr>
<tr valign="top"><td >Icons</td><td >yes</td></tr>
<tr valign="top"><td >Search term suggestions</td><td >yes</td></tr>
<tr valign="top"><td >Recommendations</td><td >yes</td></tr>
<tr valign="top"><td >Category structure</td><td >Hierarchical</td></tr>
<tr valign="top"><td >(Rich) Content images</td><td >yes</td></tr>
<tr valign="top"><td >(Rich) Content reviews</td><td >yes</td></tr>
<tr valign="top"><td >(Rich) Content editorials</td><td >yes</td></tr>
<tr valign="top"><td >All details fetched during search</td><td >no</td></tr>
<tr valign="top"><td >Paging offset index</td><td >no</td></tr>
<tr valign="top"><td >Paging limit</td><td >yes</td></tr>
<tr valign="top"><td >Distance relevance hint</td><td >no</td></tr>
<tr valign="top"><td >Lexical name relevance hint</td><td >no</td></tr>
<tr valign="top"><td >Extended Attributes</td><td >yes</td></tr>
<tr valign="top"><td >Notifications for added/removed places/categories</td><td >no</td></tr>
<tr valign="top"><td >visibility scopes</td><td >public</td></tr>
<tr valign="top"><td >favorites matching/(usable as favoritesPlugin)</td><td >no</td></tr>
</table>
<h3 >Plugin Specific Behaviors and Limitations.</h3>
<h4 >Search</h4>
<p>The following list shows what core place data is returned during a place search:</p>
<ul>
<li>name</li>
<li>location</li>
<li>contact information</li>
<li>attribution</li>
<li>categories</li>
<li>rating</li>
<li>visibility</li>
</ul>
<p>The following list shows further details that may be retrieved via QPlaceManager::getDetails()</p>
<ul>
<li>supplier</li>
<li>extended attributes</li>
</ul>
<h4 >Searching for Places</h4>
<h5 >Search Term and Categories</h5>
<p>The <code>nokia</code> plugin supports searching with a <i>search term</i> and <i>category or categories</i>, however both are not supported simultaneously.</p>
<ul>
<li>Valid usage: <i>search term</i> + <i>search center</i></li>
<li>Valid usage: <i>category</i> + <i>search center</i></li>
<li>Invalid usage: <i>search term</i> + <i>category</i> + <i>search center</i></li>
</ul>
<p>This limitation applies when using the <code>nokia</code> plugin with PlaceSearchModel and QPlaceManager::search().</p>
<h5 >Search Area</h5>
<p>The <code>nokia</code> plugin only supports provision of a <i>search center</i> when searching for places via PlaceSearchModel and QPlaceManager::search(). A search center can be provided via a bounding circle, however the radius should be kept at the default value of -1. Typically a developer should not have to set the radius at all. If a developer sets a radius, it is ignored by the plugin and the boundaries are not honored.</p>
<p>In a similar manner only the center of a bounding box is taken into consideration when searching. The boundaries of the box are not honored.</p>
<p>A search center <i>must</i> be provided for all searches.</p>
<h5 >Relevancy Hints</h5>
<p>The <code>nokia</code> plugin does not support relevancy hints. Any relevancy hints supplied to a search request are consequently ignored.</p>
<h4 >Search Term suggestions</h4>
<p>Only a partial <i>search term</i> and <i>search center</i> is supported when retrieving suggestions. This limitation applies when using the <code>nokia</code> plugin with the PlaceSearchSuggestionModel and QPlaceManager::searchSuggestions().</p>
<p>Both search term and search center <i>must</i> be provided when retrieving search term suggestions.</p>
<h4 >Recommendations</h4>
<p>Only a given <i>place identifier</i> is supported as a parameter for a recommendations. No other parameters such as limit, offset, and search area are supported. This limitation applies when using the <code>nokia</code> plugin with PlaceSearchModel and QPlaceManager::search().</p>
<h4 >Icons themes, base urls and variants</h4>
<p>Icons are provided in the form of &quot;base urls&quot; which reference valid icon images. For example, if the &quot;wp7_dark&quot; theme was specified, then an icon url might look something like http://&lt;server&gt;/01.icon.wp7_dark and this references an actual icon image.</p>
<p>However these urls are &quot;base urls&quot; in the sense that they can be appended onto, to provide variants. For example, one could add &quot;.list.png&quot; to the above url to get the list variant of the icon, http://&lt;server&gt;/01.icon.wp7_dark.list.png.</p>
<p>The following table shows the themes provided by the <code>nokia</code> plugin, along with any variants supported for those themes:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Theme</th><th >Supported type variants and appendage strings</th></tr></thead>
<tr valign="top"><td >&quot;default&quot;</td><td >no variants supported</td></tr>
<tr valign="top"><td >&quot;wp7_dark&quot;</td><td ><ul>
<li>list : &quot;.list.png&quot;</li>
<li>map: &quot;.map.png&quot;</li>
</ul>
<p>(Note: the default base urls reference a map type icons)</p>
</td></tr>
</table>
<h4 >Extended Attributes</h4>
<p>The supported set of attributes provided by <code>nokia</code> plugin are not fixed and may grow over time. Also the attributes provided may vary according to a place by place basis, e.g one place may provide opening hours while another does not. At the time of writing, it is known that some places provide <code>openingHours</code> (QPlaceAttribute::OpeningHours) and <code>payment</code> (QPlaceAttribute::Payment) methods but other attributes may be made available by the backend server. All places provided by the plugin will have the <code>x_provider</code> (QPlaceAttribute::Provider) attribute set to <code>nokia</code>.</p>
<h4 >Restrictions of Usage - ExtendedAttributes and Content</h4>
<p>The extended attributes and rich content of places are not permitted to be saved. For QML this is related to Place::extendedAttributes, ImageModel, ReviewModel, and EditorialModel. For C++ this relates to QPlace::extendedAttribute(), QPlace::content() and QPlaceManager::getPlaceContent().</p>
<p>(Note that the <code>nokia</code> plugin is a read-only source of places and does not support saving functionality at all.)</p>
<!-- @@@location-plugin-nokia.html -->
