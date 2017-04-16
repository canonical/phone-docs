---
Title: QtQuick.Flipable
---

# QtQuick.Flipable

<span class="subtitle"></span>
<!-- $$$Flipable-brief -->
<p>Provides a surface that can be flipped More...</p>
<!-- @@@Flipable -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#back-prop">back</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#front-prop">front</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#side-prop">side</a></b></b> : enumeration</li>
</ul>
<!-- $$$Flipable-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Flipable is an item that can be visibly &quot;flipped&quot; between its front and back sides, like a card. It may used together with <a href="QtQuick.Rotation.md">Rotation</a>, <a href="QtQuick.State.md">State</a> and <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> types to produce a flipping effect.</p>
<p>The <a href="#front-prop">front</a> and <a href="#back-prop">back</a> properties are used to hold the items that are shown respectively on the front and back sides of the flipable item.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows a Flipable item that flips whenever it is clicked, rotating about the y-axis.</p>
<p>This flipable item has a <code>flipped</code> boolean property that is toggled whenever the <a href="QtQuick.MouseArea.md">MouseArea</a> within the flipable is clicked. When <code>flipped</code> is true, the item changes to the &quot;back&quot; state; in this state, the <code>angle</code> of the <a href="QtQuick.Rotation.md">Rotation</a> item is changed to 180 degrees to produce the flipping effect. When <code>flipped</code> is false, the item reverts to the default state, in which the <code>angle</code> value is 0.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Flipable</a></span> {
<span class="name">id</span>: <span class="name">flipable</span>
<span class="name">width</span>: <span class="number">240</span>
<span class="name">height</span>: <span class="number">240</span>
property <span class="type">bool</span> <span class="name">flipped</span>: <span class="number">false</span>
<span class="name">front</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;front.png&quot;</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">back</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;back.png&quot;</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">transform</span>: <span class="name">Rotation</span> {
<span class="name">id</span>: <span class="name">rotation</span>
<span class="name">origin</span>.x: <span class="name">flipable</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>
<span class="name">origin</span>.y: <span class="name">flipable</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">axis</span>.x: <span class="number">0</span>; <span class="name">axis</span>.y: <span class="number">1</span>; <span class="name">axis</span>.z: <span class="number">0</span>     <span class="comment">// set axis.y to 1 to rotate around y-axis</span>
<span class="name">angle</span>: <span class="number">0</span>    <span class="comment">// the default angle</span>
}
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;back&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rotation</span>; <span class="name">angle</span>: <span class="number">180</span> }
<span class="name">when</span>: <span class="name">flipable</span>.<span class="name">flipped</span>
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rotation</span>; <span class="name">property</span>: <span class="string">&quot;angle&quot;</span>; <span class="name">duration</span>: <span class="number">4000</span> }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">flipped</span> <span class="operator">=</span> !<span class="name">flipable</span>.<span class="name">flipped</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/09da3d68-eba9-4639-8c21-8f8648af9974-../QtQuick.Flipable/images/flipable.gif" alt="" /></p><p>The <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> creates the animation that changes the angle over four seconds. When the item changes between its &quot;back&quot; and default states, the <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> animates the angle between its old and new values.</p>
<p>See <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> for details on state changes and the default state, and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> for more information on how animations work within transitions.</p>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.customitems-flipable/">UI Components: Flipable Example</a>.</p>
<!-- @@@Flipable -->
<h2>Property Documentation</h2>
<!-- $$$back -->
<table class="qmlname"><tr valign="top" id="back-prop"><td class="tblQmlPropNode"><p><span class="name">back</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The front and back sides of the flipable.</p>
<!-- @@@back -->
<br/>
<!-- $$$front -->
<table class="qmlname"><tr valign="top" id="front-prop"><td class="tblQmlPropNode"><p><span class="name">front</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The front and back sides of the flipable.</p>
<!-- @@@front -->
<br/>
<!-- $$$side -->
<table class="qmlname"><tr valign="top" id="side-prop"><td class="tblQmlPropNode"><p><span class="name">side</span> : <span class="type">enumeration</span></p></td></tr></table><p>The side of the Flipable currently visible. Possible values are <code>Flipable.Front</code> and <code>Flipable.Back</code>.</p>
<!-- @@@side -->
<br/>
