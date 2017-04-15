---
Title: Ubuntu.Components.ListItem
---
        
ListItem
========

<span class="subtitle"></span>
The ListItem element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must be taken to keep the contents light in order to ensure good performance when used in long list views. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[action](#action-prop)**** : Action
-   ****[color](#color-prop)**** : color
-   ****[contentItem](#contentItem-prop)**** : Item
-   ****[contentMoving](#contentMoving-prop)**** : bool
-   ****[divider](#divider-prop)****
    -   ****[divider.colorFrom](#divider.colorFrom-prop)**** : real
    -   ****[divider.colorTo](#divider.colorTo-prop)**** : real
-   ****[dragMode](#dragMode-prop)**** : bool
-   ****[dragging](#dragging-prop)**** : bool
-   ****[expansion](#expansion-prop)****
    -   ****[expansion.expanded](#expansion.expanded-prop)**** : bool
    -   ****[expansion.height](#expansion.height-prop)**** : real
-   ****[highlightColor](#highlightColor-prop)**** : color
-   ****[highlighted](#highlighted-prop)**** : bool
-   ****[leadingActions](#leadingActions-prop)**** : ListItemActions
-   ****[selectMode](#selectMode-prop)**** : bool
-   ****[selected](#selected-prop)**** : bool
-   ****[swipeEnabled](#swipeEnabled-prop)**** : bool
-   ****[swiped](#swiped-prop)**** : bool
-   ****[trailingActions](#trailingActions-prop)**** : ListItemActions

<span id="signals"></span>
Signals
-------

-   ****[clicked](#clicked-signal)****()
-   ****[contentMovementEnded](#contentMovementEnded-signal)****()
-   ****[contentMovementStarted](#contentMovementStarted-signal)****()
-   ****[pressAndHold](#pressAndHold-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The component provides two color properties which configures the item's background when normal or highlighted. This can be configured through [color](#color-prop) and [highlightColor](#highlightColor-prop) properties. The list item is highlighted if there is an action attached to it. This means that the list item must have an active component declared as child, at least leading- or trailing actions specified, or to have a slot connected to [clicked](#clicked-signal) or [pressAndHold](#pressAndHold-signal) signal. In any other case the component will not be highlighted, and [highlighted](#highlighted-prop) property will not be toggled either. Also, there will be no highlight happening if the click happens on the active component.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
   width: units.gu(40)
   height: units.gu(71)
   Column {
       anchors.fill: parent
       ListItem {
           Button {
               text: "Press me"
           }
           onClicked: console.log("clicked on ListItem")
       }
       ListItem {
           leadingActions: ListItemActions {
               actions: [
                   Action {
                       iconName: "delete"
                   }
               ]
           }
           onClicked: console.log("clicked on ListItem with leadingActions set")
       }
       ListItem {
           trailingActions: ListItemActions {
               actions: [
                   Action {
                       iconName: "edit"
                   }
               ]
           }
           onClicked: console.log("clicked on ListItem with trailingActions set")
       }
       ListItem {
           Label {
               text: "onClicked implemented"
           }
           onClicked: console.log("clicked on ListItem with onClicked implemented")
       }
       ListItem {
           Label {
               text: "onPressAndHold implemented"
           }
           onPressAndHold: console.log("long-pressed on ListItem with onPressAndHold implemented")
       }
       ListItem {
           Label {
               text: "No highlight"
           }
       }
   }
}
```

[contentItem](#contentItem-prop) holds all components and resources declared as child to [ListItem](index.html). Being an Item, all properties can be accessed or altered. However, make sure you never change **x**, **y**, **width**, **height** or **anchors** properties as those are controlled by the [ListItem](index.html) itself when leading or trailing actions are revealed or when selectable and draggable mode is turned on, and thus might cause the component to misbehave. Anchors margins are free to alter.

Each [ListItem](index.html) has a thin divider shown on the bottom of the component. This divider can be configured through the [divider](#divider-prop) grouped property, which can configure its margins from the edges of the [ListItem](index.html) as well as its visibility. When used in [ListView](../../sdk-14.10/QtQuick.ListView.md) or [UbuntuListView](../Ubuntu.Components.UbuntuListView.md), the last list item will not show the divider no matter of the visible property value set.

[ListItem](index.html) can handle actions that can get swiped from front or back of the item. These actions are Action elements visualized in panels attached to the front or to the back of the item, and are revealed by swiping the item horizontally. The swipe is started only after the mouse/touch move had passed a given threshold. The actions are visualized by a panel, which is configurable through the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md).

The actions are configured through the [leadingActions](#leadingActions-prop) as well as [trailingActions](#trailingActions-prop) properties.

``` qml
ListItem {
    id: listItem
    leadingActions: ListItemActions {
        actions: [
            Action {
                iconName: "delete"
                onTriggered: listItem.destroy()
            }
        ]
    }
    trailingActions: ListItemActions {
        actions: [
            Action {
                iconName: "search"
                onTriggered: {
                    // do some search
                }
            }
        ]
    }
}
```

**Note:** When a list item is swiped, it automatically connects both leading and trailing actions to the list item. If needed, the same [ListItemActions](../Ubuntu.Components.ListItemActions.md) instance can be used in both leading and trailing side. In the following example the list item can be deleted through both leading and trailing actions using the same container:

``` qml
ListItem {
    id: listItem
    leadingActions: ListItemActions {
        actions: [
            Action {
                iconName: "delete"
                onTriggered: listItem.destroy()
            }
        ]
    }
    trailingActions: leadingActions
}
```

The action is triggered only after all the animations are completed.

[ListItem](index.html) provides a set of attached properties which are attached to each panel of the [ListItem](index.html). However not all properties are valid in all the circumstances.

The component is styled using the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md) style interface.

<span id="selection-mode"></span>
### Selection mode

The selection mode of a [ListItem](index.html) is controlled by the [ViewItems::selectMode](../Ubuntu.Components.ViewItems.md#selectMode-attached-prop) attached property. This property is attached to each parent item of the [ListItem](index.html) exception being when used as delegate in [ListView](../../sdk-14.10/QtQuick.ListView.md), where the property is attached to the view itself.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Flickable {
   width: units.gu(40)
   height: units.gu(50)
   // this will not have any effect
   ViewItems.selectMode: true
   Column {
       // this will work
       ViewItems.selectMode: false
       width: parent.width
       Repeater {
           model: 25
           ListItem {
               Label {
                   text: "ListItem in Flickable #" + index
               }
           }
       }
   }
}
```

The indices selected are stored in [ViewItems::selectedIndices](../Ubuntu.Components.ViewItems.md#selectedIndices-attached-prop) attached property, attached the same way as the [ViewItems::selectMode](../Ubuntu.Components.ViewItems.md#selectMode-attached-prop) property is. This is a read/write property, meaning that initial selected item indices can be set up. The list contains the indices added in the order of selection, not sorted in any form.

**Note:** When in selectable mode, the [ListItem](index.html) content is not disabled and [clicked](#clicked-signal) and [pressAndHold](#pressAndHold-signal) signals are also emitted. The only restriction the component implies is that leading and trailing actions cannot be swiped in. selectable property can be used to implement different behavior when [clicked](#clicked-signal) or [pressAndHold](#pressAndHold-signal).

<span id="dragging-mode"></span>
### Dragging mode

The dragging mode is only supported on [ListView](../../sdk-14.10/QtQuick.ListView.md), as it requires a model supported view to be used. The drag mode can be activated through the [ViewItems::dragMode](../Ubuntu.Components.ViewItems.md#dragMode-attached-prop) attached property, when attached to the [ListView](../../sdk-14.10/QtQuick.ListView.md). The items will show a panel as defined in the style, and dragging will be possible when initiated over this panel. Pressing or clicking anywhere else on the [ListItem](index.html) will invoke the item's action assigned to the touched area.

The dragging is realized through the [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems.md#dragUpdated-signal) signal, and a signal handler must be implemented in order to have the draging working. Implementations can drive the drag to be live (each time the dragged item is dragged over an other item will change the order of the items) or drag'n'drop way (the dragged item will be moved only when the user releases the item by dropping it to the desired position). The signal has a [ListItemDrag](../Ubuntu.Components.ListItemDrag.md) *event* parameter, which gives detailed information about the drag event, like started, dragged up or downwards or dropped, allowing in this way various restrictions on the dragging.

The dragging event provides three states reported in [ListItemDrag::status](../Ubuntu.Components.ListItemDrag.md#status-prop) field, *Started*, *Moving* and *Dropped*. The other event field values depend on the status, therefore the status must be taken into account when implementing the signal handler. In case live dragging is needed, *Moving* state must be checked, and for non-live drag (drag'n'drop) the *Moving* state must be blocked by setting *event.accept = false*, otherwise the dragging will not know whether the model has been updated or not.

Example of live drag implementation:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
    model: ListModel {
        Component.onCompleted: {
            for (var i = 0; i < 100; i++) {
                append({tag: "List item #"+i});
            }
        }
    }
    delegate: ListItem {
        Label {
            text: modelData
        }
        color: dragMode ? "lightblue" : "lightgray"
        onPressAndHold: ListView.view.ViewItems.dragMode =
            !ListView.view.ViewItems.dragMode
    }
    ViewItems.onDragUpdated: {
        if (event.status == ListItemDrag.Moving) {
            model.move(event.from, event.to, 1);
        }
    }
    moveDisplaced: Transition {
        UbuntuNumberAnimation {
            property: "y"
        }
    }
}
```

Example of drag'n'drop implementation:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
    model: ListModel {
        Component.onCompleted: {
            for (var i = 0; i < 100; i++) {
                append({tag: "List item #"+i});
            }
        }
    }
    delegate: ListItem {
        Label {
            text: modelData
        }
        color: dragMode ? "lightblue" : "lightgray"
        onPressAndHold: ListView.view.ViewItems.dragMode =
            !ListView.view.ViewItems.dragMode
    }
    ViewItems.onDragUpdated: {
        if (event.status == ListItemDrag.Moving) {
            // inform dragging that move is not performed
            event.accept = false;
        } else if (event.status == ListItemDrag.Dropped) {
            model.move(event.from, event.to, 1);
        }
    }
    moveDisplaced: Transition {
        UbuntuNumberAnimation {
            property: "y"
        }
    }
}
```

[ListItem](index.html) does not provide animations when the [ListView](../../sdk-14.10/QtQuick.ListView.md)'s model is updated. In order to have animation, use [UbuntuListView](../Ubuntu.Components.UbuntuListView.md) or provide a transition animation to the moveDisplaced or displaced property of the [ListView](../../sdk-14.10/QtQuick.ListView.md).

<span id="using-non-qabstractitemmodel-models"></span>
#### Using non-QAbstractItemModel models

Live dragging (moving content on the move) is only possible when the model is a derivate of the [QAbstractItemModel](../../sdk-14.10/QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel). When a list model is used, the [ListView](../../sdk-14.10/QtQuick.ListView.md) will re-create all the items in the view, meaning that the dragged item will no longer be controlled by the dragging. However, non-live drag'n'drop operations can still be implemented with these kind of lists as well.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
    model: ["plum", "peach", "pomegrenade", "pear", "banana"]
    delegate: ListItem {
        Label {
            text: modelData
        }
        color: dragMode ? "lightblue" : "lightgray"
        onPressAndHold: ListView.view.ViewItems.dragMode =
            !ListView.view.ViewItems.dragMode
    }
    ViewItems.onDragUpdated: {
        if (event.status == ListItemDrag.Started) {
            return;
        } else if (event.status == ListItemDrag.Dropped) {
            var fromData = model[event.from];
            // must use a temporary variable as list manipulation
            // is not working directly on model
            var list = model;
            list.splice(event.from, 1);
            list.splice(event.to, 0, fromData);
            model = list;
        } else {
            event.accept = false;
        }
    }
}
```

When using [DelegateModel](../../sdk-14.10/QtQml.DelegateModel.md), it must be taken into account when implementing the [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems.md#dragUpdated-signal) signal handler.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
    model: DelegateModel {
        model: ["apple", "pear", "plum", "peach", "nuts", "dates"]
        delegate: ListItem {
            Label {
                text: modelData
            }
            onPressAndHold: dragMode = !dragMode;
        }
    }
    ViewItems.onDragUpdated: {
        if (event.status == ListItemDrag.Moving) {
            event.accept = false
        } else if (event.status == ListItemDrag.Dropped) {
            var fromData = model.model[event.from];
            var list = model.model;
            list.splice(event.from, 1);
            list.splice(event.to, 0, fromData);
            model.model = list;
        }
    }
}
```

<span id="expansion"></span>
### Expansion

Since Ubuntu.Components 1.3, [ListItem](index.html) supports expansion. ListItems declared in a view can expand exclusively, having leading and trailing panes locked when expanded and to be collapsed when tapping outside of the expanded area. The expansion is driven by the [expansion](#expansion) group property, and the behavior by the [ViewItems::expansionFlags](../Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop) and [ViewItems::expandedIndices](../Ubuntu.Components.ViewItems.md#expandedIndices-attached-prop) attached properties. Each [ListItem](index.html) which is required to expand should set a proper height in the [expansion.height](#expansion.height-prop) property, which should be bigger than the collapsed height of the [ListItem](index.html) is. The expansion itself is driven by the [expansion.expanded](#expansion.expanded-prop) property, which can be set freely depending on the use case, on click, on long press, etc.

The default expansion behavior is set to be exclusive and locked, meaning there can be only one [ListItem](index.html) expanded within a view and neither leading nor trailing action panels cannot be swiped in. Expanding an other [ListItem](index.html) will collapse the previosuly expanded one. There can be cases when tapping outside of the expanded area of a [ListItem](index.html) we woudl need the expanded one to collapse automatically. This can be achieved by setting `ViewItems.CollapseOnOutsidePress` flag to [ViewItems::expansionFlags](../Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop). This flag will also turn on `ViewItems.Exclusive` flag, as tapping outside practicly forbids more than one item to be expanded at a time.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListView {
    width: units.gu(40)
    height: units.gu(71)
    model: ListModel {
        Component.onCompleted: {
            for (var i = 0; i < 50; i++) {
                append({data: i});
            }
        }
    }
    ViewItems.expansionFlags: ViewItems.CollapseOnOutsidePress
    delegate: ListItem {
        Label {
            text: "Model item #" + modelData
        }
        trailingActions: ListItemActions {
            actions: [
                Action {
                    icon: "search"
                },
                Action {
                    icon: "edit"
                },
                Action {
                    icon: "copy"
                }
            ]
        }
        expansion.height: units.gu(15)
        onClicked: expansion.expanded = true
    }
}
```

The example above collapses the expanded item whenever it is tapped or mouse pressed outside of the expanded list item.

**Note:** Set 0 to [ViewItems::expansionFlags](../Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop) if no restrictions on expanded items is required (i.e multiple expanded items are allowed, swiping leading/trailing actions when expanded).

**Note:** Do not bind [expansion.height](#expansion.height-prop) to the [ListItem](index.html)'s height as is will cause binding loops.

<span id="note-on-styling"></span>
### Note on styling

[ListItem](index.html)'s styling differs from the other components styling, as [ListItem](index.html) loads the style only when either of the leadin/trailing panels are swiped, or when the item enters in select- or drag mode. The component does not assume any visuals to be present in the style.

**See also** [ListItemActions](../Ubuntu.Components.ListItemActions.md), [ViewItems::dragMode](../Ubuntu.Components.ViewItems.md#dragMode-attached-prop), [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems.md#dragUpdated-signal), and [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="action-prop"></span><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the action which will be triggered when the [ListItem](index.html) is clicked. [ListItem](index.html) will not visualize the action, that is the responsibility of the components placed inside the list item. However, when set, the [ListItem](index.html) will be highlighted on press.

If the action set has no value type set, [ListItem](index.html) will set its type to **Action.Integer** and the [triggered](../Ubuntu.Components.Action.md#triggered-signal) signal will be getting the [ListItem](index.html) index as *value* parameter.

Defaults no null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Configures the color of the normal background. The default value is transparent.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-prop"></span><span class="name">contentItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

contentItem holds the components placed on a [ListItem](index.html). It is anchored to the [ListItem](index.html) on left, top and right, and to the divider on the bottom, or to the [ListItem](index.html)'s bottom in case the divider is not visible. The content is clipped by default. It is not recommended to change the anchors as the [ListItem](index.html) controls them, however any other property value is free to change. Example:

``` qml
ListItem {
    contentItem.anchors {
        leftMargin: units.gu(2)
        rightMargin: units.gu(2)
        topMargin: units.gu(0.5)
        bottomMargin: units.gu(0.5)
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentMoving-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">contentMoving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property describes whether the content is moving or not. The content is moved when swiped or when snapping in or out, and lasts till the snapping animation completes.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="divider-prop"></span><strong>divider group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="divider.colorFrom-prop"></span><span class="name">divider.colorFrom</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="divider.colorTo-prop"></span><span class="name">divider.colorTo</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This grouped property configures the thin divider shown in the bottom of the component. The divider is not moved together with the content when swiped left or right to reveal the actions. **colorFrom** and **colorTo** configure the starting and ending colors of the divider. Beside these properties all Item specific properties can be accessed.

When **visible** is true, the [ListItem](index.html)'s content size gets thinner with the divider's **thickness**. By default the divider is anchored to the bottom, left right of the [ListItem](index.html), and has a 2dp height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragMode-prop"></span><span class="name">dragMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property reports whether a [ListItem](index.html) is draggable or not. While in drag mode, the list item content cannot be swiped. The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragging-prop"></span><span class="name">dragging</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property informs about an ongoing dragging on a [ListItem](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="expansion-prop"></span><strong>expansion group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="expansion.expanded-prop"></span><span class="name">expansion.expanded</span> : <span class="type">bool</span></p></td>
</tr>
<tr class="even">
<td><p><span id="expansion.height-prop"></span><span class="name">expansion.height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The group drefines the expansion state of the [ListItem](index.html).

This property group was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightColor-prop"></span><span class="name">highlightColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Configures the color when highlighted. Defaults to the theme palette's background color. If changed, it can be reset by assigning undefined as value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlighted-prop"></span><span class="name">highlighted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

True when the item is pressed. The items stays highlighted when the mouse or touch is moved horizontally. When in Flickable (or [ListView](../../sdk-14.10/QtQuick.ListView.md)), the item gets un-highlighted (false) when the mouse or touch is moved towards the vertical direction causing the flickable to move.

Configures the color when highlighted. Defaults to the theme palette's background color.

An item is highlighted, thus highlight state toggled, when pressed and it has one of the following conditions fulfilled:

-   [leadingActions](#leadingActions-prop) or [trailingActions](#trailingActions-prop) set,
-   it has an [action](#action-prop) attached
-   if the [ListItem](index.html) has an active child component, such as a [Button](../Ubuntu.Components.Button.md), a [Switch](../Ubuntu.Components.Switch.md), etc.
-   in general, if an active (enabled and visible) **MouseArea** is added as a child component
-   [clicked](#clicked-signal) signal handler is implemented or there is a slot or function connected to it
-   [pressAndHold](#pressAndHold-signal) signal handler is implemented or there is a slot or function connected to it.

**Note:** Adding an active component does not mean the component will be activated when the [ListItem](index.html) will be tapped/clicked outside of the component area. If such a behavior is needed, that must be done explicitly.

``` qml
ListItem {
    Label {
        text: "This is a label"
    }
    Switch {
        id: toggle
        anchors.right: parent.right
    }
    Component.onCompleted: clicked.connect(toggle.clicked)
}
```

**See also** [action](#action-prop), [leadingActions](#leadingActions-prop), and [trailingActions](#trailingActions-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leadingActions-prop"></span><span class="name">leadingActions</span> : <span class="type"><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the actions and its configuration to be revealed when swiped from left to right.

**See also** [trailingActions](#trailingActions-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectMode-prop"></span><span class="name">selectMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property reports whether the component and the view using the component is in selectable state. While selectable, the [ListItem](index.html)'s leading- and trailing panels cannot be swiped in. [clicked](#clicked-signal) and [pressAndHold](#pressAndHold-signal) signals are also triggered. Selectable mode can be set either through this property or through the parent attached [ViewItems::selectMode](../Ubuntu.Components.ViewItems.md#selectMode-attached-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives whether a list item is selected or not. Defaults to false.

**See also** [ListItem::selectMode](#selectMode-prop) and [ViewItems::selectMode](../Ubuntu.Components.ViewItems.md#selectMode-attached-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipeEnabled-prop"></span><span class="name">swipeEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property enables the swiping of the leading- or trailing actions. This is useful when an overlay component needs to handle mouse moves or drag events without the [ListItem](index.html) to steal the events. Defaults to true.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListView {
    width: units.gu(40)
    height: units.gu(70)
    model: 25
    delegate: ListItem {
        swipeEnabled: !mouseArea.drag.active
        Rectangle {
            color: "red"
            width: units.gu(2)
            height: width
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                drag.target: parent
            }
        }
    }
}
```

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swiped-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">swiped</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property notifies about the content being swiped so leading or trailing actions are visible.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trailingActions-prop"></span><span class="name">trailingActions</span> : <span class="type"><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the actions and its configuration to be revealed when swiped from right to left.

**See also** [leadingActions](#leadingActions-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

The signal is emitted when the component gets released while the [highlighted](#highlighted-prop) property is set. The signal is not emitted if the [ListItem](index.html) content is swiped or when used in Flickable (or [ListView](../../sdk-14.10/QtQuick.ListView.md), [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview)) and the Flickable gets moved.

If the [ListItem](index.html) contains a component which contains an active [MouseArea](../../sdk-14.10/QtQuick.MouseArea.md), the clicked signal will be supressed when clicked over this area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentMovementEnded-signal"></span><span class="name">contentMovementEnded</span>()</p></td>
</tr>
</tbody>
</table>

The signal is emitted when the content movement has ended.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentMovementStarted-signal"></span><span class="name">contentMovementStarted</span>()</p></td>
</tr>
</tbody>
</table>

The signal is emitted when the content movement has started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAndHold-signal"></span><span class="name">pressAndHold</span>()</p></td>
</tr>
</tbody>
</table>

The signal is emitted when the list item is long pressed.

If the [ListItem](index.html) contains a component which contains an active [MouseArea](../../sdk-14.10/QtQuick.MouseArea.md), the pressAndHold signal will be supressed when pressed over this area.

