---
Title: Ubuntu.Components.ActionItem
---
        
ActionItem
==========

<span class="subtitle"></span>
A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem. More...

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
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a>, <a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a>, and <a href="Ubuntu.Components.ToolbarButton.md" class="obsolete">ToolbarButton</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[action](#action-prop)**** : Action
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[text](#text-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[triggered](#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   void ****[trigger](#trigger-method)****(var *value*)

<span id="details"></span>
Detailed Description
--------------------

If [action](#action-prop) is set, the values of the other properties will by default be identical to the [Action](../Ubuntu.Components.Action.md)'s property values. Setting the other properties will override the properties copied from the [Action](../Ubuntu.Components.Action.md).

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

The [Action](../Ubuntu.Components.Action.md) associated with this [ActionItem](index.html). If action is set, the values of the [Action](../Ubuntu.Components.Action.md) properties are copied to the values of the [ActionItem](index.html) properties, unless those were previously overridden.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon associated with the actionItem in the suru icon theme. Defaults to `action.iconName`.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

If both [iconSource](#iconSource-prop) and iconName are defined, iconName will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The image associated with the [ActionItem](index.html). Defaults to `action.iconSource`.

This is the URL of any image file. If both iconSource and [iconName](#iconName-prop) are defined, [iconName](#iconName-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the actionItem. Defaults to the `action.text`.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Called when the actionItem is triggered.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trigger-method"></span><span class="type">void</span> <span class="name">trigger</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Trigger this action item if it is enabled.

