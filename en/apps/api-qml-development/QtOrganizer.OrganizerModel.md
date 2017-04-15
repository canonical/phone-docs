---
Title: QtOrganizer.OrganizerModel
---
        
OrganizerModel
==============

<span class="subtitle"></span>
The OrganizerModel element provides access to organizer items from the organizer store. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[ImportError](#ImportError-prop)**** : enumeration
-   ****[autoUpdate](#autoUpdate-prop)**** : bool
-   ****[availableManagers](#availableManagers-prop)**** : list&lt;string&gt;
-   ****[collections](#collections-prop)**** : list&lt;Collection&gt;
-   ****[endPeriod](#endPeriod-prop)**** : date
-   ****[error](#error-prop)**** : string
-   ****[fetchHint](#fetchHint-prop)**** : FetchHint
-   ****[filter](#filter-prop)**** : Filter
-   ****[itemCount](#itemCount-prop)**** : int
-   ****[items](#items-prop)**** : list&lt;OrganizerItem&gt;
-   ****[manager](#manager-prop)**** : string
-   ****[managerName](#managerName-prop)**** : string
-   ****[sortOrders](#sortOrders-prop)**** : list&lt;SortOrder&gt;
-   ****[startPeriod](#startPeriod-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onExportCompleted](#onExportCompleted-signal)****()
-   ****[onImportCompleted](#onImportCompleted-signal)****(ImportError *error*, URL *url*, list&lt;string&gt; *ids*)
-   ****[onItemsFetched](#onItemsFetched-signal)****(int *requestId*, list&lt;OrganizerItem&gt; *fetchedItems*)
-   ****[onModelChanged](#onModelChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelUpdate](#cancelUpdate-method)****()
-   Collection ****[collection](#collection-method)****(string *collectionId*)
-   bool ****[containsItems](#containsItems-method-2)****(date *start*, date *end*)
-   list&lt;bool&gt; ****[containsItems](#containsItems-method)****(date *start*, date *end*, int *interval*)
-   Collection ****[defaultCollection](#defaultCollection-method)****()
-   ****[exportItems](#exportItems-method)****(url *url*, list&lt;string&gt; *profiles*)
-   ****[fetchCollections](#fetchCollections-method)****()
-   int ****[fetchItems](#fetchItems-method-2)****(stringlist *itemIds*)
-   int ****[fetchItems](#fetchItems-method)****(date *start*, date *end*, Filter *filter*, int *maxCount*, list&lt;SortOrder&gt; *sortOrders*, FetchHint *fetchHint*)
-   ****[importItems](#importItems-method)****(url *url*, list&lt;string&gt; *profiles*)
-   OrganizerItem ****[item](#item-method)****(string *itemId*)
-   list&lt;string&gt; ****[itemIds](#itemIds-method)****(date *start*, date *end*)
-   list&lt;OrganizerItem&gt; ****[itemsByTimePeriod](#itemsByTimePeriod-method)****(date *start*, date *end*)
-   ****[removeCollection](#removeCollection-method)****(string *collectionId*)
-   ****[removeItem](#removeItem-method-2)****(OrganizerItem *item*)
-   ****[removeItem](#removeItem-method)****(string *itemId*)
-   ****[removeItems](#removeItems-method-2)****(list&lt;OrganizerItem&gt; *items*)
-   ****[removeItems](#removeItems-method)****(list&lt;string&gt; *itemId*)
-   ****[saveCollection](#saveCollection-method)****(Collection *collection*)
-   ****[saveItem](#saveItem-method)****(OrganizerItem *item*)
-   ****[update](#update-method)****()
-   ****[updateCollections](#updateCollections-method)****()
-   ****[updateItems](#updateItems-method)****()

<span id="details"></span>
Detailed Description
--------------------

[OrganizerModel](index.html) provides a model of organizer items from the organizer store. The contents of the model can be specified with [filter](#filter-prop), [sortOrders](#sortOrders-prop) and [fetchHint](#fetchHint-prop) properties. Whether the model is automatically updated when the store or [C++ organizer](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtOrganizer.organizer/) item changes, can be controlled with [OrganizerModel::autoUpdate](#autoUpdate-prop) property.

There are two ways of accessing the organizer item data: via the model by using views and delegates, or alternatively via [items](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtOrganizer.organizer/#items) list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by [OrganizerModel](index.html) are `display` and `item`. Through the `item` role can access any data provided by the [OrganizerItem](../QtOrganizer.OrganizerItem.md) element.

**Note:** Both the `startPeriod` and `endPeriod` are set by default to the current time (when the OrganizerModel was created). In most cases, both (or at least one) of the startPeriod and endPeriod should be set; otherwise, the OrganizerModel will contain zero items because the `startPeriod` and `endPeriod` are the same value. For example, if only `endPeriod` is provided, the OrganizerModel will contain all items from now (the time of the OrganizerModel's creation) to the `endPeriod` time.

**See also** OrganizerItem and QOrganizerManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ImportError-prop"></span><span class="name">ImportError</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defines the errors cases for [OrganizerModel::importItems()](#importItems-method) -function.

-   OrganizerModel::ImportNoError Completed successfully, no error.
-   OrganizerModel::ImportUnspecifiedError Unspecified error.
-   OrganizerModel::ImportIOError Input/output error.
-   OrganizerModel::ImportOutOfMemoryError Out of memory error.
-   OrganizerModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.
-   OrganizerModel::ImportParseError Error during parsing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not the organizer model should be updated automatically, default value is true.

**See also** [OrganizerModel::update()](#update-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableManagers-prop"></span><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of available manager names. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collections-prop"></span><span class="name">collections</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of collections in the organizer model.

**See also** [Collection](../QtOrganizer.Collection.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endPeriod-prop"></span><span class="name">endPeriod</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the end date and time period used by the organizer model to fetch organizer items. The default value is the datetime of [OrganizerModel](index.html) creation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the latest error code returned by the organizer manager.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchHint-prop"></span><span class="name">fetchHint</span> : <span class="type"><a href="QtOrganizer.FetchHint.md">FetchHint</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the fetch hint instance used by the organizer model.

**See also** [FetchHint](../QtOrganizer.FetchHint.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter-prop"></span><span class="name">filter</span> : <span class="type"><a href="QtOrganizer.Filter.md">Filter</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the filter instance used by the organizer model.

Set filter property to 'null', when you want to reset it to default value.

**See also** [Filter](../QtOrganizer.Filter.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemCount-prop"></span><span class="name">itemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the size of organizer items the [OrganizerModel](index.html) currently holds.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="items-prop"></span><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of organizer items in the organizer model.

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager name or manager uri of the organizer backend engine. The manager uri format: qtorganizer:&lt;managerid&gt;:&lt;key&gt;=&lt;value&gt;&&lt;key&gt;=&lt;value&gt;.

For example, memory organizer engine has an optional id parameter, if user want to share the same memory engine with multiple [OrganizerModel](index.html) instances, the manager property should declared like this:

``` cpp
model : OrganizerModel {
   manager:"qtorganizer:memory:id=organizer1
}
```

instead of just the manager name:

``` cpp
model : OrganizerModel {
   manager:"memory"
}
```

**See also** QOrganizerManager::fromUri().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="managerName-prop"></span><span class="name">managerName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager name of the organizer backend engine. This property is read only.

**See also** QOrganizerManager::fromUri().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortOrders-prop"></span><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.SortOrder.md">SortOrder</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of sort orders used by the organizer model.

**See also** [SortOrder](../QtOrganizer.SortOrder.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPeriod-prop"></span><span class="name">startPeriod</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the start date and time period used by the organizer model to fetch organizer items. The default value is the datetime of [OrganizerModel](index.html) creation.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onExportCompleted-signal"></span><span class="name">onExportCompleted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [OrganizerModel::exportItems()](#exportItems-method) completes. The success of operation can be seen on *error* which is defined in OrganizerModel::ExportError. *url* indicates the file, which was exported.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onImportCompleted-signal"></span><span class="name">onImportCompleted</span>(<span class="type"><a href="#ImportError-prop">ImportError</a></span> <em>error</em>, <span class="type">URL</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>ids</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [OrganizerModel::importItems()](#importItems-method) completes. The success of operation can be seen on *error* which is defined in [OrganizerModel::ImportError](#ImportError-prop). *url* indicates the file, which was imported. *ids* contains the imported items ids.

If the operation was successful, items are now imported to backend. If [OrganizerModel::autoUpdate](#autoUpdate-prop) is enabled, OrganizerModel::modelChanged will be emitted when imported items are also visible on [OrganizerModel](index.html)'s data model.

**See also** [OrganizerModel::importItems](#importItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onItemsFetched-signal"></span><span class="name">onItemsFetched</span>(<span class="type">int</span> <em>requestId</em>, <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt; <em>fetchedItems</em>)</p></td>
</tr>
</tbody>
</table>

This handler is called when request of the given *requestId* is finished with the *fetchedItems*.

**See also** [fetchItems](#fetchItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onModelChanged-signal"></span><span class="name">onModelChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when there are changes in items contained by [OrganizerModel](index.html)'s data model. Items have either been added, removed or modified. This signal is also always emitted during [OrganizerModel](index.html) construction when data model is ready for use, even in cases when data model is not having any items in it.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelUpdate-method"></span><span class="name">cancelUpdate</span>()</p></td>
</tr>
</tbody>
</table>

Cancel the running organizer model content update request.

**See also** [OrganizerModel::autoUpdate](#autoUpdate-prop) and [OrganizerModel::update](#update-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collection-method"></span><span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span> <span class="name">collection</span>(<span class="type">string</span> <em>collectionId</em>)</p></td>
</tr>
</tbody>
</table>

Returns the Collection object which collection id is the given *collectionId* and null if collection id is not found.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsItems-method-2"></span><span class="type">bool</span> <span class="name">containsItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if there is at least one [OrganizerItem](../QtOrganizer.OrganizerItem.md) between the given date range. Both the *start* and *end* parameters are optional, if no *end* parameter, returns true if there are item(s) after *start*, if neither start nor end date time provided, returns true if items in the current model is not empty, otherwise return false.

**See also** [itemIds()](#itemIds-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsItems-method"></span><span class="type">list</span>&lt;<span class="type">bool</span>&gt; <span class="name">containsItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>, <span class="type">int</span> <em>interval</em>)</p></td>
</tr>
</tbody>
</table>

Returns a list of booleans telling if there is any item falling in the given time range.

For example, if the *start* time is 2011-12-08 14:00:00, the *end* time is 2011-12-08 20:00:00, and the *interval* is 3600 (seconds), a list of size 6 is returned, telling if there is any item falling in the range of 14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..., 19:00:00 to 20:00:00.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultCollection-method"></span><span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span> <span class="name">defaultCollection</span>()</p></td>
</tr>
</tbody>
</table>

Returns the default Collection object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exportItems-method"></span><span class="name">exportItems</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Export organizer items into a vcalendar file to the given *url* by optional *profiles*. At the moment only the local file url is supported in export method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchCollections-method"></span><span class="name">fetchCollections</span>()</p></td>
</tr>
</tbody>
</table>

Fetch asynchronously a list of organizer collections from the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchItems-method-2"></span><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">stringlist</span> <em>itemIds</em>)</p></td>
</tr>
</tbody>
</table>

Starts a request to fetch items by the given *itemIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the items fetched won't be added to the model, but can be accessed through the [onItemsFetched](#onItemsFetched-signal) handler.

**See also** [onItemsFetched](#onItemsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchItems-method"></span><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>, <span class="type"><a href="QtOrganizer.Filter.md">Filter</a></span> <em>filter</em>, <span class="type">int</span> <em>maxCount</em>, <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.SortOrder.md">SortOrder</a></span>&gt; <em>sortOrders</em>, <span class="type"><a href="QtOrganizer.FetchHint.md">FetchHint</a></span> <em>fetchHint</em>)</p></td>
</tr>
</tbody>
</table>

This method will start a request to fetch items between the given *start* and *end* dates. Optionally a *sort* order, *filter*, *fetchHint* and *maxCount* can be specified to narrow the search. If nothing is set for these optional paramenters then defaults are applied, essentially any sort order, default filter, default storage location and all items.

The unique ID of this request will be returned. If the request can't be started -1 is returned. The end date must be greater than the start date for this method to start a fetch request.

Note that the items fetched won't be added to the model, but can be accessed through the [onItemsFetched](#onItemsFetched-signal) handler. No properties in the model are updated at all.

**See also** [onItemsFetched](#onItemsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="importItems-method"></span><span class="name">importItems</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Import organizer items from a vcalendar by the given *url* and optional *profiles*. Only one import operation can be active at a time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="item-method"></span><span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span> <span class="name">item</span>(<span class="type">string</span> <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Returns the [OrganizerItem](../QtOrganizer.OrganizerItem.md) object with the given *itemId*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemIds-method"></span><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">itemIds</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the list of organizer item ids between the given date range *start* and *end*, excluding generated occurrences. Both the *start* and *end* parameters are optional, if no *end* parameter, returns all item ids from *start*, if neither start nor end date time provided, returns all item ids in the current model.

**See also** [containsItems()](#containsItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemsByTimePeriod-method"></span><span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt; <span class="name">itemsByTimePeriod</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the list of organizer items between the given *start* and *end* period.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeCollection-method"></span><span class="name">removeCollection</span>(<span class="type">string</span> <em>collectionId</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer collection with the given *collectionId* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method-2"></span><span class="name">removeItem</span>(<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Removes the given organizer *item* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method"></span><span class="name">removeItem</span>(<span class="type">string</span> <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Removes the organizer item with the given *itemId* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method-2"></span><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span>&gt; <em>items</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer items in the given *items* list from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method"></span><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer items with the given *ids* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveCollection-method"></span><span class="name">saveCollection</span>(<span class="type"><a href="QtOrganizer.Collection.md">Collection</a></span> <em>collection</em>)</p></td>
</tr>
</tbody>
</table>

Saves asynchronously the given *collection* into the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveItem-method"></span><span class="name">saveItem</span>(<span class="type"><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Saves asynchronously the given *item* into the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-method"></span><span class="name">update</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model content including both items and collections.

**See also** [OrganizerModel::updateItems](#updateItems-method), [OrganizerModel::updateCollections](#updateCollections-method), and [OrganizerModel::autoUpdate](#autoUpdate-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateCollections-method"></span><span class="name">updateCollections</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model collections.

**See also** [OrganizerModel::update](#update-method), [OrganizerModel::updateItems](#updateItems-method), and [OrganizerModel::autoUpdate](#autoUpdate-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateItems-method"></span><span class="name">updateItems</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model items.

**See also** [OrganizerModel::update](#update-method), [OrganizerModel::updateCollections](#updateCollections-method), and [OrganizerModel::autoUpdate](#autoUpdate-prop).

