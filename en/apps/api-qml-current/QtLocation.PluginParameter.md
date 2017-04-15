---
Title: QtLocation.PluginParameter
---
        
PluginParameter
===============

<span class="subtitle"></span>
The PluginParameter type describes a parameter to a Plugin. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[name](../../sdk-15.04.1/QtLocation.PluginParameter.md#name-prop)**** : string
-   ****[value](../../sdk-15.04.1/QtLocation.PluginParameter.md#value-prop)**** : QVariant

<span id="details"></span>
Detailed Description
--------------------

The [PluginParameter](../../sdk-15.04.1/QtLocation.PluginParameter.md) object is used to provide a parameter of some kind to a Plugin. Typically these parameters contain details like an application token for access to a service, or a proxy server to use for network access.

To set such a parameter, declare a [PluginParameter](../../sdk-15.04.1/QtLocation.PluginParameter.md) inside a [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) object, and give it [name](../../sdk-15.04.1/QtLocation.PluginParameter.md#name-prop) and [value](../../sdk-15.04.1/QtLocation.PluginParameter.md#value-prop) properties. A list of valid parameter names for each plugin is available from the [plugin reference pages](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters).

<span id="example-usage"></span>
### Example Usage

The following example shows an instantiation of the [Nokia](../../sdk-15.04.1/QtLocation.location-plugin-nokia.md) plugin with a mapping API *app\_id* and *token* pair specific to the application.

``` cpp
Plugin {
    name: "nokia"
    PluginParameter { name: "app_id"; value: "EXAMPLE_API_ID" }
    PluginParameter { name: "token"; value: "EXAMPLE_TOKEN_123" }
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
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the plugin parameter as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">QVariant</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the plugin parameter which support different types of values (variant).

