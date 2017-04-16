---
Title: QtQuick.Particles.ParticlePainter
---

# QtQuick.Particles.ParticlePainter

<span class="subtitle"></span>
<!-- $$$ParticlePainter-brief -->
<p>For specifying how to paint particles More...</p>
<!-- @@@ParticlePainter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.CustomParticle.md">CustomParticle</a>, <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a>, and <a href="QtQuick.Particles.ItemParticle.md">ItemParticle</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#groups-prop">groups</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#system-prop">system</a></b></b> : ParticleSystem</li>
</ul>
<!-- $$$ParticlePainter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The default implementation paints nothing. See the subclasses if you want to paint something visible.</p>
<!-- @@@ParticlePainter -->
<h2>Property Documentation</h2>
<!-- $$$groups -->
<table class="qmlname"><tr valign="top" id="groups-prop"><td class="tblQmlPropNode"><p><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Which logical particle groups will be painted.</p>
<p>If empty, it will paint the default particle group (&quot;&quot;).</p>
<!-- @@@groups -->
<br/>
<!-- $$$system -->
<table class="qmlname"><tr valign="top" id="system-prop"><td class="tblQmlPropNode"><p><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>This is the system whose particles can be painted by the element. If the <a href="index.html">ParticlePainter</a> is a direct child of a <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, it will automatically be associated with it.</p>
<!-- @@@system -->
<br/>
