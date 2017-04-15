---
Title: QtQuick.KeyNavigation
---
        
KeyNavigation
=============

<span class="subtitle"></span>
Supports key navigation by arrow keys More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[backtab](#backtab-prop)**** : Item
-   ****[down](#down-prop)**** : Item
-   ****[left](#left-prop)**** : Item
-   ****[priority](#priority-prop)**** : enumeration
-   ****[right](#right-prop)**** : Item
-   ****[tab](#tab-prop)**** : Item
-   ****[up](#up-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

Key-based user interfaces commonly allow the use of arrow keys to navigate between focusable items. The [KeyNavigation](index.html) attached property enables this behavior by providing a convenient way to specify the item that should gain focus when an arrow or tab key is pressed.

The following example provides key navigation for a 2x2 grid of items:

``` qml
import QtQuick 2.0
Grid {
    width: 100; height: 100
    columns: 2
    Rectangle {
        id: topLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        focus: true
        KeyNavigation.right: topRight
        KeyNavigation.down: bottomLeft
    }
    Rectangle {
        id: topRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.left: topLeft
        KeyNavigation.down: bottomRight
    }
    Rectangle {
        id: bottomLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.right: bottomRight
        KeyNavigation.up: topLeft
    }
    Rectangle {
        id: bottomRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.left: bottomLeft
        KeyNavigation.up: topRight
    }
}
```

The top-left item initially receives focus by setting [focus](../QtQuick.Item.md#focus-prop) to `true`. When an arrow key is pressed, the focus will move to the appropriate item, as defined by the value that has been set for the [KeyNavigation](index.html) [left](#left-prop), [right](#right-prop), [up](#up-prop) or [down](#down-prop) properties.

Note that if a [KeyNavigation](index.html) attached property receives the key press and release events for a requested arrow or tab key, the event is accepted and does not propagate any further.

By default, [KeyNavigation](index.html) receives key events after the item to which it is attached. If the item accepts the key event, the [KeyNavigation](index.html) attached property will not receive an event for that key. Setting the [priority](#priority-prop) property to `KeyNavigation.BeforeItem` allows the event to be used for key navigation before the item, rather than after.

If the item to which the focus is switching is not enabled or visible, an attempt will be made to skip this item and focus on the next. This is possible if there are a chain of items with the same [KeyNavigation](index.html) handler. If multiple items in a row are not enabled or visible, they will also be skipped.

[KeyNavigation](index.html) will implicitly set the other direction to return focus to this item. So if you set [left](#left-prop) to another item, [right](#right-prop) will be set on that item's [KeyNavigation](index.html) to set focus back to this item. However, if that item's [KeyNavigation](index.html) has had right explicitly set then no change will occur. This means that the example above could achieve the same behavior without specifying [KeyNavigation](index.html).right or [KeyNavigation](index.html).down for any of the items.

**See also** [Keys attached property](../QtQuick.Keys.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backtab-prop"></span><span class="name">backtab</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="down-prop"></span><span class="name">down</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="left-prop"></span><span class="name">left</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines whether the keys are processed before or after the attached item's own key handling.

-   [KeyNavigation](index.html).BeforeItem - process the key events before normal item key processing. If the event is used for key navigation, it will be accepted and will not be passed on to the item.
-   [KeyNavigation](index.html).AfterItem (default) - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the [KeyNavigation](index.html) attached property handler.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="right-prop"></span><span class="name">right</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tab-prop"></span><span class="name">tab</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="up-prop"></span><span class="name">up</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

