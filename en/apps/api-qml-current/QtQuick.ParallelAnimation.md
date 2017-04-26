---
Title: QtQuick.ParallelAnimation
---

# QtQuick.ParallelAnimation

<span class="subtitle"></span>
<!-- $$$ParallelAnimation-brief -->
<p>Enables animations to be run in parallel More...</p>
<!-- @@@ParallelAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$ParallelAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> and <a href="index.html">ParallelAnimation</a> types allow multiple animations to be run together. Animations defined in a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> are run one after the other, while animations defined in a <a href="index.html">ParallelAnimation</a> are run at the same time.</p>
<p>The following animation runs two number animations in parallel. The <a href="QtQuick.Rectangle.md">Rectangle</a> moves to (50,50) by animating its <code>x</code> and <code>y</code> properties at the same time.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="index.html">ParallelAnimation</a></span> {
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}
}</pre>
<p>Like any other animation type, a <a href="index.html">ParallelAnimation</a> can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p><b>Note: </b>Once an animation has been grouped into a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> or <a href="index.html">ParallelAnimation</a>, it cannot be individually started and stopped; the <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> or <a href="index.html">ParallelAnimation</a> must be started and stopped as a group.</p><p><b>See also </b><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>, <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@ParallelAnimation -->
