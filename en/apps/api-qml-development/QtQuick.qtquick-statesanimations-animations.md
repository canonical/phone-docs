---
Title: QtQuick.qtquick-statesanimations-animations
---

# QtQuick.qtquick-statesanimations-animations

<span class="subtitle"></span>
<!-- $$$qtquick-statesanimations-animations.html-description -->
<h2 id="animation-and-transitions-types">Animation and Transitions Types</h2>
<ul>
<li><a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> - Animates transitions during state changes</li>
<li><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> - Runs animations sequentially</li>
<li><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> - Runs animations in parallel</li>
<li><a href="QtQuick.Behavior.md">Behavior</a> - Specifies a default animation for property changes</li>
<li><a href="QtQuick.PropertyAction.md">PropertyAction</a> - Sets immediate property changes during animation</li>
<li><a href="QtQuick.PauseAnimation.md">PauseAnimation</a> - Introduces a pause in an animation</li>
<li><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a> - Allows a property to smoothly track a value</li>
<li><a href="QtQuick.SpringAnimation.md">SpringAnimation</a> - Allows a property to track a value in a spring-like motion</li>
<li><a href="QtQuick.ScriptAction.md">ScriptAction</a> - Runs scripts during an animation</li>
</ul>
<p>Types that animate properties based on data types <table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></p></td><td class="tblDescr"><p>Animates changes in anchor values</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></p></td><td class="tblDescr"><p>Animates changes in color values</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p></td><td class="tblDescr"><p>Animates changes in qreal-type values</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQuick.ParentAnimation.md">ParentAnimation</a></p></td><td class="tblDescr"><p>Animates changes in parent values</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQuick.PathAnimation.md">PathAnimation</a></p></td><td class="tblDescr"><p>Animates an item along a path</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p></td><td class="tblDescr"><p>Animates changes in property values</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></p></td><td class="tblDescr"><p>Animates changes in rotation values</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a></p></td><td class="tblDescr"><p>Animates changes in QVector3d values</p></td></tr>
</table>
</p>
<p>Animations are created by applying animation types to property values. Animation types will interpolate property values to create smooth transitions. As well, state transitions may assign animations to state changes.</p>
<p>To create an animation, use an appropriate animation type for the type of the property that is to be animated, and apply the animation depending on the type of behavior that is required.</p>
<h2 id="triggering-animations">Triggering Animations</h2>
<p>There are several ways of setting animation to an object.</p>
<h3 >Direct Property Animation</h3>
<p>Animations are created by applying animation objects to property values to gradually change the properties over time. These <i>property animations</i> apply smooth movements by interpolating values between property value changes. Property animations provide timing controls and allows different interpolations through <a href="#qml-easing-animation">easing curves</a>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">flashingblob</span>
<span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">opacity</span>: <span class="number">1.0</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">animateColor</span>.<span class="name">start</span>()
<span class="name">animateOpacity</span>.<span class="name">start</span>()
}
}
<span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> {<span class="name">id</span>: <span class="name">animateColor</span>; <span class="name">target</span>: <span class="name">flashingblob</span>; <span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;green&quot;</span>; <span class="name">duration</span>: <span class="number">100</span>}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">id</span>: <span class="name">animateOpacity</span>
<span class="name">target</span>: <span class="name">flashingblob</span>
<span class="name">properties</span>: <span class="string">&quot;opacity&quot;</span>
<span class="name">from</span>: <span class="number">0.99</span>
<span class="name">to</span>: <span class="number">1.0</span>
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type">easing</span> {<span class="name">type</span>: <span class="name">Easing</span>.<span class="name">OutBack</span>; <span class="name">overshoot</span>: <span class="number">500</span>}
}
}</pre>
<p>Specialized property animation types have more efficient implementations than the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> type. They are for setting animations to different QML types such as <code>int</code>, <code>color</code>, and rotations. Similarly, the <a href="QtQuick.ParentAnimation.md">ParentAnimation</a> can animate parent changes.</p>
<p>See the <a href="#qml-controlling-animations">Controlling Animations</a> section for more information about the different animation properties.</p>
<h3 >Using Predefined Targets and Properties</h3>
<p>In the previous example, the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> and <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> objects needed to specify particular <a href="QtQuick.PropertyAnimation.md#target-prop">target</a> and <a href="QtQuick.PropertyAnimation.md#properties-prop">properties</a> values to specify the objects and properties that should be animated. This can be avoided by using the <i>&lt;Animation&gt; on &lt;Property&gt;</i> syntax, which specifies the animation is to be applied as a <i>property value source</i>.</p>
<p>Below are two <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> objects that are specified using this syntax:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
PropertyAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">100</span> }
PropertyAnimation on <span class="name">y</span> { <span class="name">to</span>: <span class="number">100</span> }
}</pre>
<p>The animation starts as soon as the rectangle is loaded, and will automatically be applied to its <code>x</code> and <code>y</code> values. Since the <i>&lt;Animation&gt; on &lt;Property&gt;</i> syntax has been used, it is not necessary to set the <a href="QtQuick.PropertyAnimation.md#target-prop">target</a> value of the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> objects to <code>rect</code>, and neither is it necessary to set the <a href="QtQuick.PropertyAnimation.md#property-prop">property</a> values to <code>x</code> and <code>y</code>.</p>
<p>This can also be used by <a href="#playing-animations-in-parallel-or-in-sequence">grouped animations</a> to ensure that all animations within a group are applied to the same property. For example, the previous example could instead use <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> to animate the rectangle's <code>color</code> first to yellow, then to blue:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
SequentialAnimation on <span class="name">color</span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">to</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}
}</pre>
<p>Since the <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> object has been specified on the <code>color</code> property using the <i>&lt;Animation&gt; on &lt;Property&gt;</i> syntax, its child <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#coloranimation">ColorAnimation</a> objects are also automatically applied to this property and do not need to specify <a href="QtQuick.PropertyAnimation.md#target-prop">target</a> or <a href="QtQuick.PropertyAnimation.md#property-prop">property</a> animation values.</p>
<h3 >Transitions during State Changes</h3>
<p><a href="QtQuick.State.md">Qt Quick States</a> are property configurations where a property may have different values to reflect different states. State changes introduce abrupt property changes; animations smooth transitions to produce visually appealing state changes.</p>
<p>The <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> type can contain animation types to interpolate property changes caused by state changes. To assign the transition to an object, bind it to the <code>transitions</code> property.</p>
<p>A button might have two states, the <code>pressed</code> state when the user clicks on the button and a <code>released</code> state when the user releases the button. We can assign different property configurations for each state. A transition would animate the change from the <code>pressed</code> state to the <code>released</code> state. Likewise, there would be an animation during the change from the <code>released</code> state to the <code>pressed</code> state.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="name">state</span>: <span class="string">&quot;RELEASED&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;PRESSED&quot;</span>
<span class="name">onReleased</span>: <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;RELEASED&quot;</span>
}
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;PRESSED&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>}
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;RELEASED&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>}
}
]
<span class="name">transitions</span>: [
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;PRESSED&quot;</span>
<span class="name">to</span>: <span class="string">&quot;RELEASED&quot;</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
},
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;RELEASED&quot;</span>
<span class="name">to</span>: <span class="string">&quot;PRESSED&quot;</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
}
]
}</pre>
<p>Binding the <code>to</code> and <code>from</code> properties to the state's name will assign that particular transition to the state change. For simple or symmetric transitions, setting the to <code>to</code> property to the wild card symbol, &quot;<code>*</code>&quot;, denotes that the transition applies to any state change.</p>
<pre class="qml">    <span class="name">transitions</span>:
<span class="name">Transition</span> {
<span class="name">to</span>: <span class="string">&quot;*&quot;</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
}</pre>
<h3 >Default Animation as Behaviors</h3>
<p>Default property animations are set using <i>behavior animations</i>. Animations declared in <a href="QtQuick.Behavior.md">Behavior</a> types apply to the property and animates any property value changes. However, Behavior types have an <code>enabled</code> property to purposely enable or disable the behavior animations.</p>
<p>A ball component might have a behavior animation assigned to its <code>x</code>, <code>y</code>, and <code>color</code> properties. The behavior animation could be set up to simulate an elastic effect. In effect, this behavior animation would apply the elastic effect to the properties whenever the ball moves.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>; <span class="name">radius</span>: <span class="name">width</span>
<span class="name">id</span>: <span class="name">ball</span>
<span class="name">color</span>: <span class="string">&quot;salmon&quot;</span>
Behavior on <span class="name">x</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">id</span>: <span class="name">bouncebehavior</span>
<span class="type">easing</span> {
<span class="name">type</span>: <span class="name">Easing</span>.<span class="name">OutElastic</span>
<span class="name">amplitude</span>: <span class="number">1.0</span>
<span class="name">period</span>: <span class="number">0.5</span>
}
}
}
Behavior on <span class="name">y</span> {
<span class="name">animation</span>: <span class="name">bouncebehavior</span>
}
<span class="type"><a href="QtQuick.Behavior.md">Behavior</a></span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">ball</span>; <span class="name">duration</span>: <span class="number">100</span> }
}
}</pre>
<p>There are several methods of assigning behavior animations to properties. The <code>Behavior on &lt;property&gt;</code> declaration is a convenient way of assigning a behavior animation onto a property.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/">Qt Quick Examples - Animation</a> for a demonstration of behavioral animations.</p>
<h2 id="playing-animations-in-parallel-or-in-sequence">Playing Animations in Parallel or in Sequence</h2>
<p>Animations can run <i>in parallel</i> or <i>in sequence</i>. Parallel animations will play a group of animations at the same time while sequential animations play a group of animations in order: one after the other. Grouping animations in <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> and <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> will play the animations in sequence or in parallel.</p>
<p>A banner component may have several icons or slogans to display, one after the other. The <code>opacity</code> property could transform to <code>1.0</code> denoting an opaque object. Using the <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> type, the opacity animations will play after the preceding animation finishes. The <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> type will play the animations at the same time.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">banner</span>
<span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">code</span>
<span class="name">text</span>: <span class="string">&quot;Code less.&quot;</span>
<span class="name">opacity</span>: <span class="number">0.01</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">create</span>
<span class="name">text</span>: <span class="string">&quot;Create more.&quot;</span>
<span class="name">opacity</span>: <span class="number">0.01</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">deploy</span>
<span class="name">text</span>: <span class="string">&quot;Deploy everywhere.&quot;</span>
<span class="name">opacity</span>: <span class="number">0.01</span>
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">playbanner</span>.<span class="name">start</span>()
}
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="name">id</span>: <span class="name">playbanner</span>
<span class="name">running</span>: <span class="number">false</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">code</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">create</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">deploy</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
}
}</pre>
<p>Once individual animations are placed into a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> or <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a>, they can no longer be started and stopped independently. The sequential or parallel animation must be started and stopped as a group.</p>
<p>The <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> type is also useful for playing <a href="#qml-transition-animations">transition animations</a> because animations are played in parallel inside transitions.</p>
<h2 id="controlling-animations">Controlling Animations</h2>
<p>There are different methods to control animations.</p>
<h3 >Animation Playback</h3>
<p>All animation types inherit from the <a href="QtQuick.Animation.md">Animation</a> type. It is not possible to create <a href="QtQuick.Animation.md">Animation</a> objects; instead, this type provides the essential properties and methods for animation types. Animation types have <code>start()</code>, <code>stop()</code>, <code>resume()</code>, <code>pause()</code>, <code>restart()</code>, and <code>complete()</code> -- all of these methods control the execution of animations.</p>
<h3 >Easing</h3>
<p>Easing curves define how the animation will interpolate between the start value and the end value. Different easing curves might go beyond the defined range of interpolation. The easing curves simplify the creation of animation effects such as bounce effects, acceleration, deceleration, and cyclical animations.</p>
<p>A QML object may have different easing curve for each property animation. There are also different parameters to control the curve, some of which are exclusive to a particular curve. For more information about the easing curves, visit the <a href="QtQuick.PropertyAnimation.md#easing.type-prop">easing</a> documentation.</p>
<p>The easing example visually demonstrates each of the different easing types.</p>
<h3 >Other Animation Types</h3>
<p>In addition, QML provides several other types useful for animation:</p>
<ul>
<li><a href="QtQuick.PauseAnimation.md">PauseAnimation</a>: enables pauses during animations</li>
<li><a href="QtQuick.ScriptAction.md">ScriptAction</a>: allows JavaScript to be executed during an animation, and can be used together with <a href="QtQuick.StateChangeScript.md">StateChangeScript</a> to reused existing scripts</li>
<li><a href="QtQuick.PropertyAction.md">PropertyAction</a>: changes a property <i>immediately</i> during an animation, without animating the property change</li>
</ul>
<p>These are specialized animation types that animate different property types</p>
<ul>
<li><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>: a specialized <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> that provides smooth changes in animation when the target value changes</li>
<li><a href="QtQuick.SpringAnimation.md">SpringAnimation</a>: provides a spring-like animation with specialized attributes such as <a href="QtQuick.SpringAnimation.md#mass-prop">mass</a>, <a href="QtQuick.SpringAnimation.md#damping-prop">damping</a> and <a href="QtQuick.SpringAnimation.md#epsilon-prop">epsilon</a></li>
<li><a href="QtQuick.ParentAnimation.md">ParentAnimation</a>: used for animating a parent change (see <a href="QtQuick.ParentChange.md">ParentChange</a>)</li>
<li><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a>: used for animating an anchor change (see <a href="QtQuick.AnchorChanges.md">AnchorChanges</a>)</li>
</ul>
<h2 id="sharing-animation-instances">Sharing Animation Instances</h2>
<p>Sharing animation instances between Transitions or Behaviors is not supported, and may lead to undefined behavior. In the following example, changes to the Rectangle's position will most likely not be correctly animated.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="comment">// NOT SUPPORTED: this will not work correctly as both Behaviors</span>
<span class="comment">// try to control a single animation instance</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">anim</span>; <span class="name">duration</span>: <span class="number">300</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InBack</span> }
Behavior on <span class="name">x</span> { <span class="name">animation</span>: <span class="name">anim</span> }
Behavior on <span class="name">y</span> { <span class="name">animation</span>: <span class="name">anim</span> }
}</pre>
<p>The easiest fix is to repeat the <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> for both Behaviors. If the repeated animation is rather complex, you might also consider creating a custom animation component and assigning an instance to each Behavior, for example:</p>
<pre class="qml"><span class="comment">// MyNumberAnimation.qml</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">anim</span>; <span class="name">duration</span>: <span class="number">300</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InBack</span> }</pre>
<pre class="qml"><span class="comment">// main.qml</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
Behavior on <span class="name">x</span> { <span class="type">MyNumberAnimation</span> {} }
Behavior on <span class="name">y</span> { <span class="type">MyNumberAnimation</span> {} }
}</pre>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@qtquick-statesanimations-animations.html -->
