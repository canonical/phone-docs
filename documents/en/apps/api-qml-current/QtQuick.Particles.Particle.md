---
Title: QtQuick.Particles.Particle
---

# QtQuick.Particles.Particle

<span class="subtitle"></span>
<!-- $$$Particle-brief -->
<p>Represents particles manipulated by emitters and affectors More...</p>
<!-- @@@Particle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alpha-prop">alpha</a></b></b> : real</li>
<li class="fn"><b><b><a href="#autoRotate-prop">autoRotate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#ax-prop">ax</a></b></b> : real</li>
<li class="fn"><b><b><a href="#ay-prop">ay</a></b></b> : real</li>
<li class="fn"><b><b><a href="#blue-prop">blue</a></b></b> : real</li>
<li class="fn"><b><b><a href="#currentSize-prop">currentSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#endSize-prop">endSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#green-prop">green</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialAX-prop">initialAX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialAY-prop">initialAY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialVX-prop">initialVX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialVY-prop">initialVY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialX-prop">initialX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#initialY-prop">initialY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#lifeLeft-prop">lifeLeft</a></b></b> : real</li>
<li class="fn"><b><b><a href="#lifeSpan-prop">lifeSpan</a></b></b> : real</li>
<li class="fn"><b><b><a href="#red-prop">red</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotationVelocity-prop">rotationVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startSize-prop">startSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#t-prop">t</a></b></b> : real</li>
<li class="fn"><b><b><a href="#update-prop">update</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#vx-prop">vx</a></b></b> : real</li>
<li class="fn"><b><b><a href="#vy-prop">vy</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#xDeformationVectorX-prop">xDeformationVectorX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#xDeformationVectorY-prop">xDeformationVectorY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#yDeformationVectorX-prop">yDeformationVectorX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#yDeformationVectorY-prop">yDeformationVectorY</a></b></b> : real</li>
</ul>
<!-- $$$Particle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Particle elements are always managed internally by the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> and cannot be created in QML. However, sometimes they are exposed via signals so as to allow arbitrary changes to the particle state</p>
<!-- @@@Particle -->
<h2>Property Documentation</h2>
<!-- $$$alpha -->
<table class="qmlname"><tr valign="top" id="alpha-prop"><td class="tblQmlPropNode"><p><span class="name">alpha</span> : <span class="type">real</span></p></td></tr></table><p><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw colorized particles. When it does so, alpha is used as the alpha channel of the color applied to the source image.</p>
<p>Values are from 0.0 to 1.0&#x2e;</p>
<!-- @@@alpha -->
<br/>
<!-- $$$autoRotate -->
<table class="qmlname"><tr valign="top" id="autoRotate-prop"><td class="tblQmlPropNode"><p><span class="name">autoRotate</span> : <span class="type">bool</span></p></td></tr></table><p>If autoRotate is true, then the particle's rotation will be set so that it faces the direction of travel, plus any rotation from the rotation or <a href="#rotationVelocity-prop">rotationVelocity</a> properties.</p>
<!-- @@@autoRotate -->
<br/>
<!-- $$$ax -->
<table class="qmlname"><tr valign="top" id="ax-prop"><td class="tblQmlPropNode"><p><span class="name">ax</span> : <span class="type">real</span></p></td></tr></table><p>The current x acceleration of the particle.</p>
<!-- @@@ax -->
<br/>
<!-- $$$ay -->
<table class="qmlname"><tr valign="top" id="ay-prop"><td class="tblQmlPropNode"><p><span class="name">ay</span> : <span class="type">real</span></p></td></tr></table><p>The current y acceleration of the particle.</p>
<!-- @@@ay -->
<br/>
<!-- $$$blue -->
<table class="qmlname"><tr valign="top" id="blue-prop"><td class="tblQmlPropNode"><p><span class="name">blue</span> : <span class="type">real</span></p></td></tr></table><p><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw colorized particles. When it does so, blue is used as the blue channel of the color applied to the source image.</p>
<p>Values are from 0.0 to 1.0&#x2e;</p>
<!-- @@@blue -->
<br/>
<!-- $$$currentSize -->
<table class="qmlname"><tr valign="top" id="currentSize-prop"><td class="tblQmlPropNode"><p><span class="name">currentSize</span> : <span class="type">real</span></p></td></tr></table><p>The currentSize of the particle, interpolating between <a href="#startSize-prop">startSize</a> and <a href="#endSize-prop">endSize</a> based on the currentTime.</p>
<!-- @@@currentSize -->
<br/>
<!-- $$$endSize -->
<table class="qmlname"><tr valign="top" id="endSize-prop"><td class="tblQmlPropNode"><p><span class="name">endSize</span> : <span class="type">real</span></p></td></tr></table><p>The size in pixels that the particle image is at the end of its life. If this value is less than 0, then it is disregarded and the particle will have its <a href="#startSize-prop">startSize</a> for the entire lifetime.</p>
<!-- @@@endSize -->
<br/>
<!-- $$$green -->
<table class="qmlname"><tr valign="top" id="green-prop"><td class="tblQmlPropNode"><p><span class="name">green</span> : <span class="type">real</span></p></td></tr></table><p><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw colorized particles. When it does so, green is used as the green channel of the color applied to the source image.</p>
<p>Values are from 0.0 to 1.0&#x2e;</p>
<!-- @@@green -->
<br/>
<!-- $$$initialAX -->
<table class="qmlname"><tr valign="top" id="initialAX-prop"><td class="tblQmlPropNode"><p><span class="name">initialAX</span> : <span class="type">real</span></p></td></tr></table><p>The x acceleration of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialAX -->
<br/>
<!-- $$$initialAY -->
<table class="qmlname"><tr valign="top" id="initialAY-prop"><td class="tblQmlPropNode"><p><span class="name">initialAY</span> : <span class="type">real</span></p></td></tr></table><p>The y acceleration of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialAY -->
<br/>
<!-- $$$initialVX -->
<table class="qmlname"><tr valign="top" id="initialVX-prop"><td class="tblQmlPropNode"><p><span class="name">initialVX</span> : <span class="type">real</span></p></td></tr></table><p>The x velocity of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialVX -->
<br/>
<!-- $$$initialVY -->
<table class="qmlname"><tr valign="top" id="initialVY-prop"><td class="tblQmlPropNode"><p><span class="name">initialVY</span> : <span class="type">real</span></p></td></tr></table><p>The y velocity of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialVY -->
<br/>
<!-- $$$initialX -->
<table class="qmlname"><tr valign="top" id="initialX-prop"><td class="tblQmlPropNode"><p><span class="name">initialX</span> : <span class="type">real</span></p></td></tr></table><p>The x coordinate of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialX -->
<br/>
<!-- $$$initialY -->
<table class="qmlname"><tr valign="top" id="initialY-prop"><td class="tblQmlPropNode"><p><span class="name">initialY</span> : <span class="type">real</span></p></td></tr></table><p>The y coordinate of the particle at the beginning of its lifetime.</p>
<p>The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.</p>
<!-- @@@initialY -->
<br/>
<!-- $$$lifeLeft -->
<table class="qmlname"><tr valign="top" id="lifeLeft-prop"><td class="tblQmlPropNode"><p><span class="name">lifeLeft</span> : <span class="type">real</span></p></td></tr></table><p>The time in seconds that the particle has left to live at the current point in time.</p>
<!-- @@@lifeLeft -->
<br/>
<!-- $$$lifeSpan -->
<table class="qmlname"><tr valign="top" id="lifeSpan-prop"><td class="tblQmlPropNode"><p><span class="name">lifeSpan</span> : <span class="type">real</span></p></td></tr></table><p>The time in seconds that the particle will live for.</p>
<!-- @@@lifeSpan -->
<br/>
<!-- $$$red -->
<table class="qmlname"><tr valign="top" id="red-prop"><td class="tblQmlPropNode"><p><span class="name">red</span> : <span class="type">real</span></p></td></tr></table><p><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw colorized particles. When it does so, red is used as the red channel of the color applied to the source image.</p>
<p>Values are from 0.0 to 1.0&#x2e;</p>
<!-- @@@red -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top" id="rotation-prop"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>Degrees clockwise that the particle image is rotated at the beginning of its life.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$rotationVelocity -->
<table class="qmlname"><tr valign="top" id="rotationVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">rotationVelocity</span> : <span class="type">real</span></p></td></tr></table><p>Degrees clockwise per second that the particle image is rotated at while alive.</p>
<!-- @@@rotationVelocity -->
<br/>
<!-- $$$startSize -->
<table class="qmlname"><tr valign="top" id="startSize-prop"><td class="tblQmlPropNode"><p><span class="name">startSize</span> : <span class="type">real</span></p></td></tr></table><p>The size in pixels that the particle image is at the start of its life.</p>
<!-- @@@startSize -->
<br/>
<!-- $$$t -->
<table class="qmlname"><tr valign="top" id="t-prop"><td class="tblQmlPropNode"><p><span class="name">t</span> : <span class="type">real</span></p></td></tr></table><p>The time, in seconds since the beginning of the simulation, that the particle was born.</p>
<!-- @@@t -->
<br/>
<!-- $$$update -->
<table class="qmlname"><tr valign="top" id="update-prop"><td class="tblQmlPropNode"><p><span class="name">update</span> : <span class="type">bool</span></p></td></tr></table><p>Inside an Affector, the changes made to the particle will only be applied if update is set to true.</p>
<!-- @@@update -->
<br/>
<!-- $$$vx -->
<table class="qmlname"><tr valign="top" id="vx-prop"><td class="tblQmlPropNode"><p><span class="name">vx</span> : <span class="type">real</span></p></td></tr></table><p>The current x velocity of the particle.</p>
<!-- @@@vx -->
<br/>
<!-- $$$vy -->
<table class="qmlname"><tr valign="top" id="vy-prop"><td class="tblQmlPropNode"><p><span class="name">vy</span> : <span class="type">real</span></p></td></tr></table><p>The current y velocity of the particle.</p>
<!-- @@@vy -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>The current x coordinate of the particle.</p>
<!-- @@@x -->
<br/>
<!-- $$$xDeformationVectorX -->
<table class="qmlname"><tr valign="top" id="xDeformationVectorX-prop"><td class="tblQmlPropNode"><p><span class="name">xDeformationVectorX</span> : <span class="type">real</span></p></td></tr></table><p>The x component of the deformation vector along the X axis. <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.</p>
<!-- @@@xDeformationVectorX -->
<br/>
<!-- $$$xDeformationVectorY -->
<table class="qmlname"><tr valign="top" id="xDeformationVectorY-prop"><td class="tblQmlPropNode"><p><span class="name">xDeformationVectorY</span> : <span class="type">real</span></p></td></tr></table><p>The x component of the deformation vector along the X axis. <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.</p>
<!-- @@@xDeformationVectorY -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>The current y coordinate of the particle.</p>
<!-- @@@y -->
<br/>
<!-- $$$yDeformationVectorX -->
<table class="qmlname"><tr valign="top" id="yDeformationVectorX-prop"><td class="tblQmlPropNode"><p><span class="name">yDeformationVectorX</span> : <span class="type">real</span></p></td></tr></table><p>The y component of the deformation vector along the X axis. <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.</p>
<!-- @@@yDeformationVectorX -->
<br/>
<!-- $$$yDeformationVectorY -->
<table class="qmlname"><tr valign="top" id="yDeformationVectorY-prop"><td class="tblQmlPropNode"><p><span class="name">yDeformationVectorY</span> : <span class="type">real</span></p></td></tr></table><p>The y component of the deformation vector along the Y axis. <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.</p>
<!-- @@@yDeformationVectorY -->
<br/>
