---
Title: Ubuntu.Components.ActionContext
---
        
ActionContext
=============

<span class="subtitle"></span>
ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts. More...

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
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.PopupContext.md">PopupContext</a>.</p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[active](#active-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[ActionContext](index.html) drives the state of its [actions](#actions-prop). Shortcuts and mnemonics are only registered if the context is active or if the action is assigned to an [ActionItem](../Ubuntu.Components.ActionItem.md) all of whose parent contexts are active. In the following example the [ActionContext](index.html) drives the underlaying `action1` and `action2` shortcuts, and `orphanAction` will never trigger as it is neither enclosed in an active context nor assigned to an [ActionItem](../Ubuntu.Components.ActionItem.md).

``` qml
import QtQuick 2.4
import ubuntu.Componenst 1.3
Rectangle {
    id: root
    width: units.gu(40)
    height: units.gu(71)
    ActionContext {
        id: rootContext
        active: true
        actions: Action {
            shortcut: 'Ctrl+A'
            text: rootContext.active ? "Deactivate" : "Activate"
            onTriggered: rootContext.active = !rootContext.active
        }
    }
    Action {
        id: orphanAction
        text: "Orphan"
        shortcut: 'Ctrl+O'
        onTriggered: console.log("This will not be called")
    }
    Column {
        Button {
            text: rootContext.active ? "Deactivate" : "Activate"
            onClicked: rootContext.active = !rootContext.active
        }
        Button {
            action: Action {
                id: action1
                text: "F&irst Button"
                onTriggered: console.log("First Button triggered")
            }
        }
        Button {
            action: Action {
                id: action2
                text: "S&econd Button"
                shortcut: 'Ctrl+Alt+2'
                onTriggered: console.log("Second Button triggered")
            }
        }
    }
}
```

The toolkit assigns an [ActionContext](index.html) to each Page component, which is activated/deactivated together with the Page itself, driving the shortcut activations on the components and actions declared in the Page.

**See also** [PopupContext](../Ubuntu.Components.PopupContext.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="qmldefault">[default] </span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of Actions in this [ActionContext](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true the context is active. If false the context is inactive. Defaults to false.

When context has been added to the [ActionManager](../Ubuntu.Components.ActionManager.md) setting this value controls whether or not the actions in a context are available to external components.

The [ActionManager](../Ubuntu.Components.ActionManager.md) monitors the active property of each of the local contexts that has been added to it. There can be more than one local context active at a. time. When a local context is set active the manager will notice this and will export the actions from the context.

**Note:** An Action declared to a component falling under an item that is a child of an inactive ActiveContext can be triggered manually using the mouse or connections.

