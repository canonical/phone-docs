---
Title: QtQuick.qtquick-effects-transformations
---

# QtQuick.qtquick-effects-transformations

<span class="subtitle"></span>
<!-- $$$qtquick-effects-transformations.html-description -->
<p>Transformations are applied to child hierarchies and also will also transform mouse and touch input so coordinates in event handlers behave as expected.</p>
<h2 id="item-properties">Item Properties</h2>
<p>The <a href="QtQuick.Item.md">Item</a> contains a number of convenience properties, covering the most common types of transformations.</p>
<ul>
<li><code>x</code> and <code>y</code>; Translates the item.</li>
<li><code>scale</code>; Applies a uniform scale factor to the item.</li>
<li><code>rotation</code>; Applies a counterclockwise rotation of the item.</li>
<li><code>transformOrigin</code>; Used in conjunction with scale and rotation to change the origin of the transformation.</li>
</ul>
<h2 id="transform-list">Transform List</h2>
<p>In addition to the convenience types, it is possible to define more comprehensive transformations using a list of <a href="QtQuick.Scale.md">Scale</a>, <a href="QtQuick.Rotation.md">Rotation</a>, and <a href="QtQuick.Translate.md">Translate</a> objects to the <code>transform</code> property of the <a href="QtQuick.Item.md">Item</a>.</p>
<!-- @@@qtquick-effects-transformations.html -->
