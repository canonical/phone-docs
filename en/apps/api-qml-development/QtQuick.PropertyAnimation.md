---
Title: QtQuick.PropertyAnimation
---
        
PropertyAnimation
=================

<span class="subtitle"></span>
Animates changes in property values More...

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
<td>Inherits:</td>
<td><p><a href="QtQuick.Animation.md">Animation</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="QtQuick.ColorAnimation.md">ColorAnimation</a>, <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>, <a href="QtQuick.RotationAnimation.md">RotationAnimation</a>, and <a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int
-   ****[easing](#easing-prop)****
    -   ****[easing.type](#easing.type-prop)**** : enumeration
    -   ****[easing.amplitude](#easing.amplitude-prop)**** : real
    -   ****[easing.overshoot](#easing.overshoot-prop)**** : real
    -   ****[easing.period](#easing.period-prop)**** : real
    -   ****[easing.bezierCurve](#easing.bezierCurve-prop)**** : list&lt;real&gt;
-   ****[exclude](#exclude-prop)**** : list&lt;Object&gt;
-   ****[from](#from-prop)**** : variant
-   ****[properties](#properties-prop)**** : string
-   ****[property](#property-prop)**** : string
-   ****[target](#target-prop)**** : Object
-   ****[targets](#targets-prop)**** : list&lt;Object&gt;
-   ****[to](#to-prop)**** : variant

<span id="details"></span>
Detailed Description
--------------------

[PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) provides a way to animate changes to a property's value.

It can be used to define animations in a number of ways:

-   In a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition)

    For example, to animate any objects that have changed their `x` or `y` properties as a result of a state change, using an `InOutQuad` easing curve:

    ``` qml
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        states: State {
            name: "moved"
            PropertyChanges { target: rect; x: 50 }
        }
        transitions: Transition {
            PropertyAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
        }
    }
    ```

-   In a [Behavior](../QtQuick.Behavior.md)

    For example, to animate all changes to a rectangle's `x` property:

    ``` qml
    Rectangle {
        width: 100; height: 100
        color: "red"
        Behavior on x { PropertyAnimation {} }
        MouseArea { anchors.fill: parent; onClicked: parent.x = 50 }
    }
    ```

-   As a property value source

    For example, to repeatedly animate the rectangle's `x` property:

    ``` qml
    Rectangle {
        width: 100; height: 100
        color: "red"
        SequentialAnimation on x {
            loops: Animation.Infinite
            PropertyAnimation { to: 50 }
            PropertyAnimation { to: 0 }
        }
    }
    ```

-   In a signal handler

    For example, to fade out `theObject` when clicked:

    ``` qml
    MouseArea {
        anchors.fill: theObject
        onClicked: PropertyAnimation { target: theObject; property: "opacity"; to: 0 }
    }
    ```

-   Standalone

    For example, to animate `rect`'s `width` property over 500ms, from its current width to 30:

    ``` qml
    Rectangle {
        id: theRect
        width: 100; height: 100
        color: "red"
        // this is a standalone animation, it's not running by default
        PropertyAnimation { id: animation; target: theRect; property: "width"; to: 30; duration: 500 }
        MouseArea { anchors.fill: parent; onClicked: animation.running = true }
    }
    ```

Depending on how the animation is used, the set of properties normally used will be different. For more information see the individual property documentation, as well as the [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) introduction.

Note that [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) inherits the abstract [Animation](../QtQuick.Animation.md) type. This includes additional properties and methods for controlling the animation.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration of the animation, in milliseconds.

The default value is 250.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="easing-prop"></span><strong>easing group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="easing.type-prop"></span><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.amplitude-prop"></span><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.overshoot-prop"></span><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.period-prop"></span><span class="name">easing.period</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.bezierCurve-prop"></span><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td>
</tr>
</tbody>
</table>

//! propertyanimation.easing

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is `Easing.Linear`.

``` qml
PropertyAnimation { properties: "y"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 1.5 }
```

Available types are:

<table>
<tbody>
<tr class="odd">
<td><code>Easing.Linear</code></td>
<td>Easing curve for a linear (t) function: velocity is constant.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1cfe3062-3954-4b62-8e36-b4819691ff04-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/94c2821e-6829-422a-ae42-796822b9b257-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f9182675-9671-4bb8-bb6f-769aa1d62165-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/135a30a4-46d7-4ce2-a3df-43c912fe625d-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/99abe053-4ba1-4b83-bab5-1240900acff2-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/21a1f1de-e176-4a1f-8b7a-15b7cbea4d97-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/bdc8b965-0e63-4846-ae70-2e940e778cf7-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a158bb0e-0176-4f52-b34d-c2fa1f71e704-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8ed2d9f4-0bb7-43c8-a8cd-7b3f10019346-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/50b48df8-11b9-4c89-903f-e8eb7ce169b3-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/60f6f8eb-55e9-4cfb-8c6e-f6336fdc6ed0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/66ea6126-4b48-4b3c-a7e3-00ed289a415e-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/53dd5860-0d9f-4e6d-8c11-b532c8fb52f3-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a7d31fc9-889c-4e1d-8147-14bddedac6a0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/91f95000-7ce8-4463-8b43-2d37cafda1b0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/489166f5-292e-4715-8677-caef21bd2949-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2bd603ee-d924-4678-a939-048acd79a993-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b0986a63-2955-42fa-89dc-7d29aad2f5ba-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8f030709-c892-4ae5-ae12-2b0d9eb60a30-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d6cace88-b6c9-45dc-8902-78d7cf41d961-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/04cecc21-5c9c-4508-910d-218eae2fb972-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/ce855b39-a272-4cce-86a7-7ea5b30258fc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/edba4dac-d713-4f13-9666-9aa0057e3d8f-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e93227cd-d913-449e-8b56-796fdbe19d46-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/875f8bb6-be12-4741-bc68-6f772ac8227d-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/3fab9298-9a41-434f-a80e-949fd6b81b89-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/0ae656ee-bdaa-4609-9d15-39358741280a-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7135e63b-7407-486f-ab30-784a0498b1cf-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/78394a18-a27e-47a4-9223-6e5514094035-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9f984c80-413c-4ead-bde5-7e8556e2ecf4-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a0662e49-9dd9-4627-84ef-a29ca69413d1-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/de6d66fa-6902-47cd-ad8f-bcc843f02b56-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/0986235a-3e9b-49ea-b957-69608fc353bc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/aef17b42-8dce-4f99-a32b-7355a3f11c07-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/36b67c6b-faba-4ab9-9c4c-4f14221a4d1a-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2ff33765-a519-40a9-9afe-48e09c7d4fa6-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/438dd2ce-080d-4949-8c24-b3c10c28683c-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/27a1d51d-cc4d-496c-b1d1-d5c731c4a701-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7227c5ed-2ed9-4e9f-932f-53c218aed9d8-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/3fc962bf-5740-4883-8e44-286f62e7b9fc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e7641bd8-6ff7-4d12-895a-0cba8548ac06-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.Bezier</code></td>
<td>Custom easing curve defined by the easing.bezierCurve property.</td>
<td></td>
</tr>
</tbody>
</table>

`easing.amplitude` is only applicable for bounce and elastic curves (curves of type `Easing.InBounce`, `Easing.OutBounce`, `Easing.InOutBounce`, `Easing.OutInBounce`, `Easing.InElastic`, `Easing.OutElastic`, `Easing.InOutElastic` or `Easing.OutInElastic`).

`easing.overshoot` is only applicable if `easing.type` is: `Easing.InBack`, `Easing.OutBack`, `Easing.InOutBack` or `Easing.OutInBack`.

`easing.period` is only applicable if easing.type is: `Easing.InElastic`, `Easing.OutElastic`, `Easing.InOutElastic` or `Easing.OutInElastic`.

`easing.bezierCurve` is only applicable if easing.type is: `Easing.Bezier`. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: \[cx1, cy1, cx2, cy2, endx, endy, ...\]. The last point must be 1,1.

See the [Easing Curves](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#easing-curves) for a demonstration of the different easing settings. //! propertyanimation.easing

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exclude-prop"></span><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the items not to be affected by this animation.

**See also** [PropertyAnimation::targets](#targets-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the starting value for the animation.

If the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="properties-prop"></span><span class="name">properties</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the end value for the animation.

If the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

