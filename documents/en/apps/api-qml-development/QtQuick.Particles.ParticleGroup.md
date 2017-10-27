---
Title: QtQuick.Particles.ParticleGroup
---

# QtQuick.Particles.ParticleGroup

<span class="subtitle"></span>
<!-- $$$ParticleGroup-brief -->
<p>For setting attributes on a logical particle group More...</p>
<!-- @@@ParticleGroup -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#durationVariation-prop">durationVariation</a></b></b> : ParticleSystem</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#system-prop">system</a></b></b> : ParticleSystem</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : ParticleSystem</li>
</ul>
<!-- $$$ParticleGroup-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element allows you to set timed transitions on particle groups.</p>
<p>You can also use this element to group particle system elements related to the logical particle group. Emitters, Affectors and Painters set as direct children of a <a href="index.html">ParticleGroup</a> will automatically apply to that logical particle group. TrailEmitters will automatically follow the group.</p>
<p>If a <a href="index.html">ParticleGroup</a> element is not defined for a group, the group will function normally as if none of the transition properties were set.</p>
<!-- @@@ParticleGroup -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>The time in milliseconds before the group will attempt to transition.</p>
<!-- @@@duration -->
<br/>
<!-- $$$durationVariation -->
<table class="qmlname"><tr valign="top" id="durationVariation-prop"><td class="tblQmlPropNode"><p><span class="name">durationVariation</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>The maximum number of milliseconds that the duration of the transition cycle varies per particle in the group.</p>
<p>Default value is zero.</p>
<!-- @@@durationVariation -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This is the name of the particle group, and how it is generally referred to by other elements.</p>
<p>If elements refer to a name which does not have an explicit <a href="index.html">ParticleGroup</a> created, it will work normally (with no transitions specified for the group). If you do not need to assign duration based transitions to a group, you do not need to create a <a href="index.html">ParticleGroup</a> with that name (although you may).</p>
<!-- @@@name -->
<br/>
<!-- $$$system -->
<table class="qmlname"><tr valign="top" id="system-prop"><td class="tblQmlPropNode"><p><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>This is the system which will contain the group.</p>
<p>If the <a href="index.html">ParticleGroup</a> is a direct child of a <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, it will automatically be associated with it.</p>
<!-- @@@system -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td></tr></table><p>The weighted list of transitions valid for this group.</p>
<p>If the chosen transition stays in this group, another duration (+/- up to <a href="#durationVariation-prop">durationVariation</a>) milliseconds will occur before another transition is attempted.</p>
<!-- @@@to -->
<br/>
