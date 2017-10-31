---
Title: QtQuick.Particles.Friction
---

# QtQuick.Particles.Friction

<span class="subtitle"></span>
<!-- $$$Friction-brief -->
<p>For applying friction proportional to the particle's current velocity More...</p>
<!-- @@@Friction -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#factor-prop">factor</a></b></b> : real</li>
<li class="fn"><b><b><a href="#threshold-prop">threshold</a></b></b> : real</li>
</ul>
<!-- $$$Friction-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@Friction -->
<h2>Property Documentation</h2>
<!-- $$$factor -->
<table class="qmlname"><tr valign="top" id="factor-prop"><td class="tblQmlPropNode"><p><span class="name">factor</span> : <span class="type">real</span></p></td></tr></table><p>A drag will be applied to moving objects which is this factor of their current velocity.</p>
<!-- @@@factor -->
<br/>
<!-- $$$threshold -->
<table class="qmlname"><tr valign="top" id="threshold-prop"><td class="tblQmlPropNode"><p><span class="name">threshold</span> : <span class="type">real</span></p></td></tr></table><p>The drag will only be applied to objects with a velocity above the threshold velocity. The drag applied will bring objects down to the threshold velocity, but no further.</p>
<p>The default threshold is 0</p>
<!-- @@@threshold -->
<br/>
