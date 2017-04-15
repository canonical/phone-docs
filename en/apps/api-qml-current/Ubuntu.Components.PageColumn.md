---
Title: Ubuntu.Components.PageColumn
---
        
PageColumn
==========

<span class="subtitle"></span>
Component configuring the metrics of a column in AdaptivePageLayout. More...

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
<td><p><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[fillWidth](#fillWidth-prop)**** : bool
-   ****[maximumWidth](#maximumWidth-prop)**** : real
-   ****[minimumWidth](#minimumWidth-prop)**** : real
-   ****[preferredWidth](#preferredWidth-prop)**** : real

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
<td><p><span id="fillWidth-prop"></span><span class="name">fillWidth</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the width of the column should fill the available space of the [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md) column or not. Defaults to *false*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumWidth-prop"></span><span class="name">maximumWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the maximum width of the column. A maximum value of 0 will be ignored. Defaults to the maximum positive value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumWidth-prop"></span><span class="name">minimumWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the minimum width of the column. Defaults to 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredWidth-prop"></span><span class="name">preferredWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the preferred width of the column when the layout is initialized. Defaults to 0. [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md) clamps the given value between [minimumWidth](#minimumWidth-prop) and [maximumWidth](#maximumWidth-prop). The value must be set if the [fillWidth](#fillWidth-prop) and [minimumWidth](#minimumWidth-prop) are not set.

