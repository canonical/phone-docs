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

[PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) provides a way to animate changes to a property's value.

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

Note that [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) inherits the abstract [Animation](../QtQuick.Animation.md) type. This includes additional properties and methods for controlling the animation.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

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
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d2842204-729f-482b-9c3e-348945d608dc-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b2a23423-7a0c-4466-aa0f-1b702e2a6306-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a30bd85f-902a-4fa3-852f-e1c25509a8b3-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/5438ef74-156b-48a5-9a97-88f760664719-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cf6a09d1-fc8a-4247-a82d-83fbf8e4a101-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e19e9dcb-470c-4616-96e9-b0fe567fc0da-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e328fd36-7380-47a0-bbe6-5468d050d1e6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9bde28ba-a0a8-4060-a112-05b0c2a974e6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8fd57cdc-8b8b-4125-946f-bf2702e64f2e-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c888870e-61b8-44a4-b12b-7099d9b15064-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f626d9d9-0b48-4309-8b4e-e8279657ae34-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f58b8f5f-4238-4328-842c-19b92ffd4314-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/128f85e1-47ba-4e05-bd13-b64b54a37a40-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/db2266de-5e08-4858-b00e-a3cb9e888ce8-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c095e2e5-0081-42e1-9656-273e61a52edd-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/0d50c9eb-48b9-4f97-9e6a-018241aef17f-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/841235e6-57d4-4eea-aae4-46d840076271-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/72357a33-b358-43fd-81fe-b93946272d33-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/afd44875-0549-431e-b20d-6945501edc8a-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6e06f7c2-9996-4d56-8ed5-6f067142e563-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1876e135-90a1-4707-82c0-7450c5add568-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cdf31aa0-46e6-4b49-ae92-3c001251ae04-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c97bedd3-182a-4d40-b035-ac32b1d77e40-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/971489bb-2c12-4921-b09b-ad3fdcb610ad-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9538a5a5-c9bf-4483-96ff-6945d2039128-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/16a9f11c-ad9c-426b-a557-2c4db54d55b5-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7bf95e15-4ee7-4baa-a1c9-4ad6439dd943-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/72c7ca8b-94ff-4939-8f80-7f095cecb67d-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/ebe8a3f3-0034-4c47-992e-2aba5237b6b4-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/5a435516-e6d5-4778-8dde-405154aa03cf-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a3c48cf2-2ce5-48a4-9a38-e43ca57325d1-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/49f3742b-df5b-4ea7-bacd-d8a843ce707b-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/42933676-27f8-4931-bd8d-5941a9d22174-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1b31b9a1-5101-4ef7-a06b-b68e6eab1efb-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/98d60224-332f-44e4-9aca-bde6d56c426c-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/670bd4eb-c693-4777-a9ab-d93d178cfca6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1e5b9ed3-c798-4911-b0ff-740e7ce10cb9-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/bd13694f-b430-4e56-90cc-33b23eaa01c0-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c13dbd5b-7daf-4a07-81eb-fde34707c358-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/3ed141bd-7d2c-44b4-bda3-67462db1159b-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/ef944a69-0bff-4302-9533-6b92660a52eb-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" /></td>
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

See the [Easing Curves](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#easing-curves) for a demonstration of the different easing settings. //! propertyanimation.easing

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

If the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

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

If the [PropertyAnimation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

