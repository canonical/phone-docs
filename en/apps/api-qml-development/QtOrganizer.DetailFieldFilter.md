---
Title: QtOrganizer.DetailFieldFilter
---
        
DetailFieldFilter
=================

<span class="subtitle"></span>
The DetailFieldFilter element provides a filter based around a detail value criterion. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](#detail-prop)**** : enum
-   ****[field](#field-prop)**** : enum
-   ****[matchFlags](#matchFlags-prop)**** : enumeration
-   ****[value](#value-prop)**** : variant

<span id="signals"></span>
Signals
-------

-   ****[onFilterChanged](#onFilterChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Simple example how to utilize [DetailFieldFilter](index.html) element together with [OrganizerModel](../QtOrganizer.OrganizerModel.md) and ListView elements:

``` cpp
Rectangle {
    height: 400; width: 400;
    OrganizerModel{
        id: organizer
        startPeriod: "2009-01-01"
        endPeriod: "2012-12-31"
        filter: todoFilter
    }
    DetailFieldFilter {
        id: todoFilter
        detail: Detail.Type
        field: Type.FieldType
        value: Type.Todo
    }
    ListView {
        width: parent.width; height: parent.height;
        model: organizer.items
        delegate: Text {text: displayLabel}
    }
}
```

**See also** QOrganizerItemDetailFieldFilter.

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

This property holds the detail field type of which the detail field filter will be matched to. The value should be the filld enumeration value defined in each detail element.

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

This property holds the semantics of the value matching criterion. The valid match flags include:

-   MatchExactly - Performs QVariant-based matching (default).
-   MatchContains - The search term is contained in the item.
-   MatchStartsWith - The search term matches the start of the item.
-   MatchEndsWith - The search term matches the end of the item.
-   MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the `MatchCaseSensitive` flag is also specified.
-   MatchCaseSensitive - The search is case sensitive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the value criterion of the detail field filter.

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

