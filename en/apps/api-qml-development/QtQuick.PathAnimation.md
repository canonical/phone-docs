---
Title: QtQuick.PathAnimation
---

# QtQuick.PathAnimation

<span class="subtitle"></span>
<!-- $$$PathAnimation-brief -->
<p>Animates an item along a path More...</p>
<!-- @@@PathAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#anchorPoint-prop">anchorPoint</a></b></b> : point</li>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#easing-prop">easing</a></b></b><ul>
<li class="fn"><b><b><a href="#easing.type-prop">easing.type</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#easing.amplitude-prop">easing.amplitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.bezierCurve-prop">easing.bezierCurve</a></b></b> : list&lt;real&gt;</li>
<li class="fn"><b><b><a href="#easing.overshoot-prop">easing.overshoot</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.period-prop">easing.period</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#endRotation-prop">endRotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#orientationEntryDuration-prop">orientationEntryDuration</a></b></b> : real</li>
<li class="fn"><b><b><a href="#orientationExitDuration-prop">orientationExitDuration</a></b></b> : real</li>
<li class="fn"><b><b><a href="#path-prop">path</a></b></b> : Path</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Item</li>
</ul>
<!-- $$$PathAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>When used in a transition, the path can be specified without start or end points, for example:</p>
<pre class="qml"><span class="type"><a href="index.html">PathAnimation</a></span> {
<span class="name">path</span>: <span class="name">Path</span> {
<span class="comment">//no startX, startY</span>
<span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>}
<span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> {}    <span class="comment">//last element is empty with no end point specified</span>
}
}</pre>
<p>In the above case, the path start will be the item's current position, and the path end will be the item's target position in the target state.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="QtQuick.Animation.md#pathinterpolator">PathInterpolator</a>.</p>
<!-- @@@PathAnimation -->
<h2>Property Documentation</h2>
<!-- $$$anchorPoint -->
<table class="qmlname"><tr valign="top" id="anchorPoint-prop"><td class="tblQmlPropNode"><p><span class="name">anchorPoint</span> : <span class="type">point</span></p></td></tr></table><p>This property holds the anchor point for the item being animated.</p>
<p>By default, the upper-left corner of the target (its 0,0 point) will be anchored to (or follow) the path. The anchorPoint property can be used to specify a different point for anchoring. For example, specifying an anchorPoint of 5,5 for a 10x10 item means the center of the item will follow the path.</p>
<!-- @@@anchorPoint -->
<br/>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation, in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top" id="easing-prop"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top" id="easing.type-prop"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="easing.amplitude-prop"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.bezierCurve-prop"><td class="tblQmlPropNode"><p><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td></tr><tr valign="top" id="easing.overshoot-prop"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.period-prop"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr></table><p>the easing curve used for the animation.</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period, overshoot or custom bezierCurve data. The default easing curve is <code>Easing.Linear</code>.</p>
<p>See the <a href="QtQuick.PropertyAnimation.md#easing.type-prop">PropertyAnimation::easing.type</a> documentation for information about the different types of easing curves.</p>
<!-- @@@easing -->
<br/>
<!-- $$$endRotation -->
<table class="qmlname"><tr valign="top" id="endRotation-prop"><td class="tblQmlPropNode"><p><span class="name">endRotation</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the ending rotation for the target.</p>
<p>If an orientation has been specified for the <a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>, and the path doesn't end with the item at the desired rotation, the endRotation property can be used to manually specify an end rotation.</p>
<p>This property is typically used with <a href="#orientationExitDuration-prop">orientationExitDuration</a>, as specifying an endRotation without an <a href="#orientationExitDuration-prop">orientationExitDuration</a> may cause a jump to the final rotation, rather than a smooth transition.</p>
<!-- @@@endRotation -->
<br/>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="name">orientation</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property controls the rotation of the item as it animates along the path.</p>
<p>If a value other than <code>Fixed</code> is specified, the <a href="QtQuick.Animation.md#pathanimation">PathAnimation</a> will rotate the item to achieve the specified orientation as it travels along the path.</p>
<ul>
<li><a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>.Fixed (default) - the <a href="QtQuick.Animation.md#pathanimation">PathAnimation</a> will not control the rotation of the item.</li>
<li><a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>.RightFirst - The right side of the item will lead along the path.</li>
<li><a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>.LeftFirst - The left side of the item will lead along the path.</li>
<li><a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>.BottomFirst - The bottom of the item will lead along the path.</li>
<li><a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>.TopFirst - The top of the item will lead along the path.</li>
</ul>
<!-- @@@orientation -->
<br/>
<!-- $$$orientationEntryDuration -->
<table class="qmlname"><tr valign="top" id="orientationEntryDuration-prop"><td class="tblQmlPropNode"><p><span class="name">orientationEntryDuration</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the duration (in milliseconds) of the transition in to the orientation.</p>
<p>If an orientation has been specified for the <a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>, and the starting rotation of the item does not match that given by the orientation, orientationEntryDuration can be used to smoothly transition from the item's starting rotation to the rotation given by the path orientation.</p>
<!-- @@@orientationEntryDuration -->
<br/>
<!-- $$$orientationExitDuration -->
<table class="qmlname"><tr valign="top" id="orientationExitDuration-prop"><td class="tblQmlPropNode"><p><span class="name">orientationExitDuration</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the duration (in milliseconds) of the transition out of the orientation.</p>
<p>If an orientation and <a href="#endRotation-prop">endRotation</a> have been specified for the <a href="QtQuick.Animation.md#pathanimation">PathAnimation</a>, orientationExitDuration can be used to smoothly transition from the rotation given by the path orientation to the specified <a href="#endRotation-prop">endRotation</a>.</p>
<!-- @@@orientationExitDuration -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type"><a href="QtQuick.Path.md">Path</a></span></p></td></tr></table><p>This property holds the path to animate along.</p>
<p>For more information on defining a path see the <a href="QtQuick.Path.md">Path</a> documentation.</p>
<!-- @@@path -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the item to animate.</p>
<!-- @@@target -->
<br/>
