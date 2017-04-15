---
Title: QtLocation.Map
---
        
Map
===

<span class="subtitle"></span>
The Map type displays a map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[activeMapType](../../sdk-15.04.1/QtLocation.Map.md#activeMapType-prop)**** : MapType
-   ****[center](../../sdk-15.04.1/QtLocation.Map.md#center-prop)**** : coordinate
-   ****[gesture](../../sdk-15.04.1/QtLocation.Map.md#gesture-prop)**** : MapGestureArea
-   ****[mapItems](../../sdk-15.04.1/QtLocation.Map.md#mapItems-prop)**** : list&lt;MapItem&gt;
-   ****[maximumZoomLevel](../../sdk-15.04.1/QtLocation.Map.md#maximumZoomLevel-prop)**** : real
-   ****[minimumZoomLevel](../../sdk-15.04.1/QtLocation.Map.md#minimumZoomLevel-prop)**** : real
-   ****[plugin](../../sdk-15.04.1/QtLocation.Map.md#plugin-prop)**** : Plugin
-   ****[supportedMapTypes](../../sdk-15.04.1/QtLocation.Map.md#supportedMapTypes-prop)**** : list&lt;MapType&gt;
-   ****[zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method)****(MapItem *item*)
-   void ****[cameraStopped](../../sdk-15.04.1/QtLocation.Map.md#cameraStopped-method)****()
-   void ****[clearMapItems](../../sdk-15.04.1/QtLocation.Map.md#clearMapItems-method)****()
-   ****[fitViewportToGeoShape](../../sdk-15.04.1/QtLocation.Map.md#fitViewportToGeoShape-method)****(QGeoShape *shape*)
-   ****[fitViewportToMapItems](../../sdk-15.04.1/QtLocation.Map.md#fitViewportToMapItems-method)****()
-   void ****[pan](../../sdk-15.04.1/QtLocation.Map.md#pan-method)****(int *dx*, int *dy*)
-   void ****[removeMapItem](../../sdk-15.04.1/QtLocation.Map.md#removeMapItem-method)****(MapItem *item*)
-   ****[toCoordinate](../../sdk-15.04.1/QtLocation.Map.md#toCoordinate-method)****(QPointF *screenPosition*)
-   ****[toScreenPosition](../../sdk-15.04.1/QtLocation.Map.md#toScreenPosition-method)****(coordinate *coordinate*)

<span id="details"></span>
Detailed Description
--------------------

The Map type is used to display a map or image of the Earth, with the capability to also display interactive objects tied to the map's surface.

There are a variety of different ways to visualize the Earth's surface in a 2-dimensional manner, but all of them involve some kind of projection: a mathematical relationship between the 3D coordinates (latitude, longitude and altitude) and 2D coordinates (X and Y in pixels) on the screen.

Different sources of map data can use different projections, and from the point of view of the Map type, we treat these as one replaceable unit: the Map plugin. A Map plugin consists of a data source, as well as all other details needed to display its data on-screen.

The current Map plugin in use is contained in the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) property of the Map item. In order to display any image in a Map item, you will need to set this property. See the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) type for a description of how to retrieve an appropriate plugin for use.

The geographic region displayed in the Map item is referred to as its viewport, and this is defined by the properties [center](../../sdk-15.04.1/QtLocation.Map.md#center-prop), and [zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop). The [center](../../sdk-15.04.1/QtLocation.Map.md#center-prop) property contains a coordinate specifying the center of the viewport, while [zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop) controls the scale of the map. See each of these properties for further details about their values.

When the map is displayed, each possible geographic coordinate that is visible will map to some pixel X and Y coordinate on the screen. To perform conversions between these two, Map provides the [toCoordinate](../../sdk-15.04.1/QtLocation.Map.md#toCoordinate-method) and [toScreenPosition](../../sdk-15.04.1/QtLocation.Map.md#toScreenPosition-method) functions, which are of general utility.

<span id="map-objects"></span>
### Map Objects

Map related objects can be declared within the body of a Map object in Qt Quick and will automatically appear on the Map. To add objects programmatically, first be sure they are created with the Map as their parent (for example in an argument to Component::createObject), and then call the [addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method) method on the Map. A corresponding [removeMapItem](../../sdk-15.04.1/QtLocation.Map.md#removeMapItem-method) method also exists to do the opposite and remove an object from the Map.

Moving Map objects around, resizing them or changing their shape normally does not involve any special interaction with Map itself -- changing these details about a map object will automatically update the display.

<span id="interaction"></span>
### Interaction

The Map type includes support for pinch and flick gestures to control zooming and panning. These are enabled by default, and available at any time by using the [gesture](../../sdk-15.04.1/QtLocation.Map.md#gesture-prop) object. The actual GestureArea is constructed specially at startup and cannot be replaced or destroyed. Its properties can be altered, however, to control its behavior.

<span id="performance"></span>
### Performance

Maps are rendered using OpenGL (ES) and the Qt Scene Graph stack, and as a result perform quite well where GL accelerated hardware is available.

For "online" Map plugins, network bandwidth and latency can be major contributors to the user's perception of performance. Extensive caching is performed to mitigate this, but such mitigation is not always perfect. For "offline" plugins, the time spent retrieving the stored geographic data and rendering the basic map features can often play a dominant role. Some offline plugins may use hardware acceleration themselves to (partially) avert this.

In general, large and complex Map items such as polygons and polylines with large numbers of vertices can have an adverse effect on UI performance. Further, more detailed notes on this are in the documentation for each map item type.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a simple Map and the necessary Plugin type to use it. The map is centered near Brisbane, Australia, zoomed out to the minimum zoom level, with gesture interaction enabled.

``` cpp
Plugin {
    id: somePlugin
    // code here to choose the plugin as necessary
}
Map {
    id: map
    plugin: somePlugin
    center {
        latitude: -27
        longitude: 153
    }
    zoomLevel: map.minimumZoomLevel
    gesture.enabled: true
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/e9f72b88-8f7c-498f-99fd-ca18f7c3df2c-api/apps/qml/sdk-15.04.1/QtLocation.Map/images/api-map.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeMapType-prop"></span><span class="name">activeMapType</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.MapType.md">MapType</a></span></p></td>
</tr>
</tbody>
</table>

Access to the currently active [map type](../../sdk-15.04.1/QtLocation.MapType.md).

This property can be set to change the active [map type](../../sdk-15.04.1/QtLocation.MapType.md). See the [supportedMapTypes](../../sdk-15.04.1/QtLocation.Map.md#supportedMapTypes-prop) property for possible values.

**See also** [MapType](../../sdk-15.04.1/QtLocation.MapType.md).

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

This property holds the coordinate which occupies the center of the mapping viewport. Invalid center coordinates are ignored.

The default value is an arbitrary valid coordinate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gesture-prop"></span><span class="name">gesture</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.MapGestureArea.md">MapGestureArea</a></span></p></td>
</tr>
</tbody>
</table>

Contains the [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) created with the Map. This covers pan, flick and pinch gestures. Use `gesture.enabled: true` to enable basic gestures, or see [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) for further details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapItems-prop"></span><span class="name">mapItems</span> : <span class="type">list</span>&lt;<span class="type">MapItem</span>&gt;</p></td>
</tr>
</tbody>
</table>

Returns the list of all map items in no particular order. These items include items that were declared statically as part of the type declaration, as well as dynamical items ([addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method), [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md)).

**See also** [addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method), [removeMapItem](../../sdk-15.04.1/QtLocation.Map.md#removeMapItem-method), and [clearMapItems](../../sdk-15.04.1/QtLocation.Map.md#clearMapItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumZoomLevel-prop"></span><span class="name">maximumZoomLevel</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum valid zoom level for the map.

The maximum zoom level is defined by the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) used. If a plugin supporting mapping is not set, -1.0 is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumZoomLevel-prop"></span><span class="name">minimumZoomLevel</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the minimum valid zoom level for the map.

The minimum zoom level is defined by the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) used. If a plugin supporting mapping is not set, -1.0 is returned.

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

This property holds the plugin which provides the mapping functionality.

This is a write-once property. Once the map has a plugin associated with it, any attempted modifications of the plugin will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedMapTypes-prop"></span><span class="name">supportedMapTypes</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.1/QtLocation.MapType.md">MapType</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This read-only property holds the set of [map types](../../sdk-15.04.1/QtLocation.MapType.md) supported by this map.

**See also** [activeMapType](../../sdk-15.04.1/QtLocation.Map.md#activeMapType-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="zoomLevel-prop"></span><span class="name">zoomLevel</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the zoom level for the map.

Larger values for the zoom level provide more detail. Zoom levels are always non-negative. The default value is 8.0.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addMapItem-method"></span><span class="name">addMapItem</span>(<span class="type">MapItem</span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Adds the given *item* to the Map (for example [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md), [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md)). If the object already is on the Map, it will not be added again.

As an example, consider the case where you have a [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md) representing your current position:

``` qml
import QtQuick 2.0
import QtLocation 5.3
PositionSource {
    id: positionSource
}
Map {
    id: map
    property MapCircle circle
    Component.onCompleted: {
        circle = Qt.createQmlObject('import QtLocation 5.3; MapCircle {}', page)
        circle.center = positionSource.position.coordinate
        circle.radius = 5000.0
        circle.color = 'green'
        circle.border.width = 3
        map.addMapItem(circle)
    }
}
```

**Note:** MapItemViews cannot be added with this method.

**See also** [mapItems](../../sdk-15.04.1/QtLocation.Map.md#mapItems-prop), [removeMapItem](../../sdk-15.04.1/QtLocation.Map.md#removeMapItem-method), and [clearMapItems](../../sdk-15.04.1/QtLocation.Map.md#clearMapItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cameraStopped-method"></span><span class="type">void</span> <span class="name">cameraStopped</span>()</p></td>
</tr>
</tbody>
</table>

Optional hint that allows the map to prefetch during this idle period

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearMapItems-method"></span><span class="type">void</span> <span class="name">clearMapItems</span>()</p></td>
</tr>
</tbody>
</table>

Removes all items from the map.

**See also** [mapItems](../../sdk-15.04.1/QtLocation.Map.md#mapItems-prop), [addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method), and [removeMapItem](../../sdk-15.04.1/QtLocation.Map.md#removeMapItem-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fitViewportToGeoShape-method"></span><span class="name">fitViewportToGeoShape</span>(<span class="type">QGeoShape</span> <em>shape</em>)</p></td>
</tr>
</tbody>
</table>

Fits the current viewport to the boundary of the shape. The camera is positioned in the center of the shape, and at the largest integral zoom level possible which allows the whole shape to be visible on screen

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fitViewportToMapItems-method"></span><span class="name">fitViewportToMapItems</span>()</p></td>
</tr>
</tbody>
</table>

Fits the current viewport to the boundary of all map items. The camera is positioned in the center of the map items, and at the largest integral zoom level possible which allows all map items to be visible on screen

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pan-method"></span><span class="type">void</span> <span class="name">pan</span>(<span class="type">int</span> <em>dx</em>, <span class="type">int</span> <em>dy</em>)</p></td>
</tr>
</tbody>
</table>

Starts panning the map by *dx* pixels along the x-axis and by *dy* pixels along the y-axis.

Positive values for *dx* move the map right, negative values left. Positive values for *dy* move the map down, negative values up.

During panning the [center](../../sdk-15.04.1/QtLocation.Map.md#center-prop), and [zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop) may change.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeMapItem-method"></span><span class="type">void</span> <span class="name">removeMapItem</span>(<span class="type">MapItem</span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Removes the given *item* from the Map (for example [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md), [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md)). If the MapItem does not exist or was not previously added to the map, the method does nothing.

**See also** [mapItems](../../sdk-15.04.1/QtLocation.Map.md#mapItems-prop), [addMapItem](../../sdk-15.04.1/QtLocation.Map.md#addMapItem-method), and [clearMapItems](../../sdk-15.04.1/QtLocation.Map.md#clearMapItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toCoordinate-method"></span><span class="name">toCoordinate</span>(<span class="type">QPointF</span> <em>screenPosition</em>)</p></td>
</tr>
</tbody>
</table>

Returns the coordinate which corresponds to the screen position *screenPosition*.

Returns an invalid coordinate if *screenPosition* is not within the current viewport.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toScreenPosition-method"></span><span class="name">toScreenPosition</span>(<span class="type">coordinate</span> <em>coordinate</em>)</p></td>
</tr>
</tbody>
</table>

Returns the screen position which corresponds to the coordinate *coordinate*.

Returns an invalid QPointF if *coordinate* is not within the current viewport.

