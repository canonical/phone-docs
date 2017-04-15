---
Title: Ubuntu.Components.ListItems.ThinDivider
---
        
ThinDivider
===========

<span class="subtitle"></span>
Narrow line used as a divider between ListItems. More...

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
<td><p><a href="QtQuick.Rectangle.md">Rectangle</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component's divider property instead.**

ListItems will usually include this line at the bottom of the item to give a visually pleasing list of items. But a divider line can also be inserted manually using this component.

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    width: 250
    ListItem.ThinDivider {} //can be used as header for list
    ListItem.Standard {
        text: "List Item without thin divider line"
        showDivider: false
    }
    ListItem.ThinDivider {} // manually inserted divider line
    ListItem.Standard {
        text: "ListItem with thin divider line"
    }
}
```

