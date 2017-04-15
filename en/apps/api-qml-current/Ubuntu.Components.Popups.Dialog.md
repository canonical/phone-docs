---
Title: Ubuntu.Components.Popups.Dialog
---
        
Dialog
======

<span class="subtitle"></span>
The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation. More...

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
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[callerMargin](#callerMargin-prop)**** : real
-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[contentWidth](#contentWidth-prop)**** : real
-   ****[contents](#contents-prop)**** : list&lt;Object&gt;
-   ****[edgeMargins](#edgeMargins-prop)**** : real
-   ****[modal](#modal-prop)**** : bool
-   ****[style](#style-prop)**** : Component
-   ****[styleName](#styleName-prop)**** : string
-   ****[text](#text-prop)**** : string
-   ****[theme](#theme-prop)**** : ThemeSettings
-   ****[title](#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Dialogs](http://design.ubuntu.com/apps/building-blocks/dialog).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
Item {
    width: units.gu(80)
    height: units.gu(80)
    Component {
         id: dialog
         Dialog {
             id: dialogue
             title: "Save file"
             text: "Are you sure that you want to save this file?"
             Button {
                 text: "cancel"
                 onClicked: PopupUtils.close(dialogue)
             }
             Button {
                 text: "overwrite previous version"
                 color: UbuntuColors.orange
                 onClicked: PopupUtils.close(dialogue)
             }
             Button {
                 text: "save a copy"
                 color: UbuntuColors.orange
                 onClicked: PopupUtils.close(dialogue)
             }
         }
    }
    Button {
        anchors.centerIn: parent
        id: saveButton
        text: "save"
        onClicked: PopupUtils.open(dialog)
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
<td><p><span id="callerMargin-prop"></span><span class="name">callerMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the margin from the dialog's caller. The property is themed.

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

Specifies the height of the dialog content.

This QML property was introduced in Ubuntu.Components 1.3.

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

Specifies the width of the dialog content.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="qmldefault">[default] </span><span class="name">contents</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Content will be put inside a column in the foreround of the Dialog.

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

The property holds the margins from the dialog's dismissArea. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modal-prop"></span><span class="name">modal</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property controls whether the dialog is modal or not. Modal dialogs block event propagation to items under dismissArea, when non-modal ones let these events passed to these items. In addition, non-modal dialogs do not dim the dismissArea.

The default value is true.

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

The style of the foreground of the Dialog. This property takes precedence over [styleName](#styleName-prop)

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

The style name of the foreground of the Dialog.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [StyledItem::styleName](../Ubuntu.Components.StyledItem.md#styleName-prop).

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

The question to the user.

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

Configure the theme of the Dialog foreground and all its subcomponents. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    // make sure the main theme is Ambiance
    theme.name: "Ubuntu.Components.Themes.Ambiance"
    Component {
        id: dialogComponent
        Dialog {
            id: dialog
            title: "Input dialog"
            // the dialog and its children will use SuruDark
            theme: ThemeSettings {
                name: "Ubuntu.Components.Themes.SuruDark"
            }
            TextField {
                placeholderText: "enter text"
            }
            Button {
                text: "Close"
                onClicked: PopupUtils.close(dialog)
            }
        }
    }
    Button {
        text: "Open dialog"
        onClicked: PopupUtils.open(dialogComponent)
    }
}
```

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [StyledItem::theme](../Ubuntu.Components.StyledItem.md#theme-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the question to ask the user.

