---
Title: QtLocation.qtlocation-places-list-example
---
        
Places List (QML)
=================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api/apps/qml/sdk-15.04.1/qtlocation-places-list-example/images/places-list.png)

To write a QML application that will show places in a list, we start by making the following import declarations.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
```

Instantiate a [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) instance. The [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) is effectively the backend from where places are sourced from. Because the `nokia` plugin has been specified, some mandatory parameters need to be filled in, see the [Nokia Plugin](../../sdk-15.04.1/QtLocation.location-plugin-nokia.md#mandatory-parameters) documentation for details:

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

Next we instantiate a [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) which we can use to specify search parameters and perform a places search operation. For illustrative purposes, [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) is invoked once construction of the model is complete. Typically [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) would be invoked in response to a user action such as a button click.

``` qml
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

Finally we instantiate a ListView to show the search results found by the model. An inline delegate has been used and we have assumed that every search result is of [type](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#search-result-types) `PlaceSearchesult`. Consequently it is assumed that we always have access to the *place* [role](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#placesearchmodel-roles), other search result types may not have a *place* [role](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#placesearchmodel-roles).

``` qml
ListView {
    anchors.fill: parent
    model: searchModel
    delegate: Component {
        Column {
            Text { text: title }
            Text { text: place.location.address.text }
        }
    }
    spacing: 10
}
```

Files:

-   places\_list/places\_list.qml
-   places\_list/main.cpp
-   places\_list/places\_list.pro

