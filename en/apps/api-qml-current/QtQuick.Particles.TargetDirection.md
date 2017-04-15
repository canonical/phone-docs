---
Title: QtQuick.Particles.TargetDirection
---
        
TargetDirection
===============

<span class="subtitle"></span>
For specifying a direction towards the target point More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick.Particles 2.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Particles.Direction.md">Direction</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[magnitude](#magnitude-prop)**** : real
-   ****[magnitudeVariation](#magnitudeVariation-prop)**** : real
-   ****[proportionalMagnitude](#proportionalMagnitude-prop)**** : bool
-   ****[targetItem](#targetItem-prop)**** : Item
-   ****[targetVariation](#targetVariation-prop)**** : real
-   ****[targetX](#targetX-prop)**** : real
-   ****[targetY](#targetY-prop)**** : real

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
<td><p><span id="magnitude-prop"></span><span class="name">magnitude</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="magnitudeVariation-prop"></span><span class="name">magnitudeVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proportionalMagnitude-prop"></span><span class="name">proportionalMagnitude</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the value of magnitude and [magnitudeVariation](#magnitudeVariation-prop) shall be interpreted as multiples of the distance between the source point and the target point, per second.

If false(default), then the value of magnitude and [magnitudeVariation](#magnitudeVariation-prop) shall be interpreted as pixels per second.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetItem-prop"></span><span class="name">targetItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

If specified, this will take precedence over [targetX](#targetX-prop) and [targetY](#targetY-prop). The targeted point will be the center of the specified Item

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetVariation-prop"></span><span class="name">targetVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetX-prop"></span><span class="name">targetX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetY-prop"></span><span class="name">targetY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

