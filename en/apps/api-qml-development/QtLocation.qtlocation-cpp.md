---
Title: QtLocation.qtlocation-cpp
---

# QtLocation.qtlocation-cpp

<span class="subtitle"></span>
<!-- $$$qtlocation-cpp.html-description -->
<p>The Location API provides a library for mapping, navigation and place information.</p>
<p>The Qt Location API provides the developer with a set of functions to interact with maps, navigational data and places of interest. This is particularly useful when associated with current position information which can be retrieved via the QtPositioning module.</p>
<p>With the Maps API we can associate a position with a map in various formats supplied by a backend. Then the Places API could be used to populate places on the Map or even specify the current position as a place of interest and associate it with an icon, contact details and other information.</p>
<p>The following table provides links to more detailed information on sections of the Qt Location C++ API.</p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.location-maps-cpp.md">Maps and Navigation</a></td><td >Displaying maps and finding routes.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.location-places-cpp.md">Places</a></td><td >Searching for and managing points of interest.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.qtlocation-geoservices.md">Geoservices Plugin Implementation</a></td><td >Implement new geoservices and positioning plugins.</td></tr>
</table>
<h2 id="geoservice-provider-classes">Geoservice Provider Classes</h2>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QGeoServiceProvider</p></td><td class="tblDescr"><p>Aggregates access to services which provide geographical information</p></td></tr>
</table>
<h2 id="maps-and-navigation-classes">Maps and Navigation Classes</h2>
<p>Currently it is not possible to interact with maps data via C++. The only available interface is the <a href="..//QtLocation.location-maps-qml.md">Maps and Navigation (QML)</a> API.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QGeoManeuver</p></td><td class="tblDescr"><p>Represents the information relevant to the point at which two QGeoRouteSegments meet</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoRoute</p></td><td class="tblDescr"><p>Represents a route between two points</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGeoRouteReply</p></td><td class="tblDescr"><p>Manages an operation started by an instance of QGeoRoutingManager</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoRouteRequest</p></td><td class="tblDescr"><p>Represents the parameters and restrictions which define a request for routing information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGeoRouteSegment</p></td><td class="tblDescr"><p>Represents a segment of a route</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoRoutingManager</p></td><td class="tblDescr"><p>Support for geographic routing operations</p></td></tr>
</table>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QGeoCodeReply</p></td><td class="tblDescr"><p>Manages an operation started by an instance of QGeoCodingManager</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoCodingManager</p></td><td class="tblDescr"><p>Support for geocoding operations</p></td></tr>
</table>
<h2 id="places-classes">Places Classes</h2>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QPlace</p></td><td class="tblDescr"><p>Represents a set of data about a place</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceAttribute</p></td><td class="tblDescr"><p>Represents generic attribute information about a place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceCategory</p></td><td class="tblDescr"><p>Represents a category that a QPlace can be associated with</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceContactDetail</p></td><td class="tblDescr"><p>Represents a contact detail such as a phone number or website url</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceContent</p></td><td class="tblDescr"><p>Serves as the base class for rich content types</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceContentReply</p></td><td class="tblDescr"><p>Manages a content retrieval operation started by an instance of QPlaceManager</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceContentRequest</p></td><td class="tblDescr"><p>Represents the parameters of a content request</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceDetailsReply</p></td><td class="tblDescr"><p>Manages a place details fetch operation started by an instance of QPlaceManager</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceEditorial</p></td><td class="tblDescr"><p>Represents a publisher's article describing a place</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceIcon</p></td><td class="tblDescr"><p>Represents an icon</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceIdReply</p></td><td class="tblDescr"><p>Manages operations which return an identifier such as saving and removal operations of places and categories</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceImage</p></td><td class="tblDescr"><p>Represents a reference to an image</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceManager</p></td><td class="tblDescr"><p>The interface which allows clients to access places stored in a particular backend</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceManagerEngine</p></td><td class="tblDescr"><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceMatchReply</p></td><td class="tblDescr"><p>Manages a place matching operation started by an instance of QPlaceManager</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceMatchRequest</p></td><td class="tblDescr"><p>Used to find places from one manager that match those from another. It represents a set of request parameters</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceProposedSearchResult</p></td><td class="tblDescr"><p>Represents a search result containing a proposed search</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceRatings</p></td><td class="tblDescr"><p>Holds rating information about a place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceReply</p></td><td class="tblDescr"><p>Manages an operation started by an instance of QPlaceManager and serves as a base class for more specialized replies</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceResult</p></td><td class="tblDescr"><p>Represents a search result containing a place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceReview</p></td><td class="tblDescr"><p>Represents a review of a place</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceSearchReply</p></td><td class="tblDescr"><p>Manages a place search operation started by an instance of QPlaceManager</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceSearchRequest</p></td><td class="tblDescr"><p>Represents the set of parameters for a search request</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceSearchResult</p></td><td class="tblDescr"><p>The base class for search results</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceSearchSuggestionReply</p></td><td class="tblDescr"><p>Manages a search suggestion operation started by an instance of QPlaceManager</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceSupplier</p></td><td class="tblDescr"><p>Represents a supplier of a place or content associated with a place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPlaceUser</p></td><td class="tblDescr"><p>Represents an individual user</p></td></tr>
</table>
<h2 id="geoservices-and-positioning-plugin-classes">Geoservices and Positioning Plugin Classes</h2>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QGeoCodingManagerEngine</p></td><td class="tblDescr"><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGeoRoutingManagerEngine</p></td><td class="tblDescr"><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGeoServiceProviderFactory</p></td><td class="tblDescr"><p>Factory class used as the plugin interface for services related to geographical information</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QPlaceManagerEngine</p></td><td class="tblDescr"><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td></tr>
</table>
<!-- @@@qtlocation-cpp.html -->
