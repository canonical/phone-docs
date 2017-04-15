---
Title: Ubuntu.Components.Popups.PopupBase
---
        
PopupBase
=========

<span class="subtitle"></span>
The base class for all dialogs, sheets and popovers. Do not use directly. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Popups 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.OrientationHelper.md">OrientationHelper</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a>, <a href="Ubuntu.Components.Popups.Popover.md">Popover</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/Ubuntu.Components.Popups.SheetBase/" class="obsolete">SheetBase</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[dismissArea](#dismissArea-prop)**** : Item
-   ****[grabDismissAreaEvents](#grabDismissAreaEvents-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[hide](#hide-method)****()
-   ****[show](#show-method)****()

<span id="details"></span>
Detailed Description
--------------------

Examples: See subclasses.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dismissArea-prop"></span><span class="name">dismissArea</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the area used to dismiss the popups, the area from where mouse and touch events will be grabbed. By default this area is the Popup itself.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="grabDismissAreaEvents-prop"></span><span class="name">grabDismissAreaEvents</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether to forward or not the mouse and touch events happening outside of the popover. By default all events are grabbed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hide-method"></span><span class="name">hide</span>()</p></td>
</tr>
</tbody>
</table>

Hide the popup. Only use this function if you handle memory management. Otherwise use PopupUtils.close() to do it automatically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="show-method"></span><span class="name">show</span>()</p></td>
</tr>
</tbody>
</table>

Make the popup visible. Reparent to the background area object first if needed. Only use this function if you handle memory management. Otherwise use PopupUtils.open() to do it automatically.

