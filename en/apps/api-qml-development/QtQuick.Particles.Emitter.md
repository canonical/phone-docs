---
Title: QtQuick.Particles.Emitter
---
        
Emitter
=======

<span class="subtitle"></span>
Emits logical particles More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[acceleration](#acceleration-prop)**** : StochasticDirection
-   ****[emitRate](#emitRate-prop)**** : real
-   ****[enabled](#enabled-prop)**** : bool
-   ****[endSize](#endSize-prop)**** : real
-   ****[group](#group-prop)**** : string
-   ****[lifeSpan](#lifeSpan-prop)**** : int
-   ****[lifeSpanVariation](#lifeSpanVariation-prop)**** : int
-   ****[maximumEmitted](#maximumEmitted-prop)**** : int
-   ****[shape](#shape-prop)**** : Shape
-   ****[size](#size-prop)**** : real
-   ****[sizeVariation](#sizeVariation-prop)**** : real
-   ****[startTime](#startTime-prop)**** : int
-   ****[system](#system-prop)**** : ParticleSystem
-   ****[velocity](#velocity-prop)**** : StochasticDirection
-   ****[velocityFromMovement](#velocityFromMovement-prop)**** : qreal

<span id="signals"></span>
Signals
-------

-   void ****[emitParticles](#emitParticles-signal)****(Array *particles*)

<span id="methods"></span>
Methods
-------

-   void ****[burst](#burst-method-2)****(int *count*, int *x*, int *y*)
-   void ****[burst](#burst-method)****(int *count*)
-   void ****[pulse](#pulse-method)****(int *duration*)

<span id="details"></span>
Detailed Description
--------------------

This element emits logical particles into the [ParticleSystem](../QtQuick.Particles.ParticleSystem.md), with the given starting attributes.

Note that logical particles are not automatically rendered, you will need to have one or more [ParticlePainter](../QtQuick.Particles.ParticlePainter.md) elements visualizing them.

Note that the given starting attributes can be modified at any point in the particle's lifetime by any Affector element in the same [ParticleSystem](../QtQuick.Particles.ParticleSystem.md). This includes attributes like lifespan.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceleration-prop"></span><span class="name">acceleration</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

The starting acceleraton of the particles emitted.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitRate-prop"></span><span class="name">emitRate</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Number of particles emitted per second.

Default value is 10 particles per second.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to false, the emitter will cease emissions until it is set to true.

Default value is true.

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

The size in pixels of the particles at the end of their life. Size will be linearly interpolated during the life of the particle from this value and size. If endSize is -1, then the size of the particle will remain constant at the starting size.

Default value is -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="group-prop"></span><span class="name">group</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the logical particle group which it will emit into.

Default value is "" (empty string).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpan-prop"></span><span class="name">lifeSpan</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time in milliseconds each emitted particle should last for.

If you do not want particles to automatically die after a time, for example if you wish to dispose of them manually, set lifeSpan to Emitter.InfiniteLife.

lifeSpans greater than or equal to 600000 (10 minutes) will be treated as infinite. Particles with lifeSpans less than or equal to 0 will start out dead.

Default value is 1000 (one second).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpanVariation-prop"></span><span class="name">lifeSpanVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Particle lifespans will vary by up to this much in either direction.

Default value is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumEmitted-prop"></span><span class="name">maximumEmitted</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum number of particles at a time that this emitter will have alive.

This can be set as a performance optimization (when using burst and pulse) or to stagger emissions.

If this is set to a number below zero, then there is no maximum limit on the number of particles this emitter can have alive.

The default value is -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shape-prop"></span><span class="name">shape</span> : <span class="type"><a href="QtQuick.Particles.Shape.md">Shape</a></span></p></td>
</tr>
</tbody>
</table>

This shape is applied with the size of the Emitter. Particles will be emitted randomly from any area covered by the shape.

The default shape is a filled in rectangle, which corresponds to the full bounding box of the Emitter.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="size-prop"></span><span class="name">size</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels of the particles at the start of their life.

Default value is 16.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sizeVariation-prop"></span><span class="name">sizeVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size of a particle can vary by this much up or down from size/[endSize](#endSize-prop). The same random addition is made to both size and [endSize](#endSize-prop) for a single particle.

Default value is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startTime-prop"></span><span class="name">startTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

If this value is set when the emitter is loaded, then it will emit particles from the past, up to startTime milliseconds ago. These will simulate as if they were emitted then, but will not have any affectors applied to them. Affectors will take effect from the present time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="system-prop"></span><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td>
</tr>
</tbody>
</table>

This is the Particle system that the Emitter will emit into. This can be omitted if the Emitter is a direct child of the [ParticleSystem](../QtQuick.Particles.ParticleSystem.md)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

The starting velocity of the particles emitted.

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
<td><p><span id="emitParticles-signal"></span><span class="type">void</span> <span class="name">emitParticles</span>(<span class="type">Array</span> <em>particles</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when particles are emitted. particles is a JavaScript array of Particle objects. You can modify particle attributes directly within the handler.

Note that JavaScript is slower to execute, so it is not recommended to use this in high-volume particle systems.

The corresponding handler is `onEmitParticles`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="burst-method-2"></span><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span> <em>count</em>, <span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Emits count particles from this emitter immediately. The particles are emitted as if the Emitter was positioned at x,y but all other properties are the same.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="burst-method"></span><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span> <em>count</em>)</p></td>
</tr>
</tbody>
</table>

Emits count particles from this emitter immediately.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pulse-method"></span><span class="type">void</span> <span class="name">pulse</span>(<span class="type">int</span> <em>duration</em>)</p></td>
</tr>
</tbody>
</table>

If the emitter is not enabled, enables it for duration milliseconds and then switches it back off.

