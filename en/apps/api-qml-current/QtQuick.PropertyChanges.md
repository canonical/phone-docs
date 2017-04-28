---
Title: QtQuick.PropertyChanges
---

# QtQuick.PropertyChanges

<span class="subtitle"></span>
<!-- $$$PropertyChanges-brief -->
<p>Describes new property bindings or values for a state More...</p>
<!-- @@@PropertyChanges -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#explicit-prop">explicit</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#restoreEntryValues-prop">restoreEntryValues</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
</ul>
<!-- $$$PropertyChanges-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PropertyChanges</a> is used to define the property values or bindings in a <a href="QtQuick.State.md">State</a>. This enables an item's property values to be changed when it <a href="QtQuick.qtquick-statesanimations-states.md">changes between states</a>.</p>
<p>To create a <a href="index.html">PropertyChanges</a> object, specify the <a href="#target-prop">target</a> item whose properties are to be modified, and define the new property values or bindings. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">container</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;resized&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
<span class="type"><a href="index.html">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">height</span>: <span class="name">container</span>.<span class="name">height</span> }
}
}
}</pre>
<p>When the mouse is pressed, the <a href="QtQuick.Rectangle.md">Rectangle</a> changes to the <i>resized</i> state. In this state, the <a href="index.html">PropertyChanges</a> object sets the rectangle's color to blue and the <code>height</code> value to that of <code>container.height</code>.</p>
<p>Note this automatically binds <code>rect.height</code> to <code>container.height</code> in the <i>resized</i> state. If a property binding should not be established, and the height should just be set to the value of <code>container.height</code> at the time of the state change, set the <a href="#explicit-prop">explicit</a> property to <code>true</code>.</p>
<p>A <a href="index.html">PropertyChanges</a> object can also override the default signal handler for an object to implement a signal handler specific to the new state:</p>
<pre class="qml"><span class="type"><a href="index.html">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">myMouseArea</span>
<span class="name">onClicked</span>: <span class="name">doSomethingDifferent</span>()
}</pre>
<p><b>Note: </b><a href="index.html">PropertyChanges</a> can be used to change anchor margins, but not other anchor values; use <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> for this instead. Similarly, to change an <a href="QtQuick.Item.md">Item</a>'s <a href="QtQuick.Item.md#parent-prop">parent</a> value, use <a href="QtQuick.ParentChange.md">ParentChange</a> instead.</p>
<h3 >Resetting property values</h3>
<p>The <code>undefined</code> value can be used to reset the property value for a state. In the following example, when <code>myText</code> changes to the <i>widerText</i> state, its <code>width</code> property is reset, giving the text its natural width and displaying the whole string on a single line.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">myText</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
<span class="name">text</span>: <span class="string">&quot;a text string that is longer than 50 pixels&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;widerText&quot;</span>
<span class="type"><a href="index.html">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">myText</span>; <span class="name">width</span>: <span class="name">undefined</span> }
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">myText</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;widerText&quot;</span>
}
}</pre>
<h3 >Immediate property changes in transitions</h3>
<p>When <a href="QtQuick.qtquick-statesanimations-animations.md">Transitions</a> are used to animate state changes, they animate properties from their values in the current state to those defined in the new state (as defined by <a href="index.html">PropertyChanges</a> objects). However, it is sometimes desirable to set a property value <i>immediately</i> during a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, without animation; in these cases, the <a href="QtQuick.PropertyAction.md">PropertyAction</a> type can be used to force an immediate property change.</p>
<p>See the <a href="QtQuick.PropertyAction.md">PropertyAction</a> documentation for more details.</p>
<p><b>Note: </b>The <a href="QtQuick.Item.md#visible-prop">visible</a> and <a href="QtQuick.Item.md#enabled-prop">enabled</a> properties of <a href="QtQuick.Item.md">Item</a> do not behave exactly the same as other properties in <a href="index.html">PropertyChanges</a>. Since these properties can be changed implicitly through their parent's state, they should be set explicitly in all <a href="index.html">PropertyChanges</a>. An item will still not be enabled/visible if one of its parents is not enabled or visible.</p><p><b>See also </b><a href="QtQuick.Animation.md#states">States example</a>, <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>, and Qt QML.</p>
<!-- @@@PropertyChanges -->
<h2>Property Documentation</h2>
<!-- $$$explicit -->
<table class="qmlname"><tr valign="top" id="explicit-prop"><td class="tblQmlPropNode"><p><span class="name">explicit</span> : <span class="type">bool</span></p></td></tr></table><p>If explicit is set to true, any potential bindings will be interpreted as once-off assignments that occur when the state is entered.</p>
<p>In the following example, the addition of explicit prevents <code>myItem.width</code> from being bound to <code>parent.width</code>. Instead, it is assigned the value of <code>parent.width</code> at the time of the state change.</p>
<pre class="qml"><span class="type"><a href="index.html">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">myItem</span>
<span class="name">explicit</span>: <span class="number">true</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
}</pre>
<p>By default, explicit is false.</p>
<!-- @@@explicit -->
<br/>
<!-- $$$restoreEntryValues -->
<table class="qmlname"><tr valign="top" id="restoreEntryValues-prop"><td class="tblQmlPropNode"><p><span class="name">restoreEntryValues</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the previous values should be restored when leaving the state.</p>
<p>The default value is <code>true</code>. Setting this value to <code>false</code> creates a temporary state that has permanent effects on property values.</p>
<!-- @@@restoreEntryValues -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds the object which contains the properties to be changed.</p>
<!-- @@@target -->
<br/>
