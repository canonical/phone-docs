---
Title: QtLocation.Plugin
---
        
Plugin
======

<span class="subtitle"></span>
The Plugin type describes a Location based services plugin. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[allowExperimental](../../sdk-15.04.1/QtLocation.Plugin.md#allowExperimental-prop)**** : bool
-   ****[availableServiceProviders](../../sdk-15.04.1/QtLocation.Plugin.md#availableServiceProviders-prop)**** : stringlist
-   ****[isAttached](../../sdk-15.04.1/QtLocation.Plugin.md#isAttached-prop)**** : bool
-   ****[locales](../../sdk-15.04.1/QtLocation.Plugin.md#locales-prop)**** : stringlist
-   ****[name](../../sdk-15.04.1/QtLocation.Plugin.md#name-prop)**** : string
-   ****[parameters](../../sdk-15.04.1/QtLocation.Plugin.md#parameters-prop)**** : list&lt;PluginParameter&gt;
-   ****[preferred](../../sdk-15.04.1/QtLocation.Plugin.md#preferred-prop)**** : stringlist
-   ****[required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   bool ****[supportsGeocoding](../../sdk-15.04.1/QtLocation.Plugin.md#supportsGeocoding-method)****(GeocodingFeatures *features*)
-   bool ****[supportsMapping](../../sdk-15.04.1/QtLocation.Plugin.md#supportsMapping-method)****(MappingFeatures *features*)
-   bool ****[supportsPlaces](../../sdk-15.04.1/QtLocation.Plugin.md#supportsPlaces-method)****(PlacesFeatures *features*)
-   bool ****[supportsRouting](../../sdk-15.04.1/QtLocation.Plugin.md#supportsRouting-method)****(RoutingFeatures *features*)

<span id="details"></span>
Detailed Description
--------------------

The Plugin type is used to declaratively specify which available GeoServices plugin should be used for various tasks in the Location API. Plugins are used by [Map](../../sdk-15.04.1/QtLocation.Map.md), [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel.md), and [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel.md) types, as well as a variety of others.

Plugins recognized by the system have a [name](../../sdk-15.04.1/QtLocation.Plugin.md#name-prop) property, a simple string normally indicating the name of the service that the Plugin retrieves data from. They also have a variety of features, which can be test for using the [supportsRouting()](../../sdk-15.04.1/QtLocation.Plugin.md#supportsRouting-method), [supportsGeocoding()](../../sdk-15.04.1/QtLocation.Plugin.md#supportsGeocoding-method), [supportsMapping()](../../sdk-15.04.1/QtLocation.Plugin.md#supportsMapping-method) and [supportsPlaces()](../../sdk-15.04.1/QtLocation.Plugin.md#supportsPlaces-method) methods.

When a Plugin object is created, it is "detached" and not associated with any actual service plugin. Once it has received information via setting its [name](../../sdk-15.04.1/QtLocation.Plugin.md#name-prop), [preferred](../../sdk-15.04.1/QtLocation.Plugin.md#preferred-prop), or [required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop) properties, it will choose an appropriate service plugin to attach to. Plugin objects can only be attached once; to use multiple plugins, create multiple Plugin objects.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a Plugin object being created with the [required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop) and [preferred](../../sdk-15.04.1/QtLocation.Plugin.md#preferred-prop) properties set. This Plugin will attach to the first plugin found plugin that supports both mapping and geocoding, and will prefer plugins named "nokia" or "foo" to any others.

``` cpp
Plugin {
    id: plugin
    preferred: ["nokia", "foo"]
    required: Plugin.AnyMappingFeatures | Plugin.AnyGeocodingFeatures
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
<td><p><span id="allowExperimental-prop"></span><span class="name">allowExperimental</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if experimental plugins can be used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableServiceProviders-prop"></span><span class="name">availableServiceProviders</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of all available service plugins' names. This can be used to manually enumerate the available plugins if the control provided by [name](../../sdk-15.04.1/QtLocation.Plugin.md#name-prop) and [required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop) is not sufficient for your needs.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isAttached-prop"></span><span class="name">isAttached</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the Plugin is attached to another Plugin.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locales-prop"></span><span class="name">locales</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property contains an ordered list of preferred plugin locales. If the first locale cannot be accommodated, then the backend falls back to using the second, and so on. By default the locales property contains the system locale.

The locales are specified as strings which have the format "language\[\_script\]\[\_country\]" or "C", where:

-   language is a lowercase, two-letter, ISO 639 language code,
-   script is a titlecase, four-letter, ISO 15924 script code,
-   country is an uppercase, two- or three-letter, ISO 3166 country code (also "419" as defined by United Nations),
-   the "C" locale is identical in behavior to English/UnitedStates as per QLocale

If the first specified locale cannot be accommodated, the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) falls back to the next and so forth. Some [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) backends may not support a set of locales which are rigidly defined. An arbitrary example is that some [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place)'s in France could have French and English localizations, while certain areas in America may only have the English localization available. In the above scenario, the set of supported locales is context dependent on the search location.

If the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) cannot accommodate any of the preferred locales, the manager falls back to using a supported language that is backend specific.

For [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin)'s that do not support locales, the locales list is always empty.

The following code demonstrates how to set a single and multiple locales:

``` qml
//single locale
Plugin {
    locales: "en_US"
}
//multiple locales
Plugin {
    locales: ["fr_FR","en_US"]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the plugin. Setting this property will cause the Plugin to only attach to a plugin with exactly this name. The value of [required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameters-prop"></span><span class="qmldefault">default</span><span class="name">parameters</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.1/QtLocation.PluginParameter.md">PluginParameter</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of plugin parameters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferred-prop"></span><span class="name">preferred</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property contains an ordered list of preferred plugin names, which will be checked for the required features set in [required](../../sdk-15.04.1/QtLocation.Plugin.md#required-prop) before any other available plugins are checked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="required-prop"></span><span class="name">required</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property contains the set of features that will be required by the Plugin object when choosing which service plugin to attach to. If the [name](../../sdk-15.04.1/QtLocation.Plugin.md#name-prop) property is set, this has no effect.

Any of the following values or a bitwise combination of multiple values may be set:

-   Plugin.NoFeatures
-   Plugin.GeocodingFeature
-   Plugin.ReverseGeocodingFeature
-   Plugin.RoutingFeature
-   Plugin.MappingFeature
-   Plugin.AnyPlacesFeature

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsGeocoding-method"></span><span class="type">bool</span> <span class="name">supportsGeocoding</span>(<span class="type">GeocodingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                          | Description                                                          |
|----------------------------------|----------------------------------------------------------------------|
| Plugin.NoGeocodingFeatures       | No geocoding features are supported.                                 |
| Plugin.OnlineGeocodingFeature    | Online geocoding is supported.                                       |
| Plugin.OfflineGeocodingFeature   | Offline geocoding is supported.                                      |
| Plugin.ReverseGeocodingFeature   | Reverse geocoding is supported.                                      |
| Plugin.LocalizedGeocodingFeature | Supports returning geocoding results with localized addresses.       |
| Plugin.AnyGeocodingFeatures      | Matches a geo service provider that provides any geocoding features. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsMapping-method"></span><span class="type">bool</span> <span class="name">supportsMapping</span>(<span class="type">MappingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                        | Description                                                        |
|--------------------------------|--------------------------------------------------------------------|
| Plugin.NoMappingFeatures       | No mapping features are supported.                                 |
| Plugin.OnlineMappingFeature    | Online mapping is supported.                                       |
| Plugin.OfflineMappingFeature   | Offline mapping is supported.                                      |
| Plugin.LocalizedMappingFeature | Supports returning localized map data.                             |
| Plugin.AnyMappingFeatures      | Matches a geo service provider that provides any mapping features. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsPlaces-method"></span><span class="type">bool</span> <span class="name">supportsPlaces</span>(<span class="type">PlacesFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                            | Description                                                             |
|------------------------------------|-------------------------------------------------------------------------|
| Plugin.NoPlacesFeatures            | No places features are supported.                                       |
| Plugin.OnlinePlacesFeature         | Online places is supported.                                             |
| Plugin.OfflinePlacesFeature        | Offline places is supported.                                            |
| Plugin.SavePlaceFeature            | Saving categories is supported.                                         |
| Plugin.RemovePlaceFeature          | Removing or deleting places is supported.                               |
| Plugin.PlaceRecommendationsFeature | Searching for recommended places similar to another place is supported. |
| Plugin.SearchSuggestionsFeature    | Search suggestions is supported.                                        |
| Plugin.LocalizedPlacesFeature      | Supports returning localized place data.                                |
| Plugin.NotificationsFeature        | Notifications of place and category changes is supported.               |
| Plugin.PlaceMatchingFeature        | Supports matching places from two different geo service providers.      |
| Plugin.AnyPlacesFeatures           | Matches a geo service provider that provides any places features.       |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsRouting-method"></span><span class="type">bool</span> <span class="name">supportsRouting</span>(<span class="type">RoutingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                           | Description                                                            |
|-----------------------------------|------------------------------------------------------------------------|
| Plugin.NoRoutingFeatures          | No routing features are supported.                                     |
| Plugin.OnlineRoutingFeature       | Online routing is supported.                                           |
| Plugin.OfflineRoutingFeature      | Offline routing is supported.                                          |
| Plugin.LocalizedRoutingFeature    | Supports returning routes with localized addresses and instructions.   |
| Plugin.RouteUpdatesFeature        | Updating an existing route based on the current position is supported. |
| Plugin.AlternativeRoutesFeature   | Supports returning alternative routes.                                 |
| Plugin.ExcludeAreasRoutingFeature | Supports specifying a areas which the returned route must not cross.   |
| Plugin.AnyRoutingFeatures         | Matches a geo service provider that provides any routing features.     |

