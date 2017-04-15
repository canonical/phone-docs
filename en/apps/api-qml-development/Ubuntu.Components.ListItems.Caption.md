---
Title: Ubuntu.Components.ListItems.Caption
---
        
Caption
=======

<span class="subtitle"></span>
List item that shows a piece of text. More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[text](#text-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) and Captiopns components instead.**

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.Standard {
        text: "Default list item."
    }
    ListItem.Caption {
        text: "This is a caption text, which can span multiple lines."
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
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The text that is shown in the list item as a label.

