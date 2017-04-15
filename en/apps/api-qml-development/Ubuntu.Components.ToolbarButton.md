---
Title: Ubuntu.Components.ToolbarButton
---
        
ToolbarButton
=============

<span class="subtitle"></span>
An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem. More...

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
<td><p><a href="../../sdk-15.04.4/Ubuntu.Components.ActionItem.md">ActionItem</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

Example of different ways to define the toolbar button:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(50)
    height: units.gu(80)
    Action {
        id: action1
        text: "action 1"
        iconName: "compose"
        onTriggered: print("one!")
    }
    Page {
        title: "test page"
        Label {
            anchors.centerIn: parent
            text: "Hello, world"
        }
        tools: ToolbarItems {
            // reference to an action:
            ToolbarButton {
                action: action1
            }
            // define the action:
            ToolbarButton {
                action: Action {
                    text: "Second action"
                    iconName: "add"
                    onTriggered: print("two!")
                }
                // override the text of the action:
                text: "action 2"
            }
            // no associated action:
            ToolbarButton {
                iconName: "cancel"
                text: "button"
                onTriggered: print("three!")
            }
        }
    }
}
```

See [ToolbarItems](https://developer.ubuntu.comapps/qml/sdk-15.04.4/Ubuntu.Components.ToolbarItems/) for more information on how to use [ToolbarButton](../../sdk-15.04.4/Ubuntu.Components.ToolbarButton.md).

