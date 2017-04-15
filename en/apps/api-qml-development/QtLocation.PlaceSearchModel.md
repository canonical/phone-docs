---
Title: QtLocation.PlaceSearchModel
---
        
PlaceSearchModel
================

<span class="subtitle"></span>
Provides access to place search results. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[categories](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#categories-prop)**** : list&lt;Category&gt;
-   ****[count](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#count-prop)**** : int
-   ****[favoritesMatchParameters](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#favoritesMatchParameters-prop)**** : VariantMap
-   ****[favoritesPlugin](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#favoritesPlugin-prop)**** : Plugin
-   ****[limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop)**** : int
-   ****[nextPagesAvailable](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPagesAvailable-prop)**** : bool
-   ****[plugin](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#plugin-prop)**** : Plugin
-   ****[previousPagesAvailable](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPagesAvailable-prop)**** : bool
-   ****[recommendationId](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#recommendationId-prop)**** : string
-   ****[relevanceHint](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#relevanceHint-prop)**** : enumeration
-   ****[searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop)**** : variant
-   ****[searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop)**** : string
-   ****[status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop)**** : enum
-   ****[visibilityScope](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#visibilityScope-prop)**** : enum

<span id="methods"></span>
Methods
-------

-   ****[cancel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#cancel-method)****()
-   ****[data](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#data-method)****(int *index*, string *role*)
-   string ****[errorString](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#errorString-method)****()
-   ****[nextPage](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPage-method)****()
-   ****[previousPage](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPage-method)****()
-   ****[reset](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#reset-method)****()
-   ****[update](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method)****()
-   ****[updateWith](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#updateWith-method)****(int *proposedSearchIndex*)

<span id="details"></span>
Detailed Description
--------------------

[PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) provides a model of place search results within the [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop). The [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop) and [categories](../../sdk-15.04.1/QtLocation.location-places-backend.md#categories) properties can be set to restrict the search results to places matching those criteria.

The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) returns both sponsored and [organic search results](http://en.wikipedia.org/wiki/Organic_search). Sponsored search results will have the `sponsored` role set to true.

<span id="placesearchmodel-roles"></span>
The model returns data for the following roles:

| Role      | Type                                                                            | Description                                                                                                                                                                                                                                                                                                                      |
|-----------|---------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| type      | enum                                                                            | The type of search result.                                                                                                                                                                                                                                                                                                       |
| title     | string                                                                          | A string describing the search result.                                                                                                                                                                                                                                                                                           |
| icon      | [PlaceIcon](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#placeicon) | Icon representing the search result.                                                                                                                                                                                                                                                                                             |
| distance  | real                                                                            | Valid only when the `type` role is `PlaceResult`, the distance to the place from the center of the [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop). If no [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop) has been specified, the distance is NaN. |
| place     | [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place)         | Valid only when the `type` role is `PlaceResult`, an object representing the place.                                                                                                                                                                                                                                              |
| sponsored | bool                                                                            | Valid only when the `type` role is `PlaceResult`, true if the search result is a sponsored result.                                                                                                                                                                                                                               |

<span id="search-result-types"></span>
### Search Result Types

The `type` role can take on the following values:

|                                                                                                   |                                                                     |
|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).UnknownSearchResult  | The contents of the search result are unknown.                      |
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).PlaceResult          | The search result contains a place.                                 |
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).ProposedSearchResult | The search result contains a proposed search which may be relevant. |

It can often be helpful to use a Loader to create a delegate that will choose different Components based on the search result type.

``` qml
Component {
    id: resultDelegate
    Loader {
        Component {
            id: placeResult
            Column {
                Text { text: title }
                Text { text: place.location.address.text }
            }
        }
        Component {
            id: otherResult
            Text { text: title }
        }
        sourceComponent: type == PlaceSearchModel.PlaceResult ? placeResult :
                                                                otherResult
    }
}
```

<span id="detection-of-updated-and-removed-places"></span>
Detection of Updated and Removed Places
---------------------------------------

The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) listens for places that have been updated or removed from its plugin's backend. If it detects that a place has been updated and that place is currently present in the model, then it will call [Place::getDetails](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method) to refresh the details. If it detects that a place has been removed, then correspondingly the place will be removed from the model if it is currently present.

<span id="example"></span>
Example
-------

The following example shows how to use the [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) to search for Pizza restaurants in close proximity of a given position. A [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop) and [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop) are provided to the model and [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) is used to perform a lookup query. Note that the model does not incrementally fetch search results, but rather performs a single fetch when [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) is run. The [count](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#count-prop) is set to the number of search results returned during the fetch.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

<span id="paging"></span>
Paging
------

The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) API has some limited support for paging. The [nextPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPage-method) and [previousPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPage-method) functions as well as the [limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop) property can be used to access paged search results. When the [limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop) property is set the search result page contains at most [limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop) entries (of type place result). For example, if the backend has 5 search results in total \[a,b,c,d,e\], and assuming the first page is shown and limit of 3 has been set then a,b,c is returned. The [nextPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPage-method) would return d,e. The [nextPagesAvailable](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPagesAvailable-prop) and [previousPagesAvailable](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPagesAvailable-prop) properties can be used to check for further pages. At the moment the API does not support the means to retrieve the total number of items available from the backed. Note that support for [nextPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPage-method), [previousPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPage-method) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop) can vary according to the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin).

**See also** CategoryModel and QPlaceManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categories-prop"></span><span class="name">categories</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.1/QtLocation.Category.md">Category</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of categories to be used when searching. Returned search results will be for places that match at least one of the categories.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of results the model has.

Note that it does not refer to the total number of search results available in the backend. The total number of search results is not currently supported by the API.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favoritesMatchParameters-prop"></span><span class="name">favoritesMatchParameters</span> : <span class="type">VariantMap</span></p></td>
</tr>
</tbody>
</table>

This property holds a set of parameters used to specify how search result places are matched to favorites in the [favoritesPlugin](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#favoritesPlugin-prop).

By default the parameter map is empty and implies that the favorites plugin matches by [alternative identifiers](../../sdk-15.04.1/QtLocation.location-places-backend.md#alternative-identifier-cross-referencing). Generally, an application developer will not need to set this property.

In cases where the favorites plugin does not support matching by alternative identifiers, then the [plugin documentation](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters) should be consulted to see precisely what key-value parameters to set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favoritesPlugin-prop"></span><span class="name">favoritesPlugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) which will be used to search for favorites. Any places from the search which can be cross-referenced or matched in the favoritesPlugin will have their [favorite](../../sdk-15.04.1/QtLocation.Place.md#favorite-prop) property set to the corresponding [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) from the favoritesPlugin.

If the favoritesPlugin is not set, the [favorite](../../sdk-15.04.1/QtLocation.Place.md#favorite-prop) property of the places in the results will always be null.

**See also** [Favorites](../../sdk-15.04.1/QtLocation.Place.md#favorites).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limit-prop"></span><span class="name">limit</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the limit of the number of items that will be returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextPagesAvailable-prop"></span><span class="name">nextPagesAvailable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether there is one or more additional pages of search results available.

**See also** [nextPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#nextPage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) which will be used to perform the search.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousPagesAvailable-prop"></span><span class="name">previousPagesAvailable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether there is one or more previous pages of search results available.

**See also** [previousPage()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#previousPage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recommendationId-prop"></span><span class="name">recommendationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the placeId to be used in order to find recommendations for similar places.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relevanceHint-prop"></span><span class="name">relevanceHint</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds a relevance hint used in the search query. The hint is given to the provider to help but not dictate the ranking of results. For example, the distance hint may give closer places a higher ranking but it does not necessarily mean the results will be strictly ordered according to distance. A provider may ignore the hint altogether.

|                                        |                                                                                                                                                               |
|----------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| SearchResultModel.UnspecifiedHint      | No relevance hint is given to the provider.                                                                                                                   |
| SearchResultModel.DistanceHint         | The distance of the place from the user's current location is important to the user. This hint is only meaningful when a circular search area is used.        |
| SearchResultModel.LexicalPlaceNameHint | The lexical ordering of place names (in ascending alphabetical order) is relevant to the user. This hint is useful for providers based on a local data store. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchArea-prop"></span><span class="name">searchArea</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the search area. The search result returned by the model will be within the search area.

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) will choose an appropriate radius for the search.

Support for specifying a search area can vary according to the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) backend implementation. For example, some may support a search center only while others may only support geo rectangles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchTerm-prop"></span><span class="name">searchTerm</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds search term used in query. The search term is a free-form text string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of the model. It can be one of:

|                                                                                      |                                                                |
|--------------------------------------------------------------------------------------|----------------------------------------------------------------|
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Null    | No search query has been executed. The model is empty.         |
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Ready   | The search query has completed, and the results are available. |
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Loading | A search query is currently being executed.                    |
| [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Error   | An error occurred when executing the previous search query.    |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibilityScope-prop"></span><span class="name">visibilityScope</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the visibility scope of the places to search. Only places with the specified visibility will be returned in the search results.

The visibility scope can be one of:

|                             |                                                                                                   |
|-----------------------------|---------------------------------------------------------------------------------------------------|
| Place.UnspecifiedVisibility | No explicit visibility scope specified, places with any visibility may be part of search results. |
| Place.DeviceVisibility      | Only places stored on the local device will be part of the search results.                        |
| Place.PrivateVisibility     | Only places that are private to the current user will be part of the search results.              |
| Place.PublicVisibility      | Only places that are public will be part of the search results.                                   |

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels an ongoing search operation immediately and sets the model status to [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Ready. The model retains any search results it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-method"></span><span class="name">data</span>(<span class="type">int</span> <em>index</em>, <span class="type">string</span> <em>role</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data for a given *role* at the specified row *index*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>() const</p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest place search model error. If no error has occurred or if the model was cleared an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextPage-method"></span><span class="name">nextPage</span>()</p></td>
</tr>
</tbody>
</table>

Updates the model to display the next page of search results. If there is no next page then this method does nothing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousPage-method"></span><span class="name">previousPage</span>()</p></td>
</tr>
</tbody>
</table>

Updates the model to display the previous page of search results. If there is no previous page then this method does nothing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Resets the model. All search results are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Null.

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

Updates the model based on the provided query parameters. The model will be populated with a list of places matching the search parameters specified by the type's properties. Search criteria is specified by setting properties such as the [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop), [categories](../../sdk-15.04.1/QtLocation.location-places-backend.md#categories), [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#limit-prop). Support for these properties may vary according to [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). `update()` then submits the set of criteria to the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) to process.

While the model is updating the [status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop) of the model is set to `PlaceSearchModel.Loading`. If the model is successfully updated the [status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop) is set to `PlaceSearchModel.Ready`, while if it unsuccessfully completes, the [status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop) is set to `PlaceSearchModel.Error` and the model cleared.

``` cpp
PlaceSearchModel {
    id: model
    plugin: backendPlugin
    searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
    ...
}
MouseArea {
    ...
    onClicked: {
        model.searchTerm = "pizza";
        model.categories = null;  //not searching by any category
        model.searchArea.center.latitude = -27.5;
        model.searchArea.center.longitude = 153;
        model.update();
    }
}
```

**See also** [cancel()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#cancel-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateWith-method"></span><span class="name">updateWith</span>(<span class="type">int</span> <em>proposedSearchIndex</em>)</p></td>
</tr>
</tbody>
</table>

Updates the model based on the ProposedSearchResult at index *proposedSearchIndex*. The model will be populated with a list of places matching the proposed search. Model status will be set to [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Loading. If the model is updated successfully status will be set to [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Ready. If an error occurs status will be set to [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).Error and the model cleared.

If *proposedSearchIndex* does not reference a ProposedSearchResult this method does nothing.

