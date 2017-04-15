---
Title: Ubuntu.Components.ListItems.ExpandablesColumn
---
        
ExpandablesColumn
=================

<span class="subtitle"></span>
A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it. More...

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
<td><p><a href="../../sdk-14.10/QtQuick.Flickable.md">Flickable</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[children](#children-prop)**** : QtObject
-   ****[expandedItem](#expandedItem-prop)**** : Item

<span id="methods"></span>
Methods
-------

-   ****[collapse](#collapse-method)****()
-   ****[expandItem](#expandItem-method)****(*item*)

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
ListItem.ExpandablesColumn {
    anchors { left: parent.left; right: parent.right }
    height: units.gu(24)
    Repeater {
        model: 8
        ListItem.Expandable {
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
<td><p><span id="children-prop"></span><span class="qmldefault">[default] </span><span class="name">children</span> : <span class="type"><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></span></p></td>
</tr>
</tbody>
</table>

Reparent any content to inside the Column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandedItem-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">expandedItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Points to the currently expanded item. Null if no item is expanded.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapse-method"></span><span class="name">collapse</span>()</p></td>
</tr>
</tbody>
</table>

Collapse the currently expanded item. If there isn't any item expanded, this function does nothing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandItem-method"></span><span class="name">expandItem</span>( <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Expand the given item. The item must be a child of this [ListView](../../sdk-14.10/QtQuick.ListView.md).

