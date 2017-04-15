---
Title: Ubuntu.Components.Theme
---
        
Theme
=====

<span class="subtitle"></span>
The Theme class provides facilities to interact with the current theme. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[palette](#palette-prop)**** : Palette

<span id="methods"></span>
Methods
-------

-   Component ****[createStyleComponent](#createStyleComponent-method)****(string *styleName*, object *parent*)

<span id="details"></span>
Detailed Description
--------------------

A global instance is exposed as the **Theme** context property.

The theme defines the visual aspect of the Ubuntu components.

Example changing the current theme:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Item {
    Button {
        onClicked: Theme.name = "Ubuntu.Components.Themes.Ambiance"
    }
}
```

Example creating a style component:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
StyledItem {
    id: myItem
    style: Theme.createStyleComponent("MyItemStyle.qml", myItem)
}
```

**See also** [StyledItem](../Ubuntu.Components.StyledItem.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the current theme.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="palette-prop"></span><span class="name">palette</span> : <span class="type">Palette</span></p></td>
</tr>
</tbody>
</table>

The palette of the current theme.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createStyleComponent-method"></span><span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span> <span class="name">createStyleComponent</span>(<span class="type">string</span> <em>styleName</em>, <span class="type">object</span> <em>parent</em>)</p></td>
</tr>
</tbody>
</table>

Returns an instance of the style component named *styleName*.

