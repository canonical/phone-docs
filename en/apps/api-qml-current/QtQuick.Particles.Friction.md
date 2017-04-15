---
Title: QtQuick.Particles.Friction
---
        
Friction
========

<span class="subtitle"></span>
For applying friction proportional to the particle's current velocity More...

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

-   ****[factor](#factor-prop)**** : real
-   ****[threshold](#threshold-prop)**** : real

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
<td><p><span id="factor-prop"></span><span class="name">factor</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

A drag will be applied to moving objects which is this factor of their current velocity.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="threshold-prop"></span><span class="name">threshold</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The drag will only be applied to objects with a velocity above the threshold velocity. The drag applied will bring objects down to the threshold velocity, but no further.

The default threshold is 0

