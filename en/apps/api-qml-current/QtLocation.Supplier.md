---
Title: QtLocation.Supplier
---
        
Supplier
========

<span class="subtitle"></span>
Holds data regarding the supplier of a place, a place's image, review, or editorial. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[icon](../../sdk-15.04.1/QtLocation.Supplier.md#icon-prop)**** : PlaceIcon
-   ****[name](../../sdk-15.04.1/QtLocation.Supplier.md#name-prop)**** : string
-   ****[supplier](../../sdk-15.04.1/QtLocation.Supplier.md#supplier-prop)**** : QPlaceSupplier
-   ****[supplierId](../../sdk-15.04.1/QtLocation.Supplier.md#supplierId-prop)**** : string
-   ****[url](../../sdk-15.04.1/QtLocation.Supplier.md#url-prop)**** : url

<span id="details"></span>
Detailed Description
--------------------

Each instance represents a set of data about a supplier, which can include supplier's name, url and icon. The supplier is typically a business or organization.

Note: The Places API only supports suppliers as 'retrieve-only' objects. Submitting suppliers to a provider is not a supported use case.

<span id="example"></span>
Example
-------

The following example shows how to create and display a supplier in QML:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
Supplier {
    id: placeSupplier
    name: "Example"
    url: "http://www.example.com/"
}
Text {
    text: "This place is was provided by " + placeSupplier.name + "\n" + placeSupplier.url
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
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type">PlaceIcon</span></p></td>
</tr>
</tbody>
</table>

This property holds the icon of the supplier.

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

This property holds the name of the supplier which can be displayed to the user.

The name can potentially be localized. The language is dependent on the entity that sets it, typically this is the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). The [Plugin::locales](../../sdk-15.04.1/QtLocation.Plugin.md#locales-prop) property defines what language is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supplier-prop"></span><span class="name">supplier</span> : <span class="type">QPlaceSupplier</span></p></td>
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
<td><p><span id="supplierId-prop"></span><span class="name">supplierId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the identifier of the supplier. The identifier is unique to the Plugin backend which provided the supplier and is generally not suitable for displaying to the user.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Supplier.md#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the URL of the supplier's website.

