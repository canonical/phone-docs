---
Title: QtQuick.Particles.Wander
---

# QtQuick.Particles.Wander

<span class="subtitle"></span>
<!-- $$$Wander-brief -->
<p>For applying random particle trajectory More...</p>
<!-- @@@Wander -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#affectedParameter-prop">affectedParameter</a></b></b> : AffectableParameter</li>
<li class="fn"><b><b><a href="#pace-prop">pace</a></b></b> : real</li>
<li class="fn"><b><b><a href="#xVariance-prop">xVariance</a></b></b> : real</li>
<li class="fn"><b><b><a href="#yVariance-prop">yVariance</a></b></b> : real</li>
</ul>
<!-- $$$Wander-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@Wander -->
<h2>Property Documentation</h2>
<!-- $$$affectedParameter -->
<table class="qmlname"><tr valign="top" id="affectedParameter-prop"><td class="tblQmlPropNode"><p><span class="name">affectedParameter</span> : <span class="type">AffectableParameter</span></p></td></tr></table><p>What attribute of particles is directly affected.</p>
<ul>
<li>PointAttractor.Position</li>
<li>PointAttractor.Velocity</li>
<li>PointAttractor.Acceleration</li>
</ul>
<!-- @@@affectedParameter -->
<br/>
<!-- $$$pace -->
<table class="qmlname"><tr valign="top" id="pace-prop"><td class="tblQmlPropNode"><p><span class="name">pace</span> : <span class="type">real</span></p></td></tr></table><p>Maximum attribute change per second.</p>
<!-- @@@pace -->
<br/>
<!-- $$$xVariance -->
<table class="qmlname"><tr valign="top" id="xVariance-prop"><td class="tblQmlPropNode"><p><span class="name">xVariance</span> : <span class="type">real</span></p></td></tr></table><p>Maximum attribute x value (as a result of Wander).</p>
<p>If unset, Wander will not affect x values.</p>
<!-- @@@xVariance -->
<br/>
<!-- $$$yVariance -->
<table class="qmlname"><tr valign="top" id="yVariance-prop"><td class="tblQmlPropNode"><p><span class="name">yVariance</span> : <span class="type">real</span></p></td></tr></table><p>Maximum attribute y value (as a result of Wander).</p>
<p>If unset, Wander will not affect y values.</p>
<!-- @@@yVariance -->
<br/>
