---
Title: Ubuntu.Components.ListItems.Empty
---
        
Empty
=====

<span class="subtitle"></span>
A list item with no contents. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.ListItems 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a>, <a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a>, <a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a>, <a href="Ubuntu.Components.ListItems.Standard.md">Standard</a>, and <a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[backgroundIndicator](#backgroundIndicator-prop)**** : list&lt;Item&gt;
-   ****[confirmRemoval](#confirmRemoval-prop)**** : bool
-   ****[divider](#divider-prop)**** : ThinDivider
-   ****[highlightWhenPressed](#highlightWhenPressed-prop)**** : bool
-   ****[removable](#removable-prop)**** : bool
-   ****[selected](#selected-prop)**** : bool
-   ****[showDivider](#showDivider-prop)**** : bool
-   ****[swipingState](#swipingState-prop)**** : string
-   ****[waitingConfirmationForRemoval](#waitingConfirmationForRemoval-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[itemRemoved](#itemRemoved-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelItemRemoval](#cancelItemRemoval-method)****()

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component instead.** The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using [showDivider](#showDivider-prop)). For specific types of list items, see its subclasses.

The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal [itemRemoved](#itemRemoved-signal) that is fired after all animation is done.

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Item {
    Model {
        id: contactModel
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
        }
    }
    ListView {
         width: 180; height: 200
         model: contactModel
         delegate: ListItem.Empty {
            height: units.gu(6)
            removable: true
            onItemRemoved: contactModel.remove(index)
            Text {
                text: name + " " + number
                anchors.centerIn: parent
            }
        }
    }
}
```

See the documentation of the derived classes of Empty for more examples.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundIndicator-prop"></span><span class="name">backgroundIndicator</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Defines the item background item to be showed during the item swiping

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="confirmRemoval-prop"></span><span class="name">confirmRemoval</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if the item needs confirmation before removing by swiping.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="divider-prop"></span><span class="name">divider</span> : <span class="type"><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></span></p></td>
</tr>
</tbody>
</table>

Exposes our the bottom line divider.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightWhenPressed-prop"></span><span class="name">highlightWhenPressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in [ListItem](../Ubuntu.Components.ListItem.md).Standard which can have a split).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removable-prop"></span><span class="name">removable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if this item can be removed or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the list item is selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDivider-prop"></span><span class="name">showDivider</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set to show or hide the thin bottom divider line (drawn by the [ThinDivider](../Ubuntu.Components.ListItems.ThinDivider.md) component). This line is shown by default except in cases where this item is the delegate of a [ListView](../../sdk-14.10/QtQuick.ListView.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipingState-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">swipingState</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The current swiping state ("SwipingRight" or "")

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitingConfirmationForRemoval-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">waitingConfirmationForRemoval</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if the item is waiting for the user interaction during the swipe to delete

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemRemoved-signal"></span><span class="name">itemRemoved</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when the item is removed from the list

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelItemRemoval-method"></span><span class="name">cancelItemRemoval</span>()</p></td>
</tr>
</tbody>
</table>

Cancel item romoval

