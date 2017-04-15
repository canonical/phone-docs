---
Title: QtContacts.RelationshipFilter
---
        
RelationshipFilter
==================

<span class="subtitle"></span>
The RelationshipFilter element provides a filter based around relationship criteria. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[relatedContactId](#relatedContactId-prop)**** : int
-   ****[relatedContactRole](#relatedContactRole-prop)**** : enumeration
-   ****[relationshipType](#relationshipType-prop)**** : variant

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** Relationship, RelationshipModel, QContactRelationshipFilter, and QContactRelationship.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relatedContactId-prop"></span><span class="name">relatedContactId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the contact with whom the tested contact must have a relationship in order for the tested contact to match this filter

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relatedContactRole-prop"></span><span class="name">relatedContactRole</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the role in the relationship with the tested contact that the related contact must play in order for the tested contact to match this filter. The role can be one of:

-   Relationship.First - The contact is the first contact in the relationship.
-   Relationship.Second - The contact is the second contact in the relationship.
-   Relationship.Either - The contact is either the first or second contact in the relationship (default).

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

This property holds the type of relationship that a contact must have in order to match the filter.

**See also** [Relationship::type](../QtContacts.Relationship.md#type-prop).

