---
Title: QtQuick.Particles.Attractor
---
        
Attractor
=========

<span class="subtitle"></span>
For attracting particles towards a specific point More...

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
-   ****[proportionalToDistance](#proportionalToDistance-prop)**** : Proportion

<span id="details"></span>
Detailed Description
--------------------

Note that the size and position of this element affects which particles it affects. The size of the point attracted to is always 0x0, and the location of that point is specified by the pointX and pointY properties.

Note that Attractor has the standard Item x,y,width and height properties. Like other affectors, these represent the affected area. They do not represent the 0x0 point which is the target of the attraction.

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

-   Attractor.Position
-   Attractor.Velocity
-   Attractor.Acceleration

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proportionalToDistance-prop"></span><span class="name">proportionalToDistance</span> : <span class="type">Proportion</span></p></td>
</tr>
</tbody>
</table>

How the distance from the particle to the point affects the strength of the attraction.

-   Attractor.Constant
-   Attractor.Linear
-   Attractor.InverseLinear
-   Attractor.Quadratic
-   Attractor.InverseQuadratic

