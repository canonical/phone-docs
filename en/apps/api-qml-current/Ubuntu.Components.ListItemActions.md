---
Title: Ubuntu.Components.ListItemActions
---
        
ListItemActions
===============

<span class="subtitle"></span>
Provides configuration for actions to be added to a ListItem. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[delegate](#delegate-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

[ListItem](../Ubuntu.Components.ListItem.md) accepts actions that can be configured to appear when swiped to left or right. The API does not limit the number of actions to be assigned for leading or trailing actions, however the design constraints are allowing a maximum of 1 action on leading- and a maximum of 3 actions on trailing side of the [ListItem](../Ubuntu.Components.ListItem.md).

The [actions](#actions-prop) are Action instances or elements derived from Action. The default visualization of the actions can be overridden using the [delegate](#delegate-prop) property, and the default implementation uses the `name` property of the Action.

<span id="using-with-listviews"></span>
#### Using with ListViews

[ListItemActions](index.html) instances can be shared between [ListItem](../Ubuntu.Components.ListItem.md) instances within the same view. When shared, the memory footprint of the view will be lot smaller, as there will be no individual action container created for each list's actions. Having individual [ListItemActions](index.html) instances increases the memory footprint, and also has performance impact on kinetic scrolling.

The examples below illustrate the worst and best practice when used in a [ListView](../../sdk-14.10/QtQuick.ListView.md). The worst case:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    UbuntuListView {
        anchors.fill: parent
        model: 10000
        delegate: ListItem {
            leadingActions: ListItemActions {
                actions: [
                    Action {
                        iconName: "delete"
                    }
                ]
            }
            trailingActions: ListItemActions {
                actions: [
                    Action {
                        iconName: "search"
                    },
                    Action {
                        iconName: "edit"
                    },
                    Action {
                        iconName: "copy"
                    }
                ]
            }
        }
    }
}
```

This example can be optimized by sharing the action arrays between the items:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    ListItemActions {
        id: leading
        actions: Action {
            iconName: "delete"
        }
    }
    ListItemActions {
        id: trailing
        actions: [
            Action {
                iconName: "search"
            },
            Action {
                iconName: "edit"
            },
            Action {
                iconName: "copy"
            }
        ]
    }
    UbuntuListView {
        anchors.fill: parent
        model: 10000
        delegate: ListItem {
            leadingActions: leading
            trailingActions: trailing
        }
    }
}
```

<span id="action-parameter-types"></span>
#### Action parameter types

Actions handled by the [ListItem](../Ubuntu.Components.ListItem.md) are all triggered with the [ListItem](../Ubuntu.Components.ListItem.md)'s index as parameter. This index can either be the model index when used with [ListView](../../sdk-14.10/QtQuick.ListView.md), or the child index from the parentItem's childItems list. Actions can use this parameter to identify the instance of the [ListItem](../Ubuntu.Components.ListItem.md) on which it was executed, in which case [ListItem](../Ubuntu.Components.ListItem.md) will change the type from `Actions.None` to `Actions.Integer` when it is triggered.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the actions to be displayed. It can hold instances cached or declared in place. An example of cached actions:

``` qml
ListItemActions {
    id: cachedActions
    actions: [
        copyAction, searchAction, cutAction
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the custom delegate to visualize the actions listed in the [ListItemActions](index.html). When set to null, the default delegate specified by the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md) will be used.

[ListItemActions](index.html) provides the `action` context property which contains the Action instance currently visualized. Using this property delegates can access the information to be visualized. The action is triggered by the panel item holding the visualized action, therefore only visualization is needed by the custom delegate. The other context property exposed to delegates is the `index`, which specifies the index of the action visualized.

Specifying a custom delegate will not override the triggering logic of the action, that will be still handled by the panel itself. However custom delegates may still need to distinguish the pressed/released state visually. This can be achieved using the `pressed` context property, which informs the delegate about the pressed state of the action.

The delegate height is set automatically by the panel item, only the width must be specified which will be clamped between height and the maximum width of the list item divided by the number of actions in the list.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    UbuntuListView {
        anchors.fill: parent
        model: 50
        delegate: ListItem {
            trailingActions: actionsList
        }
        ListItemActions {
            id: actionsList
            delegate: Column {
                width: height + units.gu(2)
                Icon {
                    name: action.iconName
                    width: units.gu(3)
                    height: width
                    color: pressed ? "blue" : "lightblue"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Label {
                    text: action.text + "#" + index
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            actions: Action {
                iconName: "starred"
                text: "Star"
            }
        }
    }
}
```

**Note:** Putting a Rectangle in the delegate can be used to override the color of the panel. Also all [ListItem](../Ubuntu.Components.ListItem.md) attached properties can be used in the delegates.

Defaults to null.

