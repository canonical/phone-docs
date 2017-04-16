---
Title: QtQuick.Scale
---

# QtQuick.Scale

<span class="subtitle"></span>
<!-- $$$Scale-brief -->
<p>Provides a way to scale an Item More...</p>
<!-- @@@Scale -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#origin-prop">origin</a></b></b><ul>
<li class="fn"><b><b><a href="#origin.x-prop">origin.x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#origin.y-prop">origin.y</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#xScale-prop">xScale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#yScale-prop">yScale</a></b></b> : real</li>
</ul>
<!-- $$$Scale-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Scale type provides a way to scale an <a href="QtQuick.Item.md">Item</a> through a scale-type transform.</p>
<p>It allows different scaling values for the x and y axes, and allows the scale to be relative to an arbitrary point. This gives more control over item scaling than the <a href="QtQuick.Item.md#scale-prop">scale</a> property.</p>
<p>The following example scales the X axis of the Rectangle, relative to its interior point (25, 25):</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">transform</span>: <span class="name">Scale</span> { <span class="name">origin</span>.x: <span class="number">25</span>; <span class="name">origin</span>.y: <span class="number">25</span>; <span class="name">xScale</span>: <span class="number">3</span>}
}</pre>
<p><b>See also </b><a href="QtQuick.Rotation.md">Rotation</a> and <a href="QtQuick.Translate.md">Translate</a>.</p>
<!-- @@@Scale -->
<h2>Property Documentation</h2>
<!-- $$$origin -->
<table class="qmlname"><tr valign="top" id="origin-prop"><th class="centerAlign"><p><b>origin group</b></p></th></tr><tr valign="top" id="origin.x-prop"><td class="tblQmlPropNode"><p><span class="name">origin.x</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="origin.y-prop"><td class="tblQmlPropNode"><p><span class="name">origin.y</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the point that the item is scaled from (that is, the point that stays fixed relative to the parent as the rest of the item grows).</p>
<p>The default value of the origin is (0, 0).</p>
<!-- @@@origin -->
<br/>
<!-- $$$xScale -->
<table class="qmlname"><tr valign="top" id="xScale-prop"><td class="tblQmlPropNode"><p><span class="name">xScale</span> : <span class="type">real</span></p></td></tr></table><p>The scaling factor for the X axis.</p>
<p>The default value is 1.0&#x2e;</p>
<!-- @@@xScale -->
<br/>
<!-- $$$yScale -->
<table class="qmlname"><tr valign="top" id="yScale-prop"><td class="tblQmlPropNode"><p><span class="name">yScale</span> : <span class="type">real</span></p></td></tr></table><p>The scaling factor for the Y axis.</p>
<p>The default value is 1.0&#x2e;</p>
<!-- @@@yScale -->
<br/>
