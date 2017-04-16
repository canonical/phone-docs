---
Title: QtQuick.State
---

# QtQuick.State

<span class="subtitle"></span>
<!-- $$$State-brief -->
<p>Defines configurations of objects and properties More...</p>
<!-- @@@State -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#changes-prop">changes</a></b></b> : list&lt;Change&gt;</li>
<li class="fn"><b><b><a href="#extend-prop">extend</a></b></b> : string</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
</ul>
<!-- $$$State-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <i>state</i> is a set of batched changes from the default configuration.</p>
<p>All items have a default state that defines the default configuration of objects and property values. New states can be defined by adding State items to the <a href="QtQuick.Item.md#states-prop">states</a> property to allow items to switch between different configurations. These configurations can, for example, be used to apply different sets of property values or execute different scripts.</p>
<p>The following example displays a single <a href="QtQuick.Rectangle.md">Rectangle</a>. In the default state, the rectangle is colored black. In the &quot;clicked&quot; state, a <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> object changes the rectangle's color to red. Clicking within the <a href="QtQuick.MouseArea.md">MouseArea</a> toggles the rectangle's state between the default state and the &quot;clicked&quot; state, thus toggling the color of the rectangle between black and red.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">myRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">'clicked'</span> ? <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span> : <span class="name">myRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'clicked'</span>;
}
<span class="name">states</span>: [
<span class="type"><a href="index.html">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;clicked&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
}
]
}</pre>
<p>Notice the default state is referred to using an empty string (&quot;&quot;).</p>
<p>States are commonly used together with <a href="QtQuick.qtquick-statesanimations-animations.md">Transitions</a> to provide animations when state changes occur.</p>
<p><b>Note: </b>Setting the state of an object from within another state of the same object is not allowed.</p><p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#states">States example</a>, <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>, <a href="QtQuick.qtquick-statesanimations-animations.md">Transitions</a>, and Qt QML.</p>
<!-- @@@State -->
<h2>Property Documentation</h2>
<!-- $$$changes -->
<table class="qmlname"><tr valign="top" id="changes-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">changes</span> : <span class="type">list</span>&lt;<span class="type">Change</span>&gt;</p></td></tr></table><p>This property holds the changes to apply for this state</p>
<p>By default these changes are applied against the default state. If the state extends another state, then the changes are applied against the state being extended.</p>
<!-- @@@changes -->
<br/>
<!-- $$$extend -->
<table class="qmlname"><tr valign="top" id="extend-prop"><td class="tblQmlPropNode"><p><span class="name">extend</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the state that this state extends.</p>
<p>When a state extends another state, it inherits all the changes of that state.</p>
<p>The state being extended is treated as the base state in regards to the changes specified by the extending state.</p>
<!-- @@@extend -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the state.</p>
<p>Each state should have a unique name within its item.</p>
<!-- @@@name -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds when the state should be applied.</p>
<p>This should be set to an expression that evaluates to <code>true</code> when you want the state to be applied. For example, the following <a href="QtQuick.Rectangle.md">Rectangle</a> changes in and out of the &quot;hidden&quot; state when the <a href="QtQuick.MouseArea.md">MouseArea</a> is pressed:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">myRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;hidden&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">opacity</span>: <span class="number">0</span> }
}
}</pre>
<p>If multiple states in a group have <code>when</code> clauses that evaluate to <code>true</code> at the same time, the first matching state will be applied. For example, in the following snippet <code>state1</code> will always be selected rather than <code>state2</code> when sharedCondition becomes <code>true</code>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">states</span>: [
<span class="type"><a href="index.html">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>; <span class="name">when</span>: <span class="name">sharedCondition</span> },
<span class="type"><a href="index.html">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state2&quot;</span>; <span class="name">when</span>: <span class="name">sharedCondition</span> }
]
<span class="comment">// ...</span>
}</pre>
<!-- @@@when -->
<br/>
