---
Title: QtQuick.Particles.SpriteGoal
---

# QtQuick.Particles.SpriteGoal

<span class="subtitle"></span>
<!-- $$$SpriteGoal-brief -->
<p>For changing the state of a sprite particle More...</p>
<!-- @@@SpriteGoal -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#goalState-prop">goalState</a></b></b> : string</li>
<li class="fn"><b><b><a href="#jump-prop">jump</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#systemStates-prop">systemStates</a></b></b> : bool</li>
</ul>
<!-- $$$SpriteGoal-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@SpriteGoal -->
<h2>Property Documentation</h2>
<!-- $$$goalState -->
<table class="qmlname"><tr valign="top" id="goalState-prop"><td class="tblQmlPropNode"><p><span class="name">goalState</span> : <span class="type">string</span></p></td></tr></table><p>The name of the Sprite which the affected particles should move to.</p>
<p>Sprite states have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest. It will pass through intermediate states on that path.</p>
<!-- @@@goalState -->
<br/>
<!-- $$$jump -->
<table class="qmlname"><tr valign="top" id="jump-prop"><td class="tblQmlPropNode"><p><span class="name">jump</span> : <span class="type">bool</span></p></td></tr></table><p>If true, affected sprites will jump directly to the goal state instead of taking the shortest valid path to get there. They will also not finish their current state, but immediately move to the beginning of the goal state.</p>
<p>Default is false.</p>
<!-- @@@jump -->
<br/>
<!-- $$$systemStates -->
<table class="qmlname"><tr valign="top" id="systemStates-prop"><td class="tblQmlPropNode"><p><span class="name">systemStates</span> : <span class="type">bool</span></p></td></tr></table><p>deprecated, use <a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a> instead</p>
<!-- @@@systemStates -->
<br/>
