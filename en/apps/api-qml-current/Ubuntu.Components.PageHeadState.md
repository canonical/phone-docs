---
Title: Ubuntu.Components.PageHeadState
---
        
PageHeadState
=============

<span class="subtitle"></span>
PageHeadState is a helper component to make it easier to configure the page header when changing states. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.State.md">State</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](../../sdk-15.04.4/Ubuntu.Components.PageHeadState.md#actions-prop)**** : Action
-   ****[backAction](../../sdk-15.04.4/Ubuntu.Components.PageHeadState.md#backAction-prop)**** : Action
-   ****[contents](../../sdk-15.04.4/Ubuntu.Components.PageHeadState.md#contents-prop)**** : Item
-   ****[head](../../sdk-15.04.4/Ubuntu.Components.PageHeadState.md#head-prop)**** : PageHeadConfiguration

<span id="details"></span>
Detailed Description
--------------------

This example shows how to add an action to the header that enables the user to enter search/input mode:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    id: mainView
    width: units.gu(40)
    height: units.gu(50)
    Page {
        id: searchPage
        title: "Click the icon"
        Label {
            anchors.centerIn: parent
            text: searchPage.state == "search" ? "search mode" : "normal mode"
        }
        state: "default"
        states: [
            PageHeadState {
                name: "default"
                head: searchPage.head
                actions: Action {
                    iconName: "search"
                    onTriggered: searchPage.state = "search"
                }
            },
            PageHeadState {
                id: headerState
                name: "search"
                head: searchPage.head
                actions: [
                    Action {
                        iconName: "contact"
                    }
                ]
                backAction: Action {
                    id: leaveSearchAction
                    text: "back"
                    iconName: "back"
                    onTriggered: searchPage.state = "default"
                }
                contents: TextField {
                    placeholderText: "search..."
                }
            }
        ]
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
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

The actions to be shown in the header with this state.

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

The back action for this state.

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

The contents of the header when this state is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="head-prop"></span><span class="name">head</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a></span></p></td>
</tr>
</tbody>
</table>

The head property of the [Page](../../sdk-15.04.4/Ubuntu.Components.Page.md) which will be the target of the property changes of this State. This property must always be set before the State can be used.

