---
Title: Ubuntu.Components.ViewColumn
---
        
ViewColumn
==========

<span class="subtitle"></span>
View column metrics configuration for SplitView. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

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

The component provides width metrics configuration for [SplitView](../Ubuntu.Components.Labs.SplitView.md) layout columns. The values are applied on columns by an active [SplitViewLayout](../Ubuntu.Components.SplitViewLayout.md). On resizing, the values are preserved for the entire lifetime of the component, even when the active layout is changed into an other one. When changed back, the previous values will be used.

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

If set, the column width will take the space available after all the other columns with non-fill width are configured. This means that if there is more than one column configured to fill width, the reminder width is split evenly between these columns. If all columns are configured to fill width, the colum widths will be split evenly between all the columns.

**Note:** When a column configured with fillWidth is resized, the properties will not be altered, but the fillWidth wioll no longer be taken into account. Instead, the [preferredWidth](#preferredWidth-prop) will drive the width of that column from that point on.

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

Specifies the maximum width of the column. The number must be a positive value and bigger than the [minimumWidth](#minimumWidth-prop) value.

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

Specifies the minimum width of the column. The number must be a positive value and less or equal than the [maximumWidth](#maximumWidth-prop) value.

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

The property holds the preferred width of the column. The value must be situated in between [minimumWidth](#minimumWidth-prop) and [maximumWidth](#maximumWidth-prop). In case [fillWidth](#fillWidth-prop) is set, the value will hold the actual width of the column, but setting its value will not affect the width of the column.

