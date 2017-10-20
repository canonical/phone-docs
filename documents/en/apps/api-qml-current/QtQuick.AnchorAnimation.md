---
Title: QtQuick.AnchorAnimation
---

# QtQuick.AnchorAnimation

<span class="subtitle"></span>
<!-- $$$AnchorAnimation-brief -->
<p>Animates changes in anchor values More...</p>
<!-- @@@AnchorAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#easing-prop">easing</a></b></b><ul>
<li class="fn"><b><b><a href="#easing.type-prop">easing.type</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#easing.amplitude-prop">easing.amplitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.overshoot-prop">easing.overshoot</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.period-prop">easing.period</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#targets-prop">targets</a></b></b> : list&lt;Item&gt;</li>
</ul>
<!-- $$$AnchorAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">AnchorAnimation</a> is used to animate an anchor change.</p>
<p>In the following snippet we animate the addition of a right anchor to a <a href="QtQuick.Rectangle.md">Rectangle</a>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">container</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">myRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;reanchored&quot;</span>
<span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">anchors</span>.right: <span class="name">container</span>.<span class="name">right</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">// smoothly reanchor myRect and move into new position</span>
<span class="type"><a href="index.html">AnchorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
<span class="name">Component</span>.onCompleted: <span class="name">container</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reanchored&quot;</span>
}</pre>
<p>When an <a href="index.html">AnchorAnimation</a> is used in a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, it will animate any <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> that have occurred during the state change. This can be overridden by setting a specific target item using the <a href="QtQuick.AnchorChanges.md#target-prop">AnchorChanges.target</a> property.</p>
<p><b>Note: </b><a href="index.html">AnchorAnimation</a> can only be used in a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> and in conjunction with an AnchorChange. It cannot be used in behaviors and other types of animations.</p><p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="QtQuick.AnchorChanges.md">AnchorChanges</a>.</p>
<!-- @@@AnchorAnimation -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation, in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top" id="easing-prop"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top" id="easing.type-prop"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="easing.amplitude-prop"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.overshoot-prop"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.period-prop"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the easing curve used for the animation</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot. The default easing curve is Linear.</p>
<pre class="qml"><span class="type"><a href="index.html">AnchorAnimation</a></span> { <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }</pre>
<p>See the <a href="QtQuick.PropertyAnimation.md#easing.type-prop">PropertyAnimation::easing.type</a> documentation for information about the different types of easing curves.</p>
<!-- @@@easing -->
<br/>
<!-- $$$targets -->
<table class="qmlname"><tr valign="top" id="targets-prop"><td class="tblQmlPropNode"><p><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>The items to reanchor.</p>
<p>If no targets are specified all <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> will be animated by the <a href="index.html">AnchorAnimation</a>.</p>
<!-- @@@targets -->
<br/>
