---
Title: QtLocation.Icon
---
        
Icon
====

<span class="subtitle"></span>
The Icon type represents an icon image source which can have multiple sizes. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[icon](../../sdk-15.04.1/QtLocation.Icon.md#icon-prop)**** : QPlaceIcon
-   ****[parameters](../../sdk-15.04.1/QtLocation.Icon.md#parameters-prop)**** : Object
-   ****[plugin](../../sdk-15.04.1/QtLocation.Icon.md#plugin-prop)**** : Plugin

<span id="methods"></span>
Methods
-------

-   url ****[url](../../sdk-15.04.1/QtLocation.Icon.md#url-method)****(size *size*)

<span id="details"></span>
Detailed Description
--------------------

The Icon type can be used in conjunction with an Image type to display an icon. The [url()](../../sdk-15.04.1/QtLocation.Icon.md#url-method) function is used to construct an icon URL of a requested size, the icon which most closely matches the requested size is returned.

The Icon type also has a parameters map which is a set of key value pairs. The precise keys to use depend on the [plugin](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters) being used. The parameters map is used by the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) to determine which URL to return.

In the case where an icon can only possibly have one image URL, the parameter key of `"singleUrl"` can be used with a QUrl value. Any Icon with this parameter will always return the specified URL regardless of the requested icon size and not defer to any Plugin.

The following code shows how to display a 64x64 pixel icon:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
Image {
    source: icon.url(Qt.size(64, 64))
}
```

Alternatively, a default sized icon can be specified like so:

``` qml
    source: icon.url()
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type">QPlaceIcon</span></p></td>
</tr>
</tbody>
</table>

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameters-prop"></span><span class="name">parameters</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the parameters of the icon and is a map. These parameters are used by the plugin to return the appropriate URL when [url()](../../sdk-15.04.1/QtLocation.Icon.md#url-method) is called and to specify locations to save to when saving icons.

Consult the [plugin documentation](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters) for what parameters are supported and how they should be used.

Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the parameters in QML, assignment of parameters keys and values can only be accomplished by JavaScript.

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

The property holds the plugin that is responsible for managing this icon.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-method"></span><span class="type"><a href="../../sdk-15.04.1/QtLocation.Icon.md#url-method">url</a></span> <span class="name">url</span>(<span class="type">size</span> <em>size</em>)</p></td>
</tr>
</tbody>
</table>

Returns a URL for the icon image that most closely matches the given *size*.

If no plugin has been assigned to the icon, and the parameters do not contain the 'singleUrl' key, a default constructed URL is returned.

