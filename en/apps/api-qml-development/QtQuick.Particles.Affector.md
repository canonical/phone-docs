---
Title: QtQuick.Particles.Affector
---

# QtQuick.Particles.Affector

<span class="subtitle"></span>
<!-- $$$Affector-brief -->
<p>Applies alterations to the attributes of logical particles at any point in their lifetime More...</p>
<!-- @@@Affector -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Age.md">Age</a>, <a href="QtQuick.Particles.Attractor.md">Attractor</a>, <a href="QtQuick.Particles.Friction.md">Friction</a>, <a href="QtQuick.Particles.Gravity.md">Gravity</a>, <a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a>, <a href="QtQuick.Particles.SpriteGoal.md">SpriteGoal</a>, <a href="QtQuick.Particles.Turbulence.md">Turbulence</a>, and <a href="QtQuick.Particles.Wander.md">Wander</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#groups-prop">groups</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#once-prop">once</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#shape-prop">shape</a></b></b> : Shape</li>
<li class="fn"><b><b><a href="#system-prop">system</a></b></b> : ParticleSystem</li>
<li class="fn"><b><b><a href="#whenCollidingWith-prop">whenCollidingWith</a></b></b> : list&lt;string&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#affected-signal">affected</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
</ul>
<!-- $$$Affector-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The base Affector does not alter any attributes, but can be used to emit a signal when a particle meets certain conditions.</p>
<p>If an affector has a defined size, then it will only affect particles within its size and position on screen.</p>
<p>Affectors have different performance characteristics to the other particle system elements. In particular, they have some simplifications to try to maintain a simulation at real-time or faster. When running a system with Affectors, irregular frame timings that grow too large ( &gt; one second per frame) will cause the Affectors to try and cut corners with a faster but less accurate simulation. If the system has multiple affectors the order in which they are applied is not guaranteed, and when simulating larger time shifts they will simulate the whole shift each, which can lead to different results compared to smaller time shifts.</p>
<p>Accurate simulation for large numbers of particles (hundreds) with multiple affectors may be possible on some hardware, but on less capable hardware you should expect small irregularties in the simulation as simulates with worse granularity.</p>
<!-- @@@Affector -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>If enabled is set to false, this affector will not affect any particles.</p>
<p>Usually this is used to conditionally turn an affector on or off.</p>
<p>Default value is true.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$groups -->
<table class="qmlname"><tr valign="top" id="groups-prop"><td class="tblQmlPropNode"><p><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Which logical particle groups will be affected.</p>
<p>If empty, it will affect all particles.</p>
<!-- @@@groups -->
<br/>
<!-- $$$once -->
<table class="qmlname"><tr valign="top" id="once-prop"><td class="tblQmlPropNode"><p><span class="name">once</span> : <span class="type">bool</span></p></td></tr></table><p>If once is set to true, this affector will only affect each particle once in their lifetimes. If the affector normally simulates a continuous effect over time, then it will simulate the effect of one second of time the one instant it affects the particle.</p>
<p>Default value is false.</p>
<!-- @@@once -->
<br/>
<!-- $$$shape -->
<table class="qmlname"><tr valign="top" id="shape-prop"><td class="tblQmlPropNode"><p><span class="name">shape</span> : <span class="type"><a href="QtQuick.Particles.Shape.md">Shape</a></span></p></td></tr></table><p>If a size has been defined, the shape property can be used to affect a non-rectangular area.</p>
<!-- @@@shape -->
<br/>
<!-- $$$system -->
<table class="qmlname"><tr valign="top" id="system-prop"><td class="tblQmlPropNode"><p><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>This is the system which will be affected by the element. If the Affector is a direct child of a <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, it will automatically be associated with it.</p>
<!-- @@@system -->
<br/>
<!-- $$$whenCollidingWith -->
<table class="qmlname"><tr valign="top" id="whenCollidingWith-prop"><td class="tblQmlPropNode"><p><span class="name">whenCollidingWith</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>If any logical particle groups are specified here, then the affector will only be triggered if the particle being examined intersects with a particle of one of these groups.</p>
<p>This is different from the groups property. The groups property selects which particles might be examined, and if they meet other criteria (including being within the bounds of the Affector, modified by shape) then they will be tested again to see if they intersect with a particles from one of the particle groups in whenCollidingWith.</p>
<p>By default, no groups are specified.</p>
<!-- @@@whenCollidingWith -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$affected -->
<table class="qmlname"><tr valign="top" id="affected-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">affected</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>This signal is emitted when a particle is selected to be affected. It will not be emitted if a particle is considered by the Affector but not actually altered in any way.</p>
<p>In the special case where an Affector has no possible effect (e.g&#x2e; Affector {}), this signal will be emitted for all particles being considered if you connect to it. This allows you to execute arbitrary code in response to particles (use the Affector::onAffectParticles signal handler if you want to execute code which affects the particles themselves). As this executes JavaScript code per particle, it is not recommended to use this signal with a high-volume particle system.</p>
<p>x,y is the particle's current position.</p>
<p>The corresponding handler is <code>onAffected</code>.</p>
<!-- @@@affected -->
<br/>
