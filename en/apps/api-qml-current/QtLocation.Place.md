---
Title: QtLocation.Place
---
        
Place
=====

<span class="subtitle"></span>
The Place type represents a location that is a position of interest. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[attribution](../../sdk-15.04.1/QtLocation.Place.md#attribution-prop)**** : string
-   ****[categories](../../sdk-15.04.1/QtLocation.Place.md#categories-prop)**** : list&lt;Category&gt;
-   ****[contactDetails](../../sdk-15.04.1/QtLocation.Place.md#contactDetails-prop)**** : ContactDetails
-   ****[detailsFetched](../../sdk-15.04.1/QtLocation.Place.md#detailsFetched-prop)**** : bool
-   ****[editorialModel](../../sdk-15.04.1/QtLocation.Place.md#editorialModel-prop)**** : EditorialModel
-   ****[extendedAttributes](../../sdk-15.04.1/QtLocation.Place.md#extendedAttributes-prop)**** : ExtendedAttributes
-   ****[favorite](../../sdk-15.04.1/QtLocation.Place.md#favorite-prop)**** : Place
-   ****[icon](../../sdk-15.04.1/QtLocation.Place.md#icon-prop)**** : Icon
-   ****[imageModel](../../sdk-15.04.1/QtLocation.Place.md#imageModel-prop)**** : ImageModel
-   ****[location](../../sdk-15.04.1/QtLocation.Place.md#location-prop)**** : QtPositioning::Location
-   ****[name](../../sdk-15.04.1/QtLocation.Place.md#name-prop)**** : string
-   ****[place](../../sdk-15.04.1/QtLocation.Place.md#place-prop)**** : QPlace
-   ****[placeId](../../sdk-15.04.1/QtLocation.Place.md#placeId-prop)**** : string
-   ****[plugin](../../sdk-15.04.1/QtLocation.Place.md#plugin-prop)**** : Plugin
-   ****[primaryEmail](../../sdk-15.04.1/QtLocation.Place.md#primaryEmail-prop)**** : string
-   ****[primaryFax](../../sdk-15.04.1/QtLocation.Place.md#primaryFax-prop)**** : string
-   ****[primaryPhone](../../sdk-15.04.1/QtLocation.Place.md#primaryPhone-prop)**** : string
-   ****[primaryWebsite](../../sdk-15.04.1/QtLocation.Place.md#primaryWebsite-prop)**** : string
-   ****[ratings](../../sdk-15.04.1/QtLocation.Place.md#ratings-prop)**** : Ratings
-   ****[reviewModel](../../sdk-15.04.1/QtLocation.Place.md#reviewModel-prop)**** : ReviewModel
-   ****[status](../../sdk-15.04.1/QtLocation.Place.md#status-prop)**** : enumeration
-   ****[supplier](../../sdk-15.04.1/QtLocation.Place.md#supplier-prop)**** : Supplier
-   ****[visibility](../../sdk-15.04.1/QtLocation.Place.md#visibility-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[copyFrom](../../sdk-15.04.1/QtLocation.Place.md#copyFrom-method)****(Place *original*)
-   string ****[errorString](../../sdk-15.04.1/QtLocation.Place.md#errorString-method)****()
-   void ****[getDetails](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method)****()
-   ****[initializeFavorite](../../sdk-15.04.1/QtLocation.Place.md#initializeFavorite-method)****(Plugin *destinationPlugin*)
-   void ****[remove](../../sdk-15.04.1/QtLocation.Place.md#remove-method)****()
-   void ****[save](../../sdk-15.04.1/QtLocation.Place.md#save-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Place type represents a physical location with additional metadata describing that location. Contrasted with Location, Address, and coordinate type which are used to describe where a location is. The basic properties of a Place are its [name](../../sdk-15.04.1/QtLocation.Place.md#name-prop) and [location](../../sdk-15.04.1/QtLocation.Place.md#location-prop).

Place objects are typically obtained from a search model and will generally only have their basic properties set. The [detailsFetched](../../sdk-15.04.1/QtLocation.Place.md#detailsFetched-prop) property can be used to test if further property values need to be fetched from the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). This can be done by invoking the [getDetails()](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method) method. Progress of the fetching operation can be monitored with the [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property, which will be set to Place.Fetching when the details are being fetched.

The Place type has many properties holding information about the location. Details on how to contact the place are available from the [contactDetails](../../sdk-15.04.1/QtLocation.Place.md#contactDetails-prop) property. Convenience properties for obtaining the primary [phone](../../sdk-15.04.1/QtLocation.Place.md#primaryPhone-prop), [fax](../../sdk-15.04.1/QtLocation.Place.md#primaryFax-prop), [email](../../sdk-15.04.1/QtLocation.Place.md#primaryEmail-prop) and [website](../../sdk-15.04.1/QtLocation.Place.md#primaryWebsite-prop) are also available.

Each place is assigned zero or more [categories](../../sdk-15.04.1/QtLocation.location-places-backend.md#categories). Categories are typically used when searching for a particular kind of place, such as a restaurant or hotel. Some places have a [ratings](../../sdk-15.04.1/QtLocation.Place.md#ratings-prop) object, which gives an indication of the quality of the place.

Place metadata is provided by a supplier who may require that an attribution message be displayed to the user when the place details are viewed.

Places have an associated [icon](../../sdk-15.04.1/QtLocation.Place.md#icon-prop) which can be used to represent a place on a map or to decorate a delegate in a view.

Places may have additional rich content associated with them. The currently supported rich content include editorial descriptions, reviews and images. These are exposed as a set of models for retrieving the content. Editorial descriptions of the place are available from the [editorialModel](../../sdk-15.04.1/QtLocation.Place.md#editorialModel-prop) property. Reviews of the place are available from the [reviewModel](../../sdk-15.04.1/QtLocation.Place.md#reviewModel-prop) property. A gallery of pictures of the place can be accessed using the [imageModel](../../sdk-15.04.1/QtLocation.Place.md#imageModel-prop) property.

Places may have additional attributes which are not covered in the formal API. The [extendedAttributes](../../sdk-15.04.1/QtLocation.Place.md#extendedAttributes-prop) property provides access to these. The type of extended attributes available is specific to each [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin).

A Place is almost always tied to a [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). The [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) property must be set before it is possible to call [save()](../../sdk-15.04.1/QtLocation.Place.md#save-method), [remove()](../../sdk-15.04.1/QtLocation.Place.md#remove-method) or [getDetails()](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method). The [reviewModel](../../sdk-15.04.1/QtLocation.Place.md#reviewModel-prop), [imageModel](../../sdk-15.04.1/QtLocation.Place.md#imageModel-prop) and [editorialModel](../../sdk-15.04.1/QtLocation.Place.md#editorialModel-prop) are only valid then the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) property is set.

<span id="saving-a-place"></span>
### Saving a Place

If the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) supports it, the Place type can be used to save a place. First create a new Place and set its properties:

``` qml
Place {
    id: myPlace
    plugin: myPlugin
    name: "Brisbane Technology Park"
    location: Location {
        address: Address {
            street: "53 Brandl Street"
            city: "Eight Mile Plains"
            postalCode: "4113"
            country: "Australia"
        }
        coordinate {
            latitude: -27.579646
            longitude: 153.100308
        }
    }
    visibility: Place.PrivateVisibility
}
```

Then invoke the [save()](../../sdk-15.04.1/QtLocation.Place.md#save-method) method:

``` qml
    myPlace.save();
```

The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will change to Place.Saving and then to Place.Ready if the save was successful or to Place.Error if an error occurs.

If the [placeId](../../sdk-15.04.1/QtLocation.Place.md#placeId-prop) property is set, the backend will update an existing place otherwise it will create a new place. On success the [placeId](../../sdk-15.04.1/QtLocation.Place.md#placeId-prop) property will be updated with the identifier of the newly saved place.

<span id="caveats"></span>
#### Caveats

The Places API is currently designed for only saving *core* details. Saving rich content like images and reviews or details like supplier and rating is not a supported use case. Typically a manager will generally ignore these fields upon save and may produce a warning message if they are populated.

The Places API only supports saving of the following *core details*:

-   name
-   place id
-   location
-   contact details
-   icon
-   categories (tag-like names to describe a place)
-   visibility scope

It is possible that providers may only support a subset of these. See the [plugin documentation](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters) for more details.

Saving of properties such as the rating, extended attributes, images, reviews, editorials and supplier is explicitly not supported by the Places API.

<span id="saving-between-plugins"></span>
#### Saving Between Plugins

When saving places between plugins, there are a few things to be aware of. Some fields of a place such as the id, categories and icons are plugin specific entities. For example the categories in one manager may not be recognised in another. Therefore trying to save a place directly from one plugin to another is not possible.

It is generally recommended that saving across plugins be handled as saving [favorites](../../sdk-15.04.1/QtLocation.Place.md#favorites) as explained in the Favorites section. However there is another approach which is to create a new place, set its (destination) plugin and then use the [copyFrom()](../../sdk-15.04.1/QtLocation.Place.md#copyFrom-method) method to copy the details of the original place. Using [copyFrom()](../../sdk-15.04.1/QtLocation.Place.md#copyFrom-method) only copies data that is supported by the destination plugin, plugin specific data such as the place identifier is not copied over. Once the copy is done, the place is in a suitable state to be saved.

The following snippet provides an example of saving a place to a different plugin using the [copyFrom](../../sdk-15.04.1/QtLocation.Place.md#copyFrom-method) method:

``` qml
place = Qt.createQmlObject('import QtLocation 5.3; Place { }', parent);
place.plugin = destinationPlugin;
place.copyFrom(originalPlace);
place.save();
```

<span id="removing-a-place"></span>
### Removing a Place

To remove a place, ensure that a Place object with a valid [placeId](../../sdk-15.04.1/QtLocation.Place.md#placeId-prop) property exists and call its [remove()](../../sdk-15.04.1/QtLocation.Place.md#remove-method) method. The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will change to Place.Removing and then to Place.Ready if the save was successful or to Place.Error if an error occurs.

<span id="favorites"></span>
### Favorites

The Places API supports the concept of favorites. Favorites are generally implemented by using two plugins, the first plugin is typically a read-only source of places (origin plugin) and a second read/write plugin (destination plugin) is used to store places from the origin as favorites.

Each Place has a favorite property which is intended to contain the corresponding place from the destination plugin (the place itself is sourced from the origin plugin). Because both the original place and favorite instances are available, the developer can choose which properties to show to the user. For example the favorite may have a modified name which should be displayed rather than the original name.

``` qml
Text { text: place.favorite ? place.favorite.name : place.name }
```

The following demonstrates how to save a new favorite instance. A call is made to create/initialize the favorite instance and then the instance is saved.

``` qml
place.initializeFavorite(destinationPlugin);
//if necessary customizations to the favorite can be made here.
//...
place.favorite.save();
```

The following demonstrates favorite removal:

``` qml
place.favorite.remove();
    ...
//check successful removal of the favorite by monitoring its status.
//once that is done we can assign null to the favorite
place.favorite = null;
```

The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) has a favoritesPlugin property. If the property is set, any places found during a search are checked against the favoritesPlugin to see if there is a corresponding favorite place. If so, the favorite property of the Place is set, otherwise the favorite property is remains null.

**See also** [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attribution-prop"></span><span class="name">attribution</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a rich text attribution string for the place. Some providers may require that the attribution be shown to the user whenever a place is displayed. The contents of this property should be shown to the user if it is not empty.

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

This property holds the list of categories this place is a member of. The categories that can be assigned to a place are specific to each [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactDetails-prop"></span><span class="name">contactDetails</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.ContactDetails.md">ContactDetails</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the contact information for this place, for example a phone number or a website URL. This property is a map of [ContactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md) objects.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detailsFetched-prop"></span><span class="name">detailsFetched</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the details of the place have been fetched. If this property is false, the place details have not yet been fetched. Fetching can be done by invoking the [getDetails()](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method) method.

**See also** [getDetails()](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="editorialModel-prop"></span><span class="name">editorialModel</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.EditorialModel.md">EditorialModel</a></span></p></td>
</tr>
</tbody>
</table>

This property holds a model which can be used to retrieve editorial descriptions of the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedAttributes-prop"></span><span class="name">extendedAttributes</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.ExtendedAttributes.md">ExtendedAttributes</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the extended attributes of a place. Extended attributes are additional information about a place not covered by the place's properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favorite-prop"></span><span class="name">favorite</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Place.md">Place</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the favorite instance of a place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Icon.md">Icon</a></span></p></td>
</tr>
</tbody>
</table>

This property holds a graphical icon which can be used to represent the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageModel-prop"></span><span class="name">imageModel</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.ImageModel.md">ImageModel</a></span></p></td>
</tr>
</tbody>
</table>

This property holds a model which can be used to retrieve images of the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="location-prop"></span><span class="name">location</span> : <span class="type">QtPositioning::Location</span></p></td>
</tr>
</tbody>
</table>

This property holds the location of the place which can be used to retrieve the coordinate, address and the bounding box.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the place which can be used to represent the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="place-prop"></span><span class="name">place</span> : <span class="type">QPlace</span></p></td>
</tr>
</tbody>
</table>

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="placeId-prop"></span><span class="name">placeId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique identifier of the place. The place identifier is only meaningful to the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) that generated it and is not transferable between [Plugins](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). The place id is not guaranteed to be universally unique, but unique within the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) that generated it.

If only the place identifier is known, all other place data can fetched from the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin).

``` qml
    place.plugin = myPlugin;
    place.placeId = "known-place-id";
    place.getDetails();
```

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

This property holds the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) that provided this place which can be used to retrieve more information about the service.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryEmail-prop"></span><span class="name">primaryEmail</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the primary email address of the place. If no "email" contact detail is defined for this place this property will be an empty string. It is equivalent to

``` qml
    var primaryEmail;
    if (place.contactDetails["email"].length > 0)
        primaryEmail = place.contactDetails["email"][0].value;
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryFax-prop"></span><span class="name">primaryFax</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the primary fax number of the place. If no "fax" contact detail is defined for this place this property will be an empty string. It is equivalent to

``` qml
    var primaryFax;
    if (place.contactDetails["fax"].length > 0)
        primaryFax = place.contactDetails["fax"][0].value;
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryPhone-prop"></span><span class="name">primaryPhone</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the primary phone number of the place. If no "phone" contact detail is defined for this place, this property will be an empty string. It is equivalent to:

``` qml
    var primaryPhone;
    if (place.contactDetails["phone"].length > 0)
        primaryPhone = place.contactDetails["phone"][0].value;
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryWebsite-prop"></span><span class="name">primaryWebsite</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the primary website url of the place. If no "website" contact detail is defined for this place this property will be an empty string. It is equivalent to

``` qml
    var primaryWebsite;
    if (place.contactDetails["website"].length > 0)
        primaryWebsite = place.contactDetails["website"][0].value;
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ratings-prop"></span><span class="name">ratings</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Ratings.md">Ratings</a></span></p></td>
</tr>
</tbody>
</table>

This property holds ratings of the place. The ratings provide an indication of the quality of a place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reviewModel-prop"></span><span class="name">reviewModel</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.ReviewModel.md">ReviewModel</a></span></p></td>
</tr>
</tbody>
</table>

This property holds a model which can be used to retrieve reviews about the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of the place. It can be one of:

|                |                                                                                                      |
|----------------|------------------------------------------------------------------------------------------------------|
| Place.Ready    | No error occurred during the last operation, further operations may be performed on the place.       |
| Place.Saving   | The place is currently being saved, no other operation may be performed until complete.              |
| Place.Fetching | The place details are currently being fetched, no other operations may be performed until complete.  |
| Place.Removing | The place is currently being removed, no other operations can be performed until complete.           |
| Place.Error    | An error occurred during the last operation, further operations can still be performed on the place. |

The status of a place can be checked by connecting the status property to a handler function, and then have the handler function process the change in status.

``` qml
place.statusChanged.connect(statusChangedHandler);
    ...
function statusChangedHandler() {
    if (statusChangedHandler.prevStatus === Place.Saving) {
        switch (place.status) {
        case Place.Ready:
            console.log('Save successful');
            break;
        case Place.Error:
            console.log('Save failed');
            break;
        default:
            break;
        }
    }
    statusChangedHandler.prevStatus = place.status;
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supplier-prop"></span><span class="name">supplier</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Supplier.md">Supplier</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the supplier of the place data. The supplier is typically a business or organization that collected the data about the place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibility-prop"></span><span class="name">visibility</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the visibility of the place. It can be one of:

|                             |                                                                                                                                                                      |
|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Place.UnspecifiedVisibility | The visibility of the place is unspecified, the default visibility of the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) will be used. |
| Place.DeviceVisibility      | The place is limited to the current device. The place will not be transferred off of the device.                                                                     |
| Place.PrivateVisibility     | The place is private to the current user. The place may be transferred to an online service but is only ever visible to the current user.                            |
| Place.PublicVisibility      | The place is public.                                                                                                                                                 |

Note that visibility does not affect how the place is displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the place.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="copyFrom-method"></span><span class="name">copyFrom</span>(<span class="type"><a href="../../sdk-15.04.1/QtLocation.Place.md">Place</a></span> <em>original</em>)</p></td>
</tr>
</tbody>
</table>

Copies data from an *original* place into this place. Only data that is supported by this place's plugin is copied over and plugin specific data such as place identifier is not copied over.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>()</p></td>
</tr>
</tbody>
</table>

Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getDetails-method"></span><span class="type">void</span> <span class="name">getDetails</span>()</p></td>
</tr>
</tbody>
</table>

This method starts fetching place details.

The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will change to Place.Fetching while the fetch is in progress. On success the object's properties will be updated, [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Ready and [detailsFetched](../../sdk-15.04.1/QtLocation.Place.md#detailsFetched-prop) will be set to true. On error [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Error. The [errorString()](../../sdk-15.04.1/QtLocation.Place.md#errorString-method) method can be used to get the details of the error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initializeFavorite-method"></span><span class="name">initializeFavorite</span>(<span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin.md">Plugin</a></span> <em>destinationPlugin</em>)</p></td>
</tr>
</tbody>
</table>

Creates a favorite instance for the place which is to be saved into the *destination* plugin. This method does nothing if the favorite property is not null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="type">void</span> <span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

This method performs a remove operation on the place.

The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will change to Place.Removing while the save operation is in progress. On success [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Ready. On error [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Error. The [errorString()](../../sdk-15.04.1/QtLocation.Place.md#errorString-method) method can be used to get the details of the error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">void</span> <span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

This method performs a save operation on the place.

The [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) property will change to Place.Saving while the save operation is in progress. On success the [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Ready. On error [status](../../sdk-15.04.1/QtLocation.Place.md#status-prop) will be set to Place.Error. The [errorString()](../../sdk-15.04.1/QtLocation.Place.md#errorString-method) method can be used to get the details of the error.

If the [placeId](../../sdk-15.04.1/QtLocation.Place.md#placeId-prop) property was previously empty, it will be assigned a valid value automatically during a successful save operation.

Note that a [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) will call [Place::getDetails](../../sdk-15.04.1/QtLocation.Place.md#getDetails-method) on any place that it detects an update on. A consequence of this is that whenever a Place from a [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel.md) is successfully saved, it will be followed by a fetch of place details, leading to a sequence of state changes of `Saving`, `Ready`, `Fetching`, `Ready`.

