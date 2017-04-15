---
Title: Ubuntu.Components.ListItems.Expandable
---
        
Expandable
==========

<span class="subtitle"></span>
An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item. More...

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
<td><p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[children](#children-prop)**** : QtObject
-   ****[collapseOnClick](#collapseOnClick-prop)**** : bool
-   ****[collapsedHeight](#collapsedHeight-prop)**** : real
-   ****[expanded](#expanded-prop)**** : bool
-   ****[expandedHeight](#expandedHeight-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

When used together with an [UbuntuListView](../Ubuntu.Components.UbuntuListView.md) or [ExpandablesColumn](../Ubuntu.Components.ListItems.ExpandablesColumn.md) it can coordinate with other items in the list to make sure it is scrolled while expanding to be fully visible in the view. Additionally it is made sure that only one Expandable item is expanded at a time and it is collapsed when the user clicks outside the item.

You can set [expanded](#expanded-prop) to true/false to expand/collapse the item.

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Item {
    ListModel {
        id: listModel
    }
    ListItem.UbuntuListView {
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        model: listModel
        delegate: ListItem.Expandable {
            id: expandingItem
            expandedHeight: units.gu(30)
            onClicked: {
                expanded = true;
            }
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="children-prop"></span><span class="qmldefault">[default] </span><span class="name">children</span> : <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span></p></td>
</tr>
</tbody>
</table>

Reparent any content to inside the Flickable

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseOnClick-prop"></span><span class="name">collapseOnClick</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, the item will collapse again when the user clicks somewhere in the always visible (when collapsed) area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapsedHeight-prop"></span><span class="name">collapsedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The collapsed (normal) height of the item. Defaults to the standard height for list items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expanded-prop"></span><span class="name">expanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reflects the expanded state. Set this to true/false to expand/collapse the item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandedHeight-prop"></span><span class="name">expandedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The expanded height of the item's content. Defaults to the same as [collapsedHeight](#collapsedHeight-prop) which disables the expanding feature. In order for the item to be expandable, set this to the expanded size. Note that the actual expanded size can be smaller if there is not enough space in the containing list. In that case the item becomes flickable automatically.

