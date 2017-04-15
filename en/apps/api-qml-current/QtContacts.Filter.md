---
Title: QtContacts.Filter
---
        
Filter
======

<span class="subtitle"></span>
The Filter element is used as a property of ContactModel, to allow selection of contacts which have certain details or properties. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[type](#type-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type value of this filter. It can be one of:

-   Filter.DefaultFilter - A filter which matches everything (default).
-   Filter.[InvalidFilter](../QtContacts.InvalidFilter.md) - An invalid filter which matches nothing.
-   Filter.[DetailFilter](../QtContacts.DetailFilter.md) - A filter which matches contacts containing one or more details of a particular definition with a particular value.
-   Filter.[DetailRangeFilter](../QtContacts.DetailRangeFilter.md) - A filter which matches contacts containing one or more details of a particular definition whose values are within a particular range.
-   Filter.[ChangeLogFilter](../QtContacts.ChangeLogFilter.md) - A filter which matches contacts whose timestamps have been updated since some particular date and time.
-   Filter.[ActionFilter](../QtContacts.ActionFilter.md) - A filter which matches contacts for which a particular action is available, or which contain a detail with a particular value for which a particular action is available.
-   Filter.[RelationshipFilter](../QtContacts.RelationshipFilter.md) - A filter which matches contacts which participate in a particular type of relationship, or relationship with a specified contact.
-   Filter.[IntersectionFilter](../QtContacts.IntersectionFilter.md) - A filter which matches all contacts that are matched by all filters it includes.
-   Filter.[UnionFilter](../QtContacts.UnionFilter.md) - A filter which matches any contact that is matched by any of the filters it includes.
-   Filter.[IdFilter](../QtContacts.IdFilter.md) - A filter which matches any contact whose local id is contained in a particular list of contact local ids.

