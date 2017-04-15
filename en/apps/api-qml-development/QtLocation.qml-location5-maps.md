---
Title: QtLocation.qml-location5-maps
---
        
QML Maps
========

<span class="subtitle"></span>
details
Overview
--------

The [Map](../../sdk-15.04.1/QtLocation.Map.md) type allows the display of a map and placing objects within the map. Various points of interest can be defined and added to the map for display. Also the [Map](../../sdk-15.04.1/QtLocation.Map.md) has features to control how the map is displayed. With the Map item you can center the map, zoom, pinch and make the item flickable.

The places to be added to the map are [MapItems](../../sdk-15.04.1/QtLocation.location-maps-qml.md#putting-objects-on-a-map-map-overlay-objects). The item's position is defined by a coordinate which includes latitude, longitude and altitude. The item is then displayed automatically after it is added to the Map. [MapItems](../../sdk-15.04.1/QtLocation.location-maps-qml.md#putting-objects-on-a-map-map-overlay-objects) or [Map](../../sdk-15.04.1/QtLocation.Map.md).

<span id="position-on-map"></span>
### Position on map

All position APIs are part of the QtPositioning module. The basic piece of position information is the coordinate. A coordinate encapsulates data for the latitude, longitude and altitude of the location. Altitude is in meters. It also has a method to determine distance to another coordinate. The coordinate type may also be held within a Location element, this will also have information on a bounding box size to determine sufficient proximity to the location and a location address.

Here is an example of a client that uses a position source to center a [map](../../sdk-15.04.1/QtLocation.Map.md) on the current position:

``` cpp
Rectangle {
    import QtPositioning 5.2
    import QtLocation 5.3
    ...
    map : Map {
        // initialize map
        ...
    }
    PositionSource {
        onPositionChanged: {
            // center the map on the current position
            map.center = position.coordinate
        }
    }
}
```

<span id="geocoding"></span>
### Geocoding

[Geocoding](http://en.wikipedia.org/wiki/Geocoding) is the derivation of geographical coordinates (latitude and longitude) from other geographical references to the locations. For example, this can be a street address. Reverse geocoding is also possible with a street address being used to determine a geographical coordinate. Geocoding is performed by using the GeoCodeModel type.

The following code examples are a small part of the `map` component in the [Map Viewer (QML)](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.mapviewer/) example. The snippets demonstrate the declaration of the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) component.

In the snippet we see that the `geocodeModel` property contains the plugin and two signal handlers. One for changes in status (`onStatusChanged` ) and the other to update the centering of the Map object (`onLocationsChanged` ).

``` qml
    property GeocodeModel geocodeModel: GeocodeModel {
        plugin: map.plugin
        onStatusChanged: {
            if ((status == GeocodeModel.Ready) || (status == GeocodeModel.Error))
                map.geocodeFinished()
        }
        onLocationsChanged:
        {
            if (count == 1) {
                map.center.latitude = get(0).coordinate.latitude
                map.center.longitude = get(0).coordinate.longitude
            }
        }
    }
    MapItemView {
        model: geocodeModel
        delegate: pointDelegate
    }
```

These geocoding features are called from a higher level piece of code. In this snippet we see an `onGoButtonClicked` signal handler that extracts the address from the user interface and then creates a query for the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) to process and determine the geographical coordinates.

``` qml
        Address {
            id: geocodeAddress
        }
        onGoButtonClicked: {
            // manage the UI state transitions
            page.state = ""
            messageDialog.state = ""
            // fill out the Address element
            geocodeAddress.street = dialogModel.get(0).inputText
            geocodeAddress.city = dialogModel.get(1).inputText
            geocodeAddress.state = dialogModel.get(2).inputText
            geocodeAddress.country = dialogModel.get(3).inputText
            geocodeAddress.postalCode = dialogModel.get(4).inputText
            // send the geocode request
            map.geocodeModel.query = geocodeAddress
            map.geocodeModel.update()
        }
```

<span id="navigation"></span>
### Navigation

