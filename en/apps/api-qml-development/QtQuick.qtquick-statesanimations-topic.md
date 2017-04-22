---
Title: QtQuick.qtquick-statesanimations-topic
---

# QtQuick.qtquick-statesanimations-topic

<span class="subtitle"></span>
<!-- $$$qtquick-statesanimations-topic.html-description -->
<p>In any modern user-interface, transitioning between states and animating the user-interface is highly beneficial. These are first-class concepts in Qt Quick.</p>
<p>This page describes the concept of states, state transitions, and property animations. It details which concepts are important and why, and how those concepts interrelate. It also provides links to in-depth detail about the QML types that Qt Quick provides to implement those concepts.</p>
<h2 id="states">States</h2>
<p>The state of a particular visual item is the set of information which describes how and where the individual component parts of the visual item are displayed within it, and all the data associated with that state. Most visual items in a user-interface will have a limited number of states, each with well-defined properties.</p>
<p>For example, an element in a list may be either selected or not, and if selected, it may either be the currently active single selection or it may be part of a selection group.</p>
<p>Each of those states may have certain associated visual appearance (neutral, highlighted, expanded, and so forth).</p>
<p>Qt Quick provides a <code>State</code> type with properties which define its semantics and can be used to trigger behavior or animations. See the documentation about <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> for more information.</p>
<h2 id="transitions">Transitions</h2>
<p>When a visual item transitions from one state to another, the appearance of that item will change. A transition is an &quot;edge&quot; between two states. It may trigger other events to occur, as other parts of the application may have behavior which is triggered when a certain state is entered or left.</p>
<p>Qt Quick provides the <code>Transition</code> type which has properties which define what will occur when the application changes from one state to another. See the documentation on <a href="QtQuick.qtquick-statesanimations-animations.md#transitions-during-state-changes">Transitions during State Changes</a> for more information about transitions.</p>
<h2 id="animations">Animations</h2>
<p>When transitioning between states, a fluid animation can be used to aid the user during the transition. Abrupt and unexpected changes to the visual canvas result in a suboptimal user-experience and should be avoided.</p>
<p>If an element in a list becomes selected, the color change (from neutral to highlighted) can be animated. If the position of the element in the list is changed, it can be moved in an fluidly animated fashion so that the eye of the user can track the change.</p>
<p>These types of animations are supported in Qt Quick through various animation and transition types. See the documentation on <a href="QtQuick.qtquick-statesanimations-animations.md">Animations and Transitions In Qt Quick</a> for information about these types and how to use them.</p>
<h2 id="animating-property-assignments">Animating Property Assignments</h2>
<p>Animations are not only related to states and transitions between states. For example, an animation might be triggered by other events, which are not associated with a distinct state.</p>
<p>It is often beneficial to always animate changes to certain properties of visual items, regardless of the cause of the change (for example, opacity effects). Qt Quick provides the <a href="QtQuick.Behavior.md">Behavior</a> type which allows the client to specify animation behavior for changes to properties. The <a href="QtQuick.Behavior.md">Behavior</a> type is an example of a QML object property modifier.</p>
<p>Please see the documentation about <a href="QtQuick.qtquick-statesanimations-animations.md#default-animation-as-behaviors">default property animations</a> for more information about using the <a href="QtQuick.Behavior.md">Behavior</a> type to provide default property change animations.</p>
<p>It is important to note, that using default property animations (via the <a href="QtQuick.Behavior.md">Behavior</a> type) in combination with state-transition animations can sometimes result in undefined behavior occurring. Please see the documentation about <a href="QtQuick.qtquick-statesanimations-behaviors.md">using Qt Quick Behaviors with States</a> for more information about this topic.</p>
<h2 id="animators">Animators</h2>
<p>The <a href="QtQuick.Animator.md">Animator</a> types are a special type of animation which bypass the QML objects and operate directly on the primitives in the <a href="QtQuick.qtquick-visualcanvas-scenegraph.md">scene graph</a>. This has the benefit that the Animator based animations can be run on the scene graph's rendering thread (when applicable) and can continue to animate even when UI is otherwise blocked.</p>
<p>Qt Quick provides the following Animator types:</p>
<ul>
<li><a href="QtQuick.XAnimator.md">XAnimator</a> - Animates the horizontal position of an <a href="QtQuick.Item.md">Item</a>.</li>
<li><a href="QtQuick.YAnimator.md">YAnimator</a> - Animates the vertical position of an <a href="QtQuick.Item.md">Item</a>.</li>
<li><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a> - Animates the scale factor of an <a href="QtQuick.Item.md">Item</a>.</li>
<li><a href="QtQuick.RotationAnimator.md">RotationAnimator</a> - Animates the rotation of an <a href="QtQuick.Item.md">Item</a>.</li>
<li><a href="QtQuick.OpacityAnimator.md">OpacityAnimator</a> - Animates the opacity of an <a href="QtQuick.Item.md">Item</a>.</li>
<li><a href="QtQuick.UniformAnimator.md">UniformAnimator</a> - Animates a uniform in a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>.</li>
</ul>
<h2 id="animated-sprites">Animated Sprites</h2>
<p>The concept of animated sprites is separate to the concept of animations as used elsewhere on this page. If you want to create or use an animated image or sprite, please see the documentation about <a href="QtQuick.qtquick-effects-sprites.md">sprite animations</a>.</p>
<!-- @@@qtquick-statesanimations-topic.html -->
