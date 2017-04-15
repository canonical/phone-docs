---
Title: QtQuick.Particles.TrailEmitter
---
        
TrailEmitter
============

<span class="subtitle"></span>
Emits logical particles from other logical particles More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[emitHeight](#emitHeight-prop)**** : real
-   ****[emitRatePerParticle](#emitRatePerParticle-prop)**** : real
-   ****[emitShape](#emitShape-prop)**** : Shape
-   ****[emitWidth](#emitWidth-prop)**** : real
-   ****[follow](#follow-prop)**** : string
-   ****[velocityFromMovement](#velocityFromMovement-prop)**** : qreal

<span id="signals"></span>
Signals
-------

-   void ****[emitFollowParticles](#emitFollowParticles-signal)****(Array *particles*, Particle *followed*)

<span id="details"></span>
Detailed Description
--------------------

This element emits logical particles into the [ParticleSystem](../QtQuick.Particles.ParticleSystem.md), with the starting positions based on those of other logical particles.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitHeight-prop"></span><span class="name">emitHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The height in pixels the [emitShape](#emitShape-prop) is scaled to. If set to [TrailEmitter](index.html).ParticleSize, the height will be the current size of the particle being followed.

Default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitRatePerParticle-prop"></span><span class="name">emitRatePerParticle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitShape-prop"></span><span class="name">emitShape</span> : <span class="type"><a href="QtQuick.Particles.Shape.md">Shape</a></span></p></td>
</tr>
</tbody>
</table>

As the area of a [TrailEmitter](index.html) is the area it follows, a separate shape can be provided to be the shape it emits out of. This shape has width and height specified by [emitWidth](#emitWidth-prop) and [emitHeight](#emitHeight-prop), and is centered on the followed particle's position.

The default shape is a filled Rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitWidth-prop"></span><span class="name">emitWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The width in pixels the [emitShape](#emitShape-prop) is scaled to. If set to [TrailEmitter](index.html).ParticleSize, the width will be the current size of the particle being followed.

Default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="follow-prop"></span><span class="name">follow</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The type of logical particle which this is emitting from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocityFromMovement-prop"></span><span class="name">velocityFromMovement</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

If this value is non-zero, then any movement of the emitter will provide additional starting velocity to the particles based on the movement. The additional vector will be the same angle as the emitter's movement, with a magnitude that is the magnitude of the emitters movement multiplied by velocityFromMovement.

Default value is 0.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitFollowParticles-signal"></span><span class="type">void</span> <span class="name">emitFollowParticles</span>(<span class="type">Array</span> <em>particles</em>, <span class="type"><a href="QtQuick.Particles.Particle.md">Particle</a></span> <em>followed</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when particles are emitted from the *followed* particle. *particles* contains an array of particle objects which can be directly manipulated.

The corresponding handler is `onEmitFollowParticles`. If you use this signal handler, emitParticles will not be emitted.

