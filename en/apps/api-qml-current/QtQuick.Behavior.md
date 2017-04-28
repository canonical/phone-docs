---
Title: QtQuick.Behavior
---

# QtQuick.Behavior

<span class="subtitle"></span>
<!-- $$$Behavior-brief -->
<p>Defines a default animation for a property change More...</p>
<!-- @@@Behavior -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#animation-prop">animation</a></b></b> : Animation</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
</ul>
<!-- $$$Behavior-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Behavior defines the default animation to be applied whenever a particular property value changes.</p>
<p>For example, the following Behavior defines a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to be run whenever the <a href="QtQuick.Rectangle.md">Rectangle</a>'s <code>width</code> value changes. When the <a href="QtQuick.MouseArea.md">MouseArea</a> is clicked, the <code>width</code> is changed, triggering the behavior's animation:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
Behavior on <span class="name">width</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">width</span> <span class="operator">=</span> <span class="number">50</span>
}
}</pre>
<p>Note that a property cannot have more than one assigned Behavior. To provide multiple animations within a Behavior, use <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> or <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>.</p>
<p>If a <a href="QtQuick.qtquick-statesanimations-states.md">state change</a> has a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> that matches the same property as a Behavior, the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> animation overrides the Behavior for that state change. For general advice on using Behaviors to animate state changes, see <a href="QtQuick.qtquick-statesanimations-behaviors.md">Using Qt Quick Behaviors with States</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>, <a href="QtQuick.animation/#behaviors">Behavior example</a>, and Qt QML.</p>
<!-- @@@Behavior -->
<h2>Property Documentation</h2>
<!-- $$$animation -->
<table class="qmlname"><tr valign="top" id="animation-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">animation</span> : <span class="type"><a href="QtQuick.Animation.md">Animation</a></span></p></td></tr></table><p>This property holds the animation to run when the behavior is triggered.</p>
<!-- @@@animation -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the behavior will be triggered when the tracked property changes value.</p>
<p>By default a Behavior is enabled.</p>
<!-- @@@enabled -->
<br/>
