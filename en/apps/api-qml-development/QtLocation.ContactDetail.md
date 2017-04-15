---
Title: QtLocation.ContactDetail
---
        
ContactDetail
=============

<span class="subtitle"></span>
The ContactDetail type holds a contact detail such as a phone number or a website address. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[contactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md#contactDetail-prop)**** : QPlaceContactDetail
-   ****[label](../../sdk-15.04.1/QtLocation.ContactDetail.md#label-prop)**** : string
-   ****[value](../../sdk-15.04.1/QtLocation.ContactDetail.md#value-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The [ContactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md) provides a single detail on how one could contact a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). The [ContactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md) consists of a [label](../../sdk-15.04.1/QtLocation.ContactDetail.md#label-prop), which is a localized string describing the contact method, and a [value](../../sdk-15.04.1/QtLocation.ContactDetail.md#value-prop) representing the actual contact detail.

<span id="examples"></span>
Examples
--------

The following example demonstrates how to assign a single phone number to a place in JavaScript:

``` qml
function writeSingle() {
    var phoneNumber = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    phoneNumber.label = "Phone";
    phoneNumber.value = "555-5555"
    place.contactDetails.phone = phoneNumber;
}
```

The following demonstrates how to assign multiple phone numbers to a place in JavaScript:

``` qml
function writeMultiple() {
    var bob = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    bob.label = "Bob";
    bob.value = "555-5555"
    var alice = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    alice.label = "Alice";
    alice.value = "555-8745"
    var numbers = new Array();
    numbers.push(bob);
    numbers.push(alice);
    place.contactDetails.phone = numbers;
}
```

Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the contact details in QML, it can only be accomplished via JavaScript.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactDetail-prop"></span><span class="name">contactDetail</span> : <span class="type">QPlaceContactDetail</span></p></td>
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
<td><p><span id="label-prop"></span><span class="name">label</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a label describing the contact detail.

The label can potentially be localized. The language is dependent on the entity that sets it, typically this is the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). The [Plugin::locales](../../sdk-15.04.1/QtLocation.Plugin.md#locales-prop) property defines what language is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the contact detail which may be a phone number, an email address, a website url and so on.

