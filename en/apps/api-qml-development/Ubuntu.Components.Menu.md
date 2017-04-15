---
Title: Ubuntu.Components.Menu
---
        
Menu
====

<span class="subtitle"></span>
Menu defines a context menu or submenu structure of a MenuBar More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : list&lt;Object&gt;

<span id="methods"></span>
Methods
-------

-   ****[appendObject](#appendObject-method)****(object *o*)
-   ****[dismiss](#dismiss-method)****()
-   ****[insertObject](#insertObject-method)****(int *index*, object *o*)
-   ****[removeObject](#removeObject-method)****(object *o*)
-   ****[show](#show-method)****(point *point*)

<span id="details"></span>
Detailed Description
--------------------

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Menu {
    text: "&File"
    MenuGroup {
        Action {
            text: "&New"
            shortcut: "Ctrl+N"
        }
        Action {
            text: "&Open"
            shortcut: "Ctrl+O"
        }
    }
    Menu {
        text: "Recent Files"
        ActionList {
            Action { text: "1.txt" }
            Action { text: "2.txt" }
            Action { text: "3.txt" }
        }
    }
    Action {
        action: Action {
            text: "E&xit"
            shortcut: "Ctrl+X"
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
<td><p><span id="data-prop"></span><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

List of objects representing menu items within the menu.

Currently supports Menu, Action, AcionList & [MenuGroup](../Ubuntu.Components.MenuGroup.md) objects.

**Note:** Item object which do not support platformItem will not be exported for native menus.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="appendObject-method"></span><span class="name">appendObject</span>(<span class="type">object</span> <em>o</em>)</p></td>
</tr>
</tbody>
</table>

Add a object tto the menu

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dismiss-method"></span><span class="name">dismiss</span>()</p></td>
</tr>
</tbody>
</table>

Dismiss and destroy the menu popup.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insertObject-method"></span><span class="name">insertObject</span>(<span class="type">int</span> <em>index</em>, <span class="type">object</span> <em>o</em>)</p></td>
</tr>
</tbody>
</table>

Inserts an item at the index in the menu.

Currently supports Menu, Action, AcionList & [MenuGroup](../Ubuntu.Components.MenuGroup.md) objects.

**Note:** Item object which do not support platformItem will not be exported for native menus.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeObject-method"></span><span class="name">removeObject</span>(<span class="type">object</span> <em>o</em>)</p></td>
</tr>
</tbody>
</table>

Removes the item from the menu.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="show-method"></span><span class="name">show</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span> <em>point</em>)</p></td>
</tr>
</tbody>
</table>

Show the menu popup at the given point

