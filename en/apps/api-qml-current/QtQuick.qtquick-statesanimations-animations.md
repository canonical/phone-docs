---
Title: QtQuick.qtquick-statesanimations-animations
---
        
Animation and Transitions in Qt Quick
=====================================

<span class="subtitle"></span>
details
Animation and Transitions Types
-------------------------------

-   [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) - Animates transitions during state changes
-   [SequentialAnimation](../QtQuick.SequentialAnimation.md) - Runs animations sequentially
-   [ParallelAnimation](../QtQuick.ParallelAnimation.md) - Runs animations in parallel
-   [Behavior](../QtQuick.Behavior.md) - Specifies a default animation for property changes
-   [PropertyAction](../QtQuick.PropertyAction.md) - Sets immediate property changes during animation
-   [PauseAnimation](../QtQuick.PauseAnimation.md) - Introduces a pause in an animation
-   [SmoothedAnimation](../QtQuick.SmoothedAnimation.md) - Allows a property to smoothly track a value
-   [SpringAnimation](../QtQuick.SpringAnimation.md) - Allows a property to track a value in a spring-like motion
-   [ScriptAction](../QtQuick.ScriptAction.md) - Runs scripts during an animation

Types that animate properties based on data types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></p></td>
<td><p>Animates changes in anchor values</p></td>
</tr>
<tr class="even">
<td><p><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></p></td>
<td><p>Animates changes in color values</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p></td>
<td><p>Animates changes in qreal-type values</p></td>
</tr>
<tr class="even">
<td><p><a href="QtQuick.ParentAnimation.md">ParentAnimation</a></p></td>
<td><p>Animates changes in parent values</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtQuick.PathAnimation.md">PathAnimation</a></p></td>
<td><p>Animates an item along a path</p></td>
</tr>
<tr class="even">
<td><p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p></td>
<td><p>Animates changes in property values</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></p></td>
<td><p>Animates changes in rotation values</p></td>
</tr>
<tr class="even">
<td><p><a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a></p></td>
<td><p>Animates changes in QVector3d values</p></td>
</tr>
</tbody>
</table>

Animations are created by applying animation types to property values. Animation types will interpolate property values to create smooth transitions. As well, state transitions may assign animations to state changes.

To create an animation, use an appropriate animation type for the type of the property that is to be animated, and apply the animation depending on the type of behavior that is required.

<span id="triggering-animations"></span>
Triggering Animations
---------------------

There are several ways of setting animation to an object.

<span id="direct-property-animation"></span>
### Direct Property Animation

Animations are created by applying animation objects to property values to gradually change the properties over time. These *property animations* apply smooth movements by interpolating values between property value changes. Property animations provide timing controls and allows different interpolations through [easing curves](#qml-easing-animation).

``` qml
Rectangle {
    id: flashingblob
    width: 75; height: 75
    color: "blue"
    opacity: 1.0
    MouseArea {
        anchors.fill: parent
        onClicked: {
            animateColor.start()
            animateOpacity.start()
        }
    }
    PropertyAnimation {id: animateColor; target: flashingblob; properties: "color"; to: "green"; duration: 100}
    NumberAnimation {
        id: animateOpacity
        target: flashingblob
        properties: "opacity"
        from: 0.99
        to: 1.0
        loops: Animation.Infinite
        easing {type: Easing.OutBack; overshoot: 500}
   }
}
```

Specialized property animation types have more efficient implementations than the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) type. They are for setting animations to different QML types such as `int`, `color`, and rotations. Similarly, the [ParentAnimation](../QtQuick.ParentAnimation.md) can animate parent changes.

See the [Controlling Animations](#qml-controlling-animations) section for more information about the different animation properties.

<span id="using-predefined-targets-and-properties"></span>
### Using Predefined Targets and Properties

In the previous example, the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) and [NumberAnimation](../QtQuick.NumberAnimation.md) objects needed to specify particular [target](../QtQuick.PropertyAnimation.md#target-prop) and [properties](../QtQuick.PropertyAnimation.md#properties-prop) values to specify the objects and properties that should be animated. This can be avoided by using the *&lt;Animation&gt; on &lt;Property&gt;* syntax, which specifies the animation is to be applied as a *property value source*.

Below are two [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) objects that are specified using this syntax:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    PropertyAnimation on x { to: 100 }
    PropertyAnimation on y { to: 100 }
}
```

The animation starts as soon as the rectangle is loaded, and will automatically be applied to its `x` and `y` values. Since the *&lt;Animation&gt; on &lt;Property&gt;* syntax has been used, it is not necessary to set the [target](../QtQuick.PropertyAnimation.md#target-prop) value of the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) objects to `rect`, and neither is it necessary to set the [property](../QtQuick.PropertyAnimation.md#property-prop) values to `x` and `y`.

This can also be used by [grouped animations](#playing-animations-in-parallel-or-in-sequence) to ensure that all animations within a group are applied to the same property. For example, the previous example could instead use [SequentialAnimation](../QtQuick.SequentialAnimation.md) to animate the rectangle's `color` first to yellow, then to blue:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    SequentialAnimation on color {
        ColorAnimation { to: "yellow"; duration: 1000 }
        ColorAnimation { to: "blue"; duration: 1000 }
    }
}
```

