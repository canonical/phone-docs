---
Title: QtLocation.ImageModel
---
        
ImageModel
==========

<span class="subtitle"></span>
The ImageModel type provides a model of place images. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[batchSize](../../sdk-15.04.1/QtLocation.ImageModel.md#batchSize-prop)**** : int
-   ****[place](../../sdk-15.04.1/QtLocation.ImageModel.md#place-prop)**** : Place
-   ****[totalCount](../../sdk-15.04.1/QtLocation.ImageModel.md#totalCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [ImageModel](../../sdk-15.04.1/QtLocation.ImageModel.md) is a read-only model used to fetch images related to a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). Binding a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) via [ImageModel::place](../../sdk-15.04.1/QtLocation.ImageModel.md#place-prop) initiates an initial fetch of images. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the images currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the images are received. The number of images which are fetched at a time is specified by the [batchSize](../../sdk-15.04.1/QtLocation.ImageModel.md#batchSize-prop) property. The total number of images available can be accessed via the [totalCount](../../sdk-15.04.1/QtLocation.ImageModel.md#totalCount-prop) property.

The model returns data for the following roles:

| Role        | Type                                                         | Description                                                         |
|-------------|--------------------------------------------------------------|---------------------------------------------------------------------|
| url         | url                                                          | The URL of the image.                                               |
| imageId     | string                                                       | The identifier of the image.                                        |
| mimeType    | string                                                       | The MIME type of the image.                                         |
| supplier    | [Supplier](../../sdk-15.04.1/QtLocation.Supplier.md) | The supplier of the image.                                          |
| user        | [User](../../sdk-15.04.1/QtLocation.User.md)         | The user who contributed the image.                                 |
| attribution | string                                                       | Attribution text which must be displayed when displaying the image. |

<span id="example"></span>
Example
-------

The following example shows how to display images for a place:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ImageModel {
    id: imageModel
    batchSize: 3
    place: place
}
ListView {
    anchors.top: parent.top
    width: parent.width
    spacing: 10
    model: imageModel
    orientation: ListView.Horizontal
    snapMode: ListView.SnapOneItem
    delegate: Item {
        width: listView.width
        height: listView.height
        Image {
            anchors.fill: parent
            source: url
            fillMode: Image.PreserveAspectFit
        }
        Text {
            text: supplier.name + "\n" + supplier.url
            width: parent.width
            anchors.bottom: parent.bottom
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="batchSize-prop"></span><span class="name">batchSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the batch size to use when fetching more image items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="place-prop"></span><span class="name">place</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Place.md">Place</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the Place that the images are for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="totalCount-prop"></span><span class="name">totalCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the total number of image items for the place.

