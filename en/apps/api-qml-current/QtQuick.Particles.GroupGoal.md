---
Title: QtQuick.Particles.GroupGoal
---

# QtQuick.Particles.GroupGoal

<span class="subtitle"></span>
<!-- $$$GroupGoal-brief -->
<p>For changing the state of a group of a particle More...</p>
<!-- @@@GroupGoal -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#goalState-prop">goalState</a></b></b> : string</li>
<li class="fn"><b><b><a href="#jump-prop">jump</a></b></b> : bool</li>
</ul>
<!-- $$$GroupGoal-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@GroupGoal -->
<h2>Property Documentation</h2>
<!-- $$$goalState -->
<table class="qmlname"><tr valign="top" id="goalState-prop"><td class="tblQmlPropNode"><p><span class="name">goalState</span> : <span class="type">string</span></p></td></tr></table><p>The name of the group which the affected particles should move to.</p>
<p>Groups can have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest. It will pass through intermediate groups on that path for their respective durations.</p>
<!-- @@@goalState -->
<br/>
<!-- $$$jump -->
<table class="qmlname"><tr valign="top" id="jump-prop"><td class="tblQmlPropNode"><p><span class="name">jump</span> : <span class="type">bool</span></p></td></tr></table><p>If true, affected particles will jump directly to the target group instead of taking the shortest valid path to get there. They will also not finish their current state, but immediately move to the beginning of the goal state.</p>
<p>Default is false.</p>
<!-- @@@jump -->
<br/>
