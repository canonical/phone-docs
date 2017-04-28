---
Title: QtQuick.SpringAnimation
---

# QtQuick.SpringAnimation

<span class="subtitle"></span>
<!-- $$$SpringAnimation-brief -->
<p>Allows a property to track a value in a spring-like motion More...</p>
<!-- @@@SpringAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#damping-prop">damping</a></b></b> : real</li>
<li class="fn"><b><b><a href="#epsilon-prop">epsilon</a></b></b> : real</li>
<li class="fn"><b><b><a href="#mass-prop">mass</a></b></b> : real</li>
<li class="fn"><b><b><a href="#modulus-prop">modulus</a></b></b> : real</li>
<li class="fn"><b><b><a href="#spring-prop">spring</a></b></b> : real</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : real</li>
</ul>
<!-- $$$SpringAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">SpringAnimation</a> mimics the oscillatory behavior of a spring, with the appropriate <a href="#spring-prop">spring</a> constant to control the acceleration and the <a href="#damping-prop">damping</a> to control how quickly the effect dies away.</p>
<p>You can also limit the maximum <a href="#velocity-prop">velocity</a> of the animation.</p>
<p>The following <a href="QtQuick.Rectangle.md">Rectangle</a> moves to the position of the mouse using a <a href="index.html">SpringAnimation</a> when the mouse is clicked. The use of the <a href="QtQuick.Behavior.md">Behavior</a> on the <code>x</code> and <code>y</code> values indicates that whenever these values are changed, a <a href="index.html">SpringAnimation</a> should be applied.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
Behavior on <span class="name">y</span> { <span class="type"><a href="index.html">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">mouse</span>.<span class="name">x</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>
<span class="name">rect</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">mouse</span>.<span class="name">y</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
}
}
}</pre>
<p>Like any other animation type, a <a href="index.html">SpringAnimation</a> can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p><b>See also </b><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>, <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>, <a href="QtQuick.animation.md">Qt Quick Examples - Animation</a>, and <a href="QtQuick.demos-clocks.md">Qt Quick Demo - Clocks</a>.</p>
<!-- @@@SpringAnimation -->
<h2>Property Documentation</h2>
<!-- $$$damping -->
<table class="qmlname"><tr valign="top" id="damping-prop"><td class="tblQmlPropNode"><p><span class="name">damping</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the spring damping value.</p>
<p>This value describes how quickly the spring-like motion comes to rest. The default value is 0.</p>
<p>The useful value range is 0 - 1.0&#x2e; The lower the value, the faster it comes to rest.</p>
<!-- @@@damping -->
<br/>
<!-- $$$epsilon -->
<table class="qmlname"><tr valign="top" id="epsilon-prop"><td class="tblQmlPropNode"><p><span class="name">epsilon</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the spring epsilon.</p>
<p>The epsilon is the rate and amount of change in the value which is close enough to 0 to be considered equal to zero. This will depend on the usage of the value. For pixel positions, 0.25 would suffice. For scale, 0.005 will suffice.</p>
<p>The default is 0.01. Tuning this value can provide small performance improvements.</p>
<!-- @@@epsilon -->
<br/>
<!-- $$$mass -->
<table class="qmlname"><tr valign="top" id="mass-prop"><td class="tblQmlPropNode"><p><span class="name">mass</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the &quot;mass&quot; of the property being moved.</p>
<p>The value is 1.0 by default.</p>
<p>A greater mass causes slower movement and a greater spring-like motion when an item comes to rest.</p>
<!-- @@@mass -->
<br/>
<!-- $$$modulus -->
<table class="qmlname"><tr valign="top" id="modulus-prop"><td class="tblQmlPropNode"><p><span class="name">modulus</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the modulus value. The default value is 0.</p>
<p>Setting a <i>modulus</i> forces the target value to &quot;wrap around&quot; at the modulus. For example, setting the modulus to 360 will cause a value of 370 to wrap around to 10.</p>
<!-- @@@modulus -->
<br/>
<!-- $$$spring -->
<table class="qmlname"><tr valign="top" id="spring-prop"><td class="tblQmlPropNode"><p><span class="name">spring</span> : <span class="type">real</span></p></td></tr></table><p>This property describes how strongly the target is pulled towards the source. The default value is 0 (that is, the spring-like motion is disabled).</p>
<p>The useful value range is 0 - 5.0&#x2e;</p>
<p>When this property is set and the <a href="#velocity-prop">velocity</a> value is greater than 0, the <a href="#velocity-prop">velocity</a> limits the maximum speed.</p>
<!-- @@@spring -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum velocity allowed when tracking the source.</p>
<p>The default value is 0 (no maximum velocity).</p>
<!-- @@@velocity -->
<br/>
