---
Title: QtContacts.RelationshipModel
---
        
RelationshipModel
=================

<span class="subtitle"></span>
The RelationshipModel provides a model of contact relationships from the contacts store. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](#autoUpdate-prop)**** : bool
-   ****[error](#error-prop)**** : string
-   ****[manager](#manager-prop)**** : string
-   ****[participantId](#participantId-prop)**** : int
-   ****[relationshipType](#relationshipType-prop)**** : variant
-   ****[relationships](#relationships-prop)**** : list&lt;Relationship&gt;
-   ****[role](#role-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[addRelationship](#addRelationship-method)****(relationship)
-   ****[removeRelationship](#removeRelationship-method)****(relationship)

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

The contents of the model can be specified with [participantId](#participantId-prop), [role](#role-prop) and [relationshipType](#relationshipType-prop) properties. Whether the model is automatically updated when the store or filter changes, can be controlled with [RelationshipModel::autoUpdate](#autoUpdate-prop) property.

There are two ways of accessing the relationship data: through model by using views and delegates, or alternatively via [relationships](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtContacts.qtcontacts-overview/#relationships) list property.

At the moment only data role provided by the model is `relationship` ([Relationship](../QtContacts.Relationship.md)). Through that one can access any data provided by the Relationship element.

**See also** Relationship and QContactRelationship.

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

This property indicates whether or not the relationship model should be updated automatically, default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the latest error code returned by the contact manager.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager uri of the contact backend engine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participantId-prop"></span><span class="name">participantId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the participant which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [RelationshipFilter::relatedContactId](../QtContacts.RelationshipFilter.md#relatedContactId-prop) and [RelationshipModel::role](#role-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relationshipType-prop"></span><span class="name">relationshipType</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the relationship type which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [Relationship::type](../QtContacts.Relationship.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relationships-prop"></span><span class="name">relationships</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Relationship.md">Relationship</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of relationships.

**See also** [Relationship](../QtContacts.Relationship.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="role-prop"></span><span class="name">role</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the relationship role which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [RelationshipFilter::relatedContactRole](../QtContacts.RelationshipFilter.md#relatedContactRole-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addRelationship-method"></span><span class="name">addRelationship</span>(<span class="type">relationship</span>)</p></td>
</tr>
</tbody>
</table>

Addes the given *relationship* to the backend store.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeRelationship-method"></span><span class="name">removeRelationship</span>(<span class="type">relationship</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given *relationship* from the backend store.

