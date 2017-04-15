---
Title: Ubuntu.Components.ListItemDrag
---
        
ListItemDrag
============

<span class="subtitle"></span>
Provides information about a ListItem drag event. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[accept](#accept-prop)**** : bool
-   ****[from](#from-prop)**** : int
-   ****[maximumIndex](#maximumIndex-prop)**** : int
-   ****[minimumIndex](#minimumIndex-prop)**** : int
-   ****[status](#status-prop)**** : enum
-   ****[to](#to-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The object cannot be instantiated and it is passed as parameter to [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems.md#dragUpdated-signal) attached signal. Developer can decide whether to accept or restrict the dragging event based on the input provided by this event.

The direction of the drag can be found via the [status](#status-prop) property and the source and destination the drag can be applied via [from](#from-prop) and [to](#to-prop) properties. The allowed directions can be configured through [minimumIndex](#minimumIndex-prop) and [maximumIndex](#maximumIndex-prop) properties, and the event acceptance through [accept](#accept-prop) property. If the event is not accepted, the drag action will be considered as cancelled.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-prop"></span><span class="name">accept</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property can be used to dismiss the event. By default its value is true, meaning the drag event is accepted. The value of false blocks the drag event to be handled by the [ListItem](../Ubuntu.Components.ListItem.md)'s dragging mechanism.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">from</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Specifies the source index the [ListItem](../Ubuntu.Components.ListItem.md) is dragged from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumIndex-prop"></span><span class="name">maximumIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumIndex-prop"></span><span class="name">minimumIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties configure the minimum and maximum indexes the item can be dragged. The properties can be set in [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems.md#dragUpdated-signal) signal. A negative value means no restriction defined on the dragging interval side.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The property provides information about the status of the drag. Its value can be one of the following:

-   **ListItemDrag.Started** - indicates that the dragging is about to start, giving opportunities to define restrictions on the dragging indexes, like [minimumIndex](#minimumIndex-prop), [maximumIndex](#maximumIndex-prop)
-   **ListItemDrag.Moving** - the dragged item is moved upwards or downwards in the [ListItem](../Ubuntu.Components.ListItem.md)
-   **ListItemDrag.Dropped** - indicates that the drag event is finished, and the dragged item is about to be dropped to the given position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">to</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Specifies the index the [ListItem](../Ubuntu.Components.ListItem.md) is dragged to or dropped.

