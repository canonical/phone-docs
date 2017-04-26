---
Title: QtQuick.PropertyAction
---

# QtQuick.PropertyAction

<span class="subtitle"></span>
<!-- $$$PropertyAction-brief -->
<p>Specifies immediate property changes during animation More...</p>
<!-- @@@PropertyAction -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#exclude-prop">exclude</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#properties-prop">properties</a></b></b> : string</li>
<li class="fn"><b><b><a href="#property-prop">property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#targets-prop">targets</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : any</li>
</ul>
<!-- $$$PropertyAction-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PropertyAction</a> is used to specify an immediate property change during an animation. The property change is not animated.</p>
<p>It is useful for setting non-animated property values during an animation.</p>
<p>For example, here is a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> that sets the image's <a href="QtQuick.Item.md#opacity-prop">opacity</a> property to <code>.5</code>, animates the width of the image, then sets <a href="QtQuick.Item.md#opacity-prop">opacity</a> back to <code>1</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">value</span>: <span class="number">.5</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;width&quot;</span>; <span class="name">to</span>: <span class="number">300</span>; <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">value</span>: <span class="number">1</span> }
}</pre>
<p><a href="index.html">PropertyAction</a> is also useful for setting the exact point at which a property change should occur during a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>. For example, if <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> was used in a <a href="QtQuick.State.md">State</a> to rotate an item around a particular <a href="QtQuick.Item.md#transformOrigin-prop">transformOrigin</a>, it might be implemented like this:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;rotated&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">rotation</span>: <span class="number">180</span>; <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">BottomRight</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span>
}
}
}</pre>
<p>However, with this code, the <code>transformOrigin</code> is not set until <i>after</i> the animation, as a <a href="QtQuick.State.md">State</a> is taken to define the values at the <i>end</i> of a transition. The animation would rotate at the default <code>transformOrigin</code>, then jump to <code>Item.BottomRight</code>. To fix this, insert a <a href="index.html">PropertyAction</a> before the <a href="QtQuick.RotationAnimation.md">RotationAnimation</a> begins:</p>
<pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;transformOrigin&quot;</span> }
<span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
}
}</pre>
<p>This immediately sets the <code>transformOrigin</code> property to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> (i.e&#x2e; the value defined in the <a href="index.html">PropertyAction</a> object) so that the rotation animation begins with the correct transform origin.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and Qt QML.</p>
<!-- @@@PropertyAction -->
<h2>Property Documentation</h2>
<!-- $$$exclude -->
<table class="qmlname"><tr valign="top" id="exclude-prop"><td class="tblQmlPropNode"><p><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property holds the objects that should not be affected by this action.</p>
<p><b>See also </b><a href="#targets-prop">targets</a>.</p>
<!-- @@@exclude -->
<br/>
<!-- $$$properties -->
<table class="qmlname"><tr valign="top" id="properties-prop"><td class="tblQmlPropNode"><p><span class="name">properties</span> : <span class="type">string</span></p></td></tr></table><p>These properties determine the items and their properties that are affected by this action.</p>
<p>The details of how these properties are interpreted in different situations is covered in the <a href="QtQuick.PropertyAnimation.md#properties-prop">corresponding</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation">PropertyAnimation</a> documentation.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a>.</p>
<!-- @@@properties -->
<br/>
<!-- $$$property -->
<table class="qmlname"><tr valign="top" id="property-prop"><td class="tblQmlPropNode"><p><span class="name">property</span> : <span class="type">string</span></p></td></tr></table><p>These properties determine the items and their properties that are affected by this action.</p>
<p>The details of how these properties are interpreted in different situations is covered in the <a href="QtQuick.PropertyAnimation.md#properties-prop">corresponding</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation">PropertyAnimation</a> documentation.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a>.</p>
<!-- @@@property -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>These properties determine the items and their properties that are affected by this action.</p>
<p>The details of how these properties are interpreted in different situations is covered in the <a href="QtQuick.PropertyAnimation.md#properties-prop">corresponding</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation">PropertyAnimation</a> documentation.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a>.</p>
<!-- @@@target -->
<br/>
<!-- $$$targets -->
<table class="qmlname"><tr valign="top" id="targets-prop"><td class="tblQmlPropNode"><p><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>These properties determine the items and their properties that are affected by this action.</p>
<p>The details of how these properties are interpreted in different situations is covered in the <a href="QtQuick.PropertyAnimation.md#properties-prop">corresponding</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation">PropertyAnimation</a> documentation.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a>.</p>
<!-- @@@targets -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">any</span></p></td></tr></table><p>This property holds the value to be set on the property.</p>
<p>If the <a href="index.html">PropertyAction</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<!-- @@@value -->
<br/>
