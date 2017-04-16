---
Title: QtQuick.Particles.ItemParticle
---

# QtQuick.Particles.ItemParticle

<span class="subtitle"></span>
<!-- $$$ItemParticle-brief -->
<p>For specifying a delegate to paint particles More...</p>
<!-- @@@ItemParticle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#fade-prop">fade</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#freeze-method">freeze</a></b></b>(Item <i>item</i>)</li>
<li class="fn">void <b><b><a href="#give-method">give</a></b></b>(Item <i>item</i>)</li>
<li class="fn">void <b><b><a href="#take-method">take</a></b></b>(Item <i>item</i>, bool <i>prioritize</i>)</li>
<li class="fn">void <b><b><a href="#unfreeze-method">unfreeze</a></b></b>(Item <i>item</i>)</li>
</ul>
<!-- $$$ItemParticle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@ItemParticle -->
<h2>Property Documentation</h2>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>An instance of the delegate will be created for every logical particle, and moved along with it.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$fade -->
<table class="qmlname"><tr valign="top" id="fade-prop"><td class="tblQmlPropNode"><p><span class="name">fade</span> : <span class="type">bool</span></p></td></tr></table><p>If true, the item will automatically be faded in and out at the ends of its lifetime. If false, you will have to implement any entry effect yourself.</p>
<p>Default is true.</p>
<!-- @@@fade -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$freeze -->
<table class="qmlname"><tr valign="top" id="freeze-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">freeze</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>)</p></td></tr></table><p>Suspends the flow of time for the logical particle which item represents, allowing you to control its movement.</p>
<!-- @@@freeze -->
<br/>
<!-- $$$give -->
<table class="qmlname"><tr valign="top" id="give-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">give</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>)</p></td></tr></table><p>Orders the <a href="index.html">ItemParticle</a> to give you control of the item. It will cease controlling it and the item will lose its association to the logical particle.</p>
<!-- @@@give -->
<br/>
<!-- $$$take -->
<table class="qmlname"><tr valign="top" id="take-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">take</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>, <span class="type">bool</span><i> prioritize</i>)</p></td></tr></table><p>Asks the <a href="index.html">ItemParticle</a> to take over control of item. It will be emitted when there is a logical particle available.</p>
<p>By default items form a queue when waiting for a logical particle, but if prioritize is true then it will go immediately to the head of the queue.</p>
<!-- @@@take -->
<br/>
<!-- $$$unfreeze -->
<table class="qmlname"><tr valign="top" id="unfreeze-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">unfreeze</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>)</p></td></tr></table><p>Restarts the flow of time for the logical particle which item represents, allowing it to be moved by the particle system again.</p>
<!-- @@@unfreeze -->
<br/>
