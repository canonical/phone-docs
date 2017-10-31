---
Title: QtQuick.Particles.Emitter
---

# QtQuick.Particles.Emitter

<span class="subtitle"></span>
<!-- $$$Emitter-brief -->
<p>Emits logical particles More...</p>
<!-- @@@Emitter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acceleration-prop">acceleration</a></b></b> : StochasticDirection</li>
<li class="fn"><b><b><a href="#emitRate-prop">emitRate</a></b></b> : real</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#endSize-prop">endSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#group-prop">group</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lifeSpan-prop">lifeSpan</a></b></b> : int</li>
<li class="fn"><b><b><a href="#lifeSpanVariation-prop">lifeSpanVariation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumEmitted-prop">maximumEmitted</a></b></b> : int</li>
<li class="fn"><b><b><a href="#shape-prop">shape</a></b></b> : Shape</li>
<li class="fn"><b><b><a href="#size-prop">size</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sizeVariation-prop">sizeVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startTime-prop">startTime</a></b></b> : int</li>
<li class="fn"><b><b><a href="#system-prop">system</a></b></b> : ParticleSystem</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : StochasticDirection</li>
<li class="fn"><b><b><a href="#velocityFromMovement-prop">velocityFromMovement</a></b></b> : qreal</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#emitParticles-signal">emitParticles</a></b></b>(Array <i>particles</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#burst-method-2">burst</a></b></b>(int <i>count</i>, int <i>x</i>, int <i>y</i>)</li>
<li class="fn">void <b><b><a href="#burst-method">burst</a></b></b>(int <i>count</i>)</li>
<li class="fn">void <b><b><a href="#pulse-method">pulse</a></b></b>(int <i>duration</i>)</li>
</ul>
<!-- $$$Emitter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element emits logical particles into the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, with the given starting attributes.</p>
<p>Note that logical particles are not automatically rendered, you will need to have one or more <a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a> elements visualizing them.</p>
<p>Note that the given starting attributes can be modified at any point in the particle's lifetime by any Affector element in the same <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>. This includes attributes like lifespan.</p>
<!-- @@@Emitter -->
<h2>Property Documentation</h2>
<!-- $$$acceleration -->
<table class="qmlname"><tr valign="top" id="acceleration-prop"><td class="tblQmlPropNode"><p><span class="name">acceleration</span> : <span class="type">StochasticDirection</span></p></td></tr></table><p>The starting acceleraton of the particles emitted.</p>
<!-- @@@acceleration -->
<br/>
<!-- $$$emitRate -->
<table class="qmlname"><tr valign="top" id="emitRate-prop"><td class="tblQmlPropNode"><p><span class="name">emitRate</span> : <span class="type">real</span></p></td></tr></table><p>Number of particles emitted per second.</p>
<p>Default value is 10 particles per second.</p>
<!-- @@@emitRate -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>If set to false, the emitter will cease emissions until it is set to true.</p>
<p>Default value is true.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$endSize -->
<table class="qmlname"><tr valign="top" id="endSize-prop"><td class="tblQmlPropNode"><p><span class="name">endSize</span> : <span class="type">real</span></p></td></tr></table><p>The size in pixels of the particles at the end of their life. Size will be linearly interpolated during the life of the particle from this value and size. If endSize is -1, then the size of the particle will remain constant at the starting size.</p>
<p>Default value is -1.</p>
<!-- @@@endSize -->
<br/>
<!-- $$$group -->
<table class="qmlname"><tr valign="top" id="group-prop"><td class="tblQmlPropNode"><p><span class="name">group</span> : <span class="type">string</span></p></td></tr></table><p>This is the logical particle group which it will emit into.</p>
<p>Default value is &quot;&quot; (empty string).</p>
<!-- @@@group -->
<br/>
<!-- $$$lifeSpan -->
<table class="qmlname"><tr valign="top" id="lifeSpan-prop"><td class="tblQmlPropNode"><p><span class="name">lifeSpan</span> : <span class="type">int</span></p></td></tr></table><p>The time in milliseconds each emitted particle should last for.</p>
<p>If you do not want particles to automatically die after a time, for example if you wish to dispose of them manually, set lifeSpan to Emitter.InfiniteLife.</p>
<p>lifeSpans greater than or equal to 600000 (10 minutes) will be treated as infinite. Particles with lifeSpans less than or equal to 0 will start out dead.</p>
<p>Default value is 1000 (one second).</p>
<!-- @@@lifeSpan -->
<br/>
<!-- $$$lifeSpanVariation -->
<table class="qmlname"><tr valign="top" id="lifeSpanVariation-prop"><td class="tblQmlPropNode"><p><span class="name">lifeSpanVariation</span> : <span class="type">int</span></p></td></tr></table><p>Particle lifespans will vary by up to this much in either direction.</p>
<p>Default value is 0.</p>
<!-- @@@lifeSpanVariation -->
<br/>
<!-- $$$maximumEmitted -->
<table class="qmlname"><tr valign="top" id="maximumEmitted-prop"><td class="tblQmlPropNode"><p><span class="name">maximumEmitted</span> : <span class="type">int</span></p></td></tr></table><p>The maximum number of particles at a time that this emitter will have alive.</p>
<p>This can be set as a performance optimization (when using burst and pulse) or to stagger emissions.</p>
<p>If this is set to a number below zero, then there is no maximum limit on the number of particles this emitter can have alive.</p>
<p>The default value is -1.</p>
<!-- @@@maximumEmitted -->
<br/>
<!-- $$$shape -->
<table class="qmlname"><tr valign="top" id="shape-prop"><td class="tblQmlPropNode"><p><span class="name">shape</span> : <span class="type"><a href="QtQuick.Particles.Shape.md">Shape</a></span></p></td></tr></table><p>This shape is applied with the size of the Emitter. Particles will be emitted randomly from any area covered by the shape.</p>
<p>The default shape is a filled in rectangle, which corresponds to the full bounding box of the Emitter.</p>
<!-- @@@shape -->
<br/>
<!-- $$$size -->
<table class="qmlname"><tr valign="top" id="size-prop"><td class="tblQmlPropNode"><p><span class="name">size</span> : <span class="type">real</span></p></td></tr></table><p>The size in pixels of the particles at the start of their life.</p>
<p>Default value is 16.</p>
<!-- @@@size -->
<br/>
<!-- $$$sizeVariation -->
<table class="qmlname"><tr valign="top" id="sizeVariation-prop"><td class="tblQmlPropNode"><p><span class="name">sizeVariation</span> : <span class="type">real</span></p></td></tr></table><p>The size of a particle can vary by this much up or down from size/<a href="#endSize-prop">endSize</a>. The same random addition is made to both size and <a href="#endSize-prop">endSize</a> for a single particle.</p>
<p>Default value is 0.</p>
<!-- @@@sizeVariation -->
<br/>
<!-- $$$startTime -->
<table class="qmlname"><tr valign="top" id="startTime-prop"><td class="tblQmlPropNode"><p><span class="name">startTime</span> : <span class="type">int</span></p></td></tr></table><p>If this value is set when the emitter is loaded, then it will emit particles from the past, up to startTime milliseconds ago. These will simulate as if they were emitted then, but will not have any affectors applied to them. Affectors will take effect from the present time.</p>
<!-- @@@startTime -->
<br/>
<!-- $$$system -->
<table class="qmlname"><tr valign="top" id="system-prop"><td class="tblQmlPropNode"><p><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>This is the Particle system that the Emitter will emit into. This can be omitted if the Emitter is a direct child of the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></p>
<!-- @@@system -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">StochasticDirection</span></p></td></tr></table><p>The starting velocity of the particles emitted.</p>
<!-- @@@velocity -->
<br/>
<!-- $$$velocityFromMovement -->
<table class="qmlname"><tr valign="top" id="velocityFromMovement-prop"><td class="tblQmlPropNode"><p><span class="name">velocityFromMovement</span> : <span class="type">qreal</span></p></td></tr></table><p>If this value is non-zero, then any movement of the emitter will provide additional starting velocity to the particles based on the movement. The additional vector will be the same angle as the emitter's movement, with a magnitude that is the magnitude of the emitters movement multiplied by velocityFromMovement.</p>
<p>Default value is 0.</p>
<!-- @@@velocityFromMovement -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$emitParticles -->
<table class="qmlname"><tr valign="top" id="emitParticles-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">emitParticles</span>(<span class="type">Array</span><i> particles</i>)</p></td></tr></table><p>This signal is emitted when particles are emitted. particles is a JavaScript array of Particle objects. You can modify particle attributes directly within the handler.</p>
<p>Note that JavaScript is slower to execute, so it is not recommended to use this in high-volume particle systems.</p>
<p>The corresponding handler is <code>onEmitParticles</code>.</p>
<!-- @@@emitParticles -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$burst -->
<table class="qmlname"><tr valign="top" id="burst-method-2"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span><i> count</i>, <span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Emits count particles from this emitter immediately. The particles are emitted as if the Emitter was positioned at x,y but all other properties are the same.</p>
<!-- @@@burst -->
<br/>
<!-- $$$burst -->
<table class="qmlname"><tr valign="top" id="burst-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span><i> count</i>)</p></td></tr></table><p>Emits count particles from this emitter immediately.</p>
<!-- @@@burst -->
<br/>
<!-- $$$pulse -->
<table class="qmlname"><tr valign="top" id="pulse-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">pulse</span>(<span class="type">int</span><i> duration</i>)</p></td></tr></table><p>If the emitter is not enabled, enables it for duration milliseconds and then switches it back off.</p>
<!-- @@@pulse -->
<br/>
