---
Title: QtQuick.ScaleAnimator
---

# QtQuick.ScaleAnimator

<span class="subtitle"></span>
<!-- $$$ScaleAnimator-brief -->
<p>The ScaleAnimator type animates the scale factor of an Item. More...</p>
<!-- @@@ScaleAnimator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<!-- $$$ScaleAnimator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQuick.Animator.md">Animator</a> types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.</p>
<p>The value of <a href="QtQuick.Item.md#scale-prop">Item::scale</a> is updated after the animation has finished.</p>
<p>The following snippet shows how to use a <a href="index.html">ScaleAnimator</a> together with a Rectangle item.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">scalingBox</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="index.html">ScaleAnimator</a></span> {
<span class="name">target</span>: <span class="name">scalingBox</span>;
<span class="name">from</span>: <span class="number">0.5</span>;
<span class="name">to</span>: <span class="number">1</span>;
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">running</span>: <span class="number">true</span>
}
}</pre>
<p>It is also possible to use the <code>on</code> keyword to tie the <a href="index.html">ScaleAnimator</a> directly to an Item instance.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
ScaleAnimator on <span class="name">scale</span> {
<span class="name">from</span>: <span class="number">0.5</span>;
<span class="name">to</span>: <span class="number">1</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
}</pre>
<p><b>See also </b><a href="QtQuick.Item.md#transformOrigin-prop">Item::transformOrigin</a> and <a href="QtQuick.RotationAnimator.md">RotationAnimator</a>.</p>
<!-- @@@ScaleAnimator -->
