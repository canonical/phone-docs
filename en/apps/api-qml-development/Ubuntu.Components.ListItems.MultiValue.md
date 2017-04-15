---
Title: Ubuntu.Components.ListItems.MultiValue
---
        
MultiValue
==========

<span class="subtitle"></span>
List item displaying multiple values. More...

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

-   ****[values](#values-prop)**** : variant

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component instead.**

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.MultiValue {
        text: "Label"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
        onClicked: selected = !selected
    }
    ListItem.MultiValue {
        text: "Label"
        iconName: "compose"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
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
<td><p><span id="values-prop"></span><span class="name">values</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-variant.html">variant</a></span></p></td>
</tr>
</tbody>
</table>

The list of values that will be shown under the label text

