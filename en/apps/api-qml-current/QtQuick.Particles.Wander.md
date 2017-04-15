---
Title: QtQuick.Particles.Wander
---
        
Wander
======

<span class="subtitle"></span>
For applying random particle trajectory More...

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
<td><p><a href="QtQuick.Particles.Affector.md">Affector</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[affectedParameter](#affectedParameter-prop)**** : AffectableParameter
-   ****[pace](#pace-prop)**** : real
-   ****[xVariance](#xVariance-prop)**** : real
-   ****[yVariance](#yVariance-prop)**** : real

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
<td><p><span id="affectedParameter-prop"></span><span class="name">affectedParameter</span> : <span class="type">AffectableParameter</span></p></td>
</tr>
</tbody>
</table>

What attribute of particles is directly affected.

-   PointAttractor.Position
-   PointAttractor.Velocity
-   PointAttractor.Acceleration

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pace-prop"></span><span class="name">pace</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Maximum attribute change per second.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xVariance-prop"></span><span class="name">xVariance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Maximum attribute x value (as a result of Wander).

If unset, Wander will not affect x values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yVariance-prop"></span><span class="name">yVariance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Maximum attribute y value (as a result of Wander).

If unset, Wander will not affect y values.

