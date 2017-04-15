---
Title: QtLocation.qtlocation-cpp
---
        
Qt Location C++ API
===================

<span class="subtitle"></span>
<span id="details"></span>
The Location API provides a library for mapping, navigation and place information.

The Qt Location API provides the developer with a set of functions to interact with maps, navigational data and places of interest. This is particularly useful when associated with current position information which can be retrieved via the QtPositioning module.

With the Maps API we can associate a position with a map in various formats supplied by a backend. Then the Places API could be used to populate places on the Map or even specify the current position as a place of interest and associate it with an icon, contact details and other information.

The following table provides links to more detailed information on sections of the Qt Location C++ API.

|                                                                                                     |                                                    |
|-----------------------------------------------------------------------------------------------------|----------------------------------------------------|
| [Maps and Navigation](../../sdk-15.04.1/QtLocation.location-maps-cpp.md)                    | Displaying maps and finding routes.                |
| [Places](../../sdk-15.04.1/QtLocation.location-places-cpp.md)                               | Searching for and managing points of interest.     |
| [Geoservices Plugin Implementation](../../sdk-15.04.1/QtLocation.qtlocation-geoservices.md) | Implement new geoservices and positioning plugins. |

<span id="geoservice-provider-classes"></span>
Geoservice Provider Classes
---------------------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoServiceProvider</p></td>
<td><p>Aggregates access to services which provide geographical information</p></td>
</tr>
</tbody>
</table>

<span id="maps-and-navigation-classes"></span>
Maps and Navigation Classes
---------------------------

Currently it is not possible to interact with maps data via C++. The only available interface is the [Maps and Navigation (QML)](../../sdk-15.04.1/QtLocation.location-maps-qml.md) API.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoManeuver</p></td>
<td><p>Represents the information relevant to the point at which two QGeoRouteSegments meet</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoute</p></td>
<td><p>Represents a route between two points</p></td>
</tr>
<tr class="odd">
<td><p>QGeoRouteReply</p></td>
<td><p>Manages an operation started by an instance of QGeoRoutingManager</p></td>
</tr>
<tr class="even">
<td><p>QGeoRouteRequest</p></td>
<td><p>Represents the parameters and restrictions which define a request for routing information</p></td>
</tr>
<tr class="odd">
<td><p>QGeoRouteSegment</p></td>
<td><p>Represents a segment of a route</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoutingManager</p></td>
<td><p>Support for geographic routing operations</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoCodeReply</p></td>
<td><p>Manages an operation started by an instance of QGeoCodingManager</p></td>
</tr>
<tr class="even">
<td><p>QGeoCodingManager</p></td>
<td><p>Support for geocoding operations</p></td>
</tr>
</tbody>
</table>

<span id="places-classes"></span>
Places Classes
--------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QPlace</p></td>
<td><p>Represents a set of data about a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceAttribute</p></td>
<td><p>Represents generic attribute information about a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceCategory</p></td>
<td><p>Represents a category that a QPlace can be associated with</p></td>
</tr>
<tr class="even">
<td><p>QPlaceContactDetail</p></td>
<td><p>Represents a contact detail such as a phone number or website url</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceContent</p></td>
<td><p>Serves as the base class for rich content types</p></td>
</tr>
<tr class="even">
<td><p>QPlaceContentReply</p></td>
<td><p>Manages a content retrieval operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceContentRequest</p></td>
<td><p>Represents the parameters of a content request</p></td>
</tr>
<tr class="even">
<td><p>QPlaceDetailsReply</p></td>
<td><p>Manages a place details fetch operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceEditorial</p></td>
<td><p>Represents a publisher's article describing a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceIcon</p></td>
<td><p>Represents an icon</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceIdReply</p></td>
<td><p>Manages operations which return an identifier such as saving and removal operations of places and categories</p></td>
</tr>
<tr class="even">
<td><p>QPlaceImage</p></td>
<td><p>Represents a reference to an image</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceManager</p></td>
<td><p>The interface which allows clients to access places stored in a particular backend</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceMatchReply</p></td>
<td><p>Manages a place matching operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="even">
<td><p>QPlaceMatchRequest</p></td>
<td><p>Used to find places from one manager that match those from another. It represents a set of request parameters</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceProposedSearchResult</p></td>
<td><p>Represents a search result containing a proposed search</p></td>
</tr>
<tr class="even">
<td><p>QPlaceRatings</p></td>
<td><p>Holds rating information about a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceReply</p></td>
<td><p>Manages an operation started by an instance of QPlaceManager and serves as a base class for more specialized replies</p></td>
</tr>
<tr class="even">
<td><p>QPlaceResult</p></td>
<td><p>Represents a search result containing a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceReview</p></td>
<td><p>Represents a review of a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSearchReply</p></td>
<td><p>Manages a place search operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchRequest</p></td>
<td><p>Represents the set of parameters for a search request</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSearchResult</p></td>
<td><p>The base class for search results</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchSuggestionReply</p></td>
<td><p>Manages a search suggestion operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSupplier</p></td>
<td><p>Represents a supplier of a place or content associated with a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceUser</p></td>
<td><p>Represents an individual user</p></td>
</tr>
</tbody>
</table>

<span id="geoservices-and-positioning-plugin-classes"></span>
Geoservices and Positioning Plugin Classes
------------------------------------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoCodingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoutingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information</p></td>
</tr>
<tr class="odd">
<td><p>QGeoServiceProviderFactory</p></td>
<td><p>Factory class used as the plugin interface for services related to geographical information</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
</tbody>
</table>

