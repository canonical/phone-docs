---
Title: QtLocation.location-places-qml
---
        
QML Places API
==============

<span class="subtitle"></span>
details
Overview
--------

The Places API allows users to discover places of interest and view details about them, such as address and contact information. Some places may have additional content associated with them, such as images and reviews. The Places API also facilitates management of places and categories, allowing users to save and remove them.

<span id="introductory-concepts"></span>
Introductory Concepts
---------------------

<span id="plugin"></span>
### Plugin

A [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) is an abstraction for a backend. One [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) might access places from a REST server while another may access places from a local database. The following instantiates a [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) object by providing a name of "nokia". The [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) name identifies which backend to choose from. Plugins may also be provided with a set of [parameters](../../sdk-15.04.1/QtLocation.PluginParameter.md), which essentially takes the form of a set of key-value pairs. The [parameters](../../sdk-15.04.1/QtLocation.PluginParameter.md) that can be specified vary among the different [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) backends. For documentation on the possible [parameters](../../sdk-15.04.1/QtLocation.PluginParameter.md) and nuances of each [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin), see the [Plugin References](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters).

``` qml
Plugin {
    id: myPlugin
    name: "nokia"
    //specify plugin parameters as necessary
    //PluginParameter {...}
    //PluginParameter {...}
    //...
}
```

