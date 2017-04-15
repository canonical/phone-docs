---
Title: QtQuick.Particles.Particle
---
        
Particle
========

<span class="subtitle"></span>
Represents particles manipulated by emitters and affectors More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[alpha](#alpha-prop)**** : real
-   ****[autoRotate](#autoRotate-prop)**** : bool
-   ****[ax](#ax-prop)**** : real
-   ****[ay](#ay-prop)**** : real
-   ****[blue](#blue-prop)**** : real
-   ****[currentSize](#currentSize-prop)**** : real
-   ****[endSize](#endSize-prop)**** : real
-   ****[green](#green-prop)**** : real
-   ****[initialAX](#initialAX-prop)**** : real
-   ****[initialAY](#initialAY-prop)**** : real
-   ****[initialVX](#initialVX-prop)**** : real
-   ****[initialVY](#initialVY-prop)**** : real
-   ****[initialX](#initialX-prop)**** : real
-   ****[initialY](#initialY-prop)**** : real
-   ****[lifeLeft](#lifeLeft-prop)**** : real
-   ****[lifeSpan](#lifeSpan-prop)**** : real
-   ****[red](#red-prop)**** : real
-   ****[rotation](#rotation-prop)**** : real
-   ****[rotationVelocity](#rotationVelocity-prop)**** : real
-   ****[startSize](#startSize-prop)**** : real
-   ****[t](#t-prop)**** : real
-   ****[update](#update-prop)**** : bool
-   ****[vx](#vx-prop)**** : real
-   ****[vy](#vy-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[xDeformationVectorX](#xDeformationVectorX-prop)**** : real
-   ****[xDeformationVectorY](#xDeformationVectorY-prop)**** : real
-   ****[y](#y-prop)**** : real
-   ****[yDeformationVectorX](#yDeformationVectorX-prop)**** : real
-   ****[yDeformationVectorY](#yDeformationVectorY-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Particle elements are always managed internally by the [ParticleSystem](../QtQuick.Particles.ParticleSystem.md) and cannot be created in QML. However, sometimes they are exposed via signals so as to allow arbitrary changes to the particle state

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alpha-prop"></span><span class="name">alpha</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw colorized particles. When it does so, alpha is used as the alpha channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoRotate-prop"></span><span class="name">autoRotate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If autoRotate is true, then the particle's rotation will be set so that it faces the direction of travel, plus any rotation from the rotation or [rotationVelocity](#rotationVelocity-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ax-prop"></span><span class="name">ax</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x acceleration of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ay-prop"></span><span class="name">ay</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y acceleration of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blue-prop"></span><span class="name">blue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw colorized particles. When it does so, blue is used as the blue channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentSize-prop"></span><span class="name">currentSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The currentSize of the particle, interpolating between [startSize](#startSize-prop) and [endSize](#endSize-prop) based on the currentTime.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endSize-prop"></span><span class="name">endSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels that the particle image is at the end of its life. If this value is less than 0, then it is disregarded and the particle will have its [startSize](#startSize-prop) for the entire lifetime.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="green-prop"></span><span class="name">green</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw colorized particles. When it does so, green is used as the green channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialAX-prop"></span><span class="name">initialAX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialAY-prop"></span><span class="name">initialAY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialVX-prop"></span><span class="name">initialVX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialVY-prop"></span><span class="name">initialVY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialX-prop"></span><span class="name">initialX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialY-prop"></span><span class="name">initialY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeLeft-prop"></span><span class="name">lifeLeft</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time in seconds that the particle has left to live at the current point in time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpan-prop"></span><span class="name">lifeSpan</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time in seconds that the particle will live for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="red-prop"></span><span class="name">red</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw colorized particles. When it does so, red is used as the red channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Degrees clockwise that the particle image is rotated at the beginning of its life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotationVelocity-prop"></span><span class="name">rotationVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Degrees clockwise per second that the particle image is rotated at while alive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startSize-prop"></span><span class="name">startSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels that the particle image is at the start of its life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="t-prop"></span><span class="name">t</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time, in seconds since the beginning of the simulation, that the particle was born.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-prop"></span><span class="name">update</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Inside an Affector, the changes made to the particle will only be applied if update is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vx-prop"></span><span class="name">vx</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x velocity of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vy-prop"></span><span class="name">vy</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y velocity of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x coordinate of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xDeformationVectorX-prop"></span><span class="name">xDeformationVectorX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xDeformationVectorY-prop"></span><span class="name">xDeformationVectorY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y coordinate of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yDeformationVectorX-prop"></span><span class="name">yDeformationVectorX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yDeformationVectorY-prop"></span><span class="name">yDeformationVectorY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y component of the deformation vector along the Y axis. [ImageParticle](../QtQuick.Particles.ImageParticle.md) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

