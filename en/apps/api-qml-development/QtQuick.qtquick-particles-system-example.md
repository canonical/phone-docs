---
Title: QtQuick.qtquick-particles-system-example
---

# QtQuick.qtquick-particles-system-example

<span class="subtitle"></span>
<!-- $$$particles/system-description -->
<p class="centerAlign"><img src="../../../../media/qml-system-example.png" alt="" /></p><p>This is a collection of small QML examples relating to using Affectors in the particle system. Each example is a small QML file emphasizing a particular type or feature.</p>
<p>Dynamic comparison compares using the particle system to getting a similar effect with the following code that dynamically instantiates Image types.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">fakeEmitter</span>
<span class="keyword">function</span> <span class="name">burst</span>(<span class="name">number</span>) {
<span class="keyword">while</span> (<span class="name">number</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
var <span class="name">item</span> = <span class="name">fakeParticle</span>.<span class="name">createObject</span>(<span class="name">root</span>);
<span class="name">item</span>.<span class="name">lifeSpan</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">5000</span> <span class="operator">+</span> <span class="number">5000</span>;
<span class="name">item</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>) <span class="operator">+</span> (<span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>);
<span class="name">item</span>.<span class="name">y</span> <span class="operator">=</span> <span class="number">0</span>;
number--;
}
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">fakeParticle</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">int</span> <span class="name">lifeSpan</span>: <span class="number">10000</span>
<span class="name">width</span>: <span class="number">32</span>
<span class="name">height</span>: <span class="number">32</span>
<span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/glowdot.png&quot;</span>
<span class="name">y</span>: <span class="number">0</span>
PropertyAnimation on <span class="name">y</span> {<span class="name">from</span>: -<span class="number">16</span>; <span class="name">to</span>: <span class="name">root</span>.<span class="name">height</span><span class="operator">-</span><span class="number">16</span>; <span class="name">duration</span>: <span class="name">container</span>.<span class="name">lifeSpan</span>; <span class="name">running</span>: <span class="number">true</span>}
SequentialAnimation on <span class="name">opacity</span> {
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>:<span class="number">0</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">500</span>}
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="name">container</span>.<span class="name">lifeSpan</span> <span class="operator">-</span> <span class="number">1000</span>}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>:<span class="number">1</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">500</span>}
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">container</span>.<span class="name">destroy</span>(); }
}
}
}
}</pre>
<p>Note how the Image objects are not able to be randomly colorized.</p>
<p>Start and Stop simply sets the running and paused states of a <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>. While the system does not perform any simulation when stopped or paused, a restart restarts the simulation from the beginning, while unpausing resumes the simulation from where it was.</p>
<p>Timed group changes is an example that highlights the <a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a> type. While normally referring to groups with a string name is sufficient, additional effects can be done by setting properties on groups. The first group has a variable duration on it, but always transitions to the second group.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
<span class="name">name</span>: <span class="string">&quot;fire&quot;</span>
<span class="name">duration</span>: <span class="number">2000</span>
<span class="name">durationVariation</span>: <span class="number">2000</span>
<span class="name">to</span>: {&quot;splode&quot;:<span class="number">1</span>}
}</pre>
<p>The second group has a <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a> on it, and a fixed duration for emitting into the third group. By placing the <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a> as a direct child of the <a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a>, it automatically selects that group to follow.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
<span class="name">name</span>: <span class="string">&quot;splode&quot;</span>
<span class="name">duration</span>: <span class="number">400</span>
<span class="name">to</span>: {&quot;dead&quot;:<span class="number">1</span>}
<span class="type"><a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a></span> {
<span class="name">group</span>: <span class="string">&quot;works&quot;</span>
<span class="name">emitRatePerParticle</span>: <span class="number">100</span>
<span class="name">lifeSpan</span>: <span class="number">1000</span>
<span class="name">maximumEmitted</span>: <span class="number">1200</span>
<span class="name">size</span>: <span class="number">8</span>
<span class="name">velocity</span>: <span class="name">AngleDirection</span> {<span class="name">angle</span>: <span class="number">270</span>; <span class="name">angleVariation</span>: <span class="number">45</span>; <span class="name">magnitude</span>: <span class="number">20</span>; <span class="name">magnitudeVariation</span>: <span class="number">20</span>;}
<span class="name">acceleration</span>: <span class="name">PointDirection</span> {<span class="name">y</span>:<span class="number">100</span>; <span class="name">yVariation</span>: <span class="number">20</span>}
}
}</pre>
<p>The third group has an Affector as a direct child, which makes the affector automatically target this group. The affector means that as soon as particles enter this group, a burst function can be called on another emitter, using the x,y positions of this particle.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
<span class="name">name</span>: <span class="string">&quot;dead&quot;</span>
<span class="name">duration</span>: <span class="number">1000</span>
<span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
<span class="name">once</span>: <span class="number">true</span>
<span class="name">onAffected</span>: <span class="name">worksEmitter</span>.<span class="name">burst</span>(<span class="number">400</span>,<span class="name">x</span>,<span class="name">y</span>)
}
}</pre>
<p>If <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a> does not suit your needs for multiple emitters, you can also dynamically create Emitters while still using the same <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> and image particle</p>
<pre class="qml"><span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">8</span>; i++) {
var <span class="name">obj</span> = <span class="name">emitterComp</span>.<span class="name">createObject</span>(<span class="name">root</span>);
<span class="name">obj</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">x</span>
<span class="name">obj</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">y</span>
<span class="name">obj</span>.<span class="name">targetX</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">240</span> <span class="operator">-</span> <span class="number">120</span> <span class="operator">+</span> <span class="name">obj</span>.<span class="name">x</span>
<span class="name">obj</span>.<span class="name">targetY</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">240</span> <span class="operator">-</span> <span class="number">120</span> <span class="operator">+</span> <span class="name">obj</span>.<span class="name">y</span>
<span class="name">obj</span>.<span class="name">life</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">round</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">2400</span>) <span class="operator">+</span> <span class="number">200</span>
<span class="name">obj</span>.<span class="name">emitRate</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">round</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">32</span>) <span class="operator">+</span> <span class="number">32</span>
<span class="name">obj</span>.<span class="name">go</span>();
}</pre>
<p>Note that this effect, a flurry of flying rainbow spears, would be better served with <a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a>. It is only done with dynamic emitters in this example to show the concept more simply.</p>
<p>Multiple Painters shows how to control paint ordering of individual particles. While the paint ordering of particles within one ImagePainter is not strictly defined, <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> objects follow the normal Z-ordering rules for <a href="QtQuick.qtquick-index.md">Qt Quick</a> items. This example allow you to paint the inside of the particles above the black borders using a pair of ImageParticles each painting different parts of the same logical particle.</p>
<p>Files:</p>
<ul>
<li>particles/system/system.qml</li>
<li>particles/system/content/dynamiccomparison.qml</li>
<li>particles/system/content/dynamicemitters.qml</li>
<li>particles/system/content/multiplepainters.qml</li>
<li>particles/system/content/startstop.qml</li>
<li>particles/system/content/timedgroupchanges.qml</li>
<li>particles/system/main.cpp</li>
<li>particles/system/system.pro</li>
<li>particles/system/system.qmlproject</li>
<li>particles/system/system.qrc</li>
</ul>
<!-- @@@particles/system -->
