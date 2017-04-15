---
Title: Ubuntu.Components.Styles.BottomEdgeStyle
---
        
BottomEdgeStyle
===============

<span class="subtitle"></span>
Style API for BottomEdge content holder panel. More...

|                   |                                     |
|-------------------|-------------------------------------|
| Import Statement: | import Ubuntu.Components.Styles 1.3 |
| Since:            | Ubuntu.Components.Styles 1.3        |

<span id="properties"></span>
Properties
----------

-   ****[contentItem](#contentItem-prop)**** : Item
-   ****[panel](#panel-prop)**** : Item
-   ****[panelAnimation](#panelAnimation-prop)**** : Animation
-   ****[revealThreshold](#revealThreshold-prop)**** : real

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
<td><p><span id="contentItem-prop"></span><span class="name">contentItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Holds the current content item created from [BottomEdge::contentUrl](../Ubuntu.Components.BottomEdge.md#contentUrl-prop) or [BottomEdge::contentComponent](../Ubuntu.Components.BottomEdge.md#contentComponent-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panel-prop"></span><span class="name">panel</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Represents the item holding the bottom edge content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panelAnimation-prop"></span><span class="name">panelAnimation</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Animation.md">Animation</a></span></p></td>
</tr>
</tbody>
</table>

Holds the animation of the panel. [BottomEdge](../Ubuntu.Components.BottomEdge.md) requires this property to know when the bottom edge is fully committed or collapsed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="revealThreshold-prop"></span><span class="name">revealThreshold</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Holds the style configured value which drives when the bottom edge content should be exposed.

