---
Title: QtQuick.Particles.AngleDirection
---
        
AngleDirection
==============

<span class="subtitle"></span>
For specifying a direction that varies in angle More...

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

-   ****[angle](#angle-prop)**** : real
-   ****[angleVariation](#angleVariation-prop)**** : real
-   ****[magnitude](#magnitude-prop)**** : real
-   ****[magnitudeVariation](#magnitudeVariation-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The AngledDirection element allows both the specification of a direction by angle and magnitude, as well as varying the parameters by angle or magnitude.

Property Documentation
----------------------

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

This property specifies the base angle for the direction. The angle of this direction will vary by no more than [angleVariation](#angleVariation-prop) from this angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angleVariation-prop"></span><span class="name">angleVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum angle variation for the direction. The angle of the direction will vary by up to angleVariation clockwise and anticlockwise from the value specified in angle.

Angle is specified by degrees clockwise from straight right.

The default value is zero.

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

This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than [magnitudeVariation](#magnitudeVariation-prop) from this magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

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

This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than magnitudeVariation from the base magnitude.

Magnitude is specified in units of pixels per second.

The default value is zero.

