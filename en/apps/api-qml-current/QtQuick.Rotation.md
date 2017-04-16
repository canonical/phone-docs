---
Title: QtQuick.Rotation
---

# QtQuick.Rotation

<span class="subtitle"></span>
<!-- $$$Rotation-brief -->
<p>Provides a way to rotate an Item More...</p>
<!-- @@@Rotation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#axis-prop">axis</a></b></b><ul>
<li class="fn"><b><b><a href="#axis.x-prop">axis.x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#axis.y-prop">axis.y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#axis.z-prop">axis.z</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#origin-prop">origin</a></b></b><ul>
<li class="fn"><b><b><a href="#origin.x-prop">origin.x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#origin.y-prop">origin.y</a></b></b> : real</li>
</ul>
</li>
</ul>
<!-- $$$Rotation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Rotation type provides a way to rotate an <a href="QtQuick.Item.md">Item</a> through a rotation-type transform.</p>
<p>It allows (z axis) rotation to be relative to an arbitrary point, and also provides a way to specify 3D-like rotations for Items. This gives more control over item rotation than the <a href="QtQuick.Item.md#rotation-prop">rotation</a> property.</p>
<p>The following example rotates a Rectangle around its interior point (25, 25):</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">25</span>; <span class="name">origin</span>.y: <span class="number">25</span>; <span class="name">angle</span>: <span class="number">45</span>}
}</pre>
<p>For 3D-like item rotations, you must specify the axis of rotation in addition to the origin point. The following example shows various 3D-like rotations applied to an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image">Image</a>.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span> }
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
<span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">18</span> }
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
<span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">36</span> }
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
<span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">54</span> }
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
<span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">72</span> }
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1a9b65a7-146a-40a8-ba60-35bd96b220c0-../QtQuick.Rotation/images/axisrotation.png" alt="" /></p><p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.customitems-dialcontrol/">Dial Control example</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.demos-clocks/">Qt Quick Demo - Clocks</a>.</p>
<!-- @@@Rotation -->
<h2>Property Documentation</h2>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top" id="angle-prop"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>The angle to rotate, in degrees clockwise.</p>
<!-- @@@angle -->
<br/>
<!-- $$$axis -->
<table class="qmlname"><tr valign="top" id="axis-prop"><th class="centerAlign"><p><b>axis group</b></p></th></tr><tr valign="top" id="axis.x-prop"><td class="tblQmlPropNode"><p><span class="name">axis.x</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="axis.y-prop"><td class="tblQmlPropNode"><p><span class="name">axis.y</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="axis.z-prop"><td class="tblQmlPropNode"><p><span class="name">axis.z</span> : <span class="type">real</span></p></td></tr></table><p>The axis to rotate around. For simple (2D) rotation around a point, you do not need to specify an axis, as the default axis is the z axis (<code>axis { x: 0; y: 0; z: 1 }</code>).</p>
<p>For a typical 3D-like rotation you will usually specify both the origin and the axis.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/e987f872-941e-464b-91b3-c9a98057a541-../QtQuick.Rotation/images/3d-rotation-axis.png" alt="" /></p><!-- @@@axis -->
<br/>
<!-- $$$origin -->
<table class="qmlname"><tr valign="top" id="origin-prop"><th class="centerAlign"><p><b>origin group</b></p></th></tr><tr valign="top" id="origin.x-prop"><td class="tblQmlPropNode"><p><span class="name">origin.x</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="origin.y-prop"><td class="tblQmlPropNode"><p><span class="name">origin.y</span> : <span class="type">real</span></p></td></tr></table><p>The origin point of the rotation (i.e&#x2e;, the point that stays fixed relative to the parent as the rest of the item rotates). By default the origin is (0, 0).</p>
<!-- @@@origin -->
<br/>
