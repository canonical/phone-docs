---
Title: QtOrganizer.DetailRangeFilter
---
        
DetailRangeFilter
=================

<span class="subtitle"></span>
The DetailRangeFilter element provides a filter based around a detail value range criterion. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](#detail-prop)**** : enum
-   ****[field](#field-prop)**** : enum
-   ****[matchFlags](#matchFlags-prop)**** : enumeration
-   ****[max](#max-prop)**** : variant
-   ****[min](#min-prop)**** : variant
-   ****[rangeFlags](#rangeFlags-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onFilterChanged](#onFilterChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**See also** QOrganizerItemDetailRangeFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which the detail filter will be matched to. The value shuold be the enumeration value of [Detail::type](../QtOrganizer.Detail.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which the detail filter will be matched to. The value should be the filld enumeration value defined in each detail element.

**See also** [EventTime](../QtOrganizer.EventTime.md), [JournalTime](../QtOrganizer.JournalTime.md), [TodoTime](../QtOrganizer.TodoTime.md), [TodoProgress](../QtOrganizer.TodoProgress.md), [Reminder](../QtOrganizer.Reminder.md), [AudibleReminder](../QtOrganizer.AudibleReminder.md), [VisualReminder](../QtOrganizer.VisualReminder.md), [EmailReminder](../QtOrganizer.EmailReminder.md), [Comment](../QtOrganizer.Comment.md), [Description](../QtOrganizer.Description.md), [DisplayLabel](../QtOrganizer.DisplayLabel.md), [Guid](../QtOrganizer.Guid.md), [Location](../QtOrganizer.Location.md), [Parent](../QtOrganizer.Parent.md), [Priority](../QtOrganizer.Priority.md), [Recurrence](../QtOrganizer.Recurrence.md), [Timestamp](../QtOrganizer.Timestamp.md), [ItemType](../QtOrganizer.ItemType.md), and [Tag](../QtOrganizer.Tag.md).

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

**See also** [DetailFieldFilter::matchFlags](../QtOrganizer.DetailFieldFilter.md#matchFlags-prop).

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

This property holds a set of flags which defines the boundary condition semantics of the value range criterion. The valid range flags include:

-   [DetailRangeFilter](index.html).IncludeLower
-   [DetailRangeFilter](index.html).IncludeUpper
-   [DetailRangeFilter](index.html).ExcludeLower
-   [DetailRangeFilter](index.html).ExcludeUpper

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

**See also** [QtOrganizer5::Filter::onFilterChanged](../QtOrganizer.Filter.md#onFilterChanged-signal).

