---
Title: Ubuntu.Components.Toolbar
---
        
Toolbar
=======

<span class="subtitle"></span>
Toolbar that can be used as an extension for the edit mode header. Example: More...

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

-   ****[leadingActionBar](#leadingActionBar-prop)**** : ActionBar
-   ****[trailingActionBar](#trailingActionBar-prop)**** : ActionBar

<span id="details"></span>
Detailed Description
--------------------

``` qml
PageHeader {
    id: editHeader
    property Component delegate: Component {
        AbstractButton {
            id: button
            action: modelData
            width: label.width + units.gu(4)
            height: parent.height
            Rectangle {
                color: UbuntuColors.slate
                opacity: 0.1
                anchors.fill: parent
                visible: button.pressed
            }
            Label {
                anchors.centerIn: parent
                id: label
                text: action.text
                font.weight: text === "Confirm" ? Font.Normal : Font.Light
            }
        }
    }
    leadingActionBar {
        anchors.leftMargin: 0
        actions: Action {
            text: "Cancel"
            iconName: "close"
        }
        delegate: editHeader.delegate
    }
    trailingActionBar {
        anchors.rightMargin: 0
        actions: Action {
            text: "Confirm"
            iconName: "tick"
        }
        delegate: editHeader.delegate
    }
    extension: Toolbar {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        trailingActionBar.actions: [
            Action { iconName: "bookmark-new" },
            Action { iconName: "add" },
            Action { iconName: "edit-select-all" },
            Action { iconName: "edit-copy" },
            Action { iconName: "select" }
        ]
        leadingActionBar.actions: Action {
            iconName: "delete"
            text: "delete"
            onTriggered: print("Delete action triggered")
        }
    }
}
```

See [PageHeader](../Ubuntu.Components.PageHeader.md).

Property Documentation
----------------------

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

The leading [ActionBar](../Ubuntu.Components.ActionBar.md) that should hold at most one action. Recommneded for the delete action. Example:

``` qml
Toolbar {
    leadingActionBar.actions: [
        Action {
            iconName: "delete"
            text: "Delete"
            onTriggered: print("delete!")
        }
    ]
}
```

See [ActionBar](../Ubuntu.Components.ActionBar.md).

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
Toolbar {
      trailingActionBar.actions: [
          Action { iconName: "bookmark-new" },
          Action { iconName: "add" },
          Action { iconName: "edit-select-all" },
          Action { iconName: "edit-copy" }
      ]
}
```

The trailing [ActionBar](../Ubuntu.Components.ActionBar.md) may contain up to 8 actions. Scrolling and support for more than 8 actions will be added in the near future. See [ActionBar](../Ubuntu.Components.ActionBar.md).

