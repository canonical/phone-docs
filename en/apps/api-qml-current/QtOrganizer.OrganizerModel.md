---
Title: QtOrganizer.OrganizerModel
---

# QtOrganizer.OrganizerModel

<span class="subtitle"></span>
<!-- $$$OrganizerModel-brief -->
<p>The OrganizerModel element provides access to organizer items from the organizer store. More...</p>
<!-- @@@OrganizerModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#ImportError-prop">ImportError</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#autoUpdate-prop">autoUpdate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#availableManagers-prop">availableManagers</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#collections-prop">collections</a></b></b> : list&lt;Collection&gt;</li>
<li class="fn"><b><b><a href="#endPeriod-prop">endPeriod</a></b></b> : date</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fetchHint-prop">fetchHint</a></b></b> : FetchHint</li>
<li class="fn"><b><b><a href="#filter-prop">filter</a></b></b> : Filter</li>
<li class="fn"><b><b><a href="#itemCount-prop">itemCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#items-prop">items</a></b></b> : list&lt;OrganizerItem&gt;</li>
<li class="fn"><b><b><a href="#manager-prop">manager</a></b></b> : string</li>
<li class="fn"><b><b><a href="#managerName-prop">managerName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#sortOrders-prop">sortOrders</a></b></b> : list&lt;SortOrder&gt;</li>
<li class="fn"><b><b><a href="#startPeriod-prop">startPeriod</a></b></b> : date</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onExportCompleted-signal">onExportCompleted</a></b></b>()</li>
<li class="fn"><b><b><a href="#onImportCompleted-signal">onImportCompleted</a></b></b>(ImportError <i>error</i>, URL <i>url</i>, list&lt;string&gt; <i>ids</i>)</li>
<li class="fn"><b><b><a href="#onItemsFetched-signal">onItemsFetched</a></b></b>(int <i>requestId</i>, list&lt;OrganizerItem&gt; <i>fetchedItems</i>)</li>
<li class="fn"><b><b><a href="#onModelChanged-signal">onModelChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelUpdate-method">cancelUpdate</a></b></b>()</li>
<li class="fn">Collection <b><b><a href="#collection-method">collection</a></b></b>(string <i>collectionId</i>)</li>
<li class="fn">bool <b><b><a href="#containsItems-method-2">containsItems</a></b></b>(date <i>start</i>, date <i>end</i>)</li>
<li class="fn">list&lt;bool&gt; <b><b><a href="#containsItems-method">containsItems</a></b></b>(date <i>start</i>, date <i>end</i>, int <i>interval</i>)</li>
<li class="fn">Collection <b><b><a href="#defaultCollection-method">defaultCollection</a></b></b>()</li>
<li class="fn"><b><b><a href="#exportItems-method">exportItems</a></b></b>(url <i>url</i>, list&lt;string&gt; <i>profiles</i>)</li>
<li class="fn"><b><b><a href="#fetchCollections-method">fetchCollections</a></b></b>()</li>
<li class="fn">int <b><b><a href="#fetchItems-method-2">fetchItems</a></b></b>(stringlist <i>itemIds</i>)</li>
<li class="fn">int <b><b><a href="#fetchItems-method">fetchItems</a></b></b>(date <i>start</i>, date <i>end</i>, Filter <i>filter</i>, int <i>maxCount</i>, list&lt;SortOrder&gt; <i>sortOrders</i>, FetchHint <i>fetchHint</i>)</li>
<li class="fn"><b><b><a href="#importItems-method">importItems</a></b></b>(url <i>url</i>, list&lt;string&gt; <i>profiles</i>)</li>
<li class="fn">OrganizerItem <b><b><a href="#item-method">item</a></b></b>(string <i>itemId</i>)</li>
<li class="fn">list&lt;string&gt; <b><b><a href="#itemIds-method">itemIds</a></b></b>(date <i>start</i>, date <i>end</i>)</li>
<li class="fn">list&lt;OrganizerItem&gt; <b><b><a href="#itemsByTimePeriod-method">itemsByTimePeriod</a></b></b>(date <i>start</i>, date <i>end</i>)</li>
<li class="fn"><b><b><a href="#removeCollection-method">removeCollection</a></b></b>(string <i>collectionId</i>)</li>
<li class="fn"><b><b><a href="#removeItem-method-2">removeItem</a></b></b>(OrganizerItem <i>item</i>)</li>
<li class="fn"><b><b><a href="#removeItem-method">removeItem</a></b></b>(string <i>itemId</i>)</li>
<li class="fn"><b><b><a href="#removeItems-method-2">removeItems</a></b></b>(list&lt;OrganizerItem&gt; <i>items</i>)</li>
<li class="fn"><b><b><a href="#removeItems-method">removeItems</a></b></b>(list&lt;string&gt; <i>itemId</i>)</li>
<li class="fn"><b><b><a href="#saveCollection-method">saveCollection</a></b></b>(Collection <i>collection</i>)</li>
<li class="fn"><b><b><a href="#saveItem-method">saveItem</a></b></b>(OrganizerItem <i>item</i>)</li>
<li class="fn"><b><b><a href="#update-method">update</a></b></b>()</li>
<li class="fn"><b><b><a href="#updateCollections-method">updateCollections</a></b></b>()</li>
<li class="fn"><b><b><a href="#updateItems-method">updateItems</a></b></b>()</li>
</ul>
<!-- $$$OrganizerModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">OrganizerModel</a> provides a model of organizer items from the organizer store. The contents of the model can be specified with <a href="#filter-prop">filter</a>, <a href="#sortOrders-prop">sortOrders</a> and <a href="#fetchHint-prop">fetchHint</a> properties. Whether the model is automatically updated when the store or <a href="QtOrganizer.organizer/">C++ organizer</a> item changes, can be controlled with <a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a> property.</p>
<p>There are two ways of accessing the organizer item data: via the model by using views and delegates, or alternatively via <a href="QtOrganizer.organizer.md#items">items</a> list property. Of the two, the model access is preferred. Direct list access (i.e&#x2e; non-model) is not guaranteed to be in order set by sortOrder.</p>
<p>At the moment the model roles provided by <a href="index.html">OrganizerModel</a> are <code>display</code> and <code>item</code>. Through the <code>item</code> role can access any data provided by the <a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a> element.</p>
<p><b>Note: </b>Both the <code>startPeriod</code> and <code>endPeriod</code> are set by default to the current time (when the OrganizerModel was created). In most cases, both (or at least one) of the startPeriod and endPeriod should be set; otherwise, the OrganizerModel will contain zero items because the <code>startPeriod</code> and <code>endPeriod</code> are the same value. For example, if only <code>endPeriod</code> is provided, the OrganizerModel will contain all items from now (the time of the OrganizerModel's creation) to the <code>endPeriod</code> time.</p><p><b>See also </b>OrganizerItem and QOrganizerManager.</p>
<!-- @@@OrganizerModel -->
<h2>Property Documentation</h2>
<!-- $$$ImportError -->
<table class="qmlname"><tr valign="top" id="ImportError-prop"><td class="tblQmlPropNode"><p><span class="name">ImportError</span> : <span class="type">enumeration</span></p></td></tr></table><p>Defines the errors cases for <a href="#importItems-method">OrganizerModel::importItems()</a> -function.</p>
<ul>
<li>OrganizerModel::ImportNoError Completed successfully, no error.</li>
<li>OrganizerModel::ImportUnspecifiedError Unspecified error.</li>
<li>OrganizerModel::ImportIOError Input/output error.</li>
<li>OrganizerModel::ImportOutOfMemoryError Out of memory error.</li>
<li>OrganizerModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.</li>
<li>OrganizerModel::ImportParseError Error during parsing.</li>
</ul>
<!-- @@@ImportError -->
<br/>
<!-- $$$autoUpdate -->
<table class="qmlname"><tr valign="top" id="autoUpdate-prop"><td class="tblQmlPropNode"><p><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether or not the organizer model should be updated automatically, default value is true.</p>
<p><b>See also </b><a href="#update-method">OrganizerModel::update()</a>.</p>
<!-- @@@autoUpdate -->
<br/>
<!-- $$$availableManagers -->
<table class="qmlname"><tr valign="top" id="availableManagers-prop"><td class="tblQmlPropNode"><p><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>This property holds the list of available manager names. This property is read only.</p>
<!-- @@@availableManagers -->
<br/>
<!-- $$$collections -->
<table class="qmlname"><tr valign="top" id="collections-prop"><td class="tblQmlPropNode"><p><span class="name">collections</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span>&gt;</p></td></tr></table><p>This property holds a list of collections in the organizer model.</p>
<p><b>See also </b><a href="QtOrganizer.Collection.md">Collection</a>.</p>
<!-- @@@collections -->
<br/>
<!-- $$$endPeriod -->
<table class="qmlname"><tr valign="top" id="endPeriod-prop"><td class="tblQmlPropNode"><p><span class="name">endPeriod</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the end date and time period used by the organizer model to fetch organizer items. The default value is the datetime of <a href="index.html">OrganizerModel</a> creation.</p>
<!-- @@@endPeriod -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the latest error code returned by the organizer manager.</p>
<p>This property is read only.</p>
<!-- @@@error -->
<br/>
<!-- $$$fetchHint -->
<table class="qmlname"><tr valign="top" id="fetchHint-prop"><td class="tblQmlPropNode"><p><span class="name">fetchHint</span> : <span class="type"><a href="QtOrganizer.FetchHint.md">FetchHint</a></span></p></td></tr></table><p>This property holds the fetch hint instance used by the organizer model.</p>
<p><b>See also </b><a href="QtOrganizer.FetchHint.md">FetchHint</a>.</p>
<!-- @@@fetchHint -->
<br/>
<!-- $$$filter -->
<table class="qmlname"><tr valign="top" id="filter-prop"><td class="tblQmlPropNode"><p><span class="name">filter</span> : <span class="type"><a href="QtOrganizer.Filter.md">Filter</a></span></p></td></tr></table><p>This property holds the filter instance used by the organizer model.</p>
<p>Set filter property to 'null', when you want to reset it to default value.</p>
<p><b>See also </b><a href="QtOrganizer.Filter.md">Filter</a>.</p>
<!-- @@@filter -->
<br/>
<!-- $$$itemCount -->
<table class="qmlname"><tr valign="top" id="itemCount-prop"><td class="tblQmlPropNode"><p><span class="name">itemCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the size of organizer items the <a href="index.html">OrganizerModel</a> currently holds.</p>
<p>This property is read only.</p>
<!-- @@@itemCount -->
<br/>
<!-- $$$items -->
<table class="qmlname"><tr valign="top" id="items-prop"><td class="tblQmlPropNode"><p><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt;</p></td></tr></table><p>This property holds a list of organizer items in the organizer model.</p>
<p><b>See also </b><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a>.</p>
<!-- @@@items -->
<br/>
<!-- $$$manager -->
<table class="qmlname"><tr valign="top" id="manager-prop"><td class="tblQmlPropNode"><p><span class="name">manager</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager name or manager uri of the organizer backend engine. The manager uri format: qtorganizer:&lt;managerid&gt;:&lt;key&gt;=&lt;value&gt;&amp;&lt;key&gt;=&lt;value&gt;.</p>
<p>For example, memory organizer engine has an optional id parameter, if user want to share the same memory engine with multiple <a href="index.html">OrganizerModel</a> instances, the manager property should declared like this:</p>
<pre class="cpp">model : OrganizerModel {
manager:<span class="string">&quot;qtorganizer:memory:id=organizer1
}
</span></pre>
<p>instead of just the manager name:</p>
<pre class="cpp">model : OrganizerModel {
manager:<span class="string">&quot;memory&quot;</span>
}</pre>
<p><b>See also </b>QOrganizerManager::fromUri().</p>
<!-- @@@manager -->
<br/>
<!-- $$$managerName -->
<table class="qmlname"><tr valign="top" id="managerName-prop"><td class="tblQmlPropNode"><p><span class="name">managerName</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager name of the organizer backend engine. This property is read only.</p>
<p><b>See also </b>QOrganizerManager::fromUri().</p>
<!-- @@@managerName -->
<br/>
<!-- $$$sortOrders -->
<table class="qmlname"><tr valign="top" id="sortOrders-prop"><td class="tblQmlPropNode"><p><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.SortOrder.md">SortOrder</a></span>&gt;</p></td></tr></table><p>This property holds a list of sort orders used by the organizer model.</p>
<p><b>See also </b><a href="QtOrganizer.SortOrder.md">SortOrder</a>.</p>
<!-- @@@sortOrders -->
<br/>
<!-- $$$startPeriod -->
<table class="qmlname"><tr valign="top" id="startPeriod-prop"><td class="tblQmlPropNode"><p><span class="name">startPeriod</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the start date and time period used by the organizer model to fetch organizer items. The default value is the datetime of <a href="index.html">OrganizerModel</a> creation.</p>
<!-- @@@startPeriod -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onExportCompleted -->
<table class="qmlname"><tr valign="top" id="onExportCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">onExportCompleted</span>()</p></td></tr></table><p>This signal is emitted, when <a href="#exportItems-method">OrganizerModel::exportItems()</a> completes. The success of operation can be seen on <i>error</i> which is defined in OrganizerModel::ExportError. <i>url</i> indicates the file, which was exported.</p>
<!-- @@@onExportCompleted -->
<br/>
<!-- $$$onImportCompleted -->
<table class="qmlname"><tr valign="top" id="onImportCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">onImportCompleted</span>(<span class="type"><a href="#ImportError-prop">ImportError</a></span><i> error</i>, <span class="type">URL</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> ids</i>)</p></td></tr></table><p>This signal is emitted, when <a href="#importItems-method">OrganizerModel::importItems()</a> completes. The success of operation can be seen on <i>error</i> which is defined in <a href="#ImportError-prop">OrganizerModel::ImportError</a>. <i>url</i> indicates the file, which was imported. <i>ids</i> contains the imported items ids.</p>
<p>If the operation was successful, items are now imported to backend. If <a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a> is enabled, OrganizerModel::modelChanged will be emitted when imported items are also visible on <a href="index.html">OrganizerModel</a>'s data model.</p>
<p><b>See also </b><a href="#importItems-method">OrganizerModel::importItems</a>.</p>
<!-- @@@onImportCompleted -->
<br/>
<!-- $$$onItemsFetched -->
<table class="qmlname"><tr valign="top" id="onItemsFetched-signal"><td class="tblQmlFuncNode"><p><span class="name">onItemsFetched</span>(<span class="type">int</span><i> requestId</i>, <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt;<i> fetchedItems</i>)</p></td></tr></table><p>This handler is called when request of the given <i>requestId</i> is finished with the <i>fetchedItems</i>.</p>
<p><b>See also </b><a href="#fetchItems-method">fetchItems</a>.</p>
<!-- @@@onItemsFetched -->
<br/>
<!-- $$$onModelChanged -->
<table class="qmlname"><tr valign="top" id="onModelChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onModelChanged</span>()</p></td></tr></table><p>This signal is emitted, when there are changes in items contained by <a href="index.html">OrganizerModel</a>'s data model. Items have either been added, removed or modified. This signal is also always emitted during <a href="index.html">OrganizerModel</a> construction when data model is ready for use, even in cases when data model is not having any items in it.</p>
<!-- @@@onModelChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancelUpdate -->
<table class="qmlname"><tr valign="top" id="cancelUpdate-method"><td class="tblQmlFuncNode"><p><span class="name">cancelUpdate</span>()</p></td></tr></table><p>Cancel the running organizer model content update request.</p>
<p><b>See also </b><a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a> and <a href="#update-method">OrganizerModel::update</a>.</p>
<!-- @@@cancelUpdate -->
<br/>
<!-- $$$collection -->
<table class="qmlname"><tr valign="top" id="collection-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span> <span class="name">collection</span>(<span class="type">string</span><i> collectionId</i>)</p></td></tr></table><p>Returns the Collection object which collection id is the given <i>collectionId</i> and null if collection id is not found.</p>
<!-- @@@collection -->
<br/>
<!-- $$$containsItems -->
<table class="qmlname"><tr valign="top" id="containsItems-method-2"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">containsItems</span>(<span class="type">date</span><i> start</i>, <span class="type">date</span><i> end</i>)</p></td></tr></table><p>Returns true if there is at least one <a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a> between the given date range. Both the <i>start</i> and <i>end</i> parameters are optional, if no <i>end</i> parameter, returns true if there are item(s) after <i>start</i>, if neither start nor end date time provided, returns true if items in the current model is not empty, otherwise return false.</p>
<p><b>See also </b><a href="#itemIds-method">itemIds()</a>.</p>
<!-- @@@containsItems -->
<br/>
<!-- $$$containsItems -->
<table class="qmlname"><tr valign="top" id="containsItems-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type">bool</span>&gt; <span class="name">containsItems</span>(<span class="type">date</span><i> start</i>, <span class="type">date</span><i> end</i>, <span class="type">int</span><i> interval</i>)</p></td></tr></table><p>Returns a list of booleans telling if there is any item falling in the given time range.</p>
<p>For example, if the <i>start</i> time is 2011-12-08 14:00:00, the <i>end</i> time is 2011-12-08 20:00:00, and the <i>interval</i> is 3600 (seconds), a list of size 6 is returned, telling if there is any item falling in the range of 14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..&#x2e;, 19:00:00 to 20:00:00.</p>
<!-- @@@containsItems -->
<br/>
<!-- $$$defaultCollection -->
<table class="qmlname"><tr valign="top" id="defaultCollection-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span> <span class="name">defaultCollection</span>()</p></td></tr></table><p>Returns the default Collection object.</p>
<!-- @@@defaultCollection -->
<br/>
<!-- $$$exportItems -->
<table class="qmlname"><tr valign="top" id="exportItems-method"><td class="tblQmlFuncNode"><p><span class="name">exportItems</span>(<span class="type">url</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> profiles</i>)</p></td></tr></table><p>Export organizer items into a vcalendar file to the given <i>url</i> by optional <i>profiles</i>. At the moment only the local file url is supported in export method.</p>
<!-- @@@exportItems -->
<br/>
<!-- $$$fetchCollections -->
<table class="qmlname"><tr valign="top" id="fetchCollections-method"><td class="tblQmlFuncNode"><p><span class="name">fetchCollections</span>()</p></td></tr></table><p>Fetch asynchronously a list of organizer collections from the organizer backend.</p>
<!-- @@@fetchCollections -->
<br/>
<!-- $$$fetchItems -->
<table class="qmlname"><tr valign="top" id="fetchItems-method-2"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">stringlist</span><i> itemIds</i>)</p></td></tr></table><p>Starts a request to fetch items by the given <i>itemIds</i>, and returns the unique ID of this request. -1 is returned if the request can't be started.</p>
<p>Note that the items fetched won't be added to the model, but can be accessed through the <a href="#onItemsFetched-signal">onItemsFetched</a> handler.</p>
<p><b>See also </b><a href="#onItemsFetched-signal">onItemsFetched</a>.</p>
<!-- @@@fetchItems -->
<br/>
<!-- $$$fetchItems -->
<table class="qmlname"><tr valign="top" id="fetchItems-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">date</span><i> start</i>, <span class="type">date</span><i> end</i>, <span class="type"><a href="QtOrganizer.Filter.md">Filter</a></span><i> filter</i>, <span class="type">int</span><i> maxCount</i>, <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.SortOrder.md">SortOrder</a></span>&gt;<i> sortOrders</i>, <span class="type"><a href="QtOrganizer.FetchHint.md">FetchHint</a></span><i> fetchHint</i>)</p></td></tr></table><p>This method will start a request to fetch items between the given <i>start</i> and <i>end</i> dates. Optionally a <i>sort</i> order, <i>filter</i>, <i>fetchHint</i> and <i>maxCount</i> can be specified to narrow the search. If nothing is set for these optional paramenters then defaults are applied, essentially any sort order, default filter, default storage location and all items.</p>
<p>The unique ID of this request will be returned. If the request can't be started -1 is returned. The end date must be greater than the start date for this method to start a fetch request.</p>
<p>Note that the items fetched won't be added to the model, but can be accessed through the <a href="#onItemsFetched-signal">onItemsFetched</a> handler. No properties in the model are updated at all.</p>
<p><b>See also </b><a href="#onItemsFetched-signal">onItemsFetched</a>.</p>
<!-- @@@fetchItems -->
<br/>
<!-- $$$importItems -->
<table class="qmlname"><tr valign="top" id="importItems-method"><td class="tblQmlFuncNode"><p><span class="name">importItems</span>(<span class="type">url</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> profiles</i>)</p></td></tr></table><p>Import organizer items from a vcalendar by the given <i>url</i> and optional <i>profiles</i>. Only one import operation can be active at a time.</p>
<!-- @@@importItems -->
<br/>
<!-- $$$item -->
<table class="qmlname"><tr valign="top" id="item-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span> <span class="name">item</span>(<span class="type">string</span><i> itemId</i>)</p></td></tr></table><p>Returns the <a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a> object with the given <i>itemId</i>.</p>
<!-- @@@item -->
<br/>
<!-- $$$itemIds -->
<table class="qmlname"><tr valign="top" id="itemIds-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">itemIds</span>(<span class="type">date</span><i> start</i>, <span class="type">date</span><i> end</i>)</p></td></tr></table><p>Returns the list of organizer item ids between the given date range <i>start</i> and <i>end</i>, excluding generated occurrences. Both the <i>start</i> and <i>end</i> parameters are optional, if no <i>end</i> parameter, returns all item ids from <i>start</i>, if neither start nor end date time provided, returns all item ids in the current model.</p>
<p><b>See also </b><a href="#containsItems-method">containsItems()</a>.</p>
<!-- @@@itemIds -->
<br/>
<!-- $$$itemsByTimePeriod -->
<table class="qmlname"><tr valign="top" id="itemsByTimePeriod-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt; <span class="name">itemsByTimePeriod</span>(<span class="type">date</span><i> start</i>, <span class="type">date</span><i> end</i>)</p></td></tr></table><p>Returns the list of organizer items between the given <i>start</i> and <i>end</i> period.</p>
<!-- @@@itemsByTimePeriod -->
<br/>
<!-- $$$removeCollection -->
<table class="qmlname"><tr valign="top" id="removeCollection-method"><td class="tblQmlFuncNode"><p><span class="name">removeCollection</span>(<span class="type">string</span><i> collectionId</i>)</p></td></tr></table><p>Removes asynchronously the organizer collection with the given <i>collectionId</i> from the backend.</p>
<!-- @@@removeCollection -->
<br/>
<!-- $$$removeItem -->
<table class="qmlname"><tr valign="top" id="removeItem-method-2"><td class="tblQmlFuncNode"><p><span class="name">removeItem</span>(<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span><i> item</i>)</p></td></tr></table><p>Removes the given organizer <i>item</i> from the backend.</p>
<!-- @@@removeItem -->
<br/>
<!-- $$$removeItem -->
<table class="qmlname"><tr valign="top" id="removeItem-method"><td class="tblQmlFuncNode"><p><span class="name">removeItem</span>(<span class="type">string</span><i> itemId</i>)</p></td></tr></table><p>Removes the organizer item with the given <i>itemId</i> from the backend.</p>
<!-- @@@removeItem -->
<br/>
<!-- $$$removeItems -->
<table class="qmlname"><tr valign="top" id="removeItems-method-2"><td class="tblQmlFuncNode"><p><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt;<i> items</i>)</p></td></tr></table><p>Removes asynchronously the organizer items in the given <i>items</i> list from the backend.</p>
<!-- @@@removeItems -->
<br/>
<!-- $$$removeItems -->
<table class="qmlname"><tr valign="top" id="removeItems-method"><td class="tblQmlFuncNode"><p><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> itemId</i>)</p></td></tr></table><p>Removes asynchronously the organizer items with the given <i>ids</i> from the backend.</p>
<!-- @@@removeItems -->
<br/>
<!-- $$$saveCollection -->
<table class="qmlname"><tr valign="top" id="saveCollection-method"><td class="tblQmlFuncNode"><p><span class="name">saveCollection</span>(<span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span><i> collection</i>)</p></td></tr></table><p>Saves asynchronously the given <i>collection</i> into the organizer backend.</p>
<!-- @@@saveCollection -->
<br/>
<!-- $$$saveItem -->
<table class="qmlname"><tr valign="top" id="saveItem-method"><td class="tblQmlFuncNode"><p><span class="name">saveItem</span>(<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span><i> item</i>)</p></td></tr></table><p>Saves asynchronously the given <i>item</i> into the organizer backend.</p>
<!-- @@@saveItem -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-method"><td class="tblQmlFuncNode"><p><span class="name">update</span>()</p></td></tr></table><p>Manually update the organizer model content including both items and collections.</p>
<p><b>See also </b><a href="#updateItems-method">OrganizerModel::updateItems</a>, <a href="#updateCollections-method">OrganizerModel::updateCollections</a>, and <a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a>.</p>
<!-- @@@update -->
<br/>
<!-- $$$updateCollections -->
<table class="qmlname"><tr valign="top" id="updateCollections-method"><td class="tblQmlFuncNode"><p><span class="name">updateCollections</span>()</p></td></tr></table><p>Manually update the organizer model collections.</p>
<p><b>See also </b><a href="#update-method">OrganizerModel::update</a>, <a href="#updateItems-method">OrganizerModel::updateItems</a>, and <a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a>.</p>
<!-- @@@updateCollections -->
<br/>
<!-- $$$updateItems -->
<table class="qmlname"><tr valign="top" id="updateItems-method"><td class="tblQmlFuncNode"><p><span class="name">updateItems</span>()</p></td></tr></table><p>Manually update the organizer model items.</p>
<p><b>See also </b><a href="#update-method">OrganizerModel::update</a>, <a href="#updateCollections-method">OrganizerModel::updateCollections</a>, and <a href="#autoUpdate-prop">OrganizerModel::autoUpdate</a>.</p>
<!-- @@@updateItems -->
<br/>
