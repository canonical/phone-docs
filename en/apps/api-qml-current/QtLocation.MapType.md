---
Title: QtLocation.MapType
---
        
MapType
=======

<span class="subtitle"></span>
The MapType type holds information about a map type. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[description](../../sdk-15.04.1/QtLocation.MapType.md#description-prop)**** : string
-   ****[mobile](../../sdk-15.04.1/QtLocation.MapType.md#mobile-prop)**** : bool
-   ****[name](../../sdk-15.04.1/QtLocation.MapType.md#name-prop)**** : string
-   ****[night](../../sdk-15.04.1/QtLocation.MapType.md#night-prop)**** : bool
-   ****[style](../../sdk-15.04.1/QtLocation.MapType.md#style-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This includes the map type's [name](../../sdk-15.04.1/QtLocation.MapType.md#name-prop) and [description](../../sdk-15.04.1/QtLocation.MapType.md#description-prop), the [style](../../sdk-15.04.1/QtLocation.MapType.md#style-prop) and a flag to indicate if the map type is optimized for mobile devices ([mobile](../../sdk-15.04.1/QtLocation.MapType.md#mobile-prop)).

Property Documentation
----------------------

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

This read-only property holds the description of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mobile-prop"></span><span class="name">mobile</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the map type is optimized for the use on a mobile device.

Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.

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

This read-only property holds the name of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="night-prop"></span><span class="name">night</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the map type is optimized for use at night.

Map types suitable for use at night usually have a dark background.

This QML property was introduced in Qt Location 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property gives access to the style of the map type.

-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).NoMap - No map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).StreetMap - A street map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).SatelliteMapDay - A map with day-time satellite imagery.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).SatelliteMapNight - A map with night-time satellite imagery.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).TerrainMap - A terrain map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).HybridMap - A map with satellite imagery and street information.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).GrayStreetMap - A gray-shaded street map.
-   MapType::PedestrianMap - A street map suitable for pedestriants.
-   MapType::CarNavigationMap - A street map suitable for car navigation.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType.md).CustomMap - A custom map type.

