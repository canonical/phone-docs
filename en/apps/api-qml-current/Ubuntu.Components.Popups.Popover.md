---
Title: Ubuntu.Components.Popups.Popover
---
        
Popover
=======

<span class="subtitle"></span>
A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Popups 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.Popups.ActionSelectionPopover.md">ActionSelectionPopover</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[autoClose](#autoClose-prop)**** : bool
-   ****[caller](#caller-prop)**** : Item
-   ****[callerMargin](#callerMargin-prop)**** : real
-   ****[container](#container-prop)**** : list&lt;Object&gt;
-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[contentWidth](#contentWidth-prop)**** : real
-   ****[edgeMargins](#edgeMargins-prop)**** : real
-   ****[foregroundStyle](#foregroundStyle-prop)**** : Component
-   ****[pointerTarget](#pointerTarget-prop)**** : Item
-   ****[style](#style-prop)**** : Component
-   ****[styleName](#styleName-prop)**** : string
-   ****[theme](#theme-prop)**** : ThemeSettings

<span id="methods"></span>
Methods
-------

-   ****[hide](#hide-method)****()
-   ****[show](#show-method)****()

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Popovers](https://design.ubuntu.com/apps/building-blocks/dialog#popover).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
import Ubuntu.Components.Popups 1.3
Rectangle {
    color: theme.palette.normal.background
    width: units.gu(80)
    height: units.gu(80)
    Component {
        id: popoverComponent
        Popover {
            id: popover
            Column {
                id: containerLayout
                anchors {
                    left: parent.left
                    top: parent.top
                    right: parent.right
                }
                ListItem.Header { text: "Standard list items" }
                ListItem.Standard { text: "Do something" }
                ListItem.Standard { text: "Do something else" }
                ListItem.Header { text: "Buttons" }
                ListItem.SingleControl {
                    highlightWhenPressed: false
                    control: Button {
                        text: "Do nothing"
                        anchors {
                            fill: parent
                            margins: units.gu(1)
                        }
                    }
                }
                ListItem.SingleControl {
                    highlightWhenPressed: false
                    control: Button {
                        text: "Close"
                        anchors {
                            fill: parent
                            margins: units.gu(1)
                        }
                        onClicked: PopupUtils.close(popover)
                    }
                }
            }
        }
    }
    Button {
        id: popoverButton
        anchors.centerIn: parent
        text: "open"
        onClicked: PopupUtils.open(popoverComponent, popoverButton)
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
<td><p><span id="autoClose-prop"></span><span class="name">autoClose</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the automatic closing of the Popover when user taps on the dismissArea. The default behavior is to close the Popover, therefore set to true.

When set to false, closing the Popover is the responsibility of the caller. Also, the mouse and touch events are not blocked from the dismissArea.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caller-prop"></span><span class="name">caller</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The Item such as a [Button](../Ubuntu.Components.Button.md) that the user interacted with to open the Dialog. This property will be used for the automatic positioning of the Dialog next to the caller, if possible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="callerMargin-prop"></span><span class="name">callerMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the margin from the popover's caller. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="container-prop"></span><span class="qmldefault">[default] </span><span class="name">container</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Content will be put inside the foreround of the Popover.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Use this property to override the default content height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentWidth-prop"></span><span class="name">contentWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Use this property to override the default content width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="edgeMargins-prop"></span><span class="name">edgeMargins</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the margins from the popover's dismissArea. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="foregroundStyle-prop"></span><span class="name">foregroundStyle</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Exposes the style property of the [StyledItem](../Ubuntu.Components.StyledItem.md) contained in the Popover. Refer to [StyledItem](../Ubuntu.Components.StyledItem.md) how to use it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointerTarget-prop"></span><span class="name">pointerTarget</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item to which the pointer should be anchored to. This can be same as the caller or any child of the caller. By default the property is set to caller.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The style of the foreground of the Popover. This property takes precedence over [styleName](#styleName-prop)

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [StyledItem::style](../Ubuntu.Components.StyledItem.md#style-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="styleName-prop"></span><span class="name">styleName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The style name of the foreground of the Popover.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [StyledItem::styleName](../Ubuntu.Components.StyledItem.md#styleName-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="theme-prop"></span><span class="name">theme</span> : <span class="type"><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></span></p></td>
</tr>
</tbody>
</table>

Configure the theme of the Popover foreground and all its subcomponents.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [StyledItem::theme](../Ubuntu.Components.StyledItem.md#theme-prop) and [Dialog::theme](../Ubuntu.Components.Popups.Dialog.md#theme-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hide-method"></span><span class="name">hide</span>()</p></td>
</tr>
</tbody>
</table>

Hide the popover. Only use this function if you handle memory management. Otherwise use PopupUtils.close() to do it automatically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="show-method"></span><span class="name">show</span>()</p></td>
</tr>
</tbody>
</table>

Make the popover visible. Reparent to the background area object first if needed. Only use this function if you handle memory management. Otherwise use PopupUtils.open() to do it automatically.

