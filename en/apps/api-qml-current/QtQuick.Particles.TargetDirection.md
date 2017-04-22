---
Title: QtQuick.Particles.TargetDirection
---

# QtQuick.Particles.TargetDirection

<span class="subtitle"></span>
<!-- $$$TargetDirection-brief -->
<p>For specifying a direction towards the target point More...</p>
<!-- @@@TargetDirection -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Direction.md">Direction</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#magnitude-prop">magnitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#magnitudeVariation-prop">magnitudeVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#proportionalMagnitude-prop">proportionalMagnitude</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#targetItem-prop">targetItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#targetVariation-prop">targetVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#targetX-prop">targetX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#targetY-prop">targetY</a></b></b> : real</li>
</ul>
<!-- $$$TargetDirection-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@TargetDirection -->
<h2>Property Documentation</h2>
<!-- $$$magnitude -->
<table class="qmlname"><tr valign="top" id="magnitude-prop"><td class="tblQmlPropNode"><p><span class="name">magnitude</span> : <span class="type">real</span></p></td></tr></table><!-- @@@magnitude -->
<br/>
<!-- $$$magnitudeVariation -->
<table class="qmlname"><tr valign="top" id="magnitudeVariation-prop"><td class="tblQmlPropNode"><p><span class="name">magnitudeVariation</span> : <span class="type">real</span></p></td></tr></table><!-- @@@magnitudeVariation -->
<br/>
<!-- $$$proportionalMagnitude -->
<table class="qmlname"><tr valign="top" id="proportionalMagnitude-prop"><td class="tblQmlPropNode"><p><span class="name">proportionalMagnitude</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the value of magnitude and <a href="#magnitudeVariation-prop">magnitudeVariation</a> shall be interpreted as multiples of the distance between the source point and the target point, per second.</p>
<p>If false(default), then the value of magnitude and <a href="#magnitudeVariation-prop">magnitudeVariation</a> shall be interpreted as pixels per second.</p>
<!-- @@@proportionalMagnitude -->
<br/>
<!-- $$$targetItem -->
<table class="qmlname"><tr valign="top" id="targetItem-prop"><td class="tblQmlPropNode"><p><span class="name">targetItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>If specified, this will take precedence over <a href="#targetX-prop">targetX</a> and <a href="#targetY-prop">targetY</a>. The targeted point will be the center of the specified Item</p>
<!-- @@@targetItem -->
<br/>
<!-- $$$targetVariation -->
<table class="qmlname"><tr valign="top" id="targetVariation-prop"><td class="tblQmlPropNode"><p><span class="name">targetVariation</span> : <span class="type">real</span></p></td></tr></table><!-- @@@targetVariation -->
<br/>
<!-- $$$targetX -->
<table class="qmlname"><tr valign="top" id="targetX-prop"><td class="tblQmlPropNode"><p><span class="name">targetX</span> : <span class="type">real</span></p></td></tr></table><!-- @@@targetX -->
<br/>
<!-- $$$targetY -->
<table class="qmlname"><tr valign="top" id="targetY-prop"><td class="tblQmlPropNode"><p><span class="name">targetY</span> : <span class="type">real</span></p></td></tr></table><!-- @@@targetY -->
<br/>