Since the [SequentialAnimation](../QtQuick.SequentialAnimation.md) object has been specified on the `color` property using the *&lt;Animation&gt; on &lt;Property&gt;* syntax, its child [ColorAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) objects are also automatically applied to this property and do not need to specify [target](../QtQuick.PropertyAnimation.md#target-prop) or [property](../QtQuick.PropertyAnimation.md#property-prop) animation values.

<span id="qml-transition-animations"></span><span id="transitions-during-state-changes"></span>
### Transitions during State Changes

[Qt Quick States](../QtQuick.State.md) are property configurations where a property may have different values to reflect different states. State changes introduce abrupt property changes; animations smooth transitions to produce visually appealing state changes.

The [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) type can contain animation types to interpolate property changes caused by state changes. To assign the transition to an object, bind it to the `transitions` property.

A button might have two states, the `pressed` state when the user clicks on the button and a `released` state when the user releases the button. We can assign different property configurations for each state. A transition would animate the change from the `pressed` state to the `released` state. Likewise, there would be an animation during the change from the `released` state to the `pressed` state.

``` qml
Rectangle {
    width: 75; height: 75
    id: button
    state: "RELEASED"
    MouseArea {
        anchors.fill: parent
        onPressed: button.state = "PRESSED"
        onReleased: button.state = "RELEASED"
    }
    states: [
        State {
            name: "PRESSED"
            PropertyChanges { target: button; color: "lightblue"}
        },
        State {
            name: "RELEASED"
            PropertyChanges { target: button; color: "lightsteelblue"}
        }
    ]
    transitions: [
        Transition {
            from: "PRESSED"
            to: "RELEASED"
            ColorAnimation { target: button; duration: 100}
        },
        Transition {
            from: "RELEASED"
            to: "PRESSED"
            ColorAnimation { target: button; duration: 100}
        }
    ]
}
```

Binding the `to` and `from` properties to the state's name will assign that particular transition to the state change. For simple or symmetric transitions, setting the to `to` property to the wild card symbol, "`*`", denotes that the transition applies to any state change.

``` qml
    transitions:
        Transition {
            to: "*"
            ColorAnimation { target: button; duration: 100}
        }
```

<span id="default-animation-as-behaviors"></span>
### Default Animation as Behaviors

Default property animations are set using *behavior animations*. Animations declared in [Behavior](../QtQuick.Behavior.md) types apply to the property and animates any property value changes. However, Behavior types have an `enabled` property to purposely enable or disable the behavior animations.

A ball component might have a behavior animation assigned to its `x`, `y`, and `color` properties. The behavior animation could be set up to simulate an elastic effect. In effect, this behavior animation would apply the elastic effect to the properties whenever the ball moves.

``` qml
Rectangle {
    width: 75; height: 75; radius: width
    id: ball
    color: "salmon"
    Behavior on x {
        NumberAnimation {
            id: bouncebehavior
            easing {
                type: Easing.OutElastic
                amplitude: 1.0
                period: 0.5
            }
        }
    }
    Behavior on y {
        animation: bouncebehavior
    }
    Behavior {
        ColorAnimation { target: ball; duration: 100 }
    }
}
```

There are several methods of assigning behavior animations to properties. The `Behavior on <property>` declaration is a convenient way of assigning a behavior animation onto a property.

See the [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/) for a demonstration of behavioral animations.

<span id="playing-animations-in-parallel-or-in-sequence"></span>
Playing Animations in Parallel or in Sequence
---------------------------------------------

Animations can run *in parallel* or *in sequence*. Parallel animations will play a group of animations at the same time while sequential animations play a group of animations in order: one after the other. Grouping animations in [SequentialAnimation](../QtQuick.SequentialAnimation.md) and [ParallelAnimation](../QtQuick.ParallelAnimation.md) will play the animations in sequence or in parallel.

A banner component may have several icons or slogans to display, one after the other. The `opacity` property could transform to `1.0` denoting an opaque object. Using the [SequentialAnimation](../QtQuick.SequentialAnimation.md) type, the opacity animations will play after the preceding animation finishes. The [ParallelAnimation](../QtQuick.ParallelAnimation.md) type will play the animations at the same time.

``` qml
Rectangle {
    id: banner
    width: 150; height: 100; border.color: "black"
    Column {
        anchors.centerIn: parent
        Text {
            id: code
            text: "Code less."
            opacity: 0.01
        }
        Text {
            id: create
            text: "Create more."
            opacity: 0.01
        }
        Text {
            id: deploy
            text: "Deploy everywhere."
            opacity: 0.01
        }
    }
    MouseArea {
        anchors.fill: parent
        onPressed: playbanner.start()
    }
    SequentialAnimation {
        id: playbanner
        running: false
        NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
        NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
        NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
    }
}
```

Once individual animations are placed into a [SequentialAnimation](../QtQuick.SequentialAnimation.md) or [ParallelAnimation](../QtQuick.ParallelAnimation.md), they can no longer be started and stopped independently. The sequential or parallel animation must be started and stopped as a group.

The [SequentialAnimation](../QtQuick.SequentialAnimation.md) type is also useful for playing [transition animations](#qml-transition-animations) because animations are played in parallel inside transitions.

<span id="qml-controlling-animations"></span><span id="controlling-animations"></span>
Controlling Animations
----------------------

There are different methods to control animations.

<span id="animation-playback"></span>
### Animation Playback

All animation types inherit from the [Animation](../QtQuick.Animation.md) type. It is not possible to create [Animation](../QtQuick.Animation.md) objects; instead, this type provides the essential properties and methods for animation types. Animation types have `start()`, `stop()`, `resume()`, `pause()`, `restart()`, and `complete()` -- all of these methods control the execution of animations.

<span id="qml-easing-animation"></span><span id="easing"></span>
### Easing

Easing curves define how the animation will interpolate between the start value and the end value. Different easing curves might go beyond the defined range of interpolation. The easing curves simplify the creation of animation effects such as bounce effects, acceleration, deceleration, and cyclical animations.

A QML object may have different easing curve for each property animation. There are also different parameters to control the curve, some of which are exclusive to a particular curve. For more information about the easing curves, visit the [easing](../QtQuick.PropertyAnimation.md#easing.type-prop) documentation.

The easing example visually demonstrates each of the different easing types.

<span id="other-animation-types"></span>
### Other Animation Types

In addition, QML provides several other types useful for animation:

-   [PauseAnimation](../QtQuick.PauseAnimation.md): enables pauses during animations
-   [ScriptAction](../QtQuick.ScriptAction.md): allows JavaScript to be executed during an animation, and can be used together with [StateChangeScript](../QtQuick.StateChangeScript.md) to reused existing scripts
-   [PropertyAction](../QtQuick.PropertyAction.md): changes a property *immediately* during an animation, without animating the property change

These are specialized animation types that animate different property types

-   [SmoothedAnimation](../QtQuick.SmoothedAnimation.md): a specialized [NumberAnimation](../QtQuick.NumberAnimation.md) that provides smooth changes in animation when the target value changes
-   [SpringAnimation](../QtQuick.SpringAnimation.md): provides a spring-like animation with specialized attributes such as [mass](../QtQuick.SpringAnimation.md#mass-prop), [damping](../QtQuick.SpringAnimation.md#damping-prop) and [epsilon](../QtQuick.SpringAnimation.md#epsilon-prop)
-   [ParentAnimation](../QtQuick.ParentAnimation.md): used for animating a parent change (see [ParentChange](../QtQuick.ParentChange.md))
-   [AnchorAnimation](../QtQuick.AnchorAnimation.md): used for animating an anchor change (see [AnchorChanges](../QtQuick.AnchorChanges.md))

<span id="sharing-animation-instances"></span>
Sharing Animation Instances
---------------------------

Sharing animation instances between Transitions or Behaviors is not supported, and may lead to undefined behavior. In the following example, changes to the Rectangle's position will most likely not be correctly animated.

``` qml
Rectangle {
    // NOT SUPPORTED: this will not work correctly as both Behaviors
    // try to control a single animation instance
    NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
    Behavior on x { animation: anim }
    Behavior on y { animation: anim }
}
```

The easiest fix is to repeat the [NumberAnimation](../QtQuick.NumberAnimation.md) for both Behaviors. If the repeated animation is rather complex, you might also consider creating a custom animation component and assigning an instance to each Behavior, for example:

``` qml
// MyNumberAnimation.qml
NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
```

``` qml
// main.qml
Rectangle {
    Behavior on x { MyNumberAnimation {} }
    Behavior on y { MyNumberAnimation {} }
}
```

**See also** [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

