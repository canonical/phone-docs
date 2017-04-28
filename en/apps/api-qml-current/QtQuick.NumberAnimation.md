---
Title: QtQuick.NumberAnimation
---

# QtQuick.NumberAnimation

<span class="subtitle"></span>
<!-- $$$NumberAnimation-brief -->
<p>Animates changes in qreal-type values More...</p>
<!-- @@@NumberAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a> and <a href="QtQuick.SpringAnimation.md">SpringAnimation</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : real</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : real</li>
</ul>
<!-- $$$NumberAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">NumberAnimation</a> is a specialized <a href="QtQuick.animation.md#propertyanimation">PropertyAnimation</a> that defines an animation to be applied when a numerical value changes.</p>
<p>Here is a <a href="index.html">NumberAnimation</a> applied to the <code>x</code> property of a <a href="QtQuick.Rectangle.md">Rectangle</a> as a property value source. It animates the <code>x</code> value from its current value to a value of 50, over 1000 milliseconds:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}</pre>
<p>Like any other animation type, a <a href="index.html">NumberAnimation</a> can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p>Note that <a href="index.html">NumberAnimation</a> may not animate smoothly if there are irregular changes in the number value that it is tracking. If this is the case, use <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a> instead.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@NumberAnimation -->
<h2>Property Documentation</h2>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>For example, the following animation is not applied until the <code>x</code> value has reached 100:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">states</span>: [
<span class="comment">// ...</span>
]
<span class="name">transition</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">from</span>: <span class="number">100</span>; <span class="name">duration</span>: <span class="number">200</span> }
}
}</pre>
<p>If the <a href="index.html">NumberAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the <a href="index.html">NumberAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
