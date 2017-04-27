---
Title: QtLocation.PlaceSearchSuggestionModel
---

# QtLocation.PlaceSearchSuggestionModel

<span class="subtitle"></span>
<!-- $$$PlaceSearchSuggestionModel-brief -->
<p>Provides access to search term suggestions. More...</p>
<!-- @@@PlaceSearchSuggestionModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#limit-prop">limit</a></b></b> : int</li>
<li class="fn"><b><b><a href="#offset-prop">offset</a></b></b> : int</li>
<li class="fn"><b><b><a href="#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="#searchArea-prop">searchArea</a></b></b> : geoshape</li>
<li class="fn"><b><b><a href="#searchTerm-prop">searchTerm</a></b></b> : string</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#suggestions-prop">suggestions</a></b></b> : stringlist</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancel-method">cancel</a></b></b>()</li>
<li class="fn">string <b><b><a href="#errorString-method">errorString</a></b></b>()</li>
<li class="fn"><b><b><a href="#reset-method">reset</a></b></b>()</li>
<li class="fn"><b><b><a href="#update-method">update</a></b></b>()</li>
</ul>
<!-- $$$PlaceSearchSuggestionModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#">PlaceSearchSuggestionModel</a> can be used to provide search term suggestions as the user enters their search term. The properties of this model should match that of the <a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a>, which will be used to perform the actual search query, to ensure that the search suggestion results are relevant.</p>
<p>There are two ways of accessing the data provided by this model, either through the <a href="#suggestions-prop">suggestions</a> property or through views and delegates. The latter is the preferred method.</p>
<p>The <a href="#limit-prop">limit</a> - 1) will be returned. Support for paging may vary from plugin to plugin.</p>
<p>The model returns data for the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >suggestion</td><td >string</td><td >Suggested search term.</td></tr>
</table>
<p>The following example shows how to use the <a href="#searchArea-prop">searchArea</a> is set to match what would be used to perform the actual place search with <a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a>.</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="#">PlaceSearchSuggestionModel</a></span> {
<span class="name">id</span>: <span class="name">suggestionModel</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="comment">// Brisbane</span>
<span class="name">searchArea</span>: <span class="name">QtLocation</span>.<span class="name">circle</span>(<span class="name">QtLocation</span>.<span class="name">coordinate</span>(-<span class="number">27.46778</span>, <span class="number">153.02778</span>))
<span class="name">onSearchTermChanged</span>: <span class="name">update</span>()
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">suggestionModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">suggestion</span> }
}</pre>
<p><b>See also </b>PlaceSearchModel and QPlaceManager.</p>
<!-- @@@PlaceSearchSuggestionModel -->
<h2>Property Documentation</h2>
<!-- $$$limit -->
<table class="qmlname"><tr valign="top" id="limit-prop"><td class="tblQmlPropNode"><p><span class="name">limit</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the limit of the number of items that will be returned.</p>
<p><b>See also </b><a href="#offset-prop">offset</a>.</p>
<!-- @@@limit -->
<br/>
<!-- $$$offset -->
<table class="qmlname"><tr valign="top" id="offset-prop"><td class="tblQmlPropNode"><p><span class="name">offset</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the index of the first item in the model.</p>
<p><b>See also </b><a href="#limit-prop">limit</a>.</p>
<!-- @@@offset -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the provider <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> which will be used to perform the search.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$searchArea -->
<table class="qmlname"><tr valign="top" id="searchArea-prop"><td class="tblQmlPropNode"><p><span class="name">searchArea</span> : <span class="type">geoshape</span></p></td></tr></table><p>This property holds the search area. Search suggestion results returned by the model will be relevant to the given search area.</p>
<p>If this property is set to a geocircle its radius property may be left unset, in which case the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> will choose an appropriate radius for the search.</p>
<!-- @@@searchArea -->
<br/>
<!-- $$$searchTerm -->
<table class="qmlname"><tr valign="top" id="searchTerm-prop"><td class="tblQmlPropNode"><p><span class="name">searchTerm</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the partial search term used in query.</p>
<!-- @@@searchTerm -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the status of the model. It can be one of:</p>
<table class="generic">
<tr valign="top"><td ><a href="#">PlaceSearchSuggestionModel</a>.Null</td><td >No search query has been executed. The model is empty.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchSuggestionModel</a>.Ready</td><td >The search query has completed, and the results are available.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchSuggestionModel</a>.Loading</td><td >A search query is currently being executed.</td></tr>
<tr valign="top"><td ><a href="#">PlaceSearchSuggestionModel</a>.Error</td><td >An error occurred when executing the previous search query.</td></tr>
</table>
<!-- @@@status -->
<br/>
<!-- $$$suggestions -->
<table class="qmlname"><tr valign="top" id="suggestions-prop"><td class="tblQmlPropNode"><p><span class="name">suggestions</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds the list of predicted search terms that the model currently has.</p>
<!-- @@@suggestions -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="name">cancel</span>()</p></td></tr></table><p>Cancels an ongoing search suggestion operation immediately and sets the model status to <a href="#">PlaceSearchSuggestionModel</a>.Ready. The model retains any search suggestions it had before the operation was started.</p>
<p>If an operation is not ongoing, invoking cancel() has no effect.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>() const</p></td></tr></table><p>This read-only property holds the textual presentation of latest search suggestion model error. If no error has occurred, or if the model was cleared, an empty string is returned.</p>
<p>An empty string may also be returned if an error occurred which has no associated textual representation.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="name">reset</span>()</p></td></tr></table><p>Resets the model. All search suggestions are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to <a href="#">PlaceSearchSuggestionModel</a>.Null.</p>
<!-- @@@reset -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-method"><td class="tblQmlFuncNode"><p><span class="name">update</span>()</p></td></tr></table><p>Updates the model based on the provided query parameters. The model will be populated with a list of search suggestions for the partial <a href="#offset-prop">offset</a> may be specified. <code>update()</code> submits the set of parameters to the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> to process.</p>
<p>While the model is updating the <a href="#status-prop">status</a> is set to <code>PlaceSearchSuggestionModel.Error</code> and the model cleared.</p>
<p>This example shows use of the model</p>
<pre class="cpp">PlaceSeachSuggestionModel {
id: model
plugin: backendPlugin
searchArea: <span class="type">QtPositioning</span><span class="operator">.</span>circle(<span class="type">QtPositioning</span><span class="operator">.</span>coordinate(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>))
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
}
MouseArea {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
onClicked: {
model<span class="operator">.</span>searchTerm <span class="operator">=</span> <span class="string">&quot;piz&quot;</span>
model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>latitude <span class="operator">=</span> <span class="operator">-</span><span class="number">27.5</span>;
model<span class="operator">.</span>searchArea<span class="operator">.</span>cetner<span class="operator">.</span>longitude <span class="operator">=</span> <span class="number">153</span>;
model<span class="operator">.</span>update();
}
}</pre>
<p>A more detailed example can be found in the in <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.places/#presenting-search-suggestions">Places (QML)</a> example.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@update -->
<br/>
