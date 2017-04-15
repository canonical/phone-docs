---
Title: Ubuntu.Components.MenuGroup
---
        
MenuGroup
=========

<span class="subtitle"></span>
Logical list of items for a menu. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : list&lt;Object&gt;

<span id="signals"></span>
Signals
-------

-   ****[added](#added-signal)****(Object *action*)
-   ****[changed](#changed-signal)****()
-   ****[removed](#removed-signal)****(Object *action*)

<span id="methods"></span>
Methods
-------

-   ****[addObject](#addObject-method)****(Object *object*)
-   ****[removeObject](#removeObject-method)****(Object *object*)

<span id="details"></span>
Detailed Description
--------------------

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Menu {
    text: "Edit"
    MenuGroup {
        Action { text: "Undo" }
        Action { text: "Redo" }
    }
    MenuGroup {
        Action { text: "Cut" }
        ActionList {
            Action { text: "Copy" }
            Action { text: "Paste" }
        }
    }
    MenuGroup {
        Action { text: "Select All" }
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
<td><p><span id="data-prop"></span><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

\* \* \* List of Objects in this [MenuGroup](index.html) \* Note that when you set this property, the children of the [MenuGroup](index.html) will be ignored, \* so do not set the list and define children.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="added-signal"></span><span class="name">added</span>(<span class="type">Object</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when a action is added to the list

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="changed-signal"></span><span class="name">changed</span>()</p></td>
</tr>
</tbody>
</table>

Signal called when the contents of the group change, including child content changes (eg. [ActionList](../Ubuntu.Components.ActionList.md) child add/remove)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removed-signal"></span><span class="name">removed</span>(<span class="type">Object</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when a action is removed from the list

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addObject-method"></span><span class="name">addObject</span>(<span class="type">Object</span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

Adds an Object to the list programatically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeObject-method"></span><span class="name">removeObject</span>(<span class="type">Object</span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

Removes an object from the list programatically.

