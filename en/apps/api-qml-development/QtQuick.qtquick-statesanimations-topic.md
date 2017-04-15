---
Title: QtQuick.qtquick-statesanimations-topic
---
        
Important Concepts in Qt Quick - States, Transitions and Ani...
===============================================================

<span class="subtitle"></span>
<span id="details"></span>
In any modern user-interface, transitioning between states and animating the user-interface is highly beneficial. These are first-class concepts in Qt Quick.

This page describes the concept of states, state transitions, and property animations. It details which concepts are important and why, and how those concepts interrelate. It also provides links to in-depth detail about the QML types that Qt Quick provides to implement those concepts.

<span id="states"></span>
States
------

The state of a particular visual item is the set of information which describes how and where the individual component parts of the visual item are displayed within it, and all the data associated with that state. Most visual items in a user-interface will have a limited number of states, each with well-defined properties.

For example, an element in a list may be either selected or not, and if selected, it may either be the currently active single selection or it may be part of a selection group.

Each of those states may have certain associated visual appearance (neutral, highlighted, expanded, and so forth).

Qt Quick provides a `State` type with properties which define its semantics and can be used to trigger behavior or animations. See the documentation about [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md) for more information.

<span id="transitions"></span>
Transitions
-----------

When a visual item transitions from one state to another, the appearance of that item will change. A transition is an "edge" between two states. It may trigger other events to occur, as other parts of the application may have behavior which is triggered when a certain state is entered or left.

Qt Quick provides the `Transition` type which has properties which define what will occur when the application changes from one state to another. See the documentation on [Transitions during State Changes](../QtQuick.qtquick-statesanimations-animations.md#transitions-during-state-changes) for more information about transitions.

<span id="animations"></span>
Animations
----------

When transitioning between states, a fluid animation can be used to aid the user during the transition. Abrupt and unexpected changes to the visual canvas result in a suboptimal user-experience and should be avoided.

If an element in a list becomes selected, the color change (from neutral to highlighted) can be animated. If the position of the element in the list is changed, it can be moved in an fluidly animated fashion so that the eye of the user can track the change.

These types of animations are supported in Qt Quick through various animation and transition types. See the documentation on [Animations and Transitions In Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) for information about these types and how to use them.

<span id="animating-property-assignments"></span>
Animating Property Assignments
------------------------------

Animations are not only related to states and transitions between states. For example, an animation might be triggered by other events, which are not associated with a distinct state.

It is often beneficial to always animate changes to certain properties of visual items, regardless of the cause of the change (for example, opacity effects). Qt Quick provides the [Behavior](../QtQuick.Behavior.md) type which allows the client to specify animation behavior for changes to properties. The [Behavior](../QtQuick.Behavior.md) type is an example of a QML object property modifier.

Please see the documentation about [default property animations](../QtQuick.qtquick-statesanimations-animations.md#default-animation-as-behaviors) for more information about using the [Behavior](../QtQuick.Behavior.md) type to provide default property change animations.

It is important to note, that using default property animations (via the [Behavior](../QtQuick.Behavior.md) type) in combination with state-transition animations can sometimes result in undefined behavior occurring. Please see the documentation about [using Qt Quick Behaviors with States](../QtQuick.qtquick-statesanimations-behaviors.md) for more information about this topic.

<span id="animators"></span>
Animators
---------

The [Animator](../QtQuick.Animator.md) types are a special type of animation which bypass the QML objects and operate directly on the primitives in the [scene graph](../QtQuick.qtquick-visualcanvas-scenegraph.md). This has the benefit that the Animator based animations can be run on the scene graph's rendering thread (when applicable) and can continue to animate even when UI is otherwise blocked.

Qt Quick provides the following Animator types:

-   [XAnimator](../QtQuick.XAnimator.md) - Animates the horizontal position of an [Item](../QtQuick.Item.md).
-   [YAnimator](../QtQuick.YAnimator.md) - Animates the vertical position of an [Item](../QtQuick.Item.md).
-   [ScaleAnimator](../QtQuick.ScaleAnimator.md) - Animates the scale factor of an [Item](../QtQuick.Item.md).
-   [RotationAnimator](../QtQuick.RotationAnimator.md) - Animates the rotation of an [Item](../QtQuick.Item.md).
-   [OpacityAnimator](../QtQuick.OpacityAnimator.md) - Animates the opacity of an [Item](../QtQuick.Item.md).
-   [UniformAnimator](../QtQuick.UniformAnimator.md) - Animates a uniform in a [ShaderEffect](../QtQuick.ShaderEffect.md).

<span id="animated-sprites"></span>
Animated Sprites
----------------

The concept of animated sprites is separate to the concept of animations as used elsewhere on this page. If you want to create or use an animated image or sprite, please see the documentation about [sprite animations](../QtQuick.qtquick-effects-sprites.md).

