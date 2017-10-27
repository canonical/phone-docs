---
Title: QtQuick.Particles.Attractor
---

# QtQuick.Particles.Attractor

<span class="subtitle"></span>
<!-- $$$Attractor-brief -->
<p>For attracting particles towards a specific point More...</p>
<!-- @@@Attractor -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#affectedParameter-prop">affectedParameter</a></b></b> : AffectableParameter</li>
<li class="fn"><b><b><a href="#proportionalToDistance-prop">proportionalToDistance</a></b></b> : Proportion</li>
</ul>
<!-- $$$Attractor-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Note that the size and position of this element affects which particles it affects. The size of the point attracted to is always 0x0, and the location of that point is specified by the pointX and pointY properties.</p>
<p>Note that Attractor has the standard Item x,y,width and height properties. Like other affectors, these represent the affected area. They do not represent the 0x0 point which is the target of the attraction.</p>
<!-- @@@Attractor -->
<h2>Property Documentation</h2>
<!-- $$$affectedParameter -->
<table class="qmlname"><tr valign="top" id="affectedParameter-prop"><td class="tblQmlPropNode"><p><span class="name">affectedParameter</span> : <span class="type">AffectableParameter</span></p></td></tr></table><p>What attribute of particles is directly affected.</p>
<ul>
<li>Attractor.Position</li>
<li>Attractor.Velocity</li>
<li>Attractor.Acceleration</li>
</ul>
<!-- @@@affectedParameter -->
<br/>
<!-- $$$proportionalToDistance -->
<table class="qmlname"><tr valign="top" id="proportionalToDistance-prop"><td class="tblQmlPropNode"><p><span class="name">proportionalToDistance</span> : <span class="type">Proportion</span></p></td></tr></table><p>How the distance from the particle to the point affects the strength of the attraction.</p>
<ul>
<li>Attractor.Constant</li>
<li>Attractor.Linear</li>
<li>Attractor.InverseLinear</li>
<li>Attractor.Quadratic</li>
<li>Attractor.InverseQuadratic</li>
</ul>
<!-- @@@proportionalToDistance -->
<br/>
