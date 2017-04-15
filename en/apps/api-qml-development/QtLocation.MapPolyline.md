---
Title: QtLocation.MapPolyline
---
        
MapPolyline
===========

<span class="subtitle"></span>
The MapPolyline type displays a polyline on a map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[line](../../sdk-15.04.1/QtLocation.MapPolyline.md#line-prop)****
    -   ****[line.width](../../sdk-15.04.1/QtLocation.MapPolyline.md#line.width-prop)**** : int
    -   ****[line.color](../../sdk-15.04.1/QtLocation.MapPolyline.md#line.color-prop)**** : color
-   ****[path](../../sdk-15.04.1/QtLocation.MapPolyline.md#path-prop)**** : list&lt;coordinate&gt;

<span id="methods"></span>
Methods
-------

-   ****[addCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#addCoordinate-method)****(coordinate)
-   ****[removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#removeCoordinate-method)****(coordinate)

<span id="details"></span>
Detailed Description
--------------------

The [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline.md) type displays a polyline on a map, specified in terms of an ordered list of coordinates. The coordinates on the path cannot be directly changed after being added to the Polyline. Instead, copy the [path](../../sdk-15.04.1/QtLocation.MapPolyline.md#path-prop) into a var, modify the copy and reassign the copy back to the [path](../../sdk-15.04.1/QtLocation.MapPolyline.md#path-prop).

``` cpp
var path = mapPolyline.path;
path[0].latitude = 5;
mapPolyline.path = path;
```

Coordinates can also be added and removed at any time using the [addCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#addCoordinate-method) and [removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#removeCoordinate-method) methods.

By default, the polyline is displayed as a 1-pixel thick black line. This can be changed using the [line.width](../../sdk-15.04.1/QtLocation.MapPolyline.md#line.width-prop) and [line.color](../../sdk-15.04.1/QtLocation.MapPolyline.md#line.color-prop) properties.

<span id="performance"></span>
### Performance

MapPolylines have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a polyline on the Map grows in direct proportion to the number of points in the polyline.

Like the other map objects, [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline.md) is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

**Note:** MapPolylines are implemented using the OpenGL GL\_LINES primitive. There have been occasional reports of issues and rendering inconsistencies on some (particularly quite old) platforms. No workaround is yet available for these issues.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline.md) with 4 points, making a shape like the top part of a "question mark" (?), near Brisbane, Australia. The line drawn is 3 pixels in width and green in color.

``` cpp
Map {
    MapPolyline {
        line.width: 3
        line.color: 'green'
        path: [
            { latitude: -27, longitude: 153.0 },
            { latitude: -27, longitude: 154.1 },
            { latitude: -28, longitude: 153.5 },
            { latitude: -29, longitude: 153.5 }
        ]
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/326be5b3-39db-447f-b29e-686b39f47fe5-api/apps/qml/sdk-15.04.1/QtLocation.MapPolyline/images/api-mappolyline.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="line-prop"></span><strong>line group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="line.width-prop"></span><span class="name">line.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="line.color-prop"></span><span class="name">line.color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property is part of the line property group. The line property group holds the width and color used to draw the line.

The width is in pixels and is independent of the zoom level of the map. The default values correspond to a black border with a width of 1 pixel.

For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">list</span>&lt;<span class="type">coordinate</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the ordered list of coordinates which define the polyline.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addCoordinate-method"></span><span class="name">addCoordinate</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Adds a coordinate to the path.

**See also** [removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#removeCoordinate-method) and [path](../../sdk-15.04.1/QtLocation.MapPolyline.md#path-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeCoordinate-method"></span><span class="name">removeCoordinate</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.

**See also** [addCoordinate](../../sdk-15.04.1/QtLocation.MapPolyline.md#addCoordinate-method) and [path](../../sdk-15.04.1/QtLocation.MapPolyline.md#path-prop).

