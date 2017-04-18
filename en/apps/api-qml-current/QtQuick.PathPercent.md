---
Title: QtQuick.PathPercent
---

# QtQuick.PathPercent

<span class="subtitle"></span>
<!-- $$$PathPercent-brief -->
<p>Manipulates the way a path is interpreted More...</p>
<!-- @@@PathPercent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real</li>
</ul>
<!-- $$$PathPercent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PathPercent</a> allows you to manipulate the spacing between items on a <a href="QtQuick.PathView.md">PathView</a>'s path. You can use it to bunch together items on part of the path, and spread them out on other parts of the path.</p>
<p>The examples below show the normal distribution of items along a path compared to a distribution which places 50% of the items along the <a href="QtQuick.PathLine.md">PathLine</a> section of the path.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="../../../../media/declarative-nopercent.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="comment">// ...</span>
<span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">80</span>; <span class="name">controlX</span>: <span class="number">0</span>; <span class="name">controlY</span>: <span class="number">80</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">80</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">200</span>; <span class="name">controlY</span>: <span class="number">80</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="../../../../media/declarative-percent.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="comment">// ...</span>
<span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">80</span>; <span class="name">controlX</span>: <span class="number">0</span>; <span class="name">controlY</span>: <span class="number">80</span> }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.25</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">80</span> }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.75</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">200</span>; <span class="name">controlY</span>: <span class="number">80</span> }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">1</span> }
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>.</p>
<!-- @@@PathPercent -->
<h2>Property Documentation</h2>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">real</span></p></td></tr></table><p>The proportion of items that should be laid out up to this point.</p>
<p>This value should always be higher than the last value specified by a <a href="index.html">PathPercent</a> at a previous position in the Path.</p>
<p>In the following example we have a Path made up of three PathLines. Normally, the items of the <a href="QtQuick.PathView.md">PathView</a> would be laid out equally along this path, with an equal number of items per line segment. <a href="index.html">PathPercent</a> allows us to specify that the first and third lines should each hold 10% of the laid out items, while the second line should hold the remaining 80%.</p>
<pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="comment">// ...</span>
<span class="type"><a href="QtQuick.Path.md">Path</a></span> {
<span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>:<span class="number">100</span>; <span class="name">y</span>: <span class="number">0</span>; }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.1</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span> }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.9</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">0</span> }
<span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">1</span> }
}
}</pre>
<!-- @@@value -->
<br/>
