---
Title: QtLocation.location-places-qml
---

# QtLocation.location-places-qml

<span class="subtitle"></span>
<!-- $$$location-places-qml.html-description -->
<h2 id="overview">Overview</h2>
<p>The Places API allows users to discover places of interest and view details about them, such as address and contact information. Some places may have additional content associated with them, such as images and reviews. The Places API also facilitates management of places and categories, allowing users to save and remove them.</p>
<h2 id="introductory-concepts">Introductory Concepts</h2>
<h3 >Plugin</h3>
<p>A <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> is an abstraction for a backend. One <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> might access places from a REST server while another may access places from a local database. The following instantiates a <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> object by providing a name of &quot;nokia&quot;. The <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> name identifies which backend to choose from. Plugins may also be provided with a set of <a href="..//QtLocation.PluginParameter.md">parameters</a>, which essentially takes the form of a set of key-value pairs. The <a href="..//QtLocation.PluginParameter.md">parameters</a> that can be specified vary among the different <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> backends. For documentation on the possible <a href="..//QtLocation.PluginParameter.md">parameters</a> and nuances of each <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>, see the <a href="..//QtLocation.qtlocation-index.md#plugin-references-and-parameters">Plugin References</a>.</p>
<pre class="qml"><span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span> {
<span class="name">id</span>: <span class="name">myPlugin</span>
<span class="name">name</span>: <span class="string">&quot;nokia&quot;</span>
<span class="comment">//specify plugin parameters as necessary</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//PluginParameter {...}</span>
<span class="comment">//...</span>
}</pre>
<p><b>Note: </b>The Nokia plugin must be supplied with some mandatory parameters as outlined in the <a href="..//QtLocation.location-plugin-nokia.md#mandatory-parameters">Nokia Plugin</a> documentation.</p>
<h3 >Models, Views and Delegates</h3>
<p>The QML Places API is built around the notion of models, views and delegates.</p>
<table class="generic">
<tr valign="top"><td ><b>Model</b></td><td >A model holds data items and maintains their structure. The model is also responsible for retrieving the items from a data source.</td></tr>
<tr valign="top"><td ><b>View</b></td><td >A view is a visual container that displays the data and manages how visual items are shown such as in a list or a grid. The view may also be responsible for navigating the data, for example, scrolling through the visual items during a flicking motion.</td></tr>
<tr valign="top"><td ><b>Delegate</b></td><td >A delegate defines how individual data elements should appear as visual items in the view. The models expose a set of data roles and the delegate uses them to construct a visual item. The delegate may also define behaviour such as an operation to invoke when a visual item is clicked.</td></tr>
</table>
<p>The Common Use Cases section below demonstrates concrete examples of how these concepts fit together.</p>
<h2 id="common-use-cases">Common Use Cases</h2>
<h3 >Searching for Places</h3>
<p>Searching is accomplished via the <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a>. The <a href="..//QtLocation.PlaceSearchModel.md#plugin-prop">plugin</a> property specifies which backend to perform search operations against. Search parameters may be provided through properties such as the <a href="..//QtLocation.PlaceSearchModel.md#searchTerm-prop">searchTerm</a> and <a href="..//QtLocation.PlaceSearchModel.md#searchArea-prop">searchArea</a>. A search operation can then be started by invoking the <a href="..//QtLocation.PlaceSearchModel.md#update-method">update()</a> method. For simplicity, the snippet below invokes <a href="..//QtLocation.PlaceSearchModel.md#update-method">update()</a> once construction of the model as been completed, typically <a href="..//QtLocation.PlaceSearchModel.md#update-method">update()</a> would be invoked in response to a user action such as a button click. While the search operation is underway the <a href="..//QtLocation.PlaceSearchModel.md#status-prop">PlaceSearchModel::status</a> property transitions into the <code>Loading</code> state and when successfully completed moves into the <code>Ready</code> state.</p>
<pre class="qml"><span class="type"><a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
<span class="name">id</span>: <span class="name">searchModel</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
<span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
<span class="name">Component</span>.onCompleted: <span class="name">update</span>()
}</pre>
<h3 >Display Search Results using a ListView</h3>
<p>A ListView can be used to show the search results found by the model. It defines the visual region for where the results are shown, and in the case below fills the entirety of its parent. The ListView has built in behavior that enables the region to respond to flicking events and to scroll appropriately.</p>
<p>In the snippet below, the search model has been assigned to the ListView's model property. When the model is updated with new results, the ListView is automatically updated to reflect the model's new data items.</p>
<p>A simple delegate has been bound to the ListView's delegate property. The <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> exposes a set of <a href="..//QtLocation.PlaceSearchModel.md#placesearchmodel-roles">roles</a> of which the <i>title</i> and <i>place</i> roles have been used below, these are of type string and <a href="..//QtLocation.location-cpp-qml.md#place">Place</a> respectively. Essentially for each data item that should be visible in the view, the view invokes the delegate to create a visual representation of the item.</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type">ListView</span> {
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
</td><td ><img src="../../media/places-list.png" alt="" /></td></tr>
</table>
<p><b>Note: </b>For simplicty's sake we have assumed that every search result is of <a href="..//QtLocation.PlaceSearchModel.md#search-result-types">type</a> <code>PlaceSearchResult</code> and so always have access to the <i>place</i> role, other search result types may not have a <i>place</i> role.</p><p>See the <a href="QtLocation.places_list/">Places List</a> example for full source code.</p>
<h3 >Display Search Results using a MapItemView</h3>
<p>Instead of a ListView, the <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> can be used in conjunction with a <a href="..//QtLocation.MapItemView.md">MapItemView</a> to display markers on a map. Firstly a <a href="..//QtLocation.Map.md">Map</a> is used to define the visual region occupied by the map, in this case it fills the entirety of its parent. Other properties are specified such as the <a href="..//QtLocation.Map.md#plugin-prop">plugin</a> providing the maps, and the map's <a href="..//QtLocation.Map.md#center-prop">center</a> and <a href="..//QtLocation.Map.md#zoomLevel-prop">zoomLevel</a>.</p>
<p>Inside the <a href="..//QtLocation.Map.md">Map</a>, a <a href="..//QtLocation.MapItemView.md">MapItemView</a> is declared, where the <a href="..//QtLocation.MapItemView.md#model-prop">model</a> property has been set to the search model and a <a href="..//QtLocation.MapItemView.md#delegate-prop">delegate</a> consisting of a <a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a> is used to display a marker image. A marker is shown for every place that was found by the search model. The delegate uses the <i>place</i> role to position the marker.</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type"><a href="..//QtLocation.Map.md">Map</a></span> {
<span class="name">id</span>: <span class="name">map</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>;
<span class="type">center</span> {
<span class="name">latitude</span>: -<span class="number">27.47</span>
<span class="name">longitude</span>: <span class="number">153.025</span>
}
<span class="name">zoomLevel</span>: <span class="number">13</span>
<span class="type"><a href="..//QtLocation.MapItemView.md">MapItemView</a></span> {
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
</td><td ><img src="../../media/places-map.jpg" alt="" /></td></tr>
</table>
<p><b>Note: </b>For simplicty's sake we have assumed that every search result is of <a href="..//QtLocation.PlaceSearchModel.md#search-result-types">type</a> <code>PlaceSearchResult</code> and so always have access to the <i>place</i> role, other search result types may not have a <i>place</i> role.</p><p>See the <a href="QtLocation.places_map/">Places Map</a> example for full source code.</p>
<h3 >Fetching Place Details</h3>
<p>In order to save bandwidth, sometimes a backend will only return places which are partially populated with details. This can be checked with the <a href="..//QtLocation.Place.md#detailsFetched-prop">Place::detailsFetched</a> property which indicates whether all availalable details have been fetched or not. If not, the <a href="..//QtLocation.Place.md#getDetails-method">Place::getDetails</a>() method can be invoked to fetch the remaining details.</p>
<pre class="qml"><span class="keyword">if</span> (!<span class="name">place</span>.<span class="name">detailsFetched</span>)
<span class="name">place</span>.<span class="name">getDetails</span>();</pre>
<h3 >Saving and Removing Places</h3>
<p>Some backends may support saving and removing places. This can be done by calling the <a href="..//QtLocation.Place.md#save-method">Place::save</a>() and <a href="..//QtLocation.Place.md#remove-method">Place::remove</a>() methods respectively. Note that in order to save a <a href="..//QtLocation.location-cpp-qml.md#place">Place</a>, a <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> must be assigned to specify which backend we are saving to. The <a href="..//QtLocation.Place.md#status-prop">status</a> property will transition into the <code>Saving</code> state while the save operation is happening and on successful completion will move to the <code>Ready</code> state. The following snippet shows how to save and remove a place using javascript.</p>
<pre class="qml"><span class="comment">//creating and saving a place</span>
var <span class="name">place</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; Place { }'</span>, <span class="name">parent</span>);
<span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">myPlugin</span>;
<span class="name">place</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;New York&quot;</span>;
<span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>.<span class="name">latitude</span> <span class="operator">=</span> <span class="number">40.7</span>
<span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>.<span class="name">longitude</span> <span class="operator">=</span> -<span class="number">74.0</span>
<span class="name">place</span>.<span class="name">save</span>();
<span class="comment">//removing a place</span>
<span class="name">place</span>.<span class="name">remove</span>();</pre>
<h3 >Learn More</h3>
<p>The above snippets only exhibit a small subset of Places functionality. Refer to the <a href="..//QtLocation.location-places-qml.md#places-types">Places Types</a> shown below for richer content such as <a href="..//QtLocation.ImageModel.md">images</a>, <a href="..//QtLocation.ReviewModel.md">reviews</a> etc, as well as more indepth descriptions and explanations.</p>
<p>See also the <a href="QtLocation.places/">Places (QML)</a> example for a more comprehensive demonstration on how to use the API.</p>
<h2 id="places-types">Places Types</h2>
<h3 >Data Types</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.Category.md">Category</a></p></td><td class="tblDescr"><p>Type represents a category that a Place can be associated with</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.ContactDetail.md">ContactDetail</a></p></td><td class="tblDescr"><p>Type holds a contact detail such as a phone number or a website address</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.ContactDetails.md">ContactDetails</a></p></td><td class="tblDescr"><p>Type holds contact details for a Place</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a></p></td><td class="tblDescr"><p>Type holds additional data about a Place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.Icon.md">Icon</a></p></td><td class="tblDescr"><p>Type represents an icon image source which can have multiple sizes</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.Place.md">Place</a></p></td><td class="tblDescr"><p>Type represents a location that is a position of interest</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.PlaceAttribute.md">PlaceAttribute</a></p></td><td class="tblDescr"><p>Type holds generic place attribute information</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.Ratings.md">Ratings</a></p></td><td class="tblDescr"><p>Type holds place rating information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.Supplier.md">Supplier</a></p></td><td class="tblDescr"><p>Holds data regarding the supplier of a place, a place's image, review, or editorial</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.User.md">User</a></p></td><td class="tblDescr"><p>Type identifies a user who contributed a particular Place content item</p></td></tr>
</table>
<h3 >Models</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.CategoryModel.md">CategoryModel</a></p></td><td class="tblDescr"><p>Type provides a model of the categories supported by a Plugin</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.EditorialModel.md">EditorialModel</a></p></td><td class="tblDescr"><p>Type provides a model of place editorials</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.ImageModel.md">ImageModel</a></p></td><td class="tblDescr"><p>Type provides a model of place images</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></p></td><td class="tblDescr"><p>Provides access to place search results</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="..//QtLocation.PlaceSearchSuggestionModel.md">PlaceSearchSuggestionModel</a></p></td><td class="tblDescr"><p>Provides access to search term suggestions</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="..//QtLocation.ReviewModel.md">ReviewModel</a></p></td><td class="tblDescr"><p>Provides access to reviews of a Place</p></td></tr>
</table>
<!-- @@@location-places-qml.html -->
