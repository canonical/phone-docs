---
Title: QtQuick.Transition
---

# QtQuick.Transition

<span class="subtitle"></span>
<!-- $$$Transition-brief -->
<p>Defines animated transitions that occur on state changes More...</p>
<!-- @@@Transition -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#animations-prop">animations</a></b></b> : list&lt;Animation&gt;</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : string</li>
<li class="fn"><b><b><a href="#reversible-prop">reversible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : string</li>
</ul>
<!-- $$$Transition-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Transition defines the animations to be applied when a <a href="QtQuick.State.md">State</a> change occurs.</p>
<p>For example, the following <a href="QtQuick.Rectangle.md">Rectangle</a> has two states: the default state, and an added &quot;moved&quot; state. In the &quot;moved state, the rectangle's position changes to (50, 50). The added Transition specifies that when the rectangle changes between the default and the &quot;moved&quot; state, any changes to the <code>x</code> and <code>y</code> properties should be animated, using an <code>Easing.InOutQuad</code>.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;moved&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}
}</pre>
<p>Notice the example does not require <a href="QtQuick.PropertyAnimation.md#to-prop">to</a> and <a href="QtQuick.PropertyAnimation.md#from-prop">from</a> values for the <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>. As a convenience, these properties are automatically set to the values of <code>x</code> and <code>y</code> before and after the state change; the <code>from</code> values are provided by the current values of <code>x</code> and <code>y</code>, and the <code>to</code> values are provided by the <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> object. If you wish, you can provide <a href="QtQuick.PropertyAnimation.md#to-prop">to</a> and <a href="QtQuick.PropertyAnimation.md#from-prop">from</a> values anyway to override the default values.</p>
<p>By default, a Transition's animations are applied for any state change in the parent item. The Transition <a href="#from-prop">from</a> and <a href="#to-prop">to</a> values can be set to restrict the animations to only be applied when changing from one particular state to another.</p>
<p>To define multiple transitions, specify <a href="QtQuick.Item.md#transitions-prop">Item::transitions</a> as a list:</p>
<pre class="qml"><span class="name">transitions</span>: [
<span class="type"><a href="index.html">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;stop&quot;</span>; <span class="name">to</span>: <span class="string">&quot;go&quot;</span>
<span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">target</span>: <span class="name">stopLight</span>
<span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
},
<span class="type"><a href="index.html">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;go&quot;</span>; <span class="name">to</span>: <span class="string">&quot;stop&quot;</span>
<span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">target</span>: <span class="name">goLight</span>
<span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
} ]</pre>
<p>If multiple Transitions are specified, only a single (best-matching) Transition will be applied for any particular state change. In the example above, when changing to <code>state1</code>, the first transition will be used, rather than the more generic second transition.</p>
<p>If a state change has a Transition that matches the same property as a <a href="QtQuick.Behavior.md">Behavior</a>, the Transition animation overrides the <a href="QtQuick.Behavior.md">Behavior</a> for that state change.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>, <a href="QtQuick.animation/#states">States example</a>, <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>, and Qt QML.</p>
<!-- @@@Transition -->
<h2>Property Documentation</h2>
<!-- $$$animations -->
<table class="qmlname"><tr valign="top" id="animations-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">animations</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Animation.md">Animation</a></span>&gt;</p></td></tr></table><p>This property holds a list of the animations to be run for this transition.</p>
<pre class="qml"></pre>
<p>The top-level animations are run in parallel. To run them sequentially, define them within a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>:</p>
<pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
}</pre>
<!-- @@@animations -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the Transition will be run when moving from the <code>from</code> state to the <code>to</code> state.</p>
<p>By default a Transition is enabled.</p>
<p>Note that in some circumstances disabling a Transition may cause an alternative Transition to be used in its place. In the following example, although the first Transition has been set to animate changes from &quot;state1&quot; to &quot;state2&quot;, this transition has been disabled by setting <code>enabled</code> to <code>false</code>, so any such state change will actually be animated by the second Transition instead.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state1&quot;</span> },
<span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state2&quot;</span> }
]
<span class="name">transitions</span>: [
<span class="type"><a href="index.html">Transition</a></span> { <span class="name">from</span>: <span class="string">&quot;state1&quot;</span>; <span class="name">to</span>: <span class="string">&quot;state2&quot;</span>; <span class="name">enabled</span>: <span class="number">false</span> },
<span class="type"><a href="index.html">Transition</a></span> {
<span class="comment">// ...</span>
}
]
}</pre>
<!-- @@@enabled -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">string</span></p></td></tr></table><p>These properties indicate the state changes that trigger the transition.</p>
<p>The default values for these properties is &quot;*&quot; (that is, any state).</p>
<p>For example, the following transition has not set the <code>to</code> and <code>from</code> properties, so the animation is always applied when changing between the two states (i.e&#x2e; when the mouse is pressed and released).</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
}</pre>
<p>If the transition was changed to this:</p>
<pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="name">to</span>: <span class="string">&quot;brighter&quot;</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}</pre>
<p>The animation would only be applied when changing from the default state to the &quot;brighter&quot; state (i.e&#x2e; when the mouse is pressed, but not on release).</p>
<p>Multiple <code>to</code> and <code>from</code> values can be set by using a comma-separated string.</p>
<p><b>See also </b><a href="#reversible-prop">reversible</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$reversible -->
<table class="qmlname"><tr valign="top" id="reversible-prop"><td class="tblQmlPropNode"><p><span class="name">reversible</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the transition should be automatically reversed when the conditions that triggered this transition are reversed.</p>
<p>The default value is false.</p>
<p>By default, transitions run in parallel and are applied to all state changes if the <a href="#from-prop">from</a> and <a href="#to-prop">to</a> states have not been set. In this situation, the transition is automatically applied when a state change is reversed, and it is not necessary to set this property to reverse the transition.</p>
<p>However, if a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> is used, or if the <a href="#from-prop">from</a> or <a href="#to-prop">to</a> properties have been set, this property will need to be set to reverse a transition when a state change is reverted. For example, the following transition applies a sequential animation when the mouse is pressed, and reverses the sequence of the animation when the mouse is released:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>
<span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">x</span>: <span class="number">50</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
}
}</pre>
<p>If the transition did not set the <code>to</code> and <code>reversible</code> values, then on the mouse release, the transition would play the <a href="QtQuick.animation/#propertyanimation">PropertyAnimation</a> before the <a href="QtQuick.animation/#coloranimation">ColorAnimation</a> instead of reversing the sequence.</p>
<!-- @@@reversible -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the transition is currently running.</p>
<p>This property is read only.</p>
<!-- @@@running -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">string</span></p></td></tr></table><p>These properties indicate the state changes that trigger the transition.</p>
<p>The default values for these properties is &quot;*&quot; (that is, any state).</p>
<p>For example, the following transition has not set the <code>to</code> and <code>from</code> properties, so the animation is always applied when changing between the two states (i.e&#x2e; when the mouse is pressed and released).</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
}</pre>
<p>If the transition was changed to this:</p>
<pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="name">to</span>: <span class="string">&quot;brighter&quot;</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}</pre>
<p>The animation would only be applied when changing from the default state to the &quot;brighter&quot; state (i.e&#x2e; when the mouse is pressed, but not on release).</p>
<p>Multiple <code>to</code> and <code>from</code> values can be set by using a comma-separated string.</p>
<p><b>See also </b><a href="#reversible-prop">reversible</a>.</p>
<!-- @@@to -->
<br/>
