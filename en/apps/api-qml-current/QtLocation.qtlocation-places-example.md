---
Title: QtLocation.qtlocation-places-example
---
        
Places (QML)
============

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/cbfbec21-e6e6-4201-b72d-0838c7b4ebaa-api/apps/qml/sdk-15.04.1/qtlocation-places-example/images/qml-places.png)

<span id="overview"></span>
Overview
--------

The Places example presents an application window displaying a map. At the top of the window is a search box, which is used to enter a place search query. To search for a place enter a search term into the text box and click the magnifying glass icon. To search for a place by category, click the category icon to display the list of available categories and select the desired category. The place search query will be for places that are near the current location shown on the map.

The search box provides search term suggestions when three or more characters are entered. Selecting one of the suggestions will cause a place search to be performed with the selected search text.

Search results are available from the slide out tab on the left. Clicking on a search result will display details about the place. If a places has rich content (editorials, reviews and images), these can be accessed by the buttons on the details page. To find similar places click the "Find similar" button. If the current Geo service provider supports it, buttons to edit and remove a place will also be available.

The geo service provider can be changed by accessing the "Provider" menu at the bottom of the window. Depending on the features supported by the provider, the "New" menu allows creating new Places and Categories. To create a new place, select "Place" from the "New" menu and fill in the fields. Click "Go!" to save the place. To create a new category, select "Category" from the "New" menu and fill in the fields. Click "Go!" to save the category.

The Places example can work with any of the available geo services plugins. However, some plugins may require additional [plugin parameters](../../sdk-15.04.1/QtLocation.PluginParameter.md) in order to function correctly. [Plugin parameters](../../sdk-15.04.1/QtLocation.PluginParameter.md) can be passed on the command line using the `--plugin` argument, which takes the form:

``` cpp
--plugin.<parameter name> <parameter value>
```

Refer to the documentation for each of the geo services plugins for details on what plugin parameters they support. The Nokia services plugin supplied with Qt requires an *app\_id* and *token* pair. See "[Qt Location Nokia Plugin](../../sdk-15.04.1/QtLocation.location-plugin-nokia.md)" for details.

<span id="displaying-categories"></span>
Displaying Categories
---------------------

Before search by category can be performed, the list of available categories needs to be retrieved. This is achieved by creating a [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md).

``` qml
CategoryModel {
    id: categoryModel
    plugin: placesPlugin
    hierarchical: true
}
```

