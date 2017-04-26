---
Title: QtQuick.PathAttribute
---

# QtQuick.PathAttribute

<span class="subtitle"></span>
<!-- $$$PathAttribute-brief -->
<p>Specifies how to set an attribute at a given position in a Path More...</p>
<!-- @@@PathAttribute -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real</li>
</ul>
<!-- $$$PathAttribute-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">PathAttribute</a> object allows attributes consisting of a name and a value to be specified for various points along a path. The attributes are exposed to the delegate as Attached Properties. The value of an attribute at any particular point along the path is interpolated from the PathAttributes bounding that point.</p>
<p>The example below shows a path with the items scaled to 30% with opacity 50% at the top of the path and scaled 100% with opacity 100% at the bottom. Note the use of the <a href="QtQuick.PathView.md">PathView</a>.iconScale and <a href="QtQuick.PathView.md">PathView</a>.iconOpacity attached properties to set the scale and opacity of the delegate.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/a6e717d2-8ded-420c-b5a5-8e64dd35dcce-../QtQuick.PathAttribute/images/declarative-pathattribute.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
<span class="name">scale</span>: <span class="name">PathView</span>.<span class="name">iconScale</span>
<span class="name">opacity</span>: <span class="name">PathView</span>.<span class="name">iconOpacity</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>; <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>; <span class="name">source</span>: <span class="name">icon</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">nameText</span>; <span class="name">text</span>: <span class="name">name</span>; <span class="name">font</span>.pointSize: <span class="number">16</span> }
}
}
}
<span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">delegate</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">0.3</span> }
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">0.5</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
}
}
}</pre>
<p>(see the <a href="QtQuick.PathView.md">PathView</a> documentation for the specification of ContactModel.qml used for ContactModel above.)</p>
</td></tr>
</table>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>.</p>
<!-- @@@PathAttribute -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the attribute to change.</p>
<p>This attribute will be available to the delegate as <a href="QtQuick.PathView.md">PathView</a>.&lt;name&gt;</p>
<p>Note that using an existing Item property name such as &quot;opacity&quot; as an attribute is allowed. This is because path attributes add a new Attached Property which in no way clashes with existing properties.</p>
<!-- @@@name -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the value for the attribute.</p>
<p>The value specified can be used to influence the visual appearance of an item along the path. For example, the following Path specifies an attribute named <i>itemRotation</i>, which has the value <i>0</i> at the beginning of the path, and the value 90 at the end of the path.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>
<span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;itemRotation&quot;</span>; <span class="name">value</span>: <span class="number">0</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span> }
<span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;itemRotation&quot;</span>; <span class="name">value</span>: <span class="number">90</span> }
}</pre>
<p>In our delegate, we can then bind the <i>rotation</i> property to the Attached Property <i>PathView.itemRotation</i> created for this attribute.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span>
<span class="name">rotation</span>: <span class="name">PathView</span>.<span class="name">itemRotation</span>
}</pre>
<p>As each item is positioned along the path, it will be rotated accordingly: an item at the beginning of the path with be not be rotated, an item at the end of the path will be rotated 90 degrees, and an item mid-way along the path will be rotated 45 degrees.</p>
<!-- @@@value -->
<br/>
