---
Title: Ubuntu.Components.ActionList
---
        
ActionList
==========

<span class="subtitle"></span>
List of Action items An ActionList provies a way of grouping actions together. More...

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
<td><p><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;

<span id="signals"></span>
Signals
-------

-   ****[added](#added-signal)****(Action *action*)
-   ****[removed](#removed-signal)****(Action *action*)

<span id="methods"></span>
Methods
-------

-   ****[addAction](#addAction-method)****(Action *action*)
-   ****[removeAction](#removeAction-method)****(Action *action*)

<span id="details"></span>
Detailed Description
--------------------

``` qml
ActionList {
    Action {
        id: action1
    }
    Action {
        id: action2
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
<td><p><span id="actions-prop"></span><span class="qmldefault">[default] </span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of Actions in this [ActionList](index.html) Note that when you set this property, the children of the [ActionList](index.html) will be ignored, so do not set the list and define children.

The advantage of setting actions over using the children is that the same [Action](../Ubuntu.Components.Action.md) items can be used in several sets of actions.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="added-signal"></span><span class="name">added</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when an action is added to the list

This QML signal was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removed-signal"></span><span class="name">removed</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when an action is removed from the list

This QML signal was introduced in Ubuntu.Components 1.3.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addAction-method"></span><span class="name">addAction</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Adds an Action to the list programatically.

``` qml
Item {
    Instantiator {
        model: 4
        onObjectAdded: actionList.addAction(object)
        onObjectRemoved: actionList.removeAction(object)
        Action {}
    }
    ActionList {
        id: actionList
    }
}
```

This QML method was introduced in Ubuntu.Components 1.3.

**See also** [ActionList::removeAction](#removeAction-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeAction-method"></span><span class="name">removeAction</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Removes an action from the list programatically.

This QML method was introduced in Ubuntu.Components 1.3.

**See also** [ActionList::addAction](#addAction-method).

