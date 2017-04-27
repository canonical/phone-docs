---
Title: QtQuick.qtquick-particles-imageparticle-example
---

# QtQuick.qtquick-particles-imageparticle-example

<span class="subtitle"></span>
<!-- $$$particles/imageparticle-description -->
<p class="centerAlign"><img src="../../../media/qml-imageparticle-example.png" alt="" /></p><p>This is a collection of small QML examples relating to using Affectors in the particle system. Each example is a small QML file emphasizing a particular type or feature.</p>
<p>All at once shows off several of the features of <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> at the same time.</p>
<pre class="qml"><span class="name">sprites</span>: [
<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;bear&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../../images/bear_tiles.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">13</span>
<span class="name">frameDuration</span>: <span class="number">120</span>
}
]
<span class="name">colorVariation</span>: <span class="number">0.5</span>
<span class="name">rotationVelocityVariation</span>: <span class="number">360</span>
<span class="name">colorTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span></pre>
<p>Colored shows a simple <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> with some color variation.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/star.png&quot;</span>
<span class="name">alpha</span>: <span class="number">0</span>
<span class="name">alphaVariation</span>: <span class="number">0.2</span>
<span class="name">colorVariation</span>: <span class="number">1.0</span>
}</pre>
<p>Color Table sets the color over life on the particles to provide a fixed rainbow effect.</p>
<pre class="qml"><span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/glowdot.png&quot;</span>
<span class="name">colorTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span>
<span class="name">sizeTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span></pre>
<p>Deformation spins and squishes a starfish particle.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">system</span>: <span class="name">sys</span>
<span class="name">groups</span>: [<span class="string">&quot;goingLeft&quot;</span>, <span class="string">&quot;goingRight&quot;</span>]
<span class="name">source</span>: <span class="string">&quot;../../images/starfish_4.png&quot;</span>
<span class="name">rotation</span>: <span class="number">90</span>
<span class="name">rotationVelocity</span>: <span class="number">90</span>
<span class="name">autoRotation</span>: <span class="number">true</span>
}
<span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">system</span>: <span class="name">sys</span>
<span class="name">groups</span>: [<span class="string">&quot;goingDown&quot;</span>]
<span class="name">source</span>: <span class="string">&quot;../../images/starfish_0.png&quot;</span>
<span class="name">rotation</span>: <span class="number">180</span>
<span class="name">yVector</span>: <span class="name">PointDirection</span> { <span class="name">y</span>: <span class="number">0.5</span>; <span class="name">yVariation</span>: <span class="number">0.25</span>; <span class="name">xVariation</span>: <span class="number">0.25</span>; }
}</pre>
<p>Rotation demonstrates the autoRotate property, so that particles rotate in the direction that they travel.</p>
<p>Sharing demonstrates what happens when multiple ImageParticles try to render the same particle. The following <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> renders the particles inside the <a href="QtQuick.ListView.md">ListView</a>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">system</span>: <span class="name">particles</span>
<span class="name">source</span>: <span class="string">&quot;../../images/flower.png&quot;</span>
<span class="name">alpha</span>: <span class="number">0.1</span>
<span class="name">color</span>: <span class="string">&quot;white&quot;</span>
<span class="name">rotationVariation</span>: <span class="number">180</span>
<span class="name">z</span>: -<span class="number">1</span>
}</pre>
<p>The following <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> is placed inside the list highlight, and renders the particles above the other <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">system</span>: <span class="name">particles</span>
<span class="name">source</span>: <span class="string">&quot;../../images/flower.png&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">clip</span>: <span class="number">true</span>
<span class="name">alpha</span>: <span class="number">1.0</span>
}</pre>
<p>Note that because it sets the color and alpha in this <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a>, it renders the particles in a different color. Since it doesn't specify anything about the rotation, it shares the rotation with the other <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> so that the flowers are rotated the same way in both. Note that you can undo rotation in another <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a>, you just need to explicitly set rotationVariation to 0.</p>
<p>Sprites demonstrates using an image particle to render animated sprites instead of static images for each particle.</p>
<p>Files:</p>
<ul>
<li>particles/imageparticle/imageparticle.qml</li>
<li>particles/imageparticle/content/allatonce.qml</li>
<li>particles/imageparticle/content/colored.qml</li>
<li>particles/imageparticle/content/colortable.qml</li>
<li>particles/imageparticle/content/deformation.qml</li>
<li>particles/imageparticle/content/rotation.qml</li>
<li>particles/imageparticle/content/sharing.qml</li>
<li>particles/imageparticle/content/sprites.qml</li>
<li>particles/imageparticle/main.cpp</li>
<li>particles/imageparticle/imageparticle.pro</li>
<li>particles/imageparticle/imageparticle.qmlproject</li>
<li>particles/imageparticle/imageparticle.qrc</li>
</ul>
<!-- @@@particles/imageparticle -->
