---
Title: Ubuntu.Components.ProgressionSlot
---
        
ProgressionSlot
===============

<span class="subtitle"></span>
ProgressionSlot holds an icon representing the progression symbol. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.Icon.md">Icon</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

[ProgressionSlot](index.html) is designed to provide an easy way for developers to add a progression symbol to the list item created using [ListItemLayout](../Ubuntu.Components.ListItemLayout.md) or [SlotsLayout](../Ubuntu.Components.SlotsLayout.md).

[ListItemLayout](../Ubuntu.Components.ListItemLayout.md) will automatically accomodate the progression symbol as the last trailing slot inside the layout. For more details, see [ListItemLayout](../Ubuntu.Components.ListItemLayout.md) documentation.

The following is an example of how easy it is to implement list items using [ListItem](../Ubuntu.Components.ListItem.md) with [ListItemLayout](../Ubuntu.Components.ListItemLayout.md) and [ProgressionSlot](index.html):

``` qml
ListItem {
    height: layout.height
    onClicked: pushPageOnStack()
    ListItemLayout {
        id: layout
        title.text: "Push a new page on the PageStack"
        ProgressionSlot {}
    }
}
```

**See also** [ListItemLayout](../Ubuntu.Components.ListItemLayout.md).

