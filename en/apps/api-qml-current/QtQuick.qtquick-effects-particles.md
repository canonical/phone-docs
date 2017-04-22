---
Title: QtQuick.qtquick-effects-particles
---

# QtQuick.qtquick-effects-particles

<span class="subtitle"></span>
<!-- $$$qtquick-effects-particles.html-description -->
<p>Documentation for all Particle System types can be found on the <a href="QtQuick.qtquick-releasenotes.md#qtquick-particles">QtQuick.Particles</a> module page.</p>
<p>Note that to use types from the particles module, you will need to import the types with the following line:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Particles <span class="number">2.0</span></pre>
<h2 id="the-particlesystem">The ParticleSystem</h2>
<p>This particle system contains four main types of QML types: <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, Painters, Emitters and Affectors.</p>
<p>The <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> type ties all the other types together, and manages the shared timeline. Painters, Emitters and Affectors must all have the same <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> to be able to interact with each other.</p>
<p>You may have as many ParticleSystems as you want subject to this constraint, so the logical separation is to have one <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> for all the types that you want to interact, or just one if the number of types is small and they are easily kept under control..</p>
<h2 id="logical-particles">Logical Particles</h2>
<p>All the particle system types act on &quot;logical particles&quot;. Every particle has a logical representation inside the particle system, and this is what the types act upon. Not every logical particle needs to be visualized, and some logical particles could lead to multiple visual particles being drawn on screen.</p>
<h2 id="particle-groups">Particle Groups</h2>
<p>Every logical particle is a member of a particle group, and each group is identified by a name. If no other group has been specified, a logical particle belongs to the group with the name &quot;&quot; (the empty string), which acts the same as any other group. Groups are used for two purposes, for controlling particles and because they can have stochastic state transitions.</p>
<p>Groups control particles because you can never access an individual particle with any of the particle system types. All types act on groups as a whole, and so any particles that need to behave differently from each other (aside from the usual stochastic parameter variation) will need to be in different groups.</p>
<p>Particles can also change groups dynamically. When this happens the particles trajectory is unaltered, but it can be acted upon by different <a href="#particlepainters">ParticlePainters</a> or Affectors. Particles can either have their group changed by an Affector, or stochastic state transitions can be defined in a <a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a> type.</p>
<p>Generally, groups should only be defined in a <a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a> if they require stochastic state transitions. Otherwise, it is sufficient to have the groups be defined simply by the strings used in the particle/particles properties of the types.</p>
<h2 id="emitters">Emitters</h2>
<p>Emitters emit logical particles into the system. These particles have a trajectory and lifespan, but no visualization. These particles are emitted from the location of the Emitter.</p>
<p>TrailEmitters are a special type of emitter which emits particles from the location of other logicial particles. Any logical particle of the followed type within the bounds of a <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a> will cause particle emission from its location, as if there were an Emitter on it with the same properties as the <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a>.</p>
<h2 id="particlepainters">ParticlePainters</h2>
<p>Painters are the types that visualize logical particles. For each logical particle in the groups assigned to it, which are within its bounds (or outside, if you do not set the clip property on the type) it will be visualized in a manner dependent on the type of <a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a>. The base type of <a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a> does not draw anything. <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> renders an image at the particle location. <a href="QtQuick.Particles.CustomParticle.md">CustomParticle</a> allows you to write your own shaders to render the particles, passing in the logical particle state as vertex data. <a href="QtQuick.Particles.ItemParticle.md">ItemParticle</a> allows you to visualize logical particles using arbitrary QML delegates. ModelParticle is similar, but coordinates model data amongst the delegates in a similar manner to the view classes.</p>
<p>As the <a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a> is the QML type visualizing the particles in the scene, it is its Z value which is important when trying to place particles above or below other types visually.</p>
<h2 id="affectors">Affectors</h2>
<p>Affectors are an optional component of a particle system. They can perform a variety of manipulations to the simulation, such as altering the trajectory of particles or prematurely ending their life in the simulation. For performance reasons, it is recommended not to use Affectors in high-volume particle systems.</p>
<h2 id="stochastic-parameters">Stochastic Parameters</h2>
<p>As particle systems benefit from stochastic control of parameters across a large number of instances, several stochastic helper types are used by the particle system. If you do not wish to have any stochastic variation in these parameters, then do not specify any variation in these types.</p>
<h3 >Directions</h3>
<p>Directions can be specified by angle and magnitude, or by x and y components. While any direction can be specified with either method, there is a significant difference between varying the x and y components and varying the angle and magnitude. Varying the x and y components will lead to a rectangular area around the specified point, while varying the angle will lead to an arc centered on the specified point.</p>
<h3 >Shapes</h3>
<p>The particle system contains several types which represent shapes. These types do not visualize shapes, and are used for the purpose of selecting a random point within the shape. If you want a specific point with no randomness, use a 0 width and 0 height shape (which is the default). Otherwise you can use the shape types to specify an area, so that the result can use a random point selected from that area.</p>
<!-- @@@qtquick-effects-particles.html -->
