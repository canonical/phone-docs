---
Title: QtContacts.Relationship
---
        
Relationship
============

<span class="subtitle"></span>
The Relationship element describes a one-to-one relationship between a locally-stored contact and another (possibly remote) contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[first](#first-prop)**** : int
-   ****[second](#second-prop)**** : int
-   ****[type](#type-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactRelationship and RelationshipModel.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="first-prop"></span><span class="name">first</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the locally-stored contact which has a relationship of the given type with the second contact.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="second-prop"></span><span class="name">second</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the contact with which the first contact has a relationship of the given type.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of relationship which the source contact has with the destination contacts. The value for this property can be one of:

-   HasMember
-   Aggregates
-   IsSameAs
-   HasAssistant
-   HasManager
-   HasSpouse

or any other customized relationship type string.

