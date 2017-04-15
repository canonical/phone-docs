---
Title: Ubuntu.Components.ActionBar
---
        
ActionBar
=========

<span class="subtitle"></span>
Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : Action
-   ****[delegate](#delegate-prop)**** : Component
-   ****[numberOfSlots](#numberOfSlots-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

Example:

``` qml
ActionBar {
    numberOfSlots: 2
    actions: [
        Action {
            iconName: "share"
            text: "Share"
        },
        Action {
            iconName: "starred"
            text: "Favorite"
        },
        Action {
            iconName: "lock"
            text: "Lock"
        }
    ]
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
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

The actions to display in the bar. If more actions are specified than there are slots, an overflow button will be show which opens a popover with the actions that did not fit in the bar directly.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Set this to override the default delegate button that shows the actions in the [ActionBar](index.html). Uses the defaultDelegate of [ActionBarStyle](../Ubuntu.Components.Styles.ActionBarStyle.md) by default.

Example:

``` qml
ActionBar {
    id: customDelegateBar
    anchors.right: parent.right
    actions: [
        Action { text: "action 1" },
        Action { text: "action 2" }
    ]
    delegate: Button {
        action: modelData
        width: units.gu(14)
        strokeColor: UbuntuColors.purple
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="numberOfSlots-prop"></span><span class="name">numberOfSlots</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of actions to be shown in the bar directly. If the actions don't fit, an overflow button (using one slot) will be shown which opens a popover with the remaining actions.

Setting numberOfSlots to 0 will always show the overflow button and no other action buttons. Default value from the Ambience theme is 3.

