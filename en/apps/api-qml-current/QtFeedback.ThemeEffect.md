---
Title: QtFeedback.ThemeEffect
---
        
themeeffect
===========

<span class="subtitle"></span>
The ThemeEffect element represents a themed feedback effect. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

<span id="properties"></span>
Properties
----------

-   ****[effect](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#effect-prop)**** : ThemeEffect
-   ****[supported](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#supported-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[play](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#play-method-2)****(Effect)
-   ****[play](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#play-method)****()

<span id="details"></span>
Detailed Description
--------------------

This element is used for playing feedback effects that follow the system theme. The actual feedback might be haptic, audio or some other method.

``` qml
//Example 1: using ThemeEffect declaring element
    import QtFeedback 5.0
    Rectangle {
        width: 180; height: 20
        radius:5
        color: "lightgrey"
        Text {
            anchors.centerIn: parent
            text: "Play Theme: Press"
        }
        ThemeEffect {
             id: myOtherThemeEffect
             effect: "Press"
         }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                myOtherThemeEffect.play();
            }
        }
    }
    //Example 2: using ThemeEffect without declaring element
    import QtFeedback.ThemeEffect 5.0 as Effect
    Rectangle {
        width: 180; height: 20
        radius:5
        color: "lightgrey"
        Text {
            anchors.centerIn: parent
            text: "Play Theme: Press"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Effect.effect = "Press"
                Effect.play();
            }
        }
    }
    //Example 3: using ThemeEffect without declaring element and calling overloaded play function
    import QtFeedback.ThemeEffect 5.0 as Effect
    Rectangle {
        width: 180; height: 20
        radius:5
        color: "lightgrey"
        Text {
            anchors.centerIn: parent
            text: "Play Theme: Press"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Effect.play(Effect.Press)
            }
        }
    }
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effect-prop"></span><span class="name">effect</span> : <span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md">ThemeEffect</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the specific themed effect type to play. It is one of:

Effect.Undefined - Undefined feedback. No feedback is given.

Effect.Press - Feedback for when the screen is pressed.

Effect.Release - Feedback for touch release.

Effect.PressWeak - A weak feedback for press.

Effect.ReleaseWeak - A weak feedback for release.

Effect.PressStrong - A strong feedback for press.

Effect.ReleaseStrong - A strong feedback for release.

Effect.DragStart - Feedback for when dragging starts.

Effect.DragDropInZone - Feedback for when dragging ends and touch is released inside a drop zone.

Effect.DragDropOutOfZone - Feedback for when dragging ends and touch is released outside a drop zone.

Effect.DragCrossBoundary - Feedback for when crossing a boundary while dragging.

Effect.Appear - Feedback for when an item is shown.

Effect.Disappear - Feedback for when an item item is closed.

Effect.Move - Feedback for dragging on screen.

**See also** QFeedbackEffect::Effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supported-prop"></span><span class="name">supported</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the system supports themed feedback effects.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-2"></span><span class="name">play</span>(<span class="type">Effect</span>)</p></td>
</tr>
</tbody>
</table>

Call this to play the themed effect passed as parameter.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Call this to play the themed effect.

[Back to top](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md "Change to language: English")
    -   [Simplified Chinese](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.themeeffect.md#)</span>
