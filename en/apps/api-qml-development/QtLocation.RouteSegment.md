---
Title: QtLocation.RouteSegment
---
        
RouteSegment
============

<span class="subtitle"></span>
The RouteSegment type represents a segment of a Route. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[distance](../../sdk-15.04.1/QtLocation.RouteSegment.md#distance-prop)**** : real
-   ****[maneuver](../../sdk-15.04.1/QtLocation.RouteSegment.md#maneuver-prop)**** : RouteManeuver
-   ****[path](../../sdk-15.04.1/QtLocation.RouteSegment.md#path-prop)**** : QJSValue
-   ****[travelTime](../../sdk-15.04.1/QtLocation.RouteSegment.md#travelTime-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

A [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md) instance has information about the physical layout of the route segment, the length of the route and estimated time required to traverse the route segment and optional RouteManeuvers associated with the end of the route segment.

[RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md) instances can be thought of as edges on a routing graph, with [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md) instances as optional labels attached to the vertices of the graph.

The primary means of acquiring Route objects is via Routes via [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).

<span id="example"></span>
Example
-------

The following QML snippet demonstrates how to print information about a route segment:

``` qml
import QtQuick 2.0
import QtLocation 5.3
Text {
    text: "Segment distance " + routeSegment.distance + " meters, " + routeSegment.path.length + " points."
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distance-prop"></span><span class="name">distance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the distance covered by this segment of the route, in meters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maneuver-prop"></span><span class="name">maneuver</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.RouteManeuver.md">RouteManeuver</a></span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the maneuver for this route segment.

Will return invalid maneuver if no information has been attached to the endpoint of this route segment.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">QJSValue</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the geographical coordinates of this segment. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path\[index starting from zero\]' gives the actual object.

**See also** QtPositioning::coordinate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="travelTime-prop"></span><span class="name">travelTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the estimated amount of time it will take to traverse this segment, in seconds.

