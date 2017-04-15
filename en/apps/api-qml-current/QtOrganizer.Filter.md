---
Title: QtOrganizer.Filter
---
        
Filter
======

<span class="subtitle"></span>
The Filter element is used to filter items made available through a backend. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[type](#type-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onFilterChanged](#onFilterChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** QOrganizerItemFilter.

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

-   Filter.DefaultFilter A filter which matches everything (default).
-   Filter.[InvalidFilter](../QtOrganizer.InvalidFilter.md) An invalid filter which matches nothing.
-   Filter.[IntersectionFilter](../QtOrganizer.IntersectionFilter.md) A filter which matches all organizer items that are matched by all filters it includes.
-   Filter.[UnionFilter](../QtOrganizer.UnionFilter.md) A filter which matches any organizer item that is matched by any of the filters it includes.
-   Filter.[CollectionFilter](../QtOrganizer.CollectionFilter.md) A filter which matches any organizer item that is matched by collection.
-   Filter.[DetailFilter](../QtOrganizer.DetailFilter.md) A filter which matches organizer items containing exactly one given detail.
-   Filter.[DetailFieldFilter](../QtOrganizer.DetailFieldFilter.md) A filter which matches organizer items containing one or more details of a particular type with a particular field having a particular value.
-   Filter.[DetailRangeFilter](../QtOrganizer.DetailRangeFilter.md) A filter which matches organizer items containing one or more details of a particular type whose values are within a particular range.
-   Filter.[IdFilter](../QtOrganizer.IdFilter.md) A filter which matches any organizer item whose ID is contained in a particular list of organizer item IDs.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onFilterChanged-signal"></span><span class="name">onFilterChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the Filter's or child element's (like [DetailFilter](../QtOrganizer.DetailFilter.md), [CollectionFilter](../QtOrganizer.CollectionFilter.md) etc) properties have been changed.

