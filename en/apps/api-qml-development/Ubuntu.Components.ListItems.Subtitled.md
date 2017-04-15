---
Title: Ubuntu.Components.ListItems.Subtitled
---
        
Subtitled
=========

<span class="subtitle"></span>
List item displaying a second string under the main label. More...

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

-   ****[subText](#subText-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem.md) component instead.**

Examples:

``` qml
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.Subtitled {
        text: "Idle"
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Disabled"
        enabled: false
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Selected"
        selected: true
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Progression"
        subText: "Secondary label"
        progression: true
    }
    ListItem.Subtitled {
        text: "Icon"
        subText: "Secondary label"
        iconName: "compose"
    }
    ListItem.Subtitled {
        text: "Multiple lines"
        subText: "This is a multi-line subText.\nUp to 5 lines are supported."
    }
    ListItem.Subtitled {
        text: "Multiple lines"
        subText: "It also works well with icons and progression."
        iconName: "compose"
        progression: true
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
<td><p><span id="subText-prop"></span><span class="name">subText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The list of strings that will be shown under the label text

