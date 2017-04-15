---
Title: QtQuick.Particles.Turbulence
---
        
Turbulence
==========

<span class="subtitle"></span>
Provides fluid-like forces from a noise image More...

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

-   ****[noiseSource](#noiseSource-prop)**** : url
-   ****[strength](#strength-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Turbulence Element scales the noise source over the area it affects, and uses the curl of that source to generate force vectors.

Turbulence requires a fixed size. Unlike other affectors, a 0x0 Turbulence element will affect no particles.

The source should be relatively smooth black and white noise, such as perlin noise.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="noiseSource-prop"></span><span class="name">noiseSource</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The source image to generate the turbulence from. It will be scaled to the size of the element, so equal or larger sizes will give better results. Tweaking this image is the only way to tweak behavior such as where vortices are or how many exist.

The source should be a relatively smooth black and white noise image, such as perlin noise. A default image will be used if none is provided.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strength-prop"></span><span class="name">strength</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The magnitude of the velocity vector at any point varies between zero and the square root of two. It will then be multiplied by strength to get the velocity per second for the particles affected by the turbulence.

