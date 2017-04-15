---
Title: QtLocation.RouteModel
---
        
RouteModel
==========

<span class="subtitle"></span>
The RouteModel type provides access to routes. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](../../sdk-15.04.1/QtLocation.RouteModel.md#autoUpdate-prop)**** : bool
-   ****[count](../../sdk-15.04.1/QtLocation.RouteModel.md#count-prop)**** : int
-   ****[error](../../sdk-15.04.1/QtLocation.RouteModel.md#error-prop)**** : enumeration
-   ****[errorString](../../sdk-15.04.1/QtLocation.RouteModel.md#errorString-prop)**** : string
-   ****[measurementSystem](../../sdk-15.04.1/QtLocation.RouteModel.md#measurementSystem-prop)**** : Locale::MeasurementSystem
-   ****[plugin](../../sdk-15.04.1/QtLocation.RouteModel.md#plugin-prop)**** : Plugin
-   ****[query](../../sdk-15.04.1/QtLocation.RouteModel.md#query-prop)**** : RouteQuery
-   ****[status](../../sdk-15.04.1/QtLocation.RouteModel.md#status-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[cancel](../../sdk-15.04.1/QtLocation.RouteModel.md#cancel-method)****()
-   ****[get](../../sdk-15.04.1/QtLocation.RouteModel.md#get-method)****(int)
-   ****[reset](../../sdk-15.04.1/QtLocation.RouteModel.md#reset-method)****()
-   ****[update](../../sdk-15.04.1/QtLocation.RouteModel.md#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) type is used as part of a model/view grouping to retrieve geographic routes from a backend provider. Routes include data about driving directions between two points, walking directions with multiple waypoints, and various other similar concepts. It functions much like other Model types in QML (see for example ListModel and XmlListModel), and interacts with views such as [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md), and ListView.

Like [Map](../../sdk-15.04.1/QtLocation.Map.md) and [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md), all the data for a [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) to work comes from a services plugin. This is contained in the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) property, and this must be set before the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) can do any useful work.

Once the plugin is set, create a [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) with the appropriate waypoints and other settings, and set the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md)'s [query](../../sdk-15.04.1/QtLocation.RouteModel.md#query-prop) property. If [autoUpdate](../../sdk-15.04.1/QtLocation.RouteModel.md#autoUpdate-prop) is enabled, the update will being automatically. Otherwise, the [update](../../sdk-15.04.1/QtLocation.RouteModel.md#update-method) method may be used. By default, [autoUpdate](../../sdk-15.04.1/QtLocation.RouteModel.md#autoUpdate-prop) is disabled.

The data stored and returned in the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) consists of [Route](../../sdk-15.04.1/QtLocation.Route.md) objects, as a list with the role name "routeData". See the documentation for [Route](../../sdk-15.04.1/QtLocation.Route.md) for further details on its structure and contents.

<span id="example-usage"></span>
### Example Usage

The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the routeModel's [autoUpdate](../../sdk-15.04.1/QtLocation.RouteModel.md#autoUpdate-prop) property to false, and call [update](../../sdk-15.04.1/QtLocation.RouteModel.md#update-method) once the query is set up, to avoid useless extra requests halfway through the set up of the query.

``` cpp
Plugin {
    id: aPlugin
    name: "nokia"
}
RouteQuery {
    id: aQuery
}
RouteModel {
    id: routeModel
    plugin: aPlugin
    query: aQuery
    autoUpdate: false
}
```

``` cpp
{
    aQuery.addWaypoint(...)
    aQuery.addWaypoint(...)
    aQuery.travelModes = ...
    routeModel.update()
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
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property controls whether the Model automatically updates in response to changes in its attached [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md). The default value of this property is false.

If setting this value to 'true', note that any change at all in the [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) object set in the [query](../../sdk-15.04.1/QtLocation.RouteModel.md#query-prop) property will trigger a new request to be sent. If you are adjusting many properties of the [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery.md) with autoUpdate enabled, this can generate large numbers of useless (and later discarded) requests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds how many routes the model currently has. Amongst other uses, you can use this value when accessing routes via the [QtLocation::RouteModel::get](../../sdk-15.04.1/QtLocation.RouteModel.md#get-method) -method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the latest error value of the routing request.

-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).NoError - No error has occurred
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).EngineNotSetError - The plugin/service provider used does not support routing
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).CommunicationError - An error occurred while communicating with the service provider
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).ParseError - The response from the service provider was in an unrecognizable format
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).UnknownError - An error occurred which does not fit into any of the other categories

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest routing error. If no error has occurred or the model has been reset, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="measurementSystem-prop"></span><span class="name">measurementSystem</span> : <span class="type">Locale::MeasurementSystem</span></p></td>
</tr>
</tbody>
</table>

This property holds the measurement system which will be used when calculating the route. This property is changed when the [Plugin::locales](../../sdk-15.04.1/QtLocation.Plugin.md#locales-prop) property of [plugin](../../sdk-15.04.1/QtLocation.RouteModel.md#plugin-prop) changes.

If setting this property it must be set after the [plugin](../../sdk-15.04.1/QtLocation.RouteModel.md#plugin-prop) property is set.

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

This property holds the plugin that providers the actual routing service. Note that all plugins do not necessarily provide routing (could for example provide only geocoding or maps).

A valid plugin must be set before the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) can perform any useful operations.

**See also** [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.RouteQuery.md">RouteQuery</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the data of the route request. The primary data are the waypoint coordinates and possible further preferences (means of traveling, things to avoid on route etc).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the current status of the model.

-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Null - No route requests have been issued or [reset](../../sdk-15.04.1/QtLocation.RouteModel.md#reset-method) has been called.
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Ready - Route request(s) have finished successfully.
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Loading - Route request has been issued but not yet finished
-   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Error - Routing error has occurred, details are in [error](../../sdk-15.04.1/QtLocation.RouteModel.md#error-prop) and [errorString](../../sdk-15.04.1/QtLocation.RouteModel.md#errorString-prop)

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels any outstanding requests and clears errors. Model status will be set to either [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Null or [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Ready.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="name">get</span>(<span class="type">int</span>)</p></td>
</tr>
</tbody>
</table>

Returns the Route at given index. Use [count](../../sdk-15.04.1/QtLocation.RouteModel.md#count-prop) property to check the amount of routes available. The routes are indexed from zero, so the accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a warning is issued.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Resets the model. All route data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md).Null

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-method"></span><span class="name">update</span>()</p></td>
</tr>
</tbody>
</table>

Instructs the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md) to update its data. This is most useful when [autoUpdate](../../sdk-15.04.1/QtLocation.RouteModel.md#autoUpdate-prop) is disabled, to force a refresh when the query has been changed.

