---
Title: Ubuntu.Components.PageHeader
---
        
PageHeader
==========

<span class="subtitle"></span>
The PageHeader shows a title with a leading and a trailing ActionBar that add action buttons to the header. More...

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
<td><p><a href="Ubuntu.Components.Header.md">Header</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[contents](#contents-prop)**** : Item
-   ****[extension](#extension-prop)**** : Item
-   ****[leadingActionBar](#leadingActionBar-prop)**** : ActionBar
-   ****[navigationActions](#navigationActions-prop)**** : Action
-   ****[subtitle](#subtitle-prop)**** : string
-   ****[title](#title-prop)**** : string
-   ****[trailingActionBar](#trailingActionBar-prop)**** : ActionBar

<span id="details"></span>
Detailed Description
--------------------

The colors for foreground, background and the divider are configured in the style, so they may be set using [StyleHints](../Ubuntu.Components.StyleHints.md):

``` qml
PageHeader {
    title: "Colors"
    StyleHints {
        foregroundColor: UbuntuColors.orange
        backgroundColor: "black"
        dividerColor: UbuntuColors.slate
    }
}
```

See [Header](../Ubuntu.Components.Header.md) properties that are inherited by [PageHeader](index.html) to control the visibility of the header.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="name">contents</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The contents item to display in the header. By default the contents is undefined, and setting it will disable showing of the title and subtitle.

Example:

``` qml
PageHeader {
    id: header
    title: "Welcome"
    contents: Rectangle {
        anchors.fill: parent
        color: UbuntuColors.red
        Label {
            anchors.centerIn: parent
            text: header.title
            color: "white"
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extension-prop"></span><span class="name">extension</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Item shown at the bottom of the header. The extension can be any Item, but it must have a height so that the [PageHeader](index.html) correctly adjusts its height for the extension to fit. The extension Item should anchor to the left, right and bottom of its parent so that it will be automatically positioned above the header divider. This property replaces the sections property. Sections can now be added to the header as follows:

``` qml
PageHeader {
    title: "Header with sections"
    extension: Sections {
        anchors {
            left: parent.left
            leftMargin: units.gu(2)
            bottom: parent.bottom
        }
        model: ["one", "two", "three"]
    }
}
```

See [Toolbar](../Ubuntu.Components.Toolbar.md) and [Sections](../Ubuntu.Components.Sections.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leadingActionBar-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">leadingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td>
</tr>
</tbody>
</table>

The [ActionBar](../Ubuntu.Components.ActionBar.md) for the leading navigation actions. Example:

``` qml
PageHeader {
    leadingActionBar.actions: [
        Action {
            iconName: "back"
            text: "Back"
        }
    ]
}
```

The default value of leadingActionBar actions is [navigationActions](#navigationActions-prop), but that value can be changed to show different actions in front of the title. The leading action bar has only one slot. See [ActionBar](../Ubuntu.Components.ActionBar.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="navigationActions-prop"></span><span class="name">navigationActions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

The actions to be shown in the leading action bar. This property is automatically set by the [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md) and other navigation components to configure the back action for the [Page](../Ubuntu.Components.Page.md). Application developers should not set this property, because the value may be overridden by Ubuntu components that have navigation. Instead, set [leadingActionBar](#leadingActionBar-prop)'s actions property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subtitle-prop"></span><span class="name">subtitle</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Displayed under the title. Hidden when the [contents](#contents-prop) Item is set.

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

The title to display in the header. Note that the title will be hidden if the [contents](#contents-prop) Item is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trailingActionBar-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">trailingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td>
</tr>
</tbody>
</table>

The [ActionBar](../Ubuntu.Components.ActionBar.md) with trailing actions. Example:

``` qml
PageHeader {
    trailingActionBar {
        actions: [
            Action {
                iconName: "settings"
                text: "first"
            },
            Action {
                iconName: "info"
                text: "second"
            },
            Action {
                iconName: "search"
                text: "third"
            }
       ]
       numberOfSlots: 2
    }
}
```

By default the trailing action bar automatically adapts its number of slots to the available space in the range from 3 to 6. See [ActionBar](../Ubuntu.Components.ActionBar.md).

