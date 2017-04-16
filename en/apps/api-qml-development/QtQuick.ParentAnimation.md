---
Title: QtQuick.ParentAnimation
---

# QtQuick.ParentAnimation

<span class="subtitle"></span>
<!-- $$$ParentAnimation-brief -->
<p>Animates changes in parent values More...</p>
<!-- @@@ParentAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#newParent-prop">newParent</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#via-prop">via</a></b></b> : Item</li>
</ul>
<!-- $$$ParentAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ParentAnimation</a> is used to animate a parent change for an <a href="QtQuick.Item.md">Item</a>.</p>
<p>For example, the following <a href="QtQuick.ParentChange.md">ParentChange</a> changes <code>blueRect</code> to become a child of <code>redRect</code> when it is clicked. The inclusion of the <a href="index.html">ParentAnimation</a>, which defines a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to be applied during the transition, ensures the item animates smoothly as it moves to its new parent:</p>
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
<span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">blueRect</span>; <span class="name">parent</span>: <span class="name">redRect</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">ParentAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">blueRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reparented&quot;</span> }
}
}</pre>
<p>A <a href="index.html">ParentAnimation</a> can contain any number of animations. These animations will be run in parallel; to run them sequentially, define them within a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>.</p>
<p>In some cases, such as when reparenting between items with clipping enabled, it is useful to animate the parent change via another item that does not have clipping enabled. Such an item can be set using the <a href="#via-prop">via</a> property.</p>
<p><a href="index.html">ParentAnimation</a> is typically used within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> in conjunction with a <a href="QtQuick.ParentChange.md">ParentChange</a>. When used in this manner, it animates any <a href="QtQuick.ParentChange.md">ParentChange</a> that has occurred during the state change. This can be overridden by setting a specific target item using the <a href="#target-prop">target</a> property.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@ParentAnimation -->
<h2>Property Documentation</h2>
<!-- $$$newParent -->
<table class="qmlname"><tr valign="top" id="newParent-prop"><td class="tblQmlPropNode"><p><span class="name">newParent</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The new parent to animate to.</p>
<p>If the <a href="index.html">ParentAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>.</p>
<!-- @@@newParent -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item to reparent.</p>
<p>When used in a transition, if no target is specified, all <a href="QtQuick.ParentChange.md">ParentChange</a> occurrences are animated by the <a href="index.html">ParentAnimation</a>.</p>
<!-- @@@target -->
<br/>
<!-- $$$via -->
<table class="qmlname"><tr valign="top" id="via-prop"><td class="tblQmlPropNode"><p><span class="name">via</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item to reparent via. This provides a way to do an unclipped animation when both the old parent and new parent are clipped.</p>
<pre class="qml"><span class="type"><a href="index.html">ParentAnimation</a></span> {
<span class="name">target</span>: <span class="name">myItem</span>
<span class="name">via</span>: <span class="name">topLevelItem</span>
<span class="comment">// ...</span>
}</pre>
<p><b>Note: </b>This only works when the <a href="index.html">ParentAnimation</a> is used in a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> in conjunction with a <a href="QtQuick.ParentChange.md">ParentChange</a>.</p><!-- @@@via -->
<br/>
