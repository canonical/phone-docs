---
Title: QtQuick.SmoothedAnimation
---

# QtQuick.SmoothedAnimation

<span class="subtitle"></span>
<!-- $$$SmoothedAnimation-brief -->
<p>Allows a property to smoothly track a value More...</p>
<!-- @@@SmoothedAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumEasingTime-prop">maximumEasingTime</a></b></b> : int</li>
<li class="fn"><b><b><a href="#reversingMode-prop">reversingMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : real</li>
</ul>
<!-- $$$SmoothedAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">SmoothedAnimation</a> animates a property's value to a set target value using an ease in/out quad easing curve. When the target value changes, the easing curves used to animate between the old and new target values are smoothly spliced together to create a smooth movement to the new target value that maintains the current velocity.</p>
<p>The follow example shows one <a href="QtQuick.Rectangle.md">Rectangle</a> tracking the position of another using <a href="index.html">SmoothedAnimation</a>. The green rectangle's <code>x</code> and <code>y</code> values are bound to those of the red rectangle. Whenever these values change, the green rectangle smoothly animates to its new position:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">800</span>; <span class="name">height</span>: <span class="number">600</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>
<span class="name">x</span>: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">-</span> <span class="number">5</span>; <span class="name">y</span>: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">5</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">SmoothedAnimation</a></span> { <span class="name">velocity</span>: <span class="number">200</span> } }
Behavior on <span class="name">y</span> { <span class="type"><a href="index.html">SmoothedAnimation</a></span> { <span class="name">velocity</span>: <span class="number">200</span> } }
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect1</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onRightPressed: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">100</span>
<span class="name">Keys</span>.onLeftPressed: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">-</span> <span class="number">100</span>
<span class="name">Keys</span>.onUpPressed: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">100</span>
<span class="name">Keys</span>.onDownPressed: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">100</span>
}</pre>
<p>A <a href="index.html">SmoothedAnimation</a> can be configured by setting the <a href="#velocity-prop">velocity</a> at which the animation should occur, or the <a href="#duration-prop">duration</a> that the animation should take. If both the <a href="#velocity-prop">velocity</a> and <a href="#duration-prop">duration</a> are specified, the one that results in the quickest animation is chosen for each change in the target value.</p>
<p>For example, animating from 0 to 800 will take 4 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 4 seconds with both a velocity of 200 and a duration of 8000 set. Animating from 0 to 20000 will take 10 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 8 seconds with both a velocity of 200 and a duration of 8000 set.</p>
<p>The default velocity of <a href="index.html">SmoothedAnimation</a> is 200 units/second. Note that if the range of the value being animated is small, then the velocity will need to be adjusted appropriately. For example, the opacity of an item ranges from 0 - 1.0&#x2e; To enable a smooth animation in this range the velocity will need to be set to a value such as 0.5 units/second. Animating from 0 to 1.0 with a velocity of 0.5 will take 2000 ms to complete.</p>
<p>Like any other animation type, a <a href="index.html">SmoothedAnimation</a> can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p><b>See also </b><a href="QtQuick.SpringAnimation.md">SpringAnimation</a>, <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>, <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>, and <a href="QtQuick.animation.md">Qt Quick Examples - Animation</a>.</p>
<!-- @@@SmoothedAnimation -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the animation duration, in msecs, used when tracking the source.</p>
<p>Setting this to -1 (the default) disables the duration value.</p>
<p>If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.</p>
<!-- @@@duration -->
<br/>
<!-- $$$maximumEasingTime -->
<table class="qmlname"><tr valign="top" id="maximumEasingTime-prop"><td class="tblQmlPropNode"><p><span class="name">maximumEasingTime</span> : <span class="type">int</span></p></td></tr></table><p>This property specifies the maximum time, in msecs, any &quot;eases&quot; during the follow should take. Setting this property causes the velocity to &quot;level out&quot; after at a time. Setting a negative value reverts to the normal mode of easing over the entire animation duration.</p>
<p>The default value is -1.</p>
<!-- @@@maximumEasingTime -->
<br/>
<!-- $$$reversingMode -->
<table class="qmlname"><tr valign="top" id="reversingMode-prop"><td class="tblQmlPropNode"><p><span class="name">reversingMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets how the <a href="index.html">SmoothedAnimation</a> behaves if an animation direction is reversed.</p>
<p>Possible values are:</p>
<ul>
<li><a href="index.html">SmoothedAnimation</a>.Eased (default) - the animation will smoothly decelerate, and then reverse direction</li>
<li><a href="index.html">SmoothedAnimation</a>.Immediate - the animation will immediately begin accelerating in the reverse direction, beginning with a velocity of 0</li>
<li><a href="index.html">SmoothedAnimation</a>.Sync - the property is immediately set to the target value</li>
</ul>
<!-- @@@reversingMode -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the average velocity allowed when tracking the 'to' value.</p>
<p>The default velocity of <a href="index.html">SmoothedAnimation</a> is 200 units/second.</p>
<p>Setting this to -1 disables the velocity value.</p>
<p>If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.</p>
<!-- @@@velocity -->
<br/>
