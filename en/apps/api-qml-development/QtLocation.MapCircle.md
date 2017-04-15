---
Title: QtLocation.MapCircle
---
        
MapCircle
=========

<span class="subtitle"></span>
The MapCircle type displays a geographic circle on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[border](../../sdk-15.04.1/QtLocation.MapCircle.md#border-prop)****
    -   ****[border.width](../../sdk-15.04.1/QtLocation.MapCircle.md#border.width-prop)**** : int
    -   ****[border.color](../../sdk-15.04.1/QtLocation.MapCircle.md#border.color-prop)**** : color
-   ****[center](../../sdk-15.04.1/QtLocation.MapCircle.md#center-prop)**** : coordinate
-   ****[color](../../sdk-15.04.1/QtLocation.MapCircle.md#color-prop)**** : color
-   ****[opacity](../../sdk-15.04.1/QtLocation.MapCircle.md#opacity-prop)**** : real
-   ****[radius](../../sdk-15.04.1/QtLocation.MapCircle.md#radius-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) type displays a geographic circle on a Map, which consists of all points that are within a set distance from one central point. Depending on map projection, a geographic circle may not always be a perfect circle on the screen: for instance, in the Mercator projection, circles become ovoid in shape as they near the poles. To display a perfect screen circle around a point, use a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md) containing a relevant Qt Quick type instead.

By default, the circle is displayed as a 1 pixel black border with no fill. To change its appearance, use the color, border.color and border.width properties.

Internally, a [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) is implemented as a many-sided polygon. To calculate the radius points it uses a spherical model of the Earth, similar to the atDistanceAndAzimuth method of the coordinate type. These two things can occasionally have implications for the accuracy of the circle's shape, depending on position and map projection.

**Note:** Dragging a [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) (through the use of MouseArea) causes new points to be generated at the same distance (in meters) from the center. This is in contrast to other map items which store their dimensions in terms of latitude and longitude differences between vertices.

<span id="performance"></span>
### Performance

[MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) performance is almost equivalent to that of a [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon.md) with 125 vertices. There is a small amount of additional overhead with respect to calculating the vertices first.

Like the other map objects, [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the graphics hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a map containing a [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md), centered at the coordinate (-27, 153) with a radius of 5km. The circle is filled in green, with a 3 pixel black border.

``` cpp
Map {
    MapCircle {
        center {
            latitude: -27.5
            longitude: 153.0
        }
        radius: 5000.0
        color: 'green'
        border.width: 3
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/84ec85dd-71d4-4ef2-bbdc-ed2ff1cf5bc5-api/apps/qml/sdk-15.04.1/QtLocation.MapCircle/images/api-mapcircle.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="border-prop"></span><strong>border group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="border.width-prop"></span><span class="name">border.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.color-prop"></span><span class="name">border.color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property is part of the border group property. The border property holds the width and color used to draw the border of the circle. The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the central point about which the circle is defined.

**See also** [radius](../../sdk-15.04.1/QtLocation.MapCircle.md#radius-prop).

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

This property holds the fill color of the circle when drawn. For no fill, use a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opacity-prop"></span><span class="name">opacity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the opacity of the item. Opacity is specified as a number between 0 (fully transparent) and 1 (fully opaque). The default is 1.

An item with 0 opacity will still receive mouse events. To stop mouse events, set the visible property of the item to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the radius of the circle, in meters on the ground.

**See also** [center](../../sdk-15.04.1/QtLocation.MapCircle.md#center-prop).

