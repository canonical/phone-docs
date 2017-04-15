---
Title: QtLocation.ContactDetails
---
        
ContactDetails
==============

<span class="subtitle"></span>
The ContactDetails type holds contact details for a Place. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="methods"></span>
Methods
-------

-   variant ****[keys](../../sdk-15.04.1/QtLocation.ContactDetails.md#keys-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetails.md) type is a map of [ContactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md) objects. To access contact details in the map use the [keys()](../../sdk-15.04.1/QtLocation.ContactDetails.md#keys-method) method to get the list of keys stored in the map and then use the `[]` operator to access the [ContactDetail](../../sdk-15.04.1/QtLocation.ContactDetail.md) items.

The following keys are defined in the API. [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) implementations are free to define additional keys.

-   phone
-   fax
-   email
-   website

[ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetails.md) instances are only ever used in the context of [Places](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). It is not possible to create a [ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetails.md) instance directly or re-assign [ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetails.md) instances to [Places](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). Modification of [ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetails.md) can only be accomplished via Javascript.

<span id="examples"></span>
Examples
--------

The following example shows how to access all [ContactDetails](../../sdk-15.04.1/QtLocation.ContactDetail.md) and print them to the console:

``` qml
import QtPositioning 5.2
import QtLocation 5.3
function printContactDetails(contactDetails) {
    var keys = contactDetails.keys();
    for (var i = 0; i < keys.length; ++i) {
        var contactList = contactDetails[keys[i]];
        for (var j = 0; j < contactList.length; ++j) {
            console.log(contactList[j].label + ": " + contactList[j].value);
        }
    }
}
```

The returned list of contact details is an object list and so can be used directly as a data model. For example, the following demonstrates how to display a list of contact phone numbers in a list view:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: place.contactDetails.phone;
    delegate: Text { text: modelData.label + ": " + modelData.value }
}
```

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

Returns an array of contact detail keys currently stored in the map.

