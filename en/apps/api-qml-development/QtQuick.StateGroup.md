---
Title: QtQuick.StateGroup
---

# QtQuick.StateGroup

<span class="subtitle"></span>
<!-- $$$StateGroup-brief -->
<p>Provides built-in state support for non-Item types More...</p>
<!-- @@@StateGroup -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : string</li>
<li class="fn"><b><b><a href="#states-prop">states</a></b></b> : list&lt;State&gt;</li>
<li class="fn"><b><b><a href="#transitions-prop">transitions</a></b></b> : list&lt;Transition&gt;</li>
</ul>
<!-- $$$StateGroup-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Item (and all derived types) provides built in support for states and transitions via its <a href="QtQuick.Item.md#state-prop">state</a>, <a href="QtQuick.Item.md#states-prop">states</a> and <a href="QtQuick.Item.md#transitions-prop">transitions</a> properties. <a href="index.html">StateGroup</a> provides an easy way to use this support in other (non-Item-derived) types.</p>
<pre class="qml"><span class="type">MyCustomObject</span> {
<span class="type"><a href="index.html">StateGroup</a></span> {
<span class="name">id</span>: <span class="name">myStateGroup</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="comment">// ...</span>
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">// ...</span>
}
}
<span class="name">onSomethingHappened</span>: <span class="name">myStateGroup</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;state1&quot;</span>;
}</pre>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>, <a href="QtQuick.qtquick-statesanimations-animations.md">Transitions</a>, and Qt QML.</p>
<!-- @@@StateGroup -->
<h2>Property Documentation</h2>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the current state of the state group.</p>
<p>This property is often used in scripts to change between states. For example:</p>
<pre class="js"><span class="keyword">function</span> <span class="name">toggle</span>() {
<span class="keyword">if</span> (<span class="name">button</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">'On'</span>)
<span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'Off'</span>;
<span class="keyword">else</span>
<span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'On'</span>;
}</pre>
<p>If the state group is in its base state (i.e&#x2e; no explicit state has been set), <code>state</code> will be a blank string. Likewise, you can return a state group to its base state by setting its current state to <code>''</code>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>.</p>
<!-- @@@state -->
<br/>
<!-- $$$states -->
<table class="qmlname"><tr valign="top" id="states-prop"><td class="tblQmlPropNode"><p><span class="name">states</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.State.md">State</a></span>&gt;</p></td></tr></table><p>This property holds a list of states defined by the state group.</p>
<pre class="qml"><span class="type"><a href="index.html">StateGroup</a></span> {
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="comment">// State definition...</span>
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="comment">// ...</span>
}
<span class="comment">// Other states...</span>
]
}</pre>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>.</p>
<!-- @@@states -->
<br/>
<!-- $$$transitions -->
<table class="qmlname"><tr valign="top" id="transitions-prop"><td class="tblQmlPropNode"><p><span class="name">transitions</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transition.md">Transition</a></span>&gt;</p></td></tr></table><p>This property holds a list of transitions defined by the state group.</p>
<pre class="qml"><span class="type"><a href="index.html">StateGroup</a></span> {
<span class="name">transitions</span>: [
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">// ...</span>
},
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">// ...</span>
}
<span class="comment">// ...</span>
]
}</pre>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Transitions</a>.</p>
<!-- @@@transitions -->
<br/>
