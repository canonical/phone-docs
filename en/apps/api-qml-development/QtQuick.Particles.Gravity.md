---
Title: QtQuick.Particles.Gravity
---

# QtQuick.Particles.Gravity

<span class="subtitle"></span>
<!-- $$$Gravity-brief -->
<p>For applying acceleration in an angle More...</p>
<!-- @@@Gravity -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acceleration-prop">acceleration</a></b></b> : real</li>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#magnitude-prop">magnitude</a></b></b> : real</li>
</ul>
<!-- $$$Gravity-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element will accelerate all affected particles to a vector of the specified magnitude in the specified angle. If the angle and acceleration do not vary, it is more efficient to set the specified acceleration on the Emitter.</p>
<p>This element models the gravity of a massive object whose center of gravity is far away (and thus the gravitational pull is effectively constant across the scene). To model the gravity of an object near or inside the scene, use PointAttractor.</p>
<!-- @@@Gravity -->
<h2>Property Documentation</h2>
<!-- $$$acceleration -->
<table class="qmlname"><tr valign="top" id="acceleration-prop"><td class="tblQmlPropNode"><p><span class="name">acceleration</span> : <span class="type">real</span></p></td></tr></table><p>Name changed to magnitude, will be removed soon.</p>
<!-- @@@acceleration -->
<br/>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>Angle of acceleration.</p>
<!-- @@@angle -->
<br/>
<!-- $$$magnitude -->
<table class="qmlname"><tr valign="top" id="magnitude-prop"><td class="tblQmlPropNode"><p><span class="name">magnitude</span> : <span class="type">real</span></p></td></tr></table><p>Pixels per second that objects will be accelerated by.</p>
<!-- @@@magnitude -->
<br/>
