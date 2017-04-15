---
Title: Ubuntu.Components.Popups.ActionSelectionPopover
---
        
ActionSelectionPopover
======================

<span class="subtitle"></span>
A special popover presenting actions to the user. The popover is closed automatically when the action is chosen. More...

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
<td><p><a href="Ubuntu.Components.Popups.Popover.md">Popover</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : var
-   ****[delegate](#delegate-prop)**** : Component
-   ****[target](#target-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

The actions can be given either using [ActionList](../Ubuntu.Components.ActionList.md) or as an array of action objects. The visualization of the actions is realized either using the default visualization, which is realised using list items having centered text, or using the component given as delegate. The actions are triggered with the specified target as parameter.

The popover recognizes the following properties from the delegate:

-   data properties like **modelData**, **refModelData** or **action**. When either of these is detected the popover will set their value to the action object to be visualized.
-   trigger signals like **clicked**, **accepted** or **triggered**. When these are detected, the popover will automatically connect those to the action's trigger.

An example presenting list of actions using [ActionList](../Ubuntu.Components.ActionList.md):

``` qml
ActionSelectionPopover {
    delegate: ListItems.Standard {
      text: action.text
    }
    actions: ActionList {
      Action {
          text: "Action one"
          onTriggered: print(text)
      }
      Action {
          text: "Action two"
          onTriggered: print(text)
      }
    }
}
```

An array of actions can be used when the actions to be presented are reused from a set of predefined actions:

``` qml
Item {
    Action {
        id: action1
        text: "Action one"
        onTriggered: print(text)
    }
    Action {
        id: action2
        text: "Action two"
        onTriggered: print(text)
    }
    Action {
        id: action3
        text: "Action three"
        onTriggered: print(text)
    }
    ActionListPopover {
        actions: [action1, action3]
        delegate: ListItems.Standard {
            text: action.text
        }
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
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the list of actions to be presented. Each action triggered will use the actionHost as caller.

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

The property holds the delegate to visualize the action. The delegate should define one of the data holder properties recognized by the popover in order to access action data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the object on which the action will be performed.