**Note:** The Nokia plugin must be supplied with some mandatory parameters as outlined in the [Nokia Plugin](../../sdk-15.04.1/QtLocation.location-plugin-nokia.md#mandatory-parameters) documentation.

<span id="models-views-and-delegates"></span>
### Models, Views and Delegates

The QML Places API is built around the notion of models, views and delegates.

|              |                                                                                                                                                                                                                                                                                              |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Model**    | A model holds data items and maintains their structure. The model is also responsible for retrieving the items from a data source.                                                                                                                                                           |
| **View**     | A view is a visual container that displays the data and manages how visual items are shown such as in a list or a grid. The view may also be responsible for navigating the data, for example, scrolling through the visual items during a flicking motion.                                  |
| **Delegate** | A delegate defines how individual data elements should appear as visual items in the view. The models expose a set of data roles and the delegate uses them to construct a visual item. The delegate may also define behaviour such as an operation to invoke when a visual item is clicked. |

The Common Use Cases section below demonstrates concrete examples of how these concepts fit together.

<span id="common-use-cases"></span>
Common Use Cases
----------------

<span id="searching-for-places"></span>
### Searching for Places

Searching is accomplished via the [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md). The [plugin](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#plugin-prop) property specifies which backend to perform search operations against. Search parameters may be provided through properties such as the [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop) and [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop). A search operation can then be started by invoking the [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) method. For simplicity, the snippet below invokes [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) once construction of the model as been completed, typically [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) would be invoked in response to a user action such as a button click. While the search operation is underway the [PlaceSearchModel::status](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#status-prop) property transitions into the `Loading` state and when successfully completed moves into the `Ready` state.

``` qml
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

<span id="display-search-results-using-a-listview"></span>
### Display Search Results using a ListView

A ListView can be used to show the search results found by the model. It defines the visual region for where the results are shown, and in the case below fills the entirety of its parent. The ListView has built in behavior that enables the region to respond to flicking events and to scroll appropriately.

In the snippet below, the search model has been assigned to the ListView's model property. When the model is updated with new results, the ListView is automatically updated to reflect the model's new data items.

A simple delegate has been bound to the ListView's delegate property. The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) exposes a set of [roles](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#placesearchmodel-roles) of which the *title* and *place* roles have been used below, these are of type string and [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) respectively. Essentially for each data item that should be visible in the view, the view invokes the delegate to create a visual representation of the item.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>ListView {
    anchors.fill: parent
    model: searchModel
    delegate: Component {
        Column {
            Text { text: title }
            Text { text: place.location.address.text }
        }
    }
    spacing: 10
}</code></pre></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/83a3d51e-3b66-4934-8d36-49d205587fba-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-list.png" /></td>
</tr>
</tbody>
</table>

**Note:** For simplicty's sake we have assumed that every search result is of [type](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#search-result-types) `PlaceSearchResult` and so always have access to the *place* role, other search result types may not have a *place* role.

See the [Places List](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.places_list/) example for full source code.

<span id="display-search-results-using-a-mapitemview"></span>
### Display Search Results using a MapItemView

Instead of a ListView, the [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) can be used in conjunction with a [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) to display markers on a map. Firstly a [Map](../../sdk-15.04.1/QtLocation.Map.md) is used to define the visual region occupied by the map, in this case it fills the entirety of its parent. Other properties are specified such as the [plugin](../../sdk-15.04.1/QtLocation.Map.md#plugin-prop) providing the maps, and the map's [center](../../sdk-15.04.1/QtLocation.Map.md#center-prop) and [zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop).

Inside the [Map](../../sdk-15.04.1/QtLocation.Map.md), a [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) is declared, where the [model](../../sdk-15.04.1/QtLocation.MapItemView.md#model-prop) property has been set to the search model and a [delegate](../../sdk-15.04.1/QtLocation.MapItemView.md#delegate-prop) consisting of a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md) is used to display a marker image. A marker is shown for every place that was found by the search model. The delegate uses the *place* role to position the marker.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Map {
    id: map
    anchors.fill: parent
    plugin: myPlugin;
    center {
        latitude: -27.47
        longitude: 153.025
    }
    zoomLevel: 13
    MapItemView {
        model: searchModel
        delegate: MapQuickItem {
            coordinate: place.location.coordinate
            anchorPoint.x: image.width * 0.5
            anchorPoint.y: image.height
            sourceItem: Image {
                id: image
                source: &quot;marker.png&quot;
            }
        }
    }
}</code></pre></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-map.jpg" /></td>
</tr>
</tbody>
</table>

**Note:** For simplicty's sake we have assumed that every search result is of [type](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#search-result-types) `PlaceSearchResult` and so always have access to the *place* role, other search result types may not have a *place* role.

See the [Places Map](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.places_map/) example for full source code.

<span id="fetching-place-details"></span>
### Fetching Place Details

In order to save bandwidth, sometimes a backend will only return places which are partially populated with details. This can be checked with the [Place::detailsFetched](../../sdk-15.04.1/QtLocation.Place.md#detailsFetched-prop) property which indicates whether all availalable details have been fetched or not. If not, the [Place::getDetails](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method)() method can be invoked to fetch the remaining details.

``` qml
if (!place.detailsFetched)
    place.getDetails();
```

<span id="saving-and-removing-places"></span>
### Saving and Removing Places

Some backends may support saving and removing places. This can be done by calling the [Place::save](../../sdk-15.04.1/QtLocation.Place.md#save-method)() and [Place::remove](../../sdk-15.04.1/QtLocation.Place.md#remove-method)() methods respectively. Note that in order to save a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place), a [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) must be assigned to specify which backend we are saving to. The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will transition into the `Saving` state while the save operation is happening and on successful completion will move to the `Ready` state. The following snippet shows how to save and remove a place using javascript.

``` qml
//creating and saving a place
var place = Qt.createQmlObject('import QtLocation 5.3; Place { }', parent);
place.plugin = myPlugin;
place.name = "New York";
place.location.coordinate.latitude = 40.7
place.location.coordinate.longitude = -74.0
place.save();
//removing a place
place.remove();
```

<span id="learn-more"></span>
### Learn More

The above snippets only exhibit a small subset of Places functionality. Refer to the [Places Types](../../sdk-15.04.1/QtLocation.location-places-qml.md#places-types) shown below for richer content such as [images](../../sdk-15.04.1/QtLocation.ImageModel.md), [reviews](../../sdk-15.04.1/QtLocation.ReviewModel.md) etc, as well as more indepth descriptions and explanations.

See also the [Places (QML)](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.places/) example for a more comprehensive demonstration on how to use the API.

<span id="places-types"></span>
Places Types
------------

<span id="data-types"></span>
### Data Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.Category.md">Category</a></p></td>
<td><p>Type represents a category that a Place can be associated with</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.ContactDetail.md">ContactDetail</a></p></td>
<td><p>Type holds a contact detail such as a phone number or a website address</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.ContactDetails.md">ContactDetails</a></p></td>
<td><p>Type holds contact details for a Place</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.ExtendedAttributes.md">ExtendedAttributes</a></p></td>
<td><p>Type holds additional data about a Place</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.Icon.md">Icon</a></p></td>
<td><p>Type represents an icon image source which can have multiple sizes</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.Place.md">Place</a></p></td>
<td><p>Type represents a location that is a position of interest</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.PlaceAttribute.md">PlaceAttribute</a></p></td>
<td><p>Type holds generic place attribute information</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.Ratings.md">Ratings</a></p></td>
<td><p>Type holds place rating information</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.Supplier.md">Supplier</a></p></td>
<td><p>Holds data regarding the supplier of a place, a place's image, review, or editorial</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.User.md">User</a></p></td>
<td><p>Type identifies a user who contributed a particular Place content item</p></td>
</tr>
</tbody>
</table>

<span id="models"></span>
### Models

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.CategoryModel.md">CategoryModel</a></p></td>
<td><p>Type provides a model of the categories supported by a Plugin</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.EditorialModel.md">EditorialModel</a></p></td>
<td><p>Type provides a model of place editorials</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.ImageModel.md">ImageModel</a></p></td>
<td><p>Type provides a model of place images</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></p></td>
<td><p>Provides access to place search results</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md">PlaceSearchSuggestionModel</a></p></td>
<td><p>Provides access to search term suggestions</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.ReviewModel.md">ReviewModel</a></p></td>
<td><p>Provides access to reviews of a Place</p></td>
</tr>
</tbody>
</table>

