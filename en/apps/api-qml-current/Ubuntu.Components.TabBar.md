---
Title: Ubuntu.Components.TabBar
---
        
TabBar
======

<span class="subtitle"></span>
Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs. More...

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
<td>Inherits:</td>
<td><p><a href="../../sdk-15.04.4/Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[alwaysSelectionMode](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#alwaysSelectionMode-prop)**** : bool
-   ****[animate](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#animate-prop)**** : bool
-   ****[model](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#model-prop)**** : var
-   ****[pressed](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#pressed-prop)**** : bool
-   ****[selectedIndex](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#selectedIndex-prop)**** : int
-   ****[selectionMode](../../sdk-15.04.4/Ubuntu.Components.TabBar.md#selectionMode-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alwaysSelectionMode-prop"></span><span class="name">alwaysSelectionMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Do not deactivate the tab bar after a specified idle time or when the user selects a new tab. Off by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animate-prop"></span><span class="name">animate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Show animations when the state changes. Default: true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The model containing the tabs to be controlled by the [TabBar](../../sdk-15.04.4/Ubuntu.Components.TabBar.md). The tabs are visualized by the style, displaying controlling elements based on the data specified by the roles. The default style mandates the existence of either the **title** or **tab** role, but different styles may require to have other roles (e.g. image, color). The order the role existence is checked is also determined by the style component, Default style checks the existence of the **tab** role first, and if not defined will use the **title** role.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="qmlreadonly">read-only</span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The user is interacting with the tab bar. Depends on the style pressed property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedIndex-prop"></span><span class="name">selectedIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the index of the selected Tab item. Note: Setting this property is DEPRECATED. Set the selectedIndex of the model instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionMode-prop"></span><span class="name">selectionMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

An inactive tab bar only displays the currently selected tab, and an active tab bar can be interacted with to select a tab.

