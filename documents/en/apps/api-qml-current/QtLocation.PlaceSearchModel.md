---
Title: QtLocation.PlaceSearchModel
---

# QtLocation.PlaceSearchModel

<span class="subtitle"></span>
<!-- $$$PlaceSearchModel-brief -->
<p>Provides access to place search results. More...</p>
<!-- @@@PlaceSearchModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#categories-prop">categories</a></b></b> : list&lt;Category&gt;</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#favoritesMatchParameters-prop">favoritesMatchParameters</a></b></b> : VariantMap</li>
<li class="fn"><b><b><a href="#favoritesPlugin-prop">favoritesPlugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="#limit-prop">limit</a></b></b> : int</li>
<li class="fn"><b><b><a href="#nextPagesAvailable-prop">nextPagesAvailable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="#previousPagesAvailable-prop">previousPagesAvailable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#recommendationId-prop">recommendationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#relevanceHint-prop">relevanceHint</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#searchArea-prop">searchArea</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#searchTerm-prop">searchTerm</a></b></b> : string</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#visibilityScope-prop">visibilityScope</a></b></b> : enum</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancel-method">cancel</a></b></b>()</li>
<li class="fn"><b><b><a href="#data-method">data</a></b></b>(int <i>index</i>, string <i>role</i>)</li>
<li class="fn">string <b><b><a href="#errorString-method">errorString</a></b></b>()</li>
<li class="fn"><b><b><a href="#nextPage-method">nextPage</a></b></b>()</li>
<li class="fn"><b><b><a href="#previousPage-method">previousPage</a></b></b>()</li>
<li class="fn"><b><b><a href="#reset-method">reset</a></b></b>()</li>
<li class="fn"><b><b><a href="#update-method">update</a></b></b>()</li>
<li class="fn"><b><b><a href="#updateWith-method">updateWith</a></b></b>(int <i>proposedSearchIndex</i>)</li>
</ul>
<!-- $$$PlaceSearchModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="#searchTerm-prop">searchTerm</a> and <a href="QtLocation.location-places-backend.md#categories">categories</a> properties can be set to restrict the search results to places matching those criteria.</p>
<p>The <a href="#">PlaceSearchModel</a> returns both sponsored and <a href="http://en.wikipedia.org/wiki/Organic_search">organic search results</a>. Sponsored search results will have the <code>sponsored</code> role set to true.</p>
<p>The model returns data for the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >type</td><td >enum</td><td >The type of search result.</td></tr>
<tr valign="top"><td >title</td><td >string</td><td >A string describing the search result.</td></tr>
<tr valign="top"><td >icon</td><td ><a href="QtLocation.location-cpp-qml.md#placeicon">PlaceIcon</a></td><td >Icon representing the search result.</td></tr>
<tr valign="top"><td >distance</td><td >real</td><td >Valid only when the <code>type</code> role is <code>PlaceResult</code>, the distance to the place from the center of the <a href="#searchArea-prop">searchArea</a> has been specified, the distance is NaN.</td></tr>
<tr valign="top"><td >place</td><td ><a href="QtLocation.location-cpp-qml.md#place">Place</a></td><td >Valid only when the <code>type</code> role is <code>PlaceResult</code>, an object representing the place.</td></tr>
<tr valign="top"><td >sponsored</td><td >bool</td><td >Valid only when the <code>type</code> role is <code>PlaceResult</code>, true if the search result is a sponsored result.</td></tr>
</table>
<h3 >Search Result Types</h3>
<p>The <code>type</code> role can take on the following values:</p>
<table class="generic">
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.UnknownSearchResult</td><td >The contents of the search result are unknown.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.PlaceResult</td><td >The search result contains a place.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.ProposedSearchResult</td><td >The search result contains a proposed search which may be relevant.</td></tr>
</table>
<p>It can often be helpful to use a Loader to create a delegate that will choose different Components based on the search result type.</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">resultDelegate</span>
<span class="type">Loader</span> {
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">placeResult</span>
<span class="type">Column</span> {
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">text</span> }
}
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">otherResult</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
}
<span class="name">sourceComponent</span>: <span class="name">type</span> <span class="operator">==</span> <span class="name">PlaceSearchModel</span>.<span class="name">PlaceResult</span> ? <span class="name">placeResult</span> :
<span class="name">otherResult</span>
}
}</pre>
<h2 id="detection-of-updated-and-removed-places">Detection of Updated and Removed Places</h2>
<p>The <a href="#">PlaceSearchModel</a> listens for places that have been updated or removed from its plugin's backend. If it detects that a place has been updated and that place is currently present in the model, then it will call <a href="QtLocation.Place.md#getDetails-method">Place::getDetails</a> to refresh the details. If it detects that a place has been removed, then correspondingly the place will be removed from the model if it is currently present.</p>
<h2 id="example">Example</h2>
<p>The following example shows how to use the <a href="#count-prop">count</a> is set to the number of search results returned during the fetch.</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="#">PlaceSearchModel</a></span> {
<span class="name">id</span>: <span class="name">searchModel</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
<span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
<span class="name">Component</span>.onCompleted: <span class="name">update</span>()
}</pre>
<h2 id="paging">Paging</h2>
<p>The <a href="#limit-prop">limit</a> can vary according to the <a href="QtLocation.location-places-qml.md#plugin">plugin</a>.</p>
<p><b>See also </b>CategoryModel and QPlaceManager.</p>
<!-- @@@PlaceSearchModel -->
<h2>Property Documentation</h2>
<!-- $$$categories -->
<table class="qmlname"><tr valign="top" id="categories-prop"><td class="tblQmlPropNode"><p><span class="name">categories</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtLocation.Category.md">Category</a></span>&gt;</p></td></tr></table><p>This property holds a list of categories to be used when searching. Returned search results will be for places that match at least one of the categories.</p>
<!-- @@@categories -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of results the model has.</p>
<p>Note that it does not refer to the total number of search results available in the backend. The total number of search results is not currently supported by the API.</p>
<!-- @@@count -->
<br/>
<!-- $$$favoritesMatchParameters -->
<table class="qmlname"><tr valign="top" id="favoritesMatchParameters-prop"><td class="tblQmlPropNode"><p><span class="name">favoritesMatchParameters</span> : <span class="type">VariantMap</span></p></td></tr></table><p>This property holds a set of parameters used to specify how search result places are matched to favorites in the <a href="#favoritesPlugin-prop">favoritesPlugin</a>.</p>
<p>By default the parameter map is empty and implies that the favorites plugin matches by <a href="QtLocation.location-places-backend.md#alternative-identifier-cross-referencing">alternative identifiers</a>. Generally, an application developer will not need to set this property.</p>
<p>In cases where the favorites plugin does not support matching by alternative identifiers, then the <a href="QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin documentation</a> should be consulted to see precisely what key-value parameters to set.</p>
<!-- @@@favoritesMatchParameters -->
<br/>
<!-- $$$favoritesPlugin -->
<table class="qmlname"><tr valign="top" id="favoritesPlugin-prop"><td class="tblQmlPropNode"><p><span class="name">favoritesPlugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> which will be used to search for favorites. Any places from the search which can be cross-referenced or matched in the favoritesPlugin will have their <a href="QtLocation.Place.md#favorite-prop">favorite</a> property set to the corresponding <a href="QtLocation.location-cpp-qml.md#place">Place</a> from the favoritesPlugin.</p>
<p>If the favoritesPlugin is not set, the <a href="QtLocation.Place.md#favorite-prop">favorite</a> property of the places in the results will always be null.</p>
<p><b>See also </b><a href="QtLocation.Place.md#favorites">Favorites</a>.</p>
<!-- @@@favoritesPlugin -->
<br/>
<!-- $$$limit -->
<table class="qmlname"><tr valign="top" id="limit-prop"><td class="tblQmlPropNode"><p><span class="name">limit</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the limit of the number of items that will be returned.</p>
<!-- @@@limit -->
<br/>
<!-- $$$nextPagesAvailable -->
<table class="qmlname"><tr valign="top" id="nextPagesAvailable-prop"><td class="tblQmlPropNode"><p><span class="name">nextPagesAvailable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether there is one or more additional pages of search results available.</p>
<p><b>See also </b><a href="#nextPage-method">nextPage()</a>.</p>
<!-- @@@nextPagesAvailable -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> which will be used to perform the search.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$previousPagesAvailable -->
<table class="qmlname"><tr valign="top" id="previousPagesAvailable-prop"><td class="tblQmlPropNode"><p><span class="name">previousPagesAvailable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether there is one or more previous pages of search results available.</p>
<p><b>See also </b><a href="#previousPage-method">previousPage()</a>.</p>
<!-- @@@previousPagesAvailable -->
<br/>
<!-- $$$recommendationId -->
<table class="qmlname"><tr valign="top" id="recommendationId-prop"><td class="tblQmlPropNode"><p><span class="name">recommendationId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the placeId to be used in order to find recommendations for similar places.</p>
<!-- @@@recommendationId -->
<br/>
<!-- $$$relevanceHint -->
<table class="qmlname"><tr valign="top" id="relevanceHint-prop"><td class="tblQmlPropNode"><p><span class="name">relevanceHint</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds a relevance hint used in the search query. The hint is given to the provider to help but not dictate the ranking of results. For example, the distance hint may give closer places a higher ranking but it does not necessarily mean the results will be strictly ordered according to distance. A provider may ignore the hint altogether.</p>
<table class="generic">
<tr valign="top"><td >SearchResultModel.UnspecifiedHint</td><td >No relevance hint is given to the provider.</td></tr>
<tr valign="top"><td >SearchResultModel.DistanceHint</td><td >The distance of the place from the user's current location is important to the user. This hint is only meaningful when a circular search area is used.</td></tr>
<tr valign="top"><td >SearchResultModel.LexicalPlaceNameHint</td><td >The lexical ordering of place names (in ascending alphabetical order) is relevant to the user. This hint is useful for providers based on a local data store.</td></tr>
</table>
<!-- @@@relevanceHint -->
<br/>
<!-- $$$searchArea -->
<table class="qmlname"><tr valign="top" id="searchArea-prop"><td class="tblQmlPropNode"><p><span class="name">searchArea</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the search area. The search result returned by the model will be within the search area.</p>
<p>If this property is set to a geocircle its radius property may be left unset, in which case the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> will choose an appropriate radius for the search.</p>
<p>Support for specifying a search area can vary according to the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> backend implementation. For example, some may support a search center only while others may only support geo rectangles.</p>
<!-- @@@searchArea -->
<br/>
<!-- $$$searchTerm -->
<table class="qmlname"><tr valign="top" id="searchTerm-prop"><td class="tblQmlPropNode"><p><span class="name">searchTerm</span> : <span class="type">string</span></p></td></tr></table><p>This property holds search term used in query. The search term is a free-form text string.</p>
<!-- @@@searchTerm -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the status of the model. It can be one of:</p>
<table class="generic">
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.Null</td><td >No search query has been executed. The model is empty.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.Ready</td><td >The search query has completed, and the results are available.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.Loading</td><td >A search query is currently being executed.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchModel</a>.Error</td><td >An error occurred when executing the previous search query.</td></tr>
</table>
<!-- @@@status -->
<br/>
<!-- $$$visibilityScope -->
<table class="qmlname"><tr valign="top" id="visibilityScope-prop"><td class="tblQmlPropNode"><p><span class="name">visibilityScope</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the visibility scope of the places to search. Only places with the specified visibility will be returned in the search results.</p>
<p>The visibility scope can be one of:</p>
<table class="generic">
<tr valign="top"><td >Place.UnspecifiedVisibility</td><td >No explicit visibility scope specified, places with any visibility may be part of search results.</td></tr>
<tr valign="top"><td >Place.DeviceVisibility</td><td >Only places stored on the local device will be part of the search results.</td></tr>
<tr valign="top"><td >Place.PrivateVisibility</td><td >Only places that are private to the current user will be part of the search results.</td></tr>
<tr valign="top"><td >Place.PublicVisibility</td><td >Only places that are public will be part of the search results.</td></tr>
</table>
<!-- @@@visibilityScope -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="name">cancel</span>()</p></td></tr></table><p>Cancels an ongoing search operation immediately and sets the model status to <a href="#">PlaceSearchModel</a>.Ready. The model retains any search results it had before the operation was started.</p>
<p>If an operation is not ongoing, invoking cancel() has no effect.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-method"><td class="tblQmlFuncNode"><p><span class="name">data</span>(<span class="type">int</span><i> index</i>, <span class="type">string</span><i> role</i>)</p></td></tr></table><p>Returns the data for a given <i>role</i> at the specified row <i>index</i>.</p>
<!-- @@@data -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>() const</p></td></tr></table><p>This read-only property holds the textual presentation of latest place search model error. If no error has occurred or if the model was cleared an empty string is returned.</p>
<p>An empty string may also be returned if an error occurred which has no associated textual representation.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$nextPage -->
<table class="qmlname"><tr valign="top" id="nextPage-method"><td class="tblQmlFuncNode"><p><span class="name">nextPage</span>()</p></td></tr></table><p>Updates the model to display the next page of search results. If there is no next page then this method does nothing.</p>
<!-- @@@nextPage -->
<br/>
<!-- $$$previousPage -->
<table class="qmlname"><tr valign="top" id="previousPage-method"><td class="tblQmlFuncNode"><p><span class="name">previousPage</span>()</p></td></tr></table><p>Updates the model to display the previous page of search results. If there is no previous page then this method does nothing.</p>
<!-- @@@previousPage -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="name">reset</span>()</p></td></tr></table><p>Resets the model. All search results are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to <a href="#">PlaceSearchModel</a>.Null.</p>
<!-- @@@reset -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-method"><td class="tblQmlFuncNode"><p><span class="name">update</span>()</p></td></tr></table><p>Updates the model based on the provided query parameters. The model will be populated with a list of places matching the search parameters specified by the type's properties. Search criteria is specified by setting properties such as the <a href="#limit-prop">limit</a>. Support for these properties may vary according to <a href="QtLocation.location-places-qml.md#plugin">plugin</a>. <code>update()</code> then submits the set of criteria to the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> to process.</p>
<p>While the model is updating the <a href="#status-prop">status</a> is set to <code>PlaceSearchModel.Error</code> and the model cleared.</p>
<pre class="cpp">PlaceSearchModel {
id: model
plugin: backendPlugin
searchArea: <span class="type">QtPositioning</span><span class="operator">.</span>circle(<span class="type">QtPositioning</span><span class="operator">.</span>coordinate(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>))
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
}
MouseArea {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
onClicked: {
model<span class="operator">.</span>searchTerm <span class="operator">=</span> <span class="string">&quot;pizza&quot;</span>;
model<span class="operator">.</span>categories <span class="operator">=</span> null;  <span class="comment">//not searching by any category</span>
model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>latitude <span class="operator">=</span> <span class="operator">-</span><span class="number">27.5</span>;
model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>longitude <span class="operator">=</span> <span class="number">153</span>;
model<span class="operator">.</span>update();
}
}</pre>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@update -->
<br/>
<!-- $$$updateWith -->
<table class="qmlname"><tr valign="top" id="updateWith-method"><td class="tblQmlFuncNode"><p><span class="name">updateWith</span>(<span class="type">int</span><i> proposedSearchIndex</i>)</p></td></tr></table><p>Updates the model based on the ProposedSearchResult at index <i>proposedSearchIndex</i>. The model will be populated with a list of places matching the proposed search. Model status will be set to <a href="#">PlaceSearchModel</a>.Error and the model cleared.</p>
<p>If <i>proposedSearchIndex</i> does not reference a ProposedSearchResult this method does nothing.</p>
<!-- @@@updateWith -->
<br/>
