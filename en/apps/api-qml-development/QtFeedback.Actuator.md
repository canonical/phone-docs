---
Title: QtFeedback.Actuator
---
        
actuator
========

<span class="subtitle"></span>
The Actuator element represents a feedback actuator. More...

|                   |                   |
|-------------------|-------------------|
| Import Statement: | import .          |
| Instantiates:     | QFeedbackActuator |

<span id="properties"></span>
Properties
----------

-   ****[actuatorId](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#actuatorId-prop)**** : int
-   ****[enabled](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#enabled-prop)**** : bool
-   ****[name](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#name-prop)**** : string
-   ****[state](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#state-prop)**** : enumeration
-   ****[valid](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#valid-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   bool ****[isCapabilitySupported](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#isCapabilitySupported-method)****(enumeration *capability*)

<span id="details"></span>
Detailed Description
--------------------

The Actuator class maps directly to the QFeedbackActuator C++ class, and can be used with HapticsEffect elements.

There are several predefined enumerations and constants provided in this object:

1. Capability

-   Envelope - Value specifying that the device can bound its intensity by an envelope.
-   Period - Value specifying that the device can play periodic effects.

2. State

-   Busy - The actuator is busy.
-   Ready - The actuator is ready to play an effect.
-   Unknown - The actuator is in an unknown state.

**See also** HapticsEffect and QFeedbackActuator.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actuatorId-prop"></span><span class="name">actuatorId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the feedback actuator. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the feedback actuator is enabled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the feedback actuator. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the state of the feedback actuator. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the actuator is valid. This property is read only.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCapabilitySupported-method"></span><span class="type">bool</span> <span class="name">isCapabilitySupported</span>(<span class="type">enumeration</span> <em>capability</em>)</p></td>
</tr>
</tbody>
</table>

Returns if the actuator supports the supplied *capability*, available capabilities are:

-   Envelope - Value specifying that the device can bound its intensity by an Envelope.
-   Period - Value specifying that the device can play periodic effects.

[Back to top](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#)

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

    -   [English](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md "Change to language: English")
    -   [Simplified Chinese](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md "Change to language: Simplified Chinese")

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

<span class="accessibility-aid">[Go to the top of the page](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.actuator.md#)</span>
