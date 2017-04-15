---
Title: Ubuntu.Components.ListItems.SingleControl
---
        
SingleControl
=============

<span class="subtitle"></span>
A list item containing a single control More...

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

-   ****[control](#control-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component instead.**

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.SingleControl {
        control: Button {
            anchors {
                margins: units.gu(1)
                fill: parent
            }
            text: "Large button"
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
<td><p><span id="control-prop"></span><span class="name">control</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The control of this [SingleControl](index.html) list item. The control will automatically be re-parented to, and centered in, this list item.

