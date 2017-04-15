---
Title: QtLocation.location-maps-qml
---
        
Maps and Navigation (QML)
=========================

<span class="subtitle"></span>
<span id="details"></span>
**Maps and Navigation** provides QtQuick user interface types for displaying geographic information on a map, as well as allowing user interaction with map overlay objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

It builds upon the API concepts and types in the QML Positioning API. A more hands-on introduction of the Maps and Navigation types can be found in the [Maps and Navigation tutorial](../../sdk-15.04.1/QtLocation.qml-location5-maps.md).

<span id="maps"></span>
Maps
----

<span id="displaying-maps"></span>
### Displaying Maps

Displaying a map is done using the [Map](../../sdk-15.04.1/QtLocation.Map.md) QML types. The Map type supports user interaction through the [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) QML type. The Map object draws the map on-screen using OpenGL (ES), allowing for hardware-accelerated rendering where available.

**Key Types**

|                                                                          |                                                                                                            |
|--------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
| [Plugin](../../sdk-15.04.1/QtLocation.Plugin.md)                 | A location-based services plugin provides data including map data which is then displayed in a Map object. |
| [Map](../../sdk-15.04.1/QtLocation.Map.md)                       | QtQuick item to display a map on-screen.                                                                   |
| [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea.md) | Interaction helper for panning, flicking and pinch-to-zoom gesture on a Map.                               |

Note that the client must create a [Plugin](../../sdk-15.04.1/QtLocation.Plugin.md) object prior to using a [Map](../../sdk-15.04.1/QtLocation.Map.md) type in order to have access to map data to display.

<span id="putting-objects-on-a-map-map-overlay-objects"></span>
### Putting Objects on a Map (Map Overlay Objects)

Maps can also contain map overlay objects, which are used to display information on its surface. There is a set of basic pre-defined map overlay objects, as well as the ability to implement custom map overlay objects using the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md) type, which can contain any standard QtQuick item.

**Key Types**

|                                                                      |                                                                                                                                                                                           |
|----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle.md)       | A geographic circle (all points at a set distance from a center), optionally with a border.                                                                                               |
| [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle.md) | A rectangle whose top left and bottom right points are specified as coordinate types, optionally with a border.                                                                           |
| [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon.md)     | A polygon made of an arbitrary list of coordinates.                                                                                                                                       |
| [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline.md)   | A polyline made of an arbitrary list of coordinates.                                                                                                                                      |
| [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md) | Turns any arbitrary QtQuick Item into a map overlay object. [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem.md) is an enabler for specifying custom map overlay objects. |

<span id="model-view-design-with-map-overlay-objects"></span>
### Model-View Design with Map Overlay Objects

To automatically generate map overlay objects based on the contents of a QtQuick model (for example a ListModel item), the [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) type is available. It accepts any map overlay object as its delegate, and can only be created within a [Map](../../sdk-15.04.1/QtLocation.Map.md).

**Key Types**

|                                                                    |                                                                                 |
|--------------------------------------------------------------------|---------------------------------------------------------------------------------|
| [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) | Populates a Map with map overlay objects based on the data provided by a model. |

<span id="interaction-with-map-overlay-objects"></span>
### Interaction with Map Overlay Objects

Properties of map overlay objects that influence their appearance on the display can be changed at any time, and many can also be used in animations. Animating coordinate-based map overlay objects, such as [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon.md) and [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline.md), is not yet available.

<span id="geocoding-address-to-coordinate-and-vice-versa"></span>
Geocoding -- Address to Coordinate and Vice Versa
-------------------------------------------------

Geocoding is the translation of geographic coordinates into addresses, or vice versa. Such a translation usually involves sending the source data to a server which then performs the translation and returns the results, although some location-based service provider [plugins](../../sdk-15.04.1/QtLocation.Plugin.md) may be able to provide some geocoding functionality without sending data to a remote server. The availability and accuracy of the translation usually depends on the location or address being translated, as different areas of the Earth are mapped to varying degrees of accuracy.

A geocoding query in QML is performed using the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) type. For an address-to-coordinate query, its `query` property may be set to either an Address object or a string containing the textual form of the address to search for. To perform the reverse, the same property can be set to a coordinate instead. Results are made available in the contents of the model.

**Key Types**

|                                                                      |                                                                                                                                                                                                 |
|----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Plugin](../../sdk-15.04.1/QtLocation.Plugin.md)             | A location-based services plugin provides data including geocoding translation results which are exposed to clients via a [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md). |
| [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) | Queries the Plugin for geocoding translations and provides access to results via indexes in the model.                                                                                          |
| Address                                                              | Structured address for use in queries and results of geocoding.                                                                                                                                 |

Note that the client must create a [Plugin](../../sdk-15.04.1/QtLocation.Plugin.md) object prior to using a [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) object. This will enable access to geocoding translation services and thus data to display.

<span id="routing-and-navigation"></span>
Routing and Navigation
----------------------

Routing is the determination of a navigable path from one point to another on a map. Given a map that is aware of features that aid or hinder navigation, such as bridges, waterways and so on, a series of segments that make up the journey can be constructed. If these [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md)s are simple then we can add navigation information at the connecting points, [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md)s, between the segments.

**Key Types**

|                                                                        |                                                                          |
|------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [Route](../../sdk-15.04.1/QtLocation.Route.md)                 | The entire path to be navigated.                                         |
| [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md)   | The individual components of a route.                                    |
| [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md) | The navigation information that joins segments.                          |
| [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md)       | The means of making requests on the backend to supply route information. |

