---
Title: QtQuick.Particles.CustomParticle
---

# QtQuick.Particles.CustomParticle

<span class="subtitle"></span>
<!-- $$$CustomParticle-brief -->
<p>For specifying shaders to paint particles More...</p>
<!-- @@@CustomParticle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fragmentShader-prop">fragmentShader</a></b></b> : string</li>
<li class="fn"><b><b><a href="#vertexShader-prop">vertexShader</a></b></b> : string</li>
</ul>
<!-- $$$CustomParticle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@CustomParticle -->
<h2>Property Documentation</h2>
<!-- $$$fragmentShader -->
<table class="qmlname"><tr valign="top" id="fragmentShader-prop"><td class="tblQmlPropNode"><p><span class="name">fragmentShader</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the fragment shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as &quot;varying highp vec2 qt_TexCoord0&quot;, and it samples from a sampler2D named &quot;source&quot;.</p>
<!-- @@@fragmentShader -->
<br/>
<!-- $$$vertexShader -->
<table class="qmlname"><tr valign="top" id="vertexShader-prop"><td class="tblQmlPropNode"><p><span class="name">vertexShader</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the vertex shader's GLSL source code.</p>
<p>The default shader passes the texture coordinate along to the fragment shader as &quot;varying highp vec2 qt_TexCoord0&quot;.</p>
<p>To aid writing a particle vertex shader, the following GLSL code is prepended to your vertex shader:</p>
<pre class="cpp">attribute highp vec2 qt_ParticlePos;
attribute highp vec2 qt_ParticleTex;
attribute highp vec4 qt_ParticleData; <span class="comment">//  x = time,  y = lifeSpan, z = size,  w = endSize</span>
attribute highp vec4 qt_ParticleVec; <span class="comment">// x,y = constant velocity,  z,w = acceleration</span>
attribute highp <span class="type">float</span> qt_ParticleR;
uniform highp mat4 qt_Matrix;
uniform highp <span class="type">float</span> qt_Timestamp;
varying highp vec2 qt_TexCoord0;
<span class="type">void</span> defaultMain() {
qt_TexCoord0 <span class="operator">=</span> qt_ParticleTex;
highp <span class="type">float</span> size <span class="operator">=</span> qt_ParticleData<span class="operator">.</span>z;
highp <span class="type">float</span> endSize <span class="operator">=</span> qt_ParticleData<span class="operator">.</span>w;
highp <span class="type">float</span> t <span class="operator">=</span> (qt_Timestamp <span class="operator">-</span> qt_ParticleData<span class="operator">.</span>x) <span class="operator">/</span> qt_ParticleData<span class="operator">.</span>y;
highp <span class="type">float</span> currentSize <span class="operator">=</span> mix(size<span class="operator">,</span> endSize<span class="operator">,</span> t <span class="operator">*</span> t);
<span class="keyword">if</span> (t <span class="operator">&lt;</span> <span class="number">0.</span> <span class="operator">|</span><span class="operator">|</span> t <span class="operator">&gt;</span> <span class="number">1.</span>)
currentSize <span class="operator">=</span> <span class="number">0.</span>;
highp vec2 pos <span class="operator">=</span> qt_ParticlePos
<span class="operator">-</span> currentSize <span class="operator">/</span> <span class="number">2.</span> <span class="operator">+</span> currentSize <span class="operator">*</span> qt_ParticleTex   <span class="comment">// adjust size</span>
<span class="operator">+</span> qt_ParticleVec<span class="operator">.</span>xy <span class="operator">*</span> t <span class="operator">*</span> qt_ParticleData<span class="operator">.</span>y         <span class="comment">// apply velocity vector..</span>
<span class="operator">+</span> <span class="number">0.5</span> <span class="operator">*</span> qt_ParticleVec<span class="operator">.</span>zw <span class="operator">*</span> pow(t <span class="operator">*</span> qt_ParticleData<span class="operator">.</span>y<span class="operator">,</span> <span class="number">2.</span>);
gl_Position <span class="operator">=</span> qt_Matrix <span class="operator">*</span> vec4(pos<span class="operator">.</span>x<span class="operator">,</span> pos<span class="operator">.</span>y<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
}</pre>
<p>defaultMain() is the same code as in the default shader, you can call this for basic particle functions and then add additional variables for custom effects. Note that the vertex shader for particles is responsible for simulating the movement of particles over time, the particle data itself only has the starting position and spawn time.</p>
<!-- @@@vertexShader -->
<br/>
