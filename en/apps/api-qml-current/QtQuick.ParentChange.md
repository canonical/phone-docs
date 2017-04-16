---
Title: QtQuick.ParentChange
---

# QtQuick.ParentChange

<span class="subtitle"></span>
<!-- $$$ParentChange-brief -->
<p>Specifies how to reparent an Item in a state change More...</p>
<!-- @@@ParentChange -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#parent-prop">parent</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#scale-prop">scale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<!-- $$$ParentChange-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ParentChange</a> reparents an item while preserving its visual appearance (position, size, rotation, and scale) on screen. You can then specify a transition to move/resize/rotate/scale the item to its final intended appearance.</p>
<p><a href="index.html">ParentChange</a> can only preserve visual appearance if no complex transforms are involved. More specifically, it will not work if the transform property has been set for any items involved in the reparenting (i.e&#x2e; items in the common ancestor tree for the original and new parent).</p>
<p>The example below displays a large red rectangle and a small blue rectangle, side by side. When the <code>blueRect</code> is clicked, it changes to the &quot;reparented&quot; state: its parent is changed to <code>redRect</code> and it is positioned at (10, 10) within the red rectangle, as specified in the <a href="index.html">ParentChange</a>.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">redRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">blueRect</span>
<span class="name">x</span>: <span class="name">redRect</span>.<span class="name">width</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;reparented&quot;</span>
<span class="type"><a href="index.html">ParentChange</a></span> { <span class="name">target</span>: <span class="name">blueRect</span>; <span class="name">parent</span>: <span class="name">redRect</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span> }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">blueRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reparented&quot;</span> }
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/43e88446-7043-4916-855c-abc09022dc90-../QtQuick.ParentChange/images/parentchange.png" alt="" /></p><p>You can specify at which point in a transition you want a <a href="index.html">ParentChange</a> to occur by using a <a href="QtQuick.ParentAnimation.md">ParentAnimation</a>.</p>
<p>Note that unlike <a href="QtQuick.PropertyChanges.md">PropertyChanges</a>, <a href="index.html">ParentChange</a> expects an Item-based target; it will not work with arbitrary objects (for example, you couldn't use it to reparent a Timer).</p>
<!-- @@@ParentChange -->
<h2>Property Documentation</h2>
<!-- $$$height -->
<table class="qmlname"><tr valign="top" id="height-prop"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@height -->
<br/>
<!-- $$$parent -->
<table class="qmlname"><tr valign="top" id="parent-prop"><td class="tblQmlPropNode"><p><span class="name">parent</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the new parent for the item in this state.</p>
<!-- @@@parent -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top" id="rotation-prop"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top" id="scale-prop"><td class="tblQmlPropNode"><p><span class="name">scale</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@scale -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the item to be reparented</p>
<!-- @@@target -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top" id="width-prop"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@width -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the new position, size, scale, and rotation for the item in this state.</p>
<!-- @@@y -->
<br/>
