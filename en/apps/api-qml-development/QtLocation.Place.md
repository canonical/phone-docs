---
Title: QtLocation.Place
---

# QtLocation.Place

<span class="subtitle"></span>
<!-- $$$Place-brief -->
<p>The Place type represents a location that is a position of interest. More...</p>
<!-- @@@Place -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#attribution-prop">attribution</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#categories-prop">categories</a></b></b> : list&lt;Category&gt;</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#contactDetails-prop">contactDetails</a></b></b> : ContactDetails</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#detailsFetched-prop">detailsFetched</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#editorialModel-prop">editorialModel</a></b></b> : EditorialModel</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#extendedAttributes-prop">extendedAttributes</a></b></b> : ExtendedAttributes</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#favorite-prop">favorite</a></b></b> : Place</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#icon-prop">icon</a></b></b> : Icon</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#imageModel-prop">imageModel</a></b></b> : ImageModel</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#location-prop">location</a></b></b> : QtPositioning::Location</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#place-prop">place</a></b></b> : QPlace</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#placeId-prop">placeId</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#primaryEmail-prop">primaryEmail</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#primaryFax-prop">primaryFax</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#primaryPhone-prop">primaryPhone</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#primaryWebsite-prop">primaryWebsite</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#ratings-prop">ratings</a></b></b> : Ratings</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#reviewModel-prop">reviewModel</a></b></b> : ReviewModel</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#supplier-prop">supplier</a></b></b> : Supplier</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#visibility-prop">visibility</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#copyFrom-method">copyFrom</a></b></b>(Place <i>original</i>)</li>
<li class="fn">string <b><b><a href="..//QtLocation.Place.md#errorString-method">errorString</a></b></b>()</li>
<li class="fn">void <b><b><a href="..//QtLocation.Place.md#getDetails-method">getDetails</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.Place.md#initializeFavorite-method">initializeFavorite</a></b></b>(Plugin <i>destinationPlugin</i>)</li>
<li class="fn">void <b><b><a href="..//QtLocation.Place.md#remove-method">remove</a></b></b>()</li>
<li class="fn">void <b><b><a href="..//QtLocation.Place.md#save-method">save</a></b></b>()</li>
</ul>
<!-- $$$Place-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Place type represents a physical location with additional metadata describing that location. Contrasted with Location, Address, and coordinate type which are used to describe where a location is. The basic properties of a Place are its <a href="..//QtLocation.Place.md#name-prop">name</a> and <a href="..//QtLocation.Place.md#location-prop">location</a>.</p>
<p>Place objects are typically obtained from a search model and will generally only have their basic properties set. The <a href="..//QtLocation.Place.md#detailsFetched-prop">detailsFetched</a> property can be used to test if further property values need to be fetched from the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>. This can be done by invoking the <a href="..//QtLocation.Place.md#getDetails-method">getDetails()</a> method. Progress of the fetching operation can be monitored with the <a href="..//QtLocation.Place.md#status-prop">status</a> property, which will be set to Place.Fetching when the details are being fetched.</p>
<p>The Place type has many properties holding information about the location. Details on how to contact the place are available from the <a href="..//QtLocation.Place.md#contactDetails-prop">contactDetails</a> property. Convenience properties for obtaining the primary <a href="..//QtLocation.Place.md#primaryPhone-prop">phone</a>, <a href="..//QtLocation.Place.md#primaryFax-prop">fax</a>, <a href="..//QtLocation.Place.md#primaryEmail-prop">email</a> and <a href="..//QtLocation.Place.md#primaryWebsite-prop">website</a> are also available.</p>
<p>Each place is assigned zero or more <a href="..//QtLocation.location-places-backend.md#categories">categories</a>. Categories are typically used when searching for a particular kind of place, such as a restaurant or hotel. Some places have a <a href="..//QtLocation.Place.md#ratings-prop">ratings</a> object, which gives an indication of the quality of the place.</p>
<p>Place metadata is provided by a supplier who may require that an attribution message be displayed to the user when the place details are viewed.</p>
<p>Places have an associated <a href="..//QtLocation.Place.md#icon-prop">icon</a> which can be used to represent a place on a map or to decorate a delegate in a view.</p>
<p>Places may have additional rich content associated with them. The currently supported rich content include editorial descriptions, reviews and images. These are exposed as a set of models for retrieving the content. Editorial descriptions of the place are available from the <a href="..//QtLocation.Place.md#editorialModel-prop">editorialModel</a> property. Reviews of the place are available from the <a href="..//QtLocation.Place.md#reviewModel-prop">reviewModel</a> property. A gallery of pictures of the place can be accessed using the <a href="..//QtLocation.Place.md#imageModel-prop">imageModel</a> property.</p>
<p>Places may have additional attributes which are not covered in the formal API. The <a href="..//QtLocation.Place.md#extendedAttributes-prop">extendedAttributes</a> property provides access to these. The type of extended attributes available is specific to each <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>.</p>
<p>A Place is almost always tied to a <a href="..//QtLocation.location-places-qml.md#plugin">plugin</a>. The <a href="..//QtLocation.location-places-qml.md#plugin">plugin</a> property must be set before it is possible to call <a href="..//QtLocation.Place.md#save-method">save()</a>, <a href="..//QtLocation.Place.md#remove-method">remove()</a> or <a href="..//QtLocation.Place.md#getDetails-method">getDetails()</a>. The <a href="..//QtLocation.Place.md#reviewModel-prop">reviewModel</a>, <a href="..//QtLocation.Place.md#imageModel-prop">imageModel</a> and <a href="..//QtLocation.Place.md#editorialModel-prop">editorialModel</a> are only valid then the <a href="..//QtLocation.location-places-qml.md#plugin">plugin</a> property is set.</p>
<h3 >Saving a Place</h3>
<p>If the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> supports it, the Place type can be used to save a place. First create a new Place and set its properties:</p>
<pre class="qml"><span class="type"><a href="..//QtLocation.Place.md">Place</a></span> {
<span class="name">id</span>: <span class="name">myPlace</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">name</span>: <span class="string">&quot;Brisbane Technology Park&quot;</span>
<span class="name">location</span>: <span class="name">Location</span> {
<span class="name">address</span>: <span class="name">Address</span> {
<span class="name">street</span>: <span class="string">&quot;53 Brandl Street&quot;</span>
<span class="name">city</span>: <span class="string">&quot;Eight Mile Plains&quot;</span>
<span class="name">postalCode</span>: <span class="string">&quot;4113&quot;</span>
<span class="name">country</span>: <span class="string">&quot;Australia&quot;</span>
}
<span class="type">coordinate</span> {
<span class="name">latitude</span>: -<span class="number">27.579646</span>
<span class="name">longitude</span>: <span class="number">153.100308</span>
}
}
<span class="name">visibility</span>: <span class="name">Place</span>.<span class="name">PrivateVisibility</span>
}</pre>
<p>Then invoke the <a href="..//QtLocation.Place.md#save-method">save()</a> method:</p>
<pre class="qml">    <span class="name">myPlace</span>.<span class="name">save</span>();</pre>
<p>The <a href="..//QtLocation.Place.md#status-prop">status</a> property will change to Place.Saving and then to Place.Ready if the save was successful or to Place.Error if an error occurs.</p>
<p>If the <a href="..//QtLocation.Place.md#placeId-prop">placeId</a> property is set, the backend will update an existing place otherwise it will create a new place. On success the <a href="..//QtLocation.Place.md#placeId-prop">placeId</a> property will be updated with the identifier of the newly saved place.</p>
<h4 >Caveats</h4>
<p>The Places API is currently designed for only saving <i>core</i> details. Saving rich content like images and reviews or details like supplier and rating is not a supported use case. Typically a manager will generally ignore these fields upon save and may produce a warning message if they are populated.</p>
<p>The Places API only supports saving of the following <i>core details</i>:</p>
<ul>
<li>name</li>
<li>place id</li>
<li>location</li>
<li>contact details</li>
<li>icon</li>
<li>categories (tag-like names to describe a place)</li>
<li>visibility scope</li>
</ul>
<p>It is possible that providers may only support a subset of these. See the <a href="..//QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin documentation</a> for more details.</p>
<p>Saving of properties such as the rating, extended attributes, images, reviews, editorials and supplier is explicitly not supported by the Places API.</p>
<h4 >Saving Between Plugins</h4>
<p>When saving places between plugins, there are a few things to be aware of. Some fields of a place such as the id, categories and icons are plugin specific entities. For example the categories in one manager may not be recognised in another. Therefore trying to save a place directly from one plugin to another is not possible.</p>
<p>It is generally recommended that saving across plugins be handled as saving <a href="..//QtLocation.Place.md#favorites">favorites</a> as explained in the Favorites section. However there is another approach which is to create a new place, set its (destination) plugin and then use the <a href="..//QtLocation.Place.md#copyFrom-method">copyFrom()</a> method to copy the details of the original place. Using <a href="..//QtLocation.Place.md#copyFrom-method">copyFrom()</a> only copies data that is supported by the destination plugin, plugin specific data such as the place identifier is not copied over. Once the copy is done, the place is in a suitable state to be saved.</p>
<p>The following snippet provides an example of saving a place to a different plugin using the <a href="..//QtLocation.Place.md#copyFrom-method">copyFrom</a> method:</p>
<pre class="qml"><span class="name">place</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; Place { }'</span>, <span class="name">parent</span>);
<span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">destinationPlugin</span>;
<span class="name">place</span>.<span class="name">copyFrom</span>(<span class="name">originalPlace</span>);
<span class="name">place</span>.<span class="name">save</span>();</pre>
<h3 >Removing a Place</h3>
<p>To remove a place, ensure that a Place object with a valid <a href="..//QtLocation.Place.md#placeId-prop">placeId</a> property exists and call its <a href="..//QtLocation.Place.md#remove-method">remove()</a> method. The <a href="..//QtLocation.Place.md#status-prop">status</a> property will change to Place.Removing and then to Place.Ready if the save was successful or to Place.Error if an error occurs.</p>
<h3 >Favorites</h3>
<p>The Places API supports the concept of favorites. Favorites are generally implemented by using two plugins, the first plugin is typically a read-only source of places (origin plugin) and a second read/write plugin (destination plugin) is used to store places from the origin as favorites.</p>
<p>Each Place has a favorite property which is intended to contain the corresponding place from the destination plugin (the place itself is sourced from the origin plugin). Because both the original place and favorite instances are available, the developer can choose which properties to show to the user. For example the favorite may have a modified name which should be displayed rather than the original name.</p>
<pre class="qml"><span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">favorite</span> ? <span class="name">place</span>.<span class="name">favorite</span>.<span class="name">name</span> : <span class="name">place</span>.<span class="name">name</span> }</pre>
<p>The following demonstrates how to save a new favorite instance. A call is made to create/initialize the favorite instance and then the instance is saved.</p>
<pre class="qml"><span class="name">place</span>.<span class="name">initializeFavorite</span>(<span class="name">destinationPlugin</span>);
<span class="comment">//if necessary customizations to the favorite can be made here.</span>
<span class="comment">//...</span>
<span class="name">place</span>.<span class="name">favorite</span>.<span class="name">save</span>();</pre>
<p>The following demonstrates favorite removal:</p>
<pre class="qml"><span class="name">place</span>.<span class="name">favorite</span>.<span class="name">remove</span>();
...
<span class="comment">//check successful removal of the favorite by monitoring its status.</span>
<span class="comment">//once that is done we can assign null to the favorite</span>
<span class="name">place</span>.<span class="name">favorite</span> <span class="operator">=</span> <span class="number">null</span>;</pre>
<p>The <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> has a favoritesPlugin property. If the property is set, any places found during a search are checked against the favoritesPlugin to see if there is a corresponding favorite place. If so, the favorite property of the Place is set, otherwise the favorite property is remains null.</p>
<p><b>See also </b><a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a>.</p>
<!-- @@@Place -->
<h2>Property Documentation</h2>
<!-- $$$attribution -->
<table class="qmlname"><tr valign="top" id="attribution-prop"><td class="tblQmlPropNode"><p><span class="name">attribution</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a rich text attribution string for the place. Some providers may require that the attribution be shown to the user whenever a place is displayed. The contents of this property should be shown to the user if it is not empty.</p>
<!-- @@@attribution -->
<br/>
<!-- $$$categories -->
<table class="qmlname"><tr valign="top" id="categories-prop"><td class="tblQmlPropNode"><p><span class="name">categories</span> : <span class="type">list</span>&lt;<span class="type"><a href="..//QtLocation.Category.md">Category</a></span>&gt;</p></td></tr></table><p>This property holds the list of categories this place is a member of. The categories that can be assigned to a place are specific to each <a href="..//QtLocation.location-places-qml.md#plugin">plugin</a>.</p>
<!-- @@@categories -->
<br/>
<!-- $$$contactDetails -->
<table class="qmlname"><tr valign="top" id="contactDetails-prop"><td class="tblQmlPropNode"><p><span class="name">contactDetails</span> : <span class="type"><a href="..//QtLocation.ContactDetails.md">ContactDetails</a></span></p></td></tr></table><p>This property holds the contact information for this place, for example a phone number or a website URL. This property is a map of <a href="..//QtLocation.ContactDetail.md">ContactDetail</a> objects.</p>
<!-- @@@contactDetails -->
<br/>
<!-- $$$detailsFetched -->
<table class="qmlname"><tr valign="top" id="detailsFetched-prop"><td class="tblQmlPropNode"><p><span class="name">detailsFetched</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the details of the place have been fetched. If this property is false, the place details have not yet been fetched. Fetching can be done by invoking the <a href="..//QtLocation.Place.md#getDetails-method">getDetails()</a> method.</p>
<p><b>See also </b><a href="..//QtLocation.Place.md#getDetails-method">getDetails()</a>.</p>
<!-- @@@detailsFetched -->
<br/>
<!-- $$$editorialModel -->
<table class="qmlname"><tr valign="top" id="editorialModel-prop"><td class="tblQmlPropNode"><p><span class="name">editorialModel</span> : <span class="type"><a href="..//QtLocation.EditorialModel.md">EditorialModel</a></span></p></td></tr></table><p>This property holds a model which can be used to retrieve editorial descriptions of the place.</p>
<!-- @@@editorialModel -->
<br/>
<!-- $$$extendedAttributes -->
<table class="qmlname"><tr valign="top" id="extendedAttributes-prop"><td class="tblQmlPropNode"><p><span class="name">extendedAttributes</span> : <span class="type"><a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a></span></p></td></tr></table><p>This property holds the extended attributes of a place. Extended attributes are additional information about a place not covered by the place's properties.</p>
<!-- @@@extendedAttributes -->
<br/>
<!-- $$$favorite -->
<table class="qmlname"><tr valign="top" id="favorite-prop"><td class="tblQmlPropNode"><p><span class="name">favorite</span> : <span class="type"><a href="..//QtLocation.Place.md">Place</a></span></p></td></tr></table><p>This property holds the favorite instance of a place.</p>
<!-- @@@favorite -->
<br/>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top" id="icon-prop"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type"><a href="..//QtLocation.Icon.md">Icon</a></span></p></td></tr></table><p>This property holds a graphical icon which can be used to represent the place.</p>
<!-- @@@icon -->
<br/>
<!-- $$$imageModel -->
<table class="qmlname"><tr valign="top" id="imageModel-prop"><td class="tblQmlPropNode"><p><span class="name">imageModel</span> : <span class="type"><a href="..//QtLocation.ImageModel.md">ImageModel</a></span></p></td></tr></table><p>This property holds a model which can be used to retrieve images of the place.</p>
<!-- @@@imageModel -->
<br/>
<!-- $$$location -->
<table class="qmlname"><tr valign="top" id="location-prop"><td class="tblQmlPropNode"><p><span class="name">location</span> : <span class="type">QtPositioning::Location</span></p></td></tr></table><p>This property holds the location of the place which can be used to retrieve the coordinate, address and the bounding box.</p>
<!-- @@@location -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the place which can be used to represent the place.</p>
<!-- @@@name -->
<br/>
<!-- $$$place -->
<table class="qmlname"><tr valign="top" id="place-prop"><td class="tblQmlPropNode"><p><span class="name">place</span> : <span class="type">QPlace</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@place -->
<br/>
<!-- $$$placeId -->
<table class="qmlname"><tr valign="top" id="placeId-prop"><td class="tblQmlPropNode"><p><span class="name">placeId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the unique identifier of the place. The place identifier is only meaningful to the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> that generated it and is not transferable between <a href="..//QtLocation.location-places-qml.md#plugin">Plugins</a>. The place id is not guaranteed to be universally unique, but unique within the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> that generated it.</p>
<p>If only the place identifier is known, all other place data can fetched from the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>.</p>
<pre class="qml">    <span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">myPlugin</span>;
<span class="name">place</span>.<span class="name">placeId</span> <span class="operator">=</span> <span class="string">&quot;known-place-id&quot;</span>;
<span class="name">place</span>.<span class="name">getDetails</span>();</pre>
<!-- @@@placeId -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> that provided this place which can be used to retrieve more information about the service.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$primaryEmail -->
<table class="qmlname"><tr valign="top" id="primaryEmail-prop"><td class="tblQmlPropNode"><p><span class="name">primaryEmail</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the primary email address of the place. If no &quot;email&quot; contact detail is defined for this place this property will be an empty string. It is equivalent to</p>
<pre class="qml">    var <span class="name">primaryEmail</span>;
<span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;email&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">primaryEmail</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;email&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>
<!-- @@@primaryEmail -->
<br/>
<!-- $$$primaryFax -->
<table class="qmlname"><tr valign="top" id="primaryFax-prop"><td class="tblQmlPropNode"><p><span class="name">primaryFax</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the primary fax number of the place. If no &quot;fax&quot; contact detail is defined for this place this property will be an empty string. It is equivalent to</p>
<pre class="qml">    var <span class="name">primaryFax</span>;
<span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;fax&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">primaryFax</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;fax&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>
<!-- @@@primaryFax -->
<br/>
<!-- $$$primaryPhone -->
<table class="qmlname"><tr valign="top" id="primaryPhone-prop"><td class="tblQmlPropNode"><p><span class="name">primaryPhone</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the primary phone number of the place. If no &quot;phone&quot; contact detail is defined for this place, this property will be an empty string. It is equivalent to:</p>
<pre class="qml">    var <span class="name">primaryPhone</span>;
<span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;phone&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">primaryPhone</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;phone&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>
<!-- @@@primaryPhone -->
<br/>
<!-- $$$primaryWebsite -->
<table class="qmlname"><tr valign="top" id="primaryWebsite-prop"><td class="tblQmlPropNode"><p><span class="name">primaryWebsite</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the primary website url of the place. If no &quot;website&quot; contact detail is defined for this place this property will be an empty string. It is equivalent to</p>
<pre class="qml">    var <span class="name">primaryWebsite</span>;
<span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;website&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">primaryWebsite</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;website&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>
<!-- @@@primaryWebsite -->
<br/>
<!-- $$$ratings -->
<table class="qmlname"><tr valign="top" id="ratings-prop"><td class="tblQmlPropNode"><p><span class="name">ratings</span> : <span class="type"><a href="..//QtLocation.Ratings.md">Ratings</a></span></p></td></tr></table><p>This property holds ratings of the place. The ratings provide an indication of the quality of a place.</p>
<!-- @@@ratings -->
<br/>
<!-- $$$reviewModel -->
<table class="qmlname"><tr valign="top" id="reviewModel-prop"><td class="tblQmlPropNode"><p><span class="name">reviewModel</span> : <span class="type"><a href="..//QtLocation.ReviewModel.md">ReviewModel</a></span></p></td></tr></table><p>This property holds a model which can be used to retrieve reviews about the place.</p>
<!-- @@@reviewModel -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of the place. It can be one of:</p>
<table class="generic">
<tr valign="top"><td >Place.Ready</td><td >No error occurred during the last operation, further operations may be performed on the place.</td></tr>
<tr valign="top"><td >Place.Saving</td><td >The place is currently being saved, no other operation may be performed until complete.</td></tr>
<tr valign="top"><td >Place.Fetching</td><td >The place details are currently being fetched, no other operations may be performed until complete.</td></tr>
<tr valign="top"><td >Place.Removing</td><td >The place is currently being removed, no other operations can be performed until complete.</td></tr>
<tr valign="top"><td >Place.Error</td><td >An error occurred during the last operation, further operations can still be performed on the place.</td></tr>
</table>
<p>The status of a place can be checked by connecting the status property to a handler function, and then have the handler function process the change in status.</p>
<pre class="qml"><span class="name">place</span>.<span class="name">statusChanged</span>.<span class="name">connect</span>(<span class="name">statusChangedHandler</span>);
...
<span class="keyword">function</span> <span class="name">statusChangedHandler</span>() {
<span class="keyword">if</span> (<span class="name">statusChangedHandler</span>.<span class="name">prevStatus</span> <span class="operator">===</span> <span class="name">Place</span>.<span class="name">Saving</span>) {
<span class="keyword">switch</span> (<span class="name">place</span>.<span class="name">status</span>) {
<span class="keyword">case</span> <span class="name">Place</span>.<span class="name">Ready</span>:
<span class="name">console</span>.<span class="name">log</span>(<span class="string">'Save successful'</span>);
<span class="keyword">break</span>;
<span class="keyword">case</span> <span class="name">Place</span>.<span class="name">Error</span>:
<span class="name">console</span>.<span class="name">log</span>(<span class="string">'Save failed'</span>);
<span class="keyword">break</span>;
<span class="keyword">default</span>:
<span class="keyword">break</span>;
}
}
<span class="name">statusChangedHandler</span>.<span class="name">prevStatus</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">status</span>;
}</pre>
<!-- @@@status -->
<br/>
<!-- $$$supplier -->
<table class="qmlname"><tr valign="top" id="supplier-prop"><td class="tblQmlPropNode"><p><span class="name">supplier</span> : <span class="type"><a href="..//QtLocation.Supplier.md">Supplier</a></span></p></td></tr></table><p>This property holds the supplier of the place data. The supplier is typically a business or organization that collected the data about the place.</p>
<!-- @@@supplier -->
<br/>
<!-- $$$visibility -->
<table class="qmlname"><tr valign="top" id="visibility-prop"><td class="tblQmlPropNode"><p><span class="name">visibility</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the visibility of the place. It can be one of:</p>
<table class="generic">
<tr valign="top"><td >Place.UnspecifiedVisibility</td><td >The visibility of the place is unspecified, the default visibility of the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> will be used.</td></tr>
<tr valign="top"><td >Place.DeviceVisibility</td><td >The place is limited to the current device. The place will not be transferred off of the device.</td></tr>
<tr valign="top"><td >Place.PrivateVisibility</td><td >The place is private to the current user. The place may be transferred to an online service but is only ever visible to the current user.</td></tr>
<tr valign="top"><td >Place.PublicVisibility</td><td >The place is public.</td></tr>
</table>
<p>Note that visibility does not affect how the place is displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the place.</p>
<!-- @@@visibility -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$copyFrom -->
<table class="qmlname"><tr valign="top" id="copyFrom-method"><td class="tblQmlFuncNode"><p><span class="name">copyFrom</span>(<span class="type"><a href="..//QtLocation.Place.md">Place</a></span><i> original</i>)</p></td></tr></table><p>Copies data from an <i>original</i> place into this place. Only data that is supported by this place's plugin is copied over and plugin specific data such as place identifier is not copied over.</p>
<!-- @@@copyFrom -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>()</p></td></tr></table><p>Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$getDetails -->
<table class="qmlname"><tr valign="top" id="getDetails-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">getDetails</span>()</p></td></tr></table><p>This method starts fetching place details.</p>
<p>The <a href="..//QtLocation.Place.md#status-prop">status</a> property will change to Place.Fetching while the fetch is in progress. On success the object's properties will be updated, <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Ready and <a href="..//QtLocation.Place.md#detailsFetched-prop">detailsFetched</a> will be set to true. On error <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Error. The <a href="..//QtLocation.Place.md#errorString-method">errorString()</a> method can be used to get the details of the error.</p>
<!-- @@@getDetails -->
<br/>
<!-- $$$initializeFavorite -->
<table class="qmlname"><tr valign="top" id="initializeFavorite-method"><td class="tblQmlFuncNode"><p><span class="name">initializeFavorite</span>(<span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span><i> destinationPlugin</i>)</p></td></tr></table><p>Creates a favorite instance for the place which is to be saved into the <i>destination</i> plugin. This method does nothing if the favorite property is not null.</p>
<!-- @@@initializeFavorite -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">remove</span>()</p></td></tr></table><p>This method performs a remove operation on the place.</p>
<p>The <a href="..//QtLocation.Place.md#status-prop">status</a> property will change to Place.Removing while the save operation is in progress. On success <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Ready. On error <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Error. The <a href="..//QtLocation.Place.md#errorString-method">errorString()</a> method can be used to get the details of the error.</p>
<!-- @@@remove -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">save</span>()</p></td></tr></table><p>This method performs a save operation on the place.</p>
<p>The <a href="..//QtLocation.Place.md#status-prop">status</a> property will change to Place.Saving while the save operation is in progress. On success the <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Ready. On error <a href="..//QtLocation.Place.md#status-prop">status</a> will be set to Place.Error. The <a href="..//QtLocation.Place.md#errorString-method">errorString()</a> method can be used to get the details of the error.</p>
<p>If the <a href="..//QtLocation.Place.md#placeId-prop">placeId</a> property was previously empty, it will be assigned a valid value automatically during a successful save operation.</p>
<p>Note that a <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> will call <a href="..//QtLocation.Place.md#getDetails-method">Place::getDetails</a> on any place that it detects an update on. A consequence of this is that whenever a Place from a <a href="..//QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> is successfully saved, it will be followed by a fetch of place details, leading to a sequence of state changes of <code>Saving</code>, <code>Ready</code>, <code>Fetching</code>, <code>Ready</code>.</p>
<!-- @@@save -->
<br/>
