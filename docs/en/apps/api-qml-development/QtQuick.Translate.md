---
Title: QtQuick.Translate
---

# QtQuick.Translate

<span class="subtitle"></span>
<!-- $$$Translate-brief -->
<p>Provides a way to move an Item without changing its x or y properties More...</p>
<!-- @@@Translate -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$Translate-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Translate type provides independent control over position in addition to the Item's x and y properties.</p>
<p>The following example moves the Y axis of the <a href="QtQuick.Rectangle.md">Rectangle</a> items while still allowing the <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> to lay the items out as if they had not been transformed:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">transform</span>: <span class="name">Translate</span> { <span class="name">y</span>: <span class="number">20</span> }
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">transform</span>: <span class="name">Translate</span> { <span class="name">y</span>: -<span class="number">20</span> }
}
}</pre>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/0ecd9ab0-translate.png" alt="" /></p><!-- @@@Translate -->
<h2>Property Documentation</h2>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>The translation along the X axis.</p>
<p>The default value is 0.0&#x2e;</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>The translation along the Y axis.</p>
<p>The default value is 0.0&#x2e;</p>
<!-- @@@y -->
<br/>
