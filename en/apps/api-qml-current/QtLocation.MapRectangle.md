---
Title: QtLocation.MapRectangle
---
        
MapRectangle
============

<span class="subtitle"></span>
The MapRectangle type displays a rectangle on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[border](../../sdk-15.04.1/QtLocation.MapRectangle.md#border-prop)****
    -   ****[border.width](../../sdk-15.04.1/QtLocation.MapRectangle.md#border.width-prop)**** : int
    -   ****[border.color](../../sdk-15.04.1/QtLocation.MapRectangle.md#border.color-prop)**** : color
-   ****[bottomRight](../../sdk-15.04.1/QtLocation.MapRectangle.md#bottomRight-prop)**** : coordinate
-   ****[color](../../sdk-15.04.1/QtLocation.MapRectangle.md#color-prop)**** : color
-   ****[opacity](../../sdk-15.04.1/QtLocation.MapRectangle.md#opacity-prop)**** : real
-   ****[topLeft](../../sdk-15.04.1/QtLocation.MapRectangle.md#topLeft-prop)**** : coordinate

<span id="details"></span>
Detailed Description
--------------------

The [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) type displays a rectangle on a Map. Rectangles are a special case of Polygon with exactly 4 vertices and 4 "straight" edges. In this case, "straight" means that the top-left point has the same latitude as the top-right point (the top edge), and the bottom-left point has the same latitude as the bottom-right point (the bottom edge). Similarly, the points on the left side have the same longitude, and the points on the right side have the same longitude.

To specify the rectangle, it requires a [topLeft](../../sdk-15.04.1/QtLocation.MapRectangle.md#topLeft-prop) and [bottomRight](../../sdk-15.04.1/QtLocation.MapRectangle.md#bottomRight-prop) point, both given by a coordinate.

By default, the rectangle is displayed with transparent fill and a 1-pixel thick black border. This can be changed using the [color](../../sdk-15.04.1/QtLocation.MapRectangle.md#color-prop), [border.color](../../sdk-15.04.1/QtLocation.MapRectangle.md#border.color-prop) and [border.width](../../sdk-15.04.1/QtLocation.MapRectangle.md#border.width-prop) properties.

**Note:** Similar to the [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon.md) type, MapRectangles are geographic items, thus dragging a [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) causes its vertices to be recalculated in the geographic coordinate space. Apparent stretching of the item occurs when dragged to the a different latitude, however, its edges remain straight.

<span id="performance"></span>
### Performance

MapRectangles have a rendering cost identical to a [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon.md) with 4 vertices.

Like the other map objects, [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) is normally drawn without a smooth appearance. Setting the [opacity](../../sdk-15.04.1/QtLocation.MapRectangle.md#opacity-prop) property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a map containing a [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md), spanning from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is filled in green, with a 2 pixel black border.

``` cpp
Map {
    MapRectangle {
        color: 'green'
        border.width: 2
        topLeft {
            latitude: -27
            longitude: 153
        }
        bottomRight {
            latitude: -28
            longitude: 153.5
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api/apps/qml/sdk-15.04.1/QtLocation.MapRectangle/images/api-maprectangle.png)

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

This property is part of the border property group. The border property group holds the width and color used to draw the border of the rectangle. The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bottomRight-prop"></span><span class="name">bottomRight</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the bottom-right coordinate of the [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) which can be used to retrieve its longitude, latitude and altitude.

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

This property holds the fill color of the rectangle. For no fill, use a transparent color.

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
<td><p><span id="topLeft-prop"></span><span class="name">topLeft</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the top-left coordinate of the [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) which can be used to retrieve its longitude, latitude and altitude.

