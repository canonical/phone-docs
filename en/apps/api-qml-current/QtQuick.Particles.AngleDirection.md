---
Title: QtQuick.Particles.AngleDirection
---

# QtQuick.Particles.AngleDirection

<span class="subtitle"></span>
<!-- $$$AngleDirection-brief -->
<p>For specifying a direction that varies in angle More...</p>
<!-- @@@AngleDirection -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Direction.md">Direction</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#angleVariation-prop">angleVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#magnitude-prop">magnitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#magnitudeVariation-prop">magnitudeVariation</a></b></b> : real</li>
</ul>
<!-- $$$AngleDirection-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The AngledDirection element allows both the specification of a direction by angle and magnitude, as well as varying the parameters by angle or magnitude.</p>
<!-- @@@AngleDirection -->
<h2>Property Documentation</h2>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the base angle for the direction. The angle of this direction will vary by no more than <a href="#angleVariation-prop">angleVariation</a> from this angle.</p>
<p>Angle is specified by degrees clockwise from straight right.</p>
<p>The default value is zero.</p>
<!-- @@@angle -->
<br/>
<!-- $$$angleVariation -->
<table class="qmlname"><tr valign="top" id="angleVariation-prop"><td class="tblQmlPropNode"><p><span class="name">angleVariation</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the maximum angle variation for the direction. The angle of the direction will vary by up to angleVariation clockwise and anticlockwise from the value specified in angle.</p>
<p>Angle is specified by degrees clockwise from straight right.</p>
<p>The default value is zero.</p>
<!-- @@@angleVariation -->
<br/>
<!-- $$$magnitude -->
<table class="qmlname"><tr valign="top" id="magnitude-prop"><td class="tblQmlPropNode"><p><span class="name">magnitude</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than <a href="#magnitudeVariation-prop">magnitudeVariation</a> from this magnitude.</p>
<p>Magnitude is specified in units of pixels per second.</p>
<p>The default value is zero.</p>
<!-- @@@magnitude -->
<br/>
<!-- $$$magnitudeVariation -->
<table class="qmlname"><tr valign="top" id="magnitudeVariation-prop"><td class="tblQmlPropNode"><p><span class="name">magnitudeVariation</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the base magnitude for the direction. The magnitude of this direction will vary by no more than magnitudeVariation from the base magnitude.</p>
<p>Magnitude is specified in units of pixels per second.</p>
<p>The default value is zero.</p>
<!-- @@@magnitudeVariation -->
<br/>
