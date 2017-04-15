---
Title: QtContacts.SortOrder
---
        
SortOrder
=========

<span class="subtitle"></span>
The SortOrder element defines how a list of contacts should be ordered according to some criteria. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[blankPolicy](#blankPolicy-prop)**** : enumeration
-   ****[caseSensitivity](#caseSensitivity-prop)**** : enumeration
-   ****[detail](#detail-prop)**** : enumeration
-   ****[direction](#direction-prop)**** : enumeration
-   ****[field](#field-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactSortOrder and ContactModel.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blankPolicy-prop"></span><span class="name">blankPolicy</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property enumerates the ways in which the sort order interprets blanks when sorting contacts.

-   [SortOrder](index.html).BlanksFirst - Considers blank values to evaluate to less than all other values in comparisons.
-   [SortOrder](index.html).BlanksLast - Considers blank values to evaluate to greater than all other values in comparisons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caseSensitivity-prop"></span><span class="name">caseSensitivity</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the case sensitivity of the sort order, the value can be one of:

-   Qt.CaseInsensitive
-   Qt.CaseSensitive - (default)

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

This property holds the detail type of the details which will be inspected to perform sorting.

**See also** [ContactDetail::type](../QtContacts.ContactDetail.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the sort order, the value can be one of:

-   Qt.AscendingOrder - (default)
-   Qt.DescendingOrder

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

This property holds the detail field type of the details which will be inspected to perform sorting. For each detail elements, there are predefined field types.

