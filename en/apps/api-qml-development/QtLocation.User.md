---
Title: QtLocation.User
---
        
User
====

<span class="subtitle"></span>
The User type identifies a user who contributed a particular Place content item. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[name](../../sdk-15.04.1/QtLocation.User.md#name-prop)**** : string
-   ****[user](../../sdk-15.04.1/QtLocation.User.md#user-prop)**** : QPlaceUser
-   ****[userId](../../sdk-15.04.1/QtLocation.User.md#userId-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Each [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) content item has an associated user who contributed the content. This type provides information about that user.

<span id="example"></span>
Example
-------

The following example shows how to display information about the user who submitted an editorial:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
EditorialModel {
    id: editorialModel
    batchSize: 3
    place: place
}
ListView {
    model: editorialModel
    delegate: Item {
        anchors.fill: parent
        Column {
            width: parent.width
            clip: true
            Text {
                text: title
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 24
            }
            Text {
                text: text
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 20
            }
            Row {
                Image {
                    width: 16
                    height: 16
                    source: supplier.icon.url(Qt.size(width, height), Icon.List)
                }
                Text {
                    text: "Provided by " + supplier.name
                    font.pixelSize: 16
                }
            }
            Text {
                text: "Contributed by " + user.name
                font.pixelSize: 16
            }
            Text {
                text: attribution
                font.pixelSize: 8
            }
        }
    }
}
```

**See also** [ImageModel](../../sdk-15.04.1/QtLocation.ImageModel.md), [ReviewModel](../../sdk-15.04.1/QtLocation.ReviewModel.md), and [EditorialModel](../../sdk-15.04.1/QtLocation.EditorialModel.md).

Property Documentation
----------------------

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

This property holds the name of a user.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="user-prop"></span><span class="name">user</span> : <span class="type">QPlaceUser</span></p></td>
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
<td><p><span id="userId-prop"></span><span class="name">userId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique identifier of the user.

