---
Title: Ubuntu.Components.ExclusiveGroup
---
        
ExclusiveGroup
==============

<span class="subtitle"></span>
ExclusiveGroup provides a way to declare several checkable controls as mutually exclusive. More...

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
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.ActionList.md">ActionList</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[current](#current-prop)**** : Action

<span id="methods"></span>
Methods
-------

-   void ****[bindCheckable](#bindCheckable-method)****(object *object*)
-   void ****[unbindCheckable](#unbindCheckable-method)****(object *object*)

<span id="details"></span>
Detailed Description
--------------------

The [ExclusiveGroup](index.html) will only allow a single object to have it's checkable property set to "true" at any one time. The exclusive group accepts child Actions, but objects other than Actions can be used by using the [bindCheckable](#bindCheckable-method) function as long as they support one of the required signals, and a "checked" property.

``` qml
ExclusiveGroup {
    Action {
        parameterType: Action.Bool
        state: true
    }
    Action {
        parameterType: Action.Bool
        state: false
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
<td><p><span id="current-prop"></span><span class="name">current</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

Returns the currently checked action

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bindCheckable-method"></span><span class="type">void</span> <span class="name">bindCheckable</span>(<span class="type">object</span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

Explicitly bind an objects checkability to this exclusive group.

**Note:** This only works with objects which support the following signals signals:

-   **toggled(bool)**

``` qml
Item {
    ExclusiveGroup {
        id: exclusiveGroup
    }
    Instantiator {
        model: 4
        onObjectAdded: exclusiveGroup.bindCheckable(object)
        onObjectRemoved: exclusiveGroup.unbindCheckable(object)
        Action {
            checkable: true
        }
    }
}
```

**See also** [ExclusiveGroup::unbindCheckable](#unbindCheckable-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="unbindCheckable-method"></span><span class="type">void</span> <span class="name">unbindCheckable</span>(<span class="type">object</span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

Explicitly unbind an objects checkability from this exclusive group.

**See also** [ExclusiveGroup::bindCheckable](#bindCheckable-method).

