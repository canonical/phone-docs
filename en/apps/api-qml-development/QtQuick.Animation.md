---
Title: QtQuick.Animation
---
        
Animation
=========

<span class="subtitle"></span>
Is the base of all QML animations More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a>, <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a>, <a href="QtQuick.ParentAnimation.md">ParentAnimation</a>, <a href="QtQuick.PathAnimation.md">PathAnimation</a>, <a href="QtQuick.PauseAnimation.md">PauseAnimation</a>, <a href="QtQuick.PropertyAction.md">PropertyAction</a>, <a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a>, <a href="QtQuick.ScriptAction.md">ScriptAction</a>, and <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[alwaysRunToEnd](#alwaysRunToEnd-prop)**** : bool
-   ****[loops](#loops-prop)**** : int
-   ****[paused](#paused-prop)**** : bool
-   ****[running](#running-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[started](#started-signal)****()
-   ****[stopped](#stopped-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[complete](#complete-method)****()
-   ****[pause](#pause-method)****()
-   ****[restart](#restart-method)****()
-   ****[resume](#resume-method)****()
-   ****[start](#start-method)****()
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Animation type cannot be used directly in a QML file. It exists to provide a set of common properties and methods, available across all the other animation types that inherit from it. Attempting to use the Animation type directly will result in an error.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alwaysRunToEnd-prop"></span><span class="name">alwaysRunToEnd</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animation should run to completion when it is stopped.

If this true the animation will complete its current iteration when it is stopped - either by setting the `running` property to false, or by calling the `stop()` method. The `complete()` method is not effected by this value.

This behavior is most useful when the `loops` property is set, as the animation will finish playing normally but not restart.

By default, the alwaysRunToEnd property is not set.

**Note:** alwaysRunToEnd has no effect on animations in a Transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loops-prop"></span><span class="name">loops</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of times the animation should play.

By default, `loops` is 1: the animation will play through once and then stop.

If set to Animation.Infinite, the animation will continuously repeat until it is explicitly stopped - either by setting the `running` property to false, or by calling the `stop()` method.

In the following example, the rectangle will spin indefinitely.

``` cpp
Rectangle {
    width: 100; height: 100; color: "green"
    RotationAnimation on rotation {
        loops: Animation.Infinite
        from: 0
        to: 360
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-prop"></span><span class="name">paused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animation is currently paused.

The `paused` property can be set to declaratively control whether or not an animation is paused.

Animations can also be paused and resumed imperatively from JavaScript using the `pause()` and `resume()` methods.

By default, animations are not paused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animation is currently running.

The `running` property can be set to declaratively control whether or not an animation is running. The following example will animate a rectangle whenever the [MouseArea](../QtQuick.MouseArea.md) is pressed.

``` cpp
Rectangle {
    width: 100; height: 100
    NumberAnimation on x {
        running: myMouse.pressed
        from: 0; to: 100
    }
    MouseArea { id: myMouse }
}
```

Likewise, the `running` property can be read to determine if the animation is running. In the following example the Text item will indicate whether or not the animation is running.

``` cpp
NumberAnimation { id: myAnimation }
Text { text: myAnimation.running ? "Animation is running" : "Animation is not running" }
```

Animations can also be started and stopped imperatively from JavaScript using the `start()` and `stop()` methods.

By default, animations are not running. Though, when the animations are assigned to properties, as property value sources using the *on* syntax, they are set to running by default.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="started-signal"></span><span class="name">started</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the animation begins.

It is only triggered for top-level, standalone animations. It will not be triggered for animations in a Behavior or Transition, or animations that are part of an animation group.

The corresponding handler is `onStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stopped-signal"></span><span class="name">stopped</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the animation ends.

The animation may have been stopped manually, or may have run to completion.

It is only triggered for top-level, standalone animations. It will not be triggered for animations in a Behavior or Transition, or animations that are part of an animation group.

If [alwaysRunToEnd](#alwaysRunToEnd-prop) is true, this signal will not be emitted until the animation has completed its current iteration.

The corresponding handler is `onStopped`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="complete-method"></span><span class="name">complete</span>()</p></td>
</tr>
</tbody>
</table>

Stops the animation, jumping to the final property values

If the animation is not running, calling this method has no effect. The `running` property will be false following a call to `complete()`.

Unlike `stop()`, `complete()` immediately fast-forwards the animation to its end. In the following example,

``` cpp
Rectangle {
    NumberAnimation on x { from: 0; to: 100; duration: 500 }
}
```

calling `stop()` at time 250ms will result in the `x` property having a value of 50, while calling `complete()` will set the `x` property to 100, exactly as though the animation had played the whole way through.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the animation

If the animation is already paused or not `running`, calling this method has no effect. The `paused` property will be true following a call to `pause()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Restarts the animation

This is a convenience method, and is equivalent to calling `stop()` and then `start()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes a paused animation

If the animation is not paused or not `running`, calling this method has no effect. The `paused` property will be false following a call to `resume()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the animation

If the animation is already running, calling this method has no effect. The `running` property will be true following a call to `start()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the animation

If the animation is not running, calling this method has no effect. Both the `running` and `paused` properties will be false following a call to `stop()`.

Normally `stop()` stops the animation immediately, and the animation has no further influence on property values. In this example animation

``` cpp
Rectangle {
    NumberAnimation on x { from: 0; to: 100; duration: 500 }
}
```

was stopped at time 250ms, the `x` property will have a value of 50.

However, if the `alwaysRunToEnd` property is set, the animation will continue running until it completes and then stop. The `running` property will still become false immediately.

