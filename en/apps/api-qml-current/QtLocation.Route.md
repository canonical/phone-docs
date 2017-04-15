---
Title: QtLocation.Route
---
        
Route
=====

<span class="subtitle"></span>
The Route type represents one geographical route. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[bounds](../../sdk-15.04.1/QtLocation.Route.md#bounds-prop)**** : georectangle
-   ****[distance](../../sdk-15.04.1/QtLocation.Route.md#distance-prop)**** : real
-   ****[path](../../sdk-15.04.1/QtLocation.Route.md#path-prop)**** : QJSValue
-   ****[segments](../../sdk-15.04.1/QtLocation.Route.md#segments-prop)**** : list&lt;RouteSegment&gt;
-   ****[travelTime](../../sdk-15.04.1/QtLocation.Route.md#travelTime-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

A Route type contains high level information about a route, such as the length the route, the estimated travel time for the route, and enough information to render a basic image of the route on a map.

The QGeoRoute object also contains a list of RouteSegment objects which describe subsections of the route in greater detail.

The primary means of acquiring Route objects is [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).

<span id="example"></span>
Example
-------

This example shows how to display a route's maneuvers in a ListView:

``` qml
import QtQuick 2.0
import QtLocation 5.3
RouteModel {
    id: routeModel
    // model initialization
}
ListView {
    spacing: 10
    model: routeModel.status == RouteModel.Ready ? routeModel.get(0).segments : null
    visible: model ? true : false
    delegate: Row {
        width: parent.width
        spacing: 10
        property bool hasManeuver : modelData.maneuver && modelData.maneuver.valid
        visible: hasManeuver
        Text { text: (1 + index) + "." }
        Text {
            text: hasManeuver ? modelData.maneuver.instructionText : ""
        }
    }
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
<td><p><span id="bounds-prop"></span><span class="name">bounds</span> : <span class="type">georectangle</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds a bounding box which encompasses the entire route.

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

Read-only property which holds distance covered by this route, in meters.

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

Read-only property which holds the geographical coordinates of this route. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path\[index starting from zero\]' gives the actual object.

**See also** QtPositioning::coordinate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="segments-prop"></span><span class="name">segments</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.1/QtLocation.RouteSegment.md">RouteSegment</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Read-only property which holds the list of [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md) objects of this route.

To access individual segments you can use standard list accessors: 'segments.length' indicates the number of objects and 'segments\[index starting from zero\]' gives the actual objects.

**See also** [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md).

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

Read-only property which holds the estimated amount of time it will take to traverse this route, in seconds.

