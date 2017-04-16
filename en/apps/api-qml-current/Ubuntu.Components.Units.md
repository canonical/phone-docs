---
Title: Ubuntu.Components.Units
---

# Ubuntu.Components.Units

<span class="subtitle"></span>
<!-- $$$Units-brief -->
<p>Units of measurement for sizes, spacing, margin, etc. More...</p>
<!-- @@@Units -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#gridUnit-prop">gridUnit</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">real <b><b><a href="#dp-method">dp</a></b></b>(real <i>value</i>)</li>
<li class="fn">real <b><b><a href="#gu-method">gu</a></b></b>(real <i>value</i>)</li>
</ul>
<!-- $$$Units-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Units provides facilities for measuring UI elements in a variety of units other than just pixels.</p>
<p>A global instance of Units is exposed as the <b>units</b> context property. Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
}</pre>
<p><b>See also </b><a href="UbuntuUserInterfaceToolkit.resolution-independence.md">Resolution Independence</a>.</p>
<!-- @@@Units -->
<h2>Property Documentation</h2>
<!-- $$$gridUnit -->
<table class="qmlname"><tr valign="top" id="gridUnit-prop"><td class="tblQmlPropNode"><p><span class="name">gridUnit</span> : <span class="type">real</span></p></td></tr></table><p>The number of pixels 1 grid unit corresponds to.</p>
<!-- @@@gridUnit -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$dp -->
<table class="qmlname"><tr valign="top" id="dp-method"><td class="tblQmlFuncNode"><p><span class="type">real</span> <span class="name">dp</span>(<span class="type">real</span><i> value</i>)</p></td></tr></table><p>Returns the number of pixels <i>value</i> density independent pixels correspond to.</p>
<!-- @@@dp -->
<br/>
<!-- $$$gu -->
<table class="qmlname"><tr valign="top" id="gu-method"><td class="tblQmlFuncNode"><p><span class="type">real</span> <span class="name">gu</span>(<span class="type">real</span><i> value</i>)</p></td></tr></table><p>Returns the number of pixels <i>value</i> grid units correspond to.</p>
<!-- @@@gu -->
<br/>
