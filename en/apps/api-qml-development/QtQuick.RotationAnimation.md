---
Title: QtQuick.RotationAnimation
---

# QtQuick.RotationAnimation

<span class="subtitle"></span>
<!-- $$$RotationAnimation-brief -->
<p>Animates changes in rotation values More...</p>
<!-- @@@RotationAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : real</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : real</li>
</ul>
<!-- $$$RotationAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">RotationAnimation</a> is a specialized <a href="QtQuick.animation/#propertyanimation">PropertyAnimation</a> that gives control over the direction of rotation during an animation.</p>
<p>By default, it rotates in the direction of the numerical change; a rotation from 0 to 240 will rotate 240 degrees clockwise, while a rotation from 240 to 0 will rotate 240 degrees counterclockwise. The <a href="#direction-prop">direction</a> property can be set to specify the direction in which the rotation should occur.</p>
<p>In the following example we use <a href="index.html">RotationAnimation</a> to animate the rotation between states via the shortest path:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">antialiasing</span>: <span class="number">true</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;rotated&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">rotation</span>: <span class="number">180</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span> }
}</pre>
<p>Notice the <a href="index.html">RotationAnimation</a> did not need to set a <code>target</code> value. As a convenience, when used in a transition, <a href="index.html">RotationAnimation</a> will rotate all properties named &quot;rotation&quot; or &quot;angle&quot;. You can override this by providing your own properties via <a href="QtQuick.PropertyAnimation.md#properties-prop">properties</a> or <a href="QtQuick.PropertyAnimation.md#property-prop">property</a>.</p>
<p>Also, note the <a href="QtQuick.Rectangle.md">Rectangle</a> will be rotated around its default <a href="QtQuick.Item.md#transformOrigin-prop">transformOrigin</a> (which is <code>Item.Center</code>). To use a different transform origin, set the origin in the <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> object and apply the change at the start of the animation using <a href="QtQuick.PropertyAction.md">PropertyAction</a>. See the <a href="QtQuick.PropertyAction.md">PropertyAction</a> documentation for more details.</p>
<p>Like any other animation type, a <a href="index.html">RotationAnimation</a> can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@RotationAnimation -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the direction of the rotation.</p>
<p>Possible values are:</p>
<ul>
<li><a href="index.html">RotationAnimation</a>.Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.</li>
<li><a href="index.html">RotationAnimation</a>.Clockwise - Rotate clockwise between the two values</li>
<li><a href="index.html">RotationAnimation</a>.Counterclockwise - Rotate counterclockwise between the two values</li>
<li><a href="index.html">RotationAnimation</a>.Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.</li>
</ul>
<!-- @@@direction -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>For example, the following animation is not applied until the <code>angle</code> value has reached 100:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">states</span>: [
<span class="comment">// ...</span>
]
<span class="name">transition</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">RotationAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;angle&quot;</span>; <span class="name">from</span>: <span class="number">100</span>; <span class="name">duration</span>: <span class="number">2000</span> }
}
}</pre>
<p>If the <a href="index.html">RotationAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end value for the animation..</p>
<p>If the <a href="index.html">RotationAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
