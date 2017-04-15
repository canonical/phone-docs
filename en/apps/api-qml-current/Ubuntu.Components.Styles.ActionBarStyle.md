---
Title: Ubuntu.Components.Styles.ActionBarStyle
---
        
ActionBarStyle
==============

<span class="subtitle"></span>
Style API for action bar. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Styles 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[defaultDelegate](#defaultDelegate-prop)**** : Component
-   ****[defaultNumberOfSlots](#defaultNumberOfSlots-prop)**** : int
-   ****[overflowIconName](#overflowIconName-prop)**** : string
-   ****[overflowIconSource](#overflowIconSource-prop)**** : url
-   ****[overflowText](#overflowText-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The component defines the style API for the [ActionBar](../Ubuntu.Components.ActionBar.md) component.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultDelegate-prop"></span><span class="name">defaultDelegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The default action delegate if the styled item does not provide a different delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultNumberOfSlots-prop"></span><span class="name">defaultNumberOfSlots</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The default number of slots for the action bar.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overflowIconName-prop"></span><span class="name">overflowIconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon name for action of the overflow button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overflowIconSource-prop"></span><span class="name">overflowIconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The icon source for the action of the overflow button. Setting the icon source will override the icon name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overflowText-prop"></span><span class="name">overflowText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The text for the action of the overflow button, which may be used in the action delegate.

