---
Title: Ubuntu.Components.ListItems.Header
---
        
Header
======

<span class="subtitle"></span>
Header for grouping list items together More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.ListItems 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[text](../../sdk-15.04.1/Ubuntu.Components.ListItems.Header.md#text-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.Header { text: "Title" }
    ListItem.Standard { text: "Item one" }
    ListItem.Standard { text: "Item two" }
    ListItem.Divider { }
    ListItem.Standard { text: "Item three" }
    ListItem.Standard { text: "Item four" }
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

The text that is shown as the header text.

