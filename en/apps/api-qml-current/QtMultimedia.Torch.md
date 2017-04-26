---
Title: QtMultimedia.Torch
---

# QtMultimedia.Torch

<span class="subtitle"></span>
<!-- $$$Torch-brief -->
<p>Simple control over torch functionality More...</p>
<!-- @@@Torch -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#power-prop">power</a></b></b> : int</li>
</ul>
<!-- $$$Torch-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><code>Torch</code> is part of the <b>QtMultimedia 5.0</b> module.</p>
<p>In many cases the torch hardware is shared with camera flash functionality, and might be automatically controlled by the device. You have control over the power level (of course, higher power levels are brighter but reduce battery life significantly).</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type"><a href="index.html">Torch</a></span> {
<span class="name">power</span>: <span class="number">75</span>       <span class="comment">// 75% of full power</span>
<span class="name">enabled</span>: <span class="number">true</span>   <span class="comment">// On</span>
}</pre>
<!-- @@@Torch -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the torch is enabled. If the torch functionality is shared with the camera flash hardware, the camera will take priority over torch settings and the torch is disabled.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$power -->
<table class="qmlname"><tr valign="top" id="power-prop"><td class="tblQmlPropNode"><p><span class="name">power</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the current torch power setting, as a percentage of full power.</p>
<p>In some cases this setting may change automatically as a result of temperature or battery conditions.</p>
<!-- @@@power -->
<br/>