The [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md) type provides a model of the available categories. It can provide either a flat list or a hierarchical tree model. In this example, we use a hierarchical tree model, by setting the [hierarchical](../../sdk-15.04.1/QtLocation.CategoryModel.md#hierarchical-prop) property to *true*. The [plugin](../../sdk-15.04.1/QtLocation.CategoryModel.md#plugin-prop) property is set to *placesPlugin* which is the *identifier* of the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) object used for place search throughout the example.

Next we create a view to display the category model.

``` qml
ListView {
    id: root
    property bool showSave: true
    property bool showRemove: true
    property bool showChildren: true
    signal categoryClicked(variant category)
    signal editClicked(variant category)
    header: IconButton {
        source: "../../resources/left.png"
        pressedSource: "../../resources/left_pressed.png"
        onClicked: categoryListModel.rootIndex = categoryListModel.parentModelIndex()
    }
    model: VisualDataModel {
        id: categoryListModel
        model: categoryModel
        delegate: CategoryDelegate {
            id: categoryDelegate
            showSave: root.showSave
            showRemove: root.showRemove
            showChildren: root.showChildren
            onClicked: root.categoryClicked(category);
            onArrowClicked: categoryListModel.rootIndex = categoryListModel.modelIndex(index)
            onCrossClicked: category.remove();
            onEditClicked: root.editClicked(category);
        }
    }
}
```

Because a hierarchical model is being used, a DelegateModel is needed to provide navigation functionality. If flat list model was being used the view could use the [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md) directly.

The view contains a header item that is used as a back button to navigate up the category tree. The *onClicked* handler sets the root index of the DelegateModel to the parent of the current index. Categories are displayed by the *CategoryDelegate*, which provides four signals. The *onArrowClicked* handler sets the root index to the current index causing the sub categories of the selected category to be displayed. The *onClicked* handler emits the **categoryClicked()** signal with a category parameter indicating which specific category has been chosen. The *onCrossClicked* handler will invoke the categories [remove()](../../sdk-15.04.1/QtLocation.Category.md#remove-method) method. The *onEditClicked* handler invokes the **editClicked()** signal of the root item, this is used to notify which particular category is to be edited.

The *CategoryDelegate* displays the category name and emits the *clicked* signal when the text is clicked:

``` qml
Text {
    id: name
    anchors.left: icon.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.right: parent.right
    verticalAlignment: Text.AlignVCenter
    text: category.name
    elide: Text.ElideRight
}
MouseArea {
    anchors.fill: parent
    onClicked: root.clicked()
}
```

The *CategoryDelegate* also displays icons for editing, removing and displaying child categories. These icons are shown as desired when the *showSave* and *showRemove* and *showChildren* properties are set and only then in cases where the function is supported.

``` qml
IconButton {
    id: edit
    anchors.right: cross.left
    anchors.verticalCenter: parent.verticalCenter
    visible: (placesPlugin.name != "" ? placesPlugin.supportsPlaces(Plugin.SaveCategoryFeature) : false)
             && showSave
    source: "../../resources/pencil.png"
    hoveredSource: "../../resources/pencil_hovered.png"
    pressedSource: "../../resources/pencil_pressed.png"
    onClicked: root.editClicked()
}
IconButton {
    id: cross
    anchors.right: arrow.left
    anchors.verticalCenter: parent.verticalCenter
    visible: (placesPlugin.name != "" ? placesPlugin.supportsPlaces(Plugin.RemoveCategoryFeature) : false)
             && showRemove
    source: "../../resources/cross.png"
    hoveredSource: "../../resources/cross_hovered.png"
    pressedSource: "../../resources/cross_pressed.png"
    onClicked: root.crossClicked()
}
IconButton {
    id: arrow
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    visible: model.hasModelChildren && showChildren
    source: "../../resources/right.png"
    pressedSource: "../../resources/right_pressed.png"
    onClicked: root.arrowClicked()
}
```

<span id="presenting-search-suggestions"></span><span id="presenting-search-suggestions"></span>
Presenting Search Suggestions
-----------------------------

The [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md) type is used to fetch suggested search terms based on a partially entered search term.

A new suggestion search is triggered whenever the entered search term is changed.

``` qml
onTextChanged: {
    if (searchRectangle.suggestionsEnabled) {
        if (text.length >= 3) {
            if (suggestionModel != null) {
                suggestionModel.searchTerm = text;
                suggestionModel.update();
            }
        } else {
            searchRectangle.state = "";
        }
    }
}
```

The *suggestionsEnabled* property is used to temporarily disable search suggestions when a suggestion is selected (selecting it updates the search term text). Suggestions are only queried if the length of the search term is three or more characters, otherwise the search boxes state is reset.

When the status of the [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel.md) changes, the state of the search box is changed to display the search suggestions.

``` qml
PlaceSearchSuggestionModel {
    id: suggestionModel
    plugin: placesPlugin
    searchArea: placeSearchModel.searchArea
    onStatusChanged: {
        if (status == PlaceSearchSuggestionModel.Ready)
            searchRectangle.state = "SuggestionsShown";
    }
}
```

The main object in the "SuggestionsShown" state is the ListView showing the search suggestions.

``` qml
ListView {
    id: suggestionView
    model: suggestionModel
    delegate: Text {
        text: suggestion
        width: parent.width
        MouseArea {
            anchors.fill: parent
            onClicked: {
                suggestionsEnabled = false;
                searchBox.text = suggestion;
                suggestionsEnabled = true;
                placeSearchModel.searchForText(suggestion);
                searchRectangle.state = "";
            }
        }
    }
}
```

A Text object is used as the delegate to display the suggestion text. Clicking on the suggested search term updates the search term and triggers a place search using the search suggestion.

<span id="searching-for-places"></span>
Searching for Places
--------------------

The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) type is used to search for places.

``` qml
PlaceSearchModel {
    id: placeSearchModel
    plugin: placesPlugin
    searchArea: searchRegion
    function searchForCategory(category) {
        searchTerm = "";
        categories = category;
        recommendationId = "";
        searchArea = searchRegion
        limit = -1;
        update();
    }
    function searchForText(text) {
        searchTerm = text;
        categories = null;
        recommendationId = "";
        searchArea = searchRegion
        limit = -1;
        update();
    }
    function searchForRecommendations(placeId) {
        searchTerm = "";
        categories = null;
        recommendationId = placeId;
        searchArea = null;
        limit = -1;
        update();
    }
    onStatusChanged: {
        switch (status) {
        case PlaceSearchModel.Ready:
            searchResultView.showSearchResults();
            break;
        case PlaceSearchModel.Error:
            console.log(errorString());
        }
    }
}
```

First some of the model's properties are set, which will be used to form the search request. The [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchArea-prop) property is set to the *searchRegion* object which is a GeoCircle with a center that is linked to the current location displayed on the [Map](../../sdk-15.04.1/QtLocation.Map.md).

Finally, we define two helper functions **searchForCategory()** and **searchForText()**, which set either the [categories](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#categories-prop) or [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#searchTerm-prop) properties and invokes the [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md#update-method) method to start the place search. The search results are displayed in a ListView.

``` qml
ListView {
    id: searchView
    anchors.fill: parent
    model: placeSearchModel
    delegate: SearchResultDelegate {
        onDisplayPlaceDetails: showPlaceDetails(data)
        onSearchFor: placeSearchModel.searchForText(query);
    }
    footer: Item {
        width: searchView.width
        height: childrenRect.height
        Button {
            text: qsTr("Previous")
            enabled: placeSearchModel.previousPagesAvailable
            onClicked: placeSearchModel.previousPage()
            anchors.left: parent.left
        }
        Button {
            text: qsTr("Clear")
            onClicked: placeSearchModel.reset()
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button {
            text: qsTr("Next")
            enabled: placeSearchModel.nextPagesAvailable
            onClicked: placeSearchModel.nextPage()
            anchors.right: parent.right
        }
    }
}
```

The delegate used in the ListView, *SearchResultDelegate*, is designed to handle multiple search result types via a Loader object. For results of type *PlaceResult* the delegate is:

``` qml
Component {
    id: placeComponent
    Item {
        id: placeRoot
        height: childrenRect.height
        width: parent.width
        Rectangle {
            anchors.fill: parent
            color: "#dbffde"
            visible: model.sponsored !== undefined ? model.sponsored : false
            Text {
                text: qsTr("Sponsored result")
                horizontalAlignment: Text.AlignRight
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                font.pixelSize: 8
                visible: model.sponsored !== undefined ? model.sponsored : false
            }
        }
        Row {
            Image {
                source: place.favorite ? "../../resources/star.png" : place.icon.url()
            }
            Column {
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    id: placeName
                    text: place.favorite ? place.favorite.name : place.name
                }
                Text {
                    id: distanceText
                    font.italic: true
                    text: PlacesUtils.prettyDistance(distance)
                }
            }
        }
        MouseArea {
            anchors.fill: parent
            onPressed: placeRoot.state = "Pressed"
            onReleased: placeRoot.state = ""
            onCanceled: placeRoot.state = ""
            onClicked: {
                if (model.type === undefined || type === PlaceSearchModel.PlaceResult) {
                    if (!place.detailsFetched)
                        place.getDetails();
                    root.displayPlaceDetails({
                                             distance: model.distance,
                                             place: model.place,
                });
                }
            }
        }
        states: [
            State {
                name: ""
            },
            State {
                name: "Pressed"
                PropertyChanges { target: placeName; color: "#1C94FC"}
                PropertyChanges { target: distanceText; color: "#1C94FC"}
            }
        ]
    }
}
```

<span id="displaying-place-content"></span>
Displaying Place Content
------------------------

Places can have additional rich content, including editorials, reviews and images. Rich content is accessed via a set of models. Content models are generally not created directly by the application developer, instead models are obtained from the [editorialModel](../../sdk-15.04.1/QtLocation.Place.md#editorialModel-prop), [reviewModel](../../sdk-15.04.1/QtLocation.Place.md#reviewModel-prop) and [imageModel](../../sdk-15.04.1/QtLocation.Place.md#imageModel-prop) properties of the [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) type.

``` qml
ListView {
    anchors.fill: parent
    model: place.editorialModel
    delegate: EditorialDelegate { }
}
```

<span id="place-and-category-creation"></span>
Place and Category Creation
---------------------------

Some backends may support creation and saving of new places and categories. Plugin support can be checked an run-time with the [Plugin::supportsPlaces](../../sdk-15.04.1/QtLocation.Plugin.md#supportsPlaces-method)() method.

To save a new place, first create a new [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) object, using the Qt.createQmlObject() method. Assign the appropriate plugin and place properties and invoke the [save()](../../sdk-15.04.1/QtLocation.Place.md#save-method) method.

``` qml
        locationPlace.plugin = placesPlugin;
        locationPlace.name = dataFieldsModel.get(0).inputText;
        locationPlace.location.address.street = dataFieldsModel.get(1).inputText;
        locationPlace.location.address.district = dataFieldsModel.get(2).inputText;
        locationPlace.location.address.city = dataFieldsModel.get(3).inputText;
        locationPlace.location.address.county = dataFieldsModel.get(4).inputText;
        locationPlace.location.address.state = dataFieldsModel.get(5).inputText;
        locationPlace.location.address.countryCode = dataFieldsModel.get(6).inputText;
        locationPlace.location.address.country = dataFieldsModel.get(7).inputText;
        locationPlace.location.address.postalCode = dataFieldsModel.get(8).inputText;
        var c = QtPositioning.coordinate(parseFloat(dataFieldsModel.get(9).inputText),
                                      parseFloat(dataFieldsModel.get(10).inputText));
        locationPlace.location.coordinate = c;
        var phone = Qt.createQmlObject('import QtLocation 5.3; ContactDetail { }', locationPlace);
        phone.label = "Phone";
        phone.value = dataFieldsModel.get(11).inputText;
        locationPlace.contactDetails.phone = phone;
        var fax = Qt.createQmlObject('import QtLocation 5.3; ContactDetail { }', locationPlace);
        fax.label = "Fax";
        fax.value = dataFieldsModel.get(12).inputText;
        locationPlace.contactDetails.fax = fax;
        var email = Qt.createQmlObject('import QtLocation 5.3; ContactDetail { }', locationPlace);
        email.label = "Email";
        email.value = dataFieldsModel.get(13).inputText;
        locationPlace.contactDetails.email = email;
        var website = Qt.createQmlObject('import QtLocation 5.3; ContactDetail { }', locationPlace);
        website.label = "Website";
        website.value = dataFieldsModel.get(14).inputText;
        locationPlace.contactDetails.website = website;
        locationPlace.categories = __categories;
        locationPlace.statusChanged.connect(processStatus);
        locationPlace.save();
```

Category creation is similar:

``` qml
onGoButtonClicked: {
    var modifiedCategory = category ? category : Qt.createQmlObject('import QtLocation 5.3; Category { }', page);
    modifiedCategory.plugin = placesPlugin;
    modifiedCategory.name = dialogModel.get(0).inputText;
    category = modifiedCategory;
    category.save();
}
```

Support for place and category removal can be checked at run-time by using the [Plugin::supportsPlaces](../../sdk-15.04.1/QtLocation.Plugin.md#supportsPlaces-method) method, passing in a [Plugin::PlacesFeatures](../../sdk-15.04.1/QtLocation.Plugin.md#supportsPlaces-method) flag and getting back *true* if the feature is supported. For example one would invoke *supportsPlaces(Plugin.RemovePlaceFeature)* to check if the *Plugin.RemovePlaceFeature* is supported.

To remove a place, invoke its [remove()](../../sdk-15.04.1/QtLocation.Place.md#remove-method) method. To remove a category, invoke its [remove()](../../sdk-15.04.1/QtLocation.Category.md#remove-method) method.

<span id="running-the-example"></span>
Running the Example
-------------------

The example detects which plugins are available and has an option to show them in the via the Provider button.

Files:

-   places/places.qml
-   places/qmlplaceswrapper.cpp
-   places/content/places/CategoryDelegate.qml
-   places/content/places/CategoryDialog.qml
-   places/content/places/CategoryView.qml
-   places/content/places/EditorialDelegate.qml
-   places/content/places/EditorialPage.qml
-   places/content/places/Group.qml
-   places/content/places/MapComponent.qml
-   places/content/places/OptionsDialog.qml
-   places/content/places/PlaceDelegate.qml
-   places/content/places/PlaceDialog.qml
-   places/content/places/PlaceEditorials.qml
-   places/content/places/PlaceImages.qml
-   places/content/places/PlaceReviews.qml
-   places/content/places/PlacesUtils.js
-   places/content/places/RatingView.qml
-   places/content/places/ReviewDelegate.qml
-   places/content/places/ReviewPage.qml
-   places/content/places/SearchBox.qml
-   places/content/places/SearchResultDelegate.qml
-   places/content/places/SearchResultView.qml
-   places/places.pro
-   places/placeswrapper.qrc

