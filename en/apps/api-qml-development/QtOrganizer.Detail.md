---
Title: QtOrganizer.Detail
---
        
Detail
======

<span class="subtitle"></span>
The Detail element represents a single, complete detail about a organizer item. More...

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

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[removeValue](#removeValue-method)****(field)
-   bool ****[setValue](#setValue-method)****(field, value)
-   variant ****[value](#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

**See also** QOrganizerItemDetail.

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

This property holds the type of the detail and is read only. It can be one of:

-   Detail.Undefined
-   Detail.Classification
-   Detail.Comment
-   Detail.Description
-   Detail.[DisplayLabel](../QtOrganizer.DisplayLabel.md)
-   Detail.[ItemType](../QtOrganizer.ItemType.md)
-   Detail.Guid
-   Detail.Location
-   Detail.Parent
-   Detail.Priority
-   Detail.Recurrence
-   Detail.Tag
-   Detail.Timestamp
-   Detail.Version
-   Detail.Reminder
-   Detail.[AudibleReminder](../QtOrganizer.AudibleReminder.md)
-   Detail.[EmailReminder](../QtOrganizer.EmailReminder.md)
-   Detail.[VisualReminder](../QtOrganizer.VisualReminder.md)
-   Detail.[ExtendedDetail](../QtOrganizer.ExtendedDetail.md)
-   Detail.[EventAttendee](../QtOrganizer.EventAttendee.md)
-   Detail.[EventRsvp](../QtOrganizer.EventRsvp.md)
-   Detail.[EventTime](../QtOrganizer.EventTime.md)
-   Detail.[JournalTime](../QtOrganizer.JournalTime.md)
-   Detail.[TodoTime](../QtOrganizer.TodoTime.md)
-   Detail.[TodoProgress](../QtOrganizer.TodoProgress.md)

**See also** [Classification](../QtOrganizer.Classification.md), [Comment](../QtOrganizer.Comment.md), [Description](../QtOrganizer.Description.md), [DisplayLabel](../QtOrganizer.DisplayLabel.md), [ItemType](../QtOrganizer.ItemType.md), [Guid](../QtOrganizer.Guid.md), [Location](../QtOrganizer.Location.md), [Parent](../QtOrganizer.Parent.md), [Priority](../QtOrganizer.Priority.md), [Recurrence](../QtOrganizer.Recurrence.md), [Tag](../QtOrganizer.Tag.md), [Timestamp](../QtOrganizer.Timestamp.md), [Version](../QtOrganizer.Version.md), [Reminder](../QtOrganizer.Reminder.md), [AudibleReminder](../QtOrganizer.AudibleReminder.md), [EmailReminder](../QtOrganizer.EmailReminder.md), [VisualReminder](../QtOrganizer.VisualReminder.md), [ExtendedDetail](../QtOrganizer.ExtendedDetail.md), [EventAttendee](../QtOrganizer.EventAttendee.md), [EventRsvp](../QtOrganizer.EventRsvp.md), [EventTime](../QtOrganizer.EventTime.md), [JournalTime](../QtOrganizer.JournalTime.md), [TodoTime](../QtOrganizer.TodoTime.md), and [TodoProgress](../QtOrganizer.TodoProgress.md).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onDetailChanged-signal"></span><span class="name">onDetailChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the Details's or child element's (like [EventTime](../QtOrganizer.EventTime.md), [DisplayLabel](../QtOrganizer.DisplayLabel.md) etc) properties have been changed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeValue-method"></span><span class="type">bool</span> <span class="name">removeValue</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

Removes the value stored in this detail for the given *field*. Returns true if a value was stored for the given key and the operation succeeded, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setValue-method"></span><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Inserts *value* into the detail for the given *key* if value is valid. If value is invalid, removes the field with the given key from the detail. Returns true if the given value was set for the key (if the value was valid), or if the given key was removed from detail (if the value was invalid), otherwise returns false if the key was unable to be removed (and the value was invalid).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-method"></span><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

Returns the value stored in this detail for the given *field*, or an empty variant if not available.

