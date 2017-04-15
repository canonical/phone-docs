---
Title: Ubuntu.Components.PageHeadConfiguration
---
        
PageHeadConfiguration
=====================

<span class="subtitle"></span>
Page.head is used to configure the header for a Page. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.1        |

<span id="properties"></span>
Properties
----------

-   ****[actions](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#actions-prop)**** : list&lt;Action&gt;
-   ****[backAction](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#backAction-prop)**** : Action
-   ****[contents](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#contents-prop)**** : Item
-   ****[foregroundColor](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#foregroundColor-prop)**** : color
-   ****[locked](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#locked-prop)**** : bool
-   ****[preset](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#preset-prop)**** : string
-   ****[sections](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#sections-prop)**** : PageHeadSections
-   ****[title](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#title-prop)**** : string
-   ****[visible](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#visible-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

For examples how to use Page.head, see [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of actions to show in the header.

Example:

``` qml
Page {
    title: "Custom header actions"
    head.actions: [
        Action {
            iconName: "save"
            text: i18n.tr("Save")
        },
        Action {
            iconName: "add"
            text: i18n.tr("Add")
        }
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backAction-prop"></span><span class="name">backAction</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

Overrides the default [PageStack](../../sdk-15.04.4/Ubuntu.Components.PageStack.md) back button and the [Tabs](../../sdk-15.04.4/Ubuntu.Components.Tabs.md) drawer button in the header.

Example:

``` qml
Page {
    title: "Back Action Page"
    head.backAction: Action {
        iconName: "close"
        onTriggered: {
            console.log("Run custom back action")
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
<td><p><span id="contents-prop"></span><span class="name">contents</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Set this property to show this Item in the header instead of the title. Use a [TextField](../../sdk-15.04.4/Ubuntu.Components.TextField.md) here for implementing search in header.

The parent of this Item will be binded while the [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md) is active. The header contents will automatically be anchored to the left and vertically centered inside the header.

Example:

``` qml
Page {
    title: "Invisible title"
    head.contents: Rectangle {
        color: UbuntuColors.orange
        height: units.gu(5)
        width: parent ? parent.width - units.gu(2) : undefined
    }
}
```

See [PageHeadState](../../sdk-15.04.4/Ubuntu.Components.PageHeadState.md) for an example that shows how search mode can be implemented.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="foregroundColor-prop"></span><span class="name">foregroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The color of the text and icons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locked-prop"></span><span class="name">locked</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When the [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md) is active, the locked property controls the behavior of the header. A locked header stays visible or invisible, depending on the value of the [visible](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#visible-prop) property. An unlocked header automatically shows and hides if the [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md) has a flickable in which the user scrolls up or down. Default value: false

This QML property was introduced in Qt 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preset-prop"></span><span class="name">preset</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Choose a preset for the header visuals and behavior. The default is an empty string "". By setting this to "select", title will be hidden and actions will be represented by icons with a label.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    id: mainView
    width: units.gu(40)
    height: units.gu(50)
    Page {
        id: page
        title: "Demo"
        state: "default"
        states: [
            PageHeadState {
                name: "default"
                head: page.head
                actions: [
                    Action {
                        iconName: "contact"
                        text: "Contact"
                    }
                ]
            },
            State {
                id: selectState
                name: "select"
                property Action leaveSelect: Action {
                    iconName: "back"
                    text: "Back"
                    onTriggered: page.state = "default"
                }
                property list<Action> actions: [
                    Action {
                        iconName: "select"
                        text: "Select All"
                    },
                    Action {
                        iconName: "delete"
                        text: "Delete"
                    }
                ]
                PropertyChanges {
                    target: page.head
                    backAction: selectState.leaveSelect
                    actions: selectState.actions
                    preset: "select"
                }
            }
        ]
        Label {
            anchors.centerIn: parent
            text: "Use back button to leave selection mode."
            visible: page.state == "select"
        }
        Button {
            anchors.centerIn: parent
            onClicked: page.state = "select"
            visible: page.state != "select"
            text: "selection mode"
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
<td><p><span id="sections-prop"></span><span class="name">sections</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md">PageHeadSections</a></span></p></td>
</tr>
</tbody>
</table>

Defines the sections in the page header divider.

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

The title to show in the header. This is automatically copied from the [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md) title.

This QML property was introduced in Qt 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visible-prop"></span><span class="name">visible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Update the value of the visible property to show or hide the header. This works both when the header is [locked](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md#locked-prop) and unlocked. An unlocked header can also become visible or hidden when the user scrolls the active [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md)'s flickable. The value of the visible property will be updated at the end of the showing/hiding animation of the header.

This QML property was introduced in Qt 1.3.

