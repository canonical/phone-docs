---
Title: QtContacts.DetailRangeFilter
---
        
DetailRangeFilter
=================

<span class="subtitle"></span>
The DetailRangeFilter element provides a filter based around a detail value range criterion. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](#detail-prop)**** : enumeration
-   ****[field](#field-prop)**** : int
-   ****[matchFlags](#matchFlags-prop)**** : enumeration
-   ****[max](#max-prop)**** : variant
-   ****[min](#min-prop)**** : variant
-   ****[rangeFlags](#rangeFlags-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailRangeFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which details will be matched to.

**See also** [ContactDetail::type](../QtContacts.ContactDetail.md#type-prop) and [DetailFilter::detail](../QtContacts.DetailFilter.md#detail-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.

**See also** [DetailFilter::field](../QtContacts.DetailFilter.md#field-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matchFlags-prop"></span><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.

**See also** [DetailFilter::matchFlags](../QtContacts.DetailFilter.md#matchFlags-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="max-prop"></span><span class="name">max</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the upper bound of the value range criterion. By default, there is no upper bound.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="min-prop"></span><span class="name">min</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the lower bound of the value range criterion. By default, there is no lower bound.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rangeFlags-prop"></span><span class="name">rangeFlags</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds a set of flags which defines the boundary condition semantics of the value range criterion.The valid range flags include:

-   [DetailRangeFilter](index.html).IncludeLower
-   [DetailRangeFilter](index.html).IncludeUpper
-   [DetailRangeFilter](index.html).ExcludeLower
-   [DetailRangeFilter](index.html).ExcludeUpper

