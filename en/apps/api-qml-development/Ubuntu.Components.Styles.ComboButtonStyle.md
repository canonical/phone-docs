---
Title: Ubuntu.Components.Styles.ComboButtonStyle
---
        
ComboButtonStyle
================

<span class="subtitle"></span>
Style API for ComboButton component. More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[comboListHolder](#comboListHolder-prop)**** : Item
-   ****[comboListMargin](#comboListMargin-prop)**** : real
-   ****[comboListPanel](#comboListPanel-prop)**** : Item
-   ****[defaultColor](#defaultColor-prop)**** : color
-   ****[defaultDropdownColor](#defaultDropdownColor-prop)**** : color
-   ****[defaultFont](#defaultFont-prop)**** : font
-   ****[defaultGradient](#defaultGradient-prop)**** : Gradient
-   ****[dropDownSeparatorWidth](#dropDownSeparatorWidth-prop)**** : real
-   ****[dropDownWidth](#dropDownWidth-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The component defines the style API for the [ComboButton](../Ubuntu.Components.ComboButton.md) component.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListHolder-prop"></span><span class="name">comboListHolder</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item which will hold the combo list data. Implementations can point both this and [comboListPanel](#comboListPanel-prop) to the same component, however separate items should be used if a gap between the panel and the content is required. See Ambiance theme.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListMargin-prop"></span><span class="name">comboListMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Distance between the combo list and the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListPanel-prop"></span><span class="name">comboListPanel</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item pointing to the panel holding the combo list and additional design artifacts. It is used by the component to drive the expansion size.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultColor-prop"></span><span class="name">defaultColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Default color for the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultDropdownColor-prop"></span><span class="name">defaultDropdownColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Default color for the dropdown button and the combo list both when expanded and collapsed. Implementations can define different color for expanded/collapsed using the *styledItem.expanded* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultFont-prop"></span><span class="name">defaultFont</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-font.html">font</a></span></p></td>
</tr>
</tbody>
</table>

Default font used in the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultGradient-prop"></span><span class="name">defaultGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

Default gradient for the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropDownSeparatorWidth-prop"></span><span class="name">dropDownSeparatorWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Width of the dropdown button separator.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropDownWidth-prop"></span><span class="name">dropDownWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Width of the drop down button.

