---
Title: QtQuick.Particles.Age
---

# QtQuick.Particles.Age

<span class="subtitle"></span>
<!-- $$$Age-brief -->
<p>For altering particle ages More...</p>
<!-- @@@Age -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#advancePosition-prop">advancePosition</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#lifeLeft-prop">lifeLeft</a></b></b> : int</li>
</ul>
<!-- $$$Age-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Age affector allows you to alter where the particle is in its lifecycle. Common uses are to expire particles prematurely, possibly giving them time to animate out.</p>
<p>The Age affector is also sometimes known as a 'Kill' affector, because with the default parameters it will immediately expire all particles which it affects.</p>
<p>The Age affector only applies to particles which are still alive.</p>
<!-- @@@Age -->
<h2>Property Documentation</h2>
<!-- $$$advancePosition -->
<table class="qmlname"><tr valign="top" id="advancePosition-prop"><td class="tblQmlPropNode"><p><span class="name">advancePosition</span> : <span class="type">bool</span></p></td></tr></table><p>advancePosition determines whether position, veclocity and acceleration are included in the simulated aging done by the affector. If advancePosition is false, then the position, velocity and acceleration will remain the same and only other attributes (such as opacity) will advance in the simulation to where it would normally be for that point in the particle's life. With advancePosition set to true the position, velocity and acceleration will also advance to where it would normally be by that point in the particle's life, making it advance its position on screen.</p>
<p>Default value is true.</p>
<!-- @@@advancePosition -->
<br/>
<!-- $$$lifeLeft -->
<table class="qmlname"><tr valign="top" id="lifeLeft-prop"><td class="tblQmlPropNode"><p><span class="name">lifeLeft</span> : <span class="type">int</span></p></td></tr></table><p>The amount of life to set the particle to have. Affected particles will advance to a point in their life where they will have this many milliseconds left to live.</p>
<!-- @@@lifeLeft -->
<br/>
