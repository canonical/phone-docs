---
Title: QtQuick.RotationAnimator
---

# QtQuick.RotationAnimator

<span class="subtitle"></span>
<!-- $$$RotationAnimator-brief -->
<p>The RotationAnimator type animates the rotation of an Item. More...</p>
<!-- @@@RotationAnimator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
</ul>
<!-- $$$RotationAnimator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQuick.Animator.md">Animator</a> types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.</p>
<p>The value of <a href="QtQuick.Item.md#rotation-prop">Item::rotation</a> is updated after the animation has finished.</p>
<p>The following snippet shows how to use a <a href="index.html">RotationAnimator</a> together with a Rectangle item.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rotatingBox</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="index.html">RotationAnimator</a></span> {
<span class="name">target</span>: <span class="name">rotatingBox</span>;
<span class="name">from</span>: <span class="number">0</span>;
<span class="name">to</span>: <span class="number">360</span>;
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">running</span>: <span class="number">true</span>
}
}</pre>
<p>It is also possible to use the <code>on</code> keyword to tie the <a href="index.html">RotationAnimator</a> directly to the <code>rotation</code> property of an Item instance.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
RotationAnimator on <span class="name">rotation</span> {
<span class="name">from</span>: <span class="number">0</span>;
<span class="name">to</span>: <span class="number">360</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
}</pre>
<p><b>See also </b><a href="QtQuick.Item.md#transformOrigin-prop">Item::transformOrigin</a> and <a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a>.</p>
<!-- @@@RotationAnimator -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the direction of the rotation.</p>
<p>Possible values are:</p>
<ul>
<li><a href="index.html">RotationAnimator</a>.Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.</li>
<li><a href="index.html">RotationAnimator</a>.Clockwise - Rotate clockwise between the two values</li>
<li><a href="index.html">RotationAnimator</a>.Counterclockwise - Rotate counterclockwise between the two values</li>
<li><a href="index.html">RotationAnimator</a>.Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.</li>
</ul>
<!-- @@@direction -->
<br/>
