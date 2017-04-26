---
Title: Ubuntu.Components.mathUtils
---

# Ubuntu.Components.mathUtils

<span class="subtitle"></span>
<!-- $$$mathUtils-brief -->
<p>Various mathematical utility functions. More...</p>
<!-- @@@mathUtils -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clamp-method">clamp</a></b></b>(x, min, max)</li>
<li class="fn"><b><b><a href="#clampAndProject-method">clampAndProject</a></b></b>(x, xmin, xmax, ymin, ymax)</li>
<li class="fn"><b><b><a href="#lerp-method">lerp</a></b></b>(delta, from, to)</li>
<li class="fn"><b><b><a href="#projectValue-method">projectValue</a></b></b>(x, xmin, xmax, ymin, ymax)</li>
</ul>
<!-- $$$mathUtils-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@mathUtils -->
<h2>Method Documentation</h2>
<!-- $$$clamp -->
<table class="qmlname"><tr valign="top" id="clamp-method"><td class="tblQmlFuncNode"><p><span class="name">clamp</span>(<span class="type">x</span>, <span class="type">min</span>, <span class="type">max</span>)</p></td></tr></table><p>Ensure the value x is between min and max</p>
<!-- @@@clamp -->
<br/>
<!-- $$$clampAndProject -->
<table class="qmlname"><tr valign="top" id="clampAndProject-method"><td class="tblQmlFuncNode"><p><span class="name">clampAndProject</span>(<span class="type">x</span>, <span class="type">xmin</span>, <span class="type">xmax</span>, <span class="type">ymin</span>, <span class="type">ymax</span>)</p></td></tr></table><p>Linearly project a value x, but in addition to <a href="#projectValue-method">projectValue</a> it's clamped to xmin/xmax first</p>
<!-- @@@clampAndProject -->
<br/>
<!-- $$$lerp -->
<table class="qmlname"><tr valign="top" id="lerp-method"><td class="tblQmlFuncNode"><p><span class="name">lerp</span>(<span class="type">delta</span>, <span class="type">from</span>, <span class="type">to</span>)</p></td></tr></table><p>Get the linear interpolation</p>
<!-- @@@lerp -->
<br/>
<!-- $$$projectValue -->
<table class="qmlname"><tr valign="top" id="projectValue-method"><td class="tblQmlFuncNode"><p><span class="name">projectValue</span>(<span class="type">x</span>, <span class="type">xmin</span>, <span class="type">xmax</span>, <span class="type">ymin</span>, <span class="type">ymax</span>)</p></td></tr></table><p>Linearly project a value x from [xmin, xmax] into [ymin, ymax]</p>
<!-- @@@projectValue -->
<br/>
