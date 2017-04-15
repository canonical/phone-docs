---
Title: QtLocation.location-maps-cpp
---
        
Maps and Navigation (C++)
=========================

<span class="subtitle"></span>
<span id="details"></span>
**Maps and Navigation** provides C++ utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

Currently it is not possible to interact with maps via C++. Mapping applications must use the [Maps and Navigation (QML)](../../sdk-15.04.1/QtLocation.location-maps-qml.md) API.

<span id="geocoding"></span>
Geocoding
---------

In C++, an address-to-coordinate query is performed using the geocode() method of the QGeoCodingManager class. For coordinate-to-address queries, the reverseGeocode() method is available on the same class. Instances of QGeoCodingManager are available via QGeoServiceProvider.

**Key Classes**

|                     |                                                      |
|---------------------|------------------------------------------------------|
| QGeoServiceProvider | Provides a QGeoCodingManager instance ready for use. |
| QGeoCodingManager   | Accepts queries and produces QGeoCodeReply objects.  |
| QGeoCodeReply       | Contains the results of a geocoding query.           |

<span id="navigation"></span>
Navigation
----------

In C++, a route query is performed using the calculate() method of the QGeoRoutingManager class. The returned route reply can contain multiple routes to the same destination.

**Key Classes**

|                     |                                                      |
|---------------------|------------------------------------------------------|
| QGeoServiceProvider | Provides a QGeoCodingManager instance ready for use. |
| QGeoRoutingManager  | Accepts queries and produces QGeoRouteReply objects. |
| QGeoRouteReply      | Contains the results of a routing query.             |
| QGeoRoute           | Contains information about a route.                  |

