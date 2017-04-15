---
Title: QtLocation.ExtendedAttributes
---
        
ExtendedAttributes
==================

<span class="subtitle"></span>
The ExtendedAttributes type holds additional data about a Place. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="signals"></span>
Signals
-------

-   void ****[valueChanged](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md#valueChanged-signal)****(string *key*, variant *value*)

<span id="methods"></span>
Methods
-------

-   variant ****[keys](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md#keys-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md) type is a map of [PlaceAttributes](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#placeattribute). To access attributes in the map use the [keys()](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md#keys-method) method to get the list of keys stored in the map and use the `[]` operator to access the [PlaceAttribute](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#placeattribute) items.

The following are standard keys that are defined by the API. [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) implementations are free to define additional keys. Custom keys should be qualified by a unique prefix to avoid clashes.

| key                                                | description                                                                                          |
|----------------------------------------------------|------------------------------------------------------------------------------------------------------|
| openingHours                                       | The trading hours of the place                                                                       |
| payment                                            | The types of payment the place accepts, for example visa, mastercard.                                |
| x\_provider                                        | The name of the provider that a place is sourced from                                                |
| x\_id\_&lt;provider&gt; (for example x\_id\_nokia) | An alternative identifier which identifies the place from the perspective of the specified provider. |

Some plugins may not support attributes at all, others may only support a certain set, others still may support a dynamically changing set of attributes over time or even allow attributes to be arbitrarily defined by the client application. The attributes could also vary on a place by place basis, for example one place may have opening hours while another does not. Consult the [plugin references](../../sdk-15.04.1/QtLocation.qtlocation-index.md#plugin-references-and-parameters) for details.

Some attributes may not be intended to be readable by end users, the label field of such attributes is empty to indicate this fact.

**Note:** [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md) instances are only ever used in the context of [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place)s. It is not possible to create an [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md) instance directly or re-assign a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place)'s [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md) property. Modification of [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes.md) can only be accomplished via Javascript.

The following example shows how to access all [PlaceAttributes](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#placeattribute) and print them to the console:

``` qml
import QtPositioning 5.2
import QtLocation 5.3
function printExtendedAttributes(extendedAttributes) {
    var keys = extendedAttributes.keys();
    for (var i = 0; i < keys.length; ++i) {
        var key = keys[i];
        if (extendedAttributes[key].label !== "")
            console.log(extendedAttributes[key].label + ": " + extendedAttributes[key].text);
    }
}
```

The following example shows how to assign and modify an attribute:

``` qml
    //assign a new attribute to a place
    var smokingAttrib = Qt.createQmlObject('import QtLocation 5.3; PlaceAttribute {}', place);
    smokingAttrib.label = "Smoking Allowed"
    smokingAttrib.text = "No"
    place.extendedAttributes.smoking = smokingAttrib;
    //modify an existing attribute
    place.extendedAttributes.smoking.text = "Yes"
```

**See also** [PlaceAttribute](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#placeattribute) and QQmlPropertyMap.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valueChanged-signal"></span><span class="type">void</span> <span class="name">valueChanged</span>(<span class="type">string</span> <em>key</em>, <span class="type">variant</span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the set of attributes changes. *key* is the key corresponding to the *value* that was changed.

The corresponding handler is `onValueChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-method"></span><span class="type">variant</span> <span class="name">keys</span>()</p></td>
</tr>
</tbody>
</table>

Returns an array of place attribute keys currently stored in the map.

