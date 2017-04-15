---
Title: QtOrganizer.SortOrder
---
        
SortOrder
=========

<span class="subtitle"></span>
The SortOrder element defines how a list of organizer item should be ordered according to some criteria. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[blankPolicy](#blankPolicy-prop)**** : enumeration
-   ****[caseSensitivity](#caseSensitivity-prop)**** : enumeration
-   ****[detail](#detail-prop)**** : string
-   ****[direction](#direction-prop)**** : enumeration
-   ****[field](#field-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[onSortOrderChanged](#onSortOrderChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

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

This property enumerates the ways in which the sort order interprets blanks when sorting organizer.

-   [SortOrder](index.html).BlanksFirst Considers blank values to evaluate to less than all other values in comparisons.
-   [SortOrder](index.html).BlanksLast Considers blank values to evaluate to greater than all other values in comparisons.

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

-   Qt.CaseInsensitive Sets the case sensitivity of the sort order to insensitivity.
-   Qt.CaseSensitive Sets the case sensitivity of the sort order to sensitivity (default).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which the sorting will be performed to. The value should be the enumeration value of [Detail::type](../QtOrganizer.Detail.md#type-prop).

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

-   Qt.AscendingOrder The items will be sorted by the ascending order (default).
-   Qt.DescendingOrder The items will be sorted by the descending order.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which the sorting will be performed to. The value should be the filld enumeration value defined in each detail element.

**See also** [EventTime](../QtOrganizer.EventTime.md), [JournalTime](../QtOrganizer.JournalTime.md), [TodoTime](../QtOrganizer.TodoTime.md), [TodoProgress](../QtOrganizer.TodoProgress.md), [Reminder](../QtOrganizer.Reminder.md), [AudibleReminder](../QtOrganizer.AudibleReminder.md), [VisualReminder](../QtOrganizer.VisualReminder.md), [EmailReminder](../QtOrganizer.EmailReminder.md), [Comment](../QtOrganizer.Comment.md), [Description](../QtOrganizer.Description.md), [DisplayLabel](../QtOrganizer.DisplayLabel.md), [Guid](../QtOrganizer.Guid.md), [Location](../QtOrganizer.Location.md), [Parent](../QtOrganizer.Parent.md), [Priority](../QtOrganizer.Priority.md), [Recurrence](../QtOrganizer.Recurrence.md), [Timestamp](../QtOrganizer.Timestamp.md), [ItemType](../QtOrganizer.ItemType.md), and [Tag](../QtOrganizer.Tag.md).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onSortOrderChanged-signal"></span><span class="name">onSortOrderChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [SortOrder](index.html)'s properties have been changed.

