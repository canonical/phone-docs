---
Title: QtLocation.RouteManeuver
---
        
RouteManeuver
=============

<span class="subtitle"></span>
The RouteManeuver type represents the information relevant to the point at which two RouteSegments meet. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[direction](../../sdk-15.04.1/QtLocation.RouteManeuver.md#direction-prop)**** : enumeration
-   ****[distanceToNextInstruction](../../sdk-15.04.1/QtLocation.RouteManeuver.md#distanceToNextInstruction-prop)**** : real
-   ****[instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver.md#instructionText-prop)**** : string
-   ****[position](../../sdk-15.04.1/QtLocation.RouteManeuver.md#position-prop)**** : coordinate
-   ****[timeToNextInstruction](../../sdk-15.04.1/QtLocation.RouteManeuver.md#timeToNextInstruction-prop)**** : int
-   ****[valid](../../sdk-15.04.1/QtLocation.RouteManeuver.md#valid-prop)**** : bool
-   ****[waypoint](../../sdk-15.04.1/QtLocation.RouteManeuver.md#waypoint-prop)**** : coordinate
-   ****[waypointValid](../../sdk-15.04.1/QtLocation.RouteManeuver.md#waypointValid-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment.md) instances can be thought of as edges on a routing graph, with [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md) instances as optional labels attached to the vertices of the graph.

The most interesting information held in a [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md) instance is normally the textual navigation to provide and the position at which to provide it, accessible by [instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver.md#instructionText-prop) and [position](../../sdk-15.04.1/QtLocation.RouteManeuver.md#position-prop) respectively.

<span id="example"></span>
Example
-------

The following QML snippet demonstrates how to print information about a route maneuver:

``` qml
import QtQuick 2.0
import QtLocation 5.3
Text {
    text: "Distance till next maneuver: " + routeManeuver.distanceToNextInstruction + " meters, estimated time: " + routeManeuver.timeToNextInstruction + " seconds."
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
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Describes the change in direction associated with the instruction text that is associated with a [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).

-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).NoDirection - There is no direction associated with the instruction text
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionForward - The instruction indicates that the direction of travel does not need to change
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionBearRight - The instruction indicates that the direction of travel should bear to the right
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionLightRight - The instruction indicates that a light turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionRight - The instruction indicates that a turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionHardRight - The instruction indicates that a hard turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionUTurnRight - The instruction indicates that a u-turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionUTurnLeft - The instruction indicates that a u-turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionHardLeft - The instruction indicates that a hard turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionLeft - The instruction indicates that a turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionLightLeft - The instruction indicates that a light turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver.md).DirectionBearLeft - The instruction indicates that the direction of travel should bear to the left

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distanceToNextInstruction-prop"></span><span class="name">distanceToNextInstruction</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the distance, in meters, between the point at which the associated instruction was issued and the point that the next instruction should be issued.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="instructionText-prop"></span><span class="name">instructionText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds textual navigation instruction.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds where the [instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver.md#instructionText-prop) should be displayed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timeToNextInstruction-prop"></span><span class="name">timeToNextInstruction</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the estimated time it will take to travel from the point at which the associated instruction was issued and the point that the next instruction should be issued, in seconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether this maneuver is valid or not.

Invalid maneuvers are used when there is no information that needs to be attached to the endpoint of a QGeoRouteSegment instance.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waypoint-prop"></span><span class="name">waypoint</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the waypoint associated with this maneuver. All maneuvers do not have a waypoint associated with them, this can be checked with [waypointValid](../../sdk-15.04.1/QtLocation.RouteManeuver.md#waypointValid-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waypointValid-prop"></span><span class="name">waypointValid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether this [waypoint](../../sdk-15.04.1/QtLocation.RouteManeuver.md#waypoint-prop), associated with this maneuver, is valid or not.

