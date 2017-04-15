---
Title: QtOrganizer.Collection
---
        
Collection
==========

<span class="subtitle"></span>
The Collection element represents a collection of items in an organizer manager. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[collectionId](#collectionId-prop)**** : string
-   ****[color](#color-prop)**** : color
-   ****[description](#description-prop)**** : string
-   ****[image](#image-prop)**** : url
-   ****[name](#name-prop)**** : string
-   ****[secondaryColor](#secondaryColor-prop)**** : color

<span id="methods"></span>
Methods
-------

-   var ****[extendedMetaData](#extendedMetaData-method)****(key)
-   var ****[metaData](#metaData-method)****(key)
-   ****[setExtendedMetaData](#setExtendedMetaData-method)****(key, value)
-   ****[setMetaData](#setMetaData-method)****(key, value)

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collectionId-prop"></span><span class="name">collectionId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the ID of the collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color meta data of a collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the description meta data of a collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="image-prop"></span><span class="name">image</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the image url meta data of a collection.

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

This property holds the name meta data of a collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secondaryColor-prop"></span><span class="name">secondaryColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the secondary color meta data of a collection.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedMetaData-method"></span><span class="type">var</span> <span class="name">extendedMetaData</span>(<span class="type">key</span>)</p></td>
</tr>
</tbody>
</table>

Returns the value of extended metadata with the given *key*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData-method"></span><span class="type">var</span> <span class="name">metaData</span>(<span class="type">key</span>)</p></td>
</tr>
</tbody>
</table>

Returns the meta data stored in this collection for the given *key*. Possible keys include:

-   Collection.KeyName
-   Collection.KeyDescription
-   Collection.KeyColor
-   Collection.KeyImage
-   Collection.KeyExtended

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setExtendedMetaData-method"></span><span class="name">setExtendedMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets the value of the extended metadata with the given *key* to *value*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setMetaData-method"></span><span class="name">setMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets the meta data of the collection for the given *key* to the given *value*. Possible keys include:

-   Collection.KeyName
-   Collection.KeyDescription
-   Collection.KeyColor
-   Collection.KeySecondaryColor
-   Collection.KeyImage
-   Collection.KeyExtended

