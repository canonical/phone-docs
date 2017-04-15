---
Title: QtLocation.PlaceSearchSuggestionModel
---
        
PlaceSearchSuggestionModel
==========================

<span class="subtitle"></span>
Provides access to search term suggestions. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop)**** : int
-   ****[offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop)**** : int
-   ****[plugin](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#plugin-prop)**** : Plugin
-   ****[searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#searchArea-prop)**** : geoshape
-   ****[searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#searchTerm-prop)**** : string
-   ****[status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop)**** : enum
-   ****[suggestions](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#suggestions-prop)**** : stringlist

<span id="methods"></span>
Methods
-------

-   ****[cancel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#cancel-method)****()
-   string ****[errorString](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#errorString-method)****()
-   ****[reset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#reset-method)****()
-   ****[update](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md) can be used to provide search term suggestions as the user enters their search term. The properties of this model should match that of the [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md), which will be used to perform the actual search query, to ensure that the search suggestion results are relevant.

There are two ways of accessing the data provided by this model, either through the [suggestions](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#suggestions-prop) property or through views and delegates. The latter is the preferred method.

The [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop) properties can be used to access paged suggestions. When the [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop) properties are set the suggestions between [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop) and ([offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop) + [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop) - 1) will be returned. Support for paging may vary from plugin to plugin.

The model returns data for the following roles:

| Role       | Type   | Description            |
|------------|--------|------------------------|
| suggestion | string | Suggested search term. |

The following example shows how to use the [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md) to get suggested search terms from a partial search term. The [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#searchArea-prop) is set to match what would be used to perform the actual place search with [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
PlaceSearchSuggestionModel {
    id: suggestionModel
    plugin: myPlugin
    // Brisbane
    searchArea: QtLocation.circle(QtLocation.coordinate(-27.46778, 153.02778))
    onSearchTermChanged: update()
}
ListView {
    model: suggestionModel
    delegate: Text { text: suggestion }
}
```

**See also** PlaceSearchModel and QPlaceManager.

Property Documentation
----------------------

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

**See also** [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="name">offset</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the index of the first item in the model.

**See also** [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop).

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

This property holds the provider [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) which will be used to perform the search.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchArea-prop"></span><span class="name">searchArea</span> : <span class="type">geoshape</span></p></td>
</tr>
</tbody>
</table>

This property holds the search area. Search suggestion results returned by the model will be relevant to the given search area.

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) will choose an appropriate radius for the search.

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

This property holds the partial search term used in query.

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

|                                                                                                          |                                                                |
|----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Null    | No search query has been executed. The model is empty.         |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Ready   | The search query has completed, and the results are available. |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Loading | A search query is currently being executed.                    |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Error   | An error occurred when executing the previous search query.    |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="suggestions-prop"></span><span class="name">suggestions</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the list of predicted search terms that the model currently has.

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

Cancels an ongoing search suggestion operation immediately and sets the model status to [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Ready. The model retains any search suggestions it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** [update()](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#update-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop).

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

This read-only property holds the textual presentation of latest search suggestion model error. If no error has occurred, or if the model was cleared, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

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

Resets the model. All search suggestions are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md).Null.

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

Updates the model based on the provided query parameters. The model will be populated with a list of search suggestions for the partial [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#searchTerm-prop) and [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#searchArea-prop). If the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) supports it, other parameters such as [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#limit-prop) and [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#offset-prop) may be specified. `update()` submits the set of parameters to the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) to process.

While the model is updating the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop) of the model is set to `PlaceSearchSuggestionModel.Loading`. If the model is successfully updated, the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop) is set to `PlaceSearchSuggestionModel.Ready`, while if it unsuccessfully completes, the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop) is set to `PlaceSearchSuggestionModel.Error` and the model cleared.

This example shows use of the model

``` cpp
PlaceSeachSuggestionModel {
    id: model
    plugin: backendPlugin
    searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
    ...
}
MouseArea {
    ...
    onClicked: {
        model.searchTerm = "piz"
        model.searchArea.center.latitude = -27.5;
        model.searchArea.cetner.longitude = 153;
        model.update();
    }
}
```

A more detailed example can be found in the in [Places (QML)](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.places/#presenting-search-suggestions) example.

**See also** [cancel()](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#cancel-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md#status-prop).

