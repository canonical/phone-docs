---
Title: QtQuick.Particles.TrailEmitter
---

# QtQuick.Particles.TrailEmitter

<span class="subtitle"></span>
<!-- $$$TrailEmitter-brief -->
<p>Emits logical particles from other logical particles More...</p>
<!-- @@@TrailEmitter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#emitHeight-prop">emitHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#emitRatePerParticle-prop">emitRatePerParticle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#emitShape-prop">emitShape</a></b></b> : Shape</li>
<li class="fn"><b><b><a href="#emitWidth-prop">emitWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#follow-prop">follow</a></b></b> : string</li>
<li class="fn"><b><b><a href="#velocityFromMovement-prop">velocityFromMovement</a></b></b> : qreal</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#emitFollowParticles-signal">emitFollowParticles</a></b></b>(Array <i>particles</i>, Particle <i>followed</i>)</li>
</ul>
<!-- $$$TrailEmitter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element emits logical particles into the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, with the starting positions based on those of other logical particles.</p>
<!-- @@@TrailEmitter -->
<h2>Property Documentation</h2>
<!-- $$$emitHeight -->
<table class="qmlname"><tr valign="top" id="emitHeight-prop"><td class="tblQmlPropNode"><p><span class="name">emitHeight</span> : <span class="type">real</span></p></td></tr></table><p>The height in pixels the <a href="#emitShape-prop">emitShape</a> is scaled to. If set to <a href="index.html">TrailEmitter</a>.ParticleSize, the height will be the current size of the particle being followed.</p>
<p>Default is 0.</p>
<!-- @@@emitHeight -->
<br/>
<!-- $$$emitRatePerParticle -->
<table class="qmlname"><tr valign="top" id="emitRatePerParticle-prop"><td class="tblQmlPropNode"><p><span class="name">emitRatePerParticle</span> : <span class="type">real</span></p></td></tr></table><!-- @@@emitRatePerParticle -->
<br/>
<!-- $$$emitShape -->
<table class="qmlname"><tr valign="top" id="emitShape-prop"><td class="tblQmlPropNode"><p><span class="name">emitShape</span> : <span class="type"><a href="QtQuick.Particles.Shape.md">Shape</a></span></p></td></tr></table><p>As the area of a <a href="index.html">TrailEmitter</a> is the area it follows, a separate shape can be provided to be the shape it emits out of. This shape has width and height specified by <a href="#emitWidth-prop">emitWidth</a> and <a href="#emitHeight-prop">emitHeight</a>, and is centered on the followed particle's position.</p>
<p>The default shape is a filled Rectangle.</p>
<!-- @@@emitShape -->
<br/>
<!-- $$$emitWidth -->
<table class="qmlname"><tr valign="top" id="emitWidth-prop"><td class="tblQmlPropNode"><p><span class="name">emitWidth</span> : <span class="type">real</span></p></td></tr></table><p>The width in pixels the <a href="#emitShape-prop">emitShape</a> is scaled to. If set to <a href="index.html">TrailEmitter</a>.ParticleSize, the width will be the current size of the particle being followed.</p>
<p>Default is 0.</p>
<!-- @@@emitWidth -->
<br/>
<!-- $$$follow -->
<table class="qmlname"><tr valign="top" id="follow-prop"><td class="tblQmlPropNode"><p><span class="name">follow</span> : <span class="type">string</span></p></td></tr></table><p>The type of logical particle which this is emitting from.</p>
<!-- @@@follow -->
<br/>
<!-- $$$velocityFromMovement -->
<table class="qmlname"><tr valign="top" id="velocityFromMovement-prop"><td class="tblQmlPropNode"><p><span class="name">velocityFromMovement</span> : <span class="type">qreal</span></p></td></tr></table><p>If this value is non-zero, then any movement of the emitter will provide additional starting velocity to the particles based on the movement. The additional vector will be the same angle as the emitter's movement, with a magnitude that is the magnitude of the emitters movement multiplied by velocityFromMovement.</p>
<p>Default value is 0.</p>
<!-- @@@velocityFromMovement -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$emitFollowParticles -->
<table class="qmlname"><tr valign="top" id="emitFollowParticles-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">emitFollowParticles</span>(<span class="type">Array</span><i> particles</i>, <span class="type"><a href="QtQuick.Particles.Particle.md">Particle</a></span><i> followed</i>)</p></td></tr></table><p>This signal is emitted when particles are emitted from the <i>followed</i> particle. <i>particles</i> contains an array of particle objects which can be directly manipulated.</p>
<p>The corresponding handler is <code>onEmitFollowParticles</code>. If you use this signal handler, emitParticles will not be emitted.</p>
<!-- @@@emitFollowParticles -->
<br/>
