---
Title: QtQuick.Animator
---
        
Animator
========

<span class="subtitle"></span>
Is the base of all QML animators. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

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
-   ****[from](#from-prop)**** : real
-   ****[target](#target-prop)**** : QtQuick::Item
-   ****[to](#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Animator types are a special type of animation which operate directly on Qt Quick's scene graph, rather than the QML objects and their properties like regular Animation types do. This has the benefit that Animator based animations can animate on the [scene graph's rendering thread](../QtQuick.qtquick-visualcanvas-scenegraph.md#threaded-render-loop) even when the UI thread is blocked.

The value of the QML property will be updated after the animation has finished. The property is not updated while the animation is running.

The Animator types can be used just like any other Animation type.

``` qml
Rectangle {
    id: mixBox
    width: 50
    height: 50
    ParallelAnimation {
        ColorAnimation {
            target: mixBox
            property: "color"
            from: "forestgreen"
            to: "lightsteelblue";
            duration: 1000
        }
        ScaleAnimator {
            target: mixBox
            from: 2
            to: 1
            duration: 1000
        }
        running: true
    }
}
```

If all sub-animations of [ParallelAnimation](../QtQuick.ParallelAnimation.md) and [SequentialAnimation](../QtQuick.SequentialAnimation.md) are Animator types, the [ParallelAnimation](../QtQuick.ParallelAnimation.md) and [SequentialAnimation](../QtQuick.SequentialAnimation.md) will also be treated as an Animator and be run on the scene graph's rendering thread when possible.

The Animator types can be used for animations during transitions, but they do not support the [reversible](../QtQuick.Transition.md#reversible-prop) property.

The Animator type cannot be used directly in a QML file. It exists to provide a set of common properties and methods, available across all the other animator types that inherit from it. Attempting to use the Animator type directly will result in an error.

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

This property holds the duration of the animation in milliseconds.

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
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9132f7af-1261-4535-8557-10b36dfe9062-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/51879490-e82c-4611-8f8e-2752e932a8b3-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/da9fd0b6-9fa6-4ba0-893d-754723329464-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e8f9419c-a921-407b-97a6-1673a9a339a5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a070ab9f-f58f-4e91-9216-f1c783dd5c6a-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/dbc0522b-09c0-486f-ab3d-892aa9d6a879-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cdd61dbc-d42e-4b53-bf0e-9646130684a0-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/948404e1-f419-426a-a248-d90b1424305d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7de2811b-1c90-44dd-966c-1be5fc5e3ac3-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/da8c3c13-76c8-4ba8-ad7b-5c4192b26852-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/48fb3cbe-70d0-4766-a552-399111de8140-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/eb778a0d-7371-44dc-8636-b4dac027bf35-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1767e5ca-8dab-4500-9139-1e1f6ab1c75f-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f90a5cb4-9263-4eb2-8ac9-6ec898be97e9-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/72397c23-ed74-4ca7-add9-d96625337f6a-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/47d7f637-f6db-4fc5-aed1-cd4539c06499-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/965230f5-6fd4-470d-a29b-f5aea99ebbc4-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/95b4c209-7ad2-441c-8f54-e7fb7221993d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/de3cde67-2a38-4ce3-9809-fa5aae3fd5dc-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/be7fc43c-07e2-4825-8153-949bfb34e8c1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2eecfeae-96fd-457b-b848-d46e24f9f206-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/ca168072-2411-467f-b63f-19f8aa2df2f0-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f5307796-6d0a-49a2-a300-67df9439e542-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/21f8fe4d-2a15-4e8f-8768-90355930c7bc-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/607b6c7e-cac8-4177-8417-6454da2489ac-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1f51c163-ab5a-4d06-be19-6437a8e275f8-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/720397ec-3b67-4fc5-bd9c-6b808182f1e1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/58968d25-1cbd-4625-a81e-93bf99767e87-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b4a39533-0a5a-4dc6-aa1c-75160ab64ec6-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c9692743-6040-4f4d-9943-477cc916aff1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/0ccb049e-f98f-4ce4-8420-79ba1d7d883f-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/bb415128-f8af-416b-b1d7-9834a030aa32-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d50b0c74-1bd4-4143-ae01-80829135d3ac-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/061014cb-b1d6-4f61-9aab-61d9ddde753e-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cb27f528-c4d2-412a-9786-40fd834e669d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b7cfade8-facd-4be3-819c-40714fcacd25-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/712d77a8-7f5d-40a3-b5f6-27b58f7d784e-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c1ed58c4-0304-4492-a33d-e3cb0bf6ff5c-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/34e5d4ce-ed73-4d63-9a29-eae1b9aab2b5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8bf2f152-5204-41e0-908c-cf5c2e199bba-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b79bf7f-4030-411c-b271-7a46969f3ba5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinbounce.png" /></td>
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

See the [Easing Curves](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#easing-curves) for a demonstration of the different easing settings.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the starting value for the animation.

If the Animator is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior.md) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">QtQuick::Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the target item of the animator.

**Note:** Animator targets must be Item based types.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the end value for the animation.

If the Animator is defined within a [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) or [Behavior](../QtQuick.Behavior.md), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch.md#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior.md).

