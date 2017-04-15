---
Title: Ubuntu.Components.ListItems.SingleValue
---
        
SingleValue
===========

<span class="subtitle"></span>
A list item displaying a single value More...

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
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[value](#value-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component instead.**

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.SingleValue {
        text: "Label"
        value: "Status"
        onClicked: selected = !selected
    }
    ListItem.SingleValue {
        text: "Label"
        iconName: "compose"
        value: "Parameter"
        progression: true
        onClicked: print("clicked")
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
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The values that will be shown next to the label text

