---
Title: QtQuick.Particles.Gravity
---
        
Gravity
=======

<span class="subtitle"></span>
For applying acceleration in an angle More...

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

-   ****[acceleration](#acceleration-prop)**** : real
-   ****[angle](#angle-prop)**** : real
-   ****[magnitude](#magnitude-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

This element will accelerate all affected particles to a vector of the specified magnitude in the specified angle. If the angle and acceleration do not vary, it is more efficient to set the specified acceleration on the Emitter.

This element models the gravity of a massive object whose center of gravity is far away (and thus the gravitational pull is effectively constant across the scene). To model the gravity of an object near or inside the scene, use PointAttractor.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceleration-prop"></span><span class="name">acceleration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Name changed to magnitude, will be removed soon.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Angle of acceleration.

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

Pixels per second that objects will be accelerated by.

