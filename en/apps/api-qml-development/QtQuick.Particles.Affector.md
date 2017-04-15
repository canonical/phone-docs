---
Title: QtQuick.Particles.Affector
---
        
Affector
========

<span class="subtitle"></span>
Applies alterations to the attributes of logical particles at any point in their lifetime More...

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
<td>Inherited By:</td>
<td><p><a href="QtQuick.Particles.Age.md">Age</a>, <a href="QtQuick.Particles.Attractor.md">Attractor</a>, <a href="QtQuick.Particles.Friction.md">Friction</a>, <a href="QtQuick.Particles.Gravity.md">Gravity</a>, <a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a>, <a href="QtQuick.Particles.SpriteGoal.md">SpriteGoal</a>, <a href="QtQuick.Particles.Turbulence.md">Turbulence</a>, and <a href="QtQuick.Particles.Wander.md">Wander</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[groups](#groups-prop)**** : list&lt;string&gt;
-   ****[once](#once-prop)**** : bool
-   ****[shape](#shape-prop)**** : Shape
-   ****[system](#system-prop)**** : ParticleSystem
-   ****[whenCollidingWith](#whenCollidingWith-prop)**** : list&lt;string&gt;

<span id="signals"></span>
Signals
-------

-   void ****[affected](#affected-signal)****(real *x*, real *y*)

<span id="details"></span>
Detailed Description
--------------------

The base Affector does not alter any attributes, but can be used to emit a signal when a particle meets certain conditions.

If an affector has a defined size, then it will only affect particles within its size and position on screen.

Affectors have different performance characteristics to the other particle system elements. In particular, they have some simplifications to try to maintain a simulation at real-time or faster. When running a system with Affectors, irregular frame timings that grow too large ( &gt; one second per frame) will cause the Affectors to try and cut corners with a faster but less accurate simulation. If the system has multiple affectors the order in which they are applied is not guaranteed, and when simulating larger time shifts they will simulate the whole shift each, which can lead to different results compared to smaller time shifts.

Accurate simulation for large numbers of particles (hundreds) with multiple affectors may be possible on some hardware, but on less capable hardware you should expect small irregularties in the simulation as simulates with worse granularity.

Property Documentation
----------------------

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

If enabled is set to false, this affector will not affect any particles.

Usually this is used to conditionally turn an affector on or off.

Default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groups-prop"></span><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Which logical particle groups will be affected.

If empty, it will affect all particles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="once-prop"></span><span class="name">once</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If once is set to true, this affector will only affect each particle once in their lifetimes. If the affector normally simulates a continuous effect over time, then it will simulate the effect of one second of time the one instant it affects the particle.

Default value is false.

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

If a size has been defined, the shape property can be used to affect a non-rectangular area.

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

This is the system which will be affected by the element. If the Affector is a direct child of a [ParticleSystem](../QtQuick.Particles.ParticleSystem.md), it will automatically be associated with it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="whenCollidingWith-prop"></span><span class="name">whenCollidingWith</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

If any logical particle groups are specified here, then the affector will only be triggered if the particle being examined intersects with a particle of one of these groups.

This is different from the groups property. The groups property selects which particles might be examined, and if they meet other criteria (including being within the bounds of the Affector, modified by shape) then they will be tested again to see if they intersect with a particles from one of the particle groups in whenCollidingWith.

By default, no groups are specified.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="affected-signal"></span><span class="type">void</span> <span class="name">affected</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a particle is selected to be affected. It will not be emitted if a particle is considered by the Affector but not actually altered in any way.

In the special case where an Affector has no possible effect (e.g. Affector {}), this signal will be emitted for all particles being considered if you connect to it. This allows you to execute arbitrary code in response to particles (use the Affector::onAffectParticles signal handler if you want to execute code which affects the particles themselves). As this executes JavaScript code per particle, it is not recommended to use this signal with a high-volume particle system.

x,y is the particle's current position.

The corresponding handler is `onAffected`.

