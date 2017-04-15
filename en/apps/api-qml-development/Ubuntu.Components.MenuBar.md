---
Title: Ubuntu.Components.MenuBar
---
        
MenuBar
=======

<span class="subtitle"></span>
MenuBar defines an application menu bar structure More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[menus](#menus-prop)**** : list&lt;Menu&gt;

<span id="methods"></span>
Methods
-------

-   void ****[appendMenu](#appendMenu-method)****(Menu *menu*)
-   void ****[insertMenu](#insertMenu-method)****(int *index*, Menu *menu*)
-   void ****[removeMenu](#removeMenu-method)****(Menu *menu*)

<span id="details"></span>
Detailed Description
--------------------

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    MenuBar {
        Menu {
            text: "_File"
            MenuItem {
                text: "_New"
                shortcut: "Ctrl+N"
            }
            MenuItem {
                text: "_Open"
                shortcut: "Ctrl+O"
            }
            MenuSeparator {}
            MenuItem {
                action: exitAction
            }
        }
        Menu {
            text: "_Edit"
            MenuItem {
                text: "_Undo"
                iconSource: "image://theme/undo"
            }
        }
        Menu {
            text: "_Window"
            MenuItem {
                text: "Fullscreen"
                checkable: true
                checked: false
            }
        }
    }
    Action {
        id: boundAction
        text: "E_xit"
        onTriggered: {
            Qt.quit();
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
<td><p><span id="menus-prop"></span><span class="qmldefault">[default] </span><span class="name">menus</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of Menus in this [MenuBar](index.html).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="appendMenu-method"></span><span class="type">void</span> <span class="name">appendMenu</span>(<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> <em>menu</em>)</p></td>
</tr>
</tbody>
</table>

\* \* Append a Menu to the [MenuBar](index.html)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insertMenu-method"></span><span class="type">void</span> <span class="name">insertMenu</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> <em>menu</em>)</p></td>
</tr>
</tbody>
</table>

\* \* Insert a Menu to the [MenuBar](index.html) at the specified position

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeMenu-method"></span><span class="type">void</span> <span class="name">removeMenu</span>(<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> <em>menu</em>)</p></td>
</tr>
</tbody>
</table>

\* \* Remove a Menu from the [MenuBar](index.html)