A very important function of the [Map](../../sdk-15.04.1/QtLocation.Map.md) type is navigation from one place to a destination with possible waypoints along the route. The route will be divided up into a series of segments. At the end of each segment is a vertex called a *maneuver*. The *segments* contain information about the time and distance to the end of the segment. The *maneuvers* contain information about what to do next, how to get onto the next segment, if there is one. So a *maneuver* contains navigational information, for example "turn right now".

To find a suitable route we will need to use a [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) to define the selection criteria and adding any required waypoints. The [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) should return a list of [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md)s that defines the route to the destination complete with navigation advice at the joins between segments, called [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md)s

There are many options that you can add to the query to narrow the criteria. The [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) properties can include

|                                                                                                            |                                                        |
|------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| [numberAlternativeRoutes](../../sdk-15.04.1/QtLocation.RouteQuery.md#numberAlternativeRoutes-prop) | The number of alternative routes                       |
| [travelModes](../../sdk-15.04.1/QtLocation.RouteQuery.md#travelModes-prop)                         | Travel modes                                           |
| [routeOptimizations](../../sdk-15.04.1/QtLocation.RouteQuery.md#routeOptimizations-prop)           | Required route optimizations                           |
| [segmentDetail](../../sdk-15.04.1/QtLocation.RouteQuery.md#segmentDetail-prop)                     | Level of detail in segments                            |
| [maneuverDetail](../../sdk-15.04.1/QtLocation.RouteQuery.md#maneuverDetail-prop)                   | Level of detail in maneuvers between segments          |
| [waypoints](../../sdk-15.04.1/QtLocation.RouteQuery.md#waypoints-prop)                             | A list of waypoints                                    |
| [excludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery.md#excludedAreas-prop)                     | A list of excluded areas that the route must not cross |
| [featureTypes](../../sdk-15.04.1/QtLocation.RouteQuery.md#featureTypes-prop)                       | Relevant map features, for example highway, ferry      |

In the following example a default [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) is declared, later to be defined by some user input, and used in `routeModel` as the query. The `routeInfoModel` is a ListModel that can be updated using an `update()` function that we will look at later.

``` qml
    property RouteQuery routeQuery: RouteQuery {}
    property RouteModel routeModel: RouteModel {
        plugin : map.plugin
        query: routeQuery
        onStatusChanged: {
            if (status == RouteModel.Ready) {
                switch (count) {
                case 0:
                    clearAll() // technically not an error
                    map.routeError()
                    break
                case 1:
                    routeInfoModel.update()
                    break
                }
            } else if (status == RouteModel.Error) {
                clearAll()
                map.routeError()
            }
        }
        function clearAll() {
            routeInfoModel.update()
        }
    }
```

The user enters, via a dialog, some information such as the starting point of the route, some waypoints and the destination. All of these locations are waypoints so the locations from start to finish will be entered as a sequence of waypoints. Then other query properties can be set that may be specific to this trip.

``` qml
        function calculateRoute() {
            // clear away any old data in the query
            map.routeQuery.clearWaypoints();
            // add the start and end coords as waypoints on the route
            map.routeQuery.addWaypoint(startCoordinate)
            map.routeQuery.addWaypoint(endCoordinate)
            map.routeQuery.travelModes = routeDialog.travelMode
            map.routeQuery.routeOptimizations = routeDialog.routeOptimization
            for (var i=0; i<9; i++) {
                map.routeQuery.setFeatureWeight(i, 0)
            }
            for (var i=0; i<routeDialog.features.length; i++) {
                map.routeQuery.setFeatureWeight(routeDialog.features[i], RouteQuery.AvoidFeatureWeight)
            }
            map.routeModel.update();
            // center the map on the start coord
            map.center = startCoordinate;
    }
```

The `routeInfoModel` ListModel is used to grab the results of the query and construct a suitable list for display. The ListModel `routeInfoModel` contains an `update()` function that loops through the segments extracting the segment length, instruction text and distance to the next instruction. The extracted data is formatted for display as it is retrieved.

``` qml
    ListModel {
        id: routeInfoModel
        property string travelTime
        property string distance
        function update() {
            clear()
            if (routeModel.count > 0) {
                for (var i = 0; i < routeModel.get(0).segments.length; i++) {
                    append({
                        "instruction": routeModel.get(0).segments[i].maneuver.instructionText,
                        "distance": formatDistance(routeModel.get(0).segments[i].maneuver.distanceToNextInstruction)
                    });
                }
            }
            travelTime = routeModel.count == 0 ? "" : formatTime(routeModel.get(0).travelTime)
            distance = routeModel.count == 0 ? "" : formatDistance(routeModel.get(0).distance)
        }
    }
    MapItemView {
        model: routeModel
        delegate: routeDelegate
        autoFitViewport: true
    }
```

For more information on the example see the [Map Viewer (QML)](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.mapviewer/) example.

<span id="zoom-pinch-and-flickable"></span>
### Zoom, Pinch and Flickable

The [Map](../../sdk-15.04.1/QtLocation.Map.md) item also supports user interface interactions with the map using tactile and mouse gestures. That is features such as swiping to pan, pinching to zoom.

Enabling and configuring pinch and flickable is easy within the [Map](../../sdk-15.04.1/QtLocation.Map.md) type.

``` qml
Map {
    id: map
    zoomLevel: (maximumZoomLevel - minimumZoomLevel)/2
    center {
        latitude: -27.5796
        longitude: 153.1003
    }
    // Enable pinch gestures to zoom in and out
    gesture.flickDeceleration: 3000
    gesture.enabled: true
}
```

Zoom can also be controlled by other objects like sliders, as shown in the example, by implementing the `onValueChanged` handler to update the Map [zoomLevel](../../sdk-15.04.1/QtLocation.Map.md#zoomLevel-prop).

<span id="types"></span>
Types
-----

<span id="maps"></span>
#### Maps

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.Map.md">Map</a></p></td>
<td><p>Type displays a map</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapCircle.md">MapCircle</a></p></td>
<td><p>Type displays a geographic circle on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapGestureArea.md">MapGestureArea</a></p></td>
<td><p>Type provides Map gesture interaction</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapItemView.md">MapItemView</a></p></td>
<td><p>Used to populate Map from a model</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapPinchEvent.md">MapPinchEvent</a></p></td>
<td><p>Type provides basic information about pinch event</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapPolygon.md">MapPolygon</a></p></td>
<td><p>Type displays a polygon on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapPolyline.md">MapPolyline</a></p></td>
<td><p>Type displays a polyline on a map</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapQuickItem.md">MapQuickItem</a></p></td>
<td><p>Type displays an arbitrary Qt Quick object on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapRectangle.md">MapRectangle</a></p></td>
<td><p>Type displays a rectangle on a Map</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapRoute.md">MapRoute</a></p></td>
<td><p>Type displays a Route on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.MapType.md">MapType</a></p></td>
<td><p>Type holds information about a map type</p></td>
</tr>
</tbody>
</table>

<span id="geocoding"></span>
#### Geocoding

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.GeocodeModel.md">GeocodeModel</a></p></td>
<td><p>Type provides support for searching operations related to geographic information</p></td>
</tr>
</tbody>
</table>

<span id="routing"></span>
#### Routing

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.Route.md">Route</a></p></td>
<td><p>Type represents one geographical route</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.RouteManeuver.md">RouteManeuver</a></p></td>
<td><p>Type represents the information relevant to the point at which two RouteSegments meet</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.RouteModel.md">RouteModel</a></p></td>
<td><p>Type provides access to routes</p></td>
</tr>
<tr class="even">
<td><p><a href="../../sdk-15.04.1/QtLocation.RouteQuery.md">RouteQuery</a></p></td>
<td><p>Type is used to provide query parameters to a RouteModel</p></td>
</tr>
<tr class="odd">
<td><p><a href="../../sdk-15.04.1/QtLocation.RouteSegment.md">RouteSegment</a></p></td>
<td><p>Type represents a segment of a Route</p></td>
</tr>
</tbody>
</table>

<span id="example"></span>
Example
-------

The above snippets are taken from the [Map Viewer (QML)](https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtLocation.mapviewer/) example.

