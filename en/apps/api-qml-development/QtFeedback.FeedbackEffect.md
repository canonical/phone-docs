---
Title: QtFeedback.FeedbackEffect
---
        
FeedbackEffect
==============

<span class="subtitle"></span>
The FeedbackEffect element is the base class for all feedback effects. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import .</td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p>FileEffect and <a href="QtFeedback.hapticseffect.md">HapticsEffect</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int
-   ****[error](#error-prop)**** : Feedback::ErrorType
-   ****[paused](#paused-prop)**** : bool
-   ****[running](#running-prop)**** : bool
-   ****[state](#state-prop)**** : FeedbackEffect::State

<span id="details"></span>
Detailed Description
--------------------

You can't create one of these elements directly, but several other elements inherit the methods and properties of these elements.

There are several predefined enumerations and constants provided in this class:

1. Duration This enum describes the possible predefined duration types. Generally a specific value in milliseconds can be supplied instead of one of these values.

-   Feedback.Infinite - Infinite effect duration

2. State This enum describes the state of the effect. An effect will be in one of these states.

-   Feedback.Stopped - The effect is not running. This is the initial state.
-   Feedback.Paused - The effect is paused.
-   Feedback.Running - The effect is running.
-   Feedback.Loading - The effect is loading.

3. ErrorType This enum describes the possible errors happening on the effect.

-   Feedback.UnknownError - An unknown error occurred.
-   Feedback.DeviceBusy - The feedback could not start because the device is busy, the device could be busy if a higher-priority client is using the haptics/actuator device.

**See also** FileEffect, ThemeEffect, HapticsEffect, and QFeedbackEffect.

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

The duration of the effect, in milliseconds. This is 0 for effects of unknown duration, or Feedback.Infinite for effects that don't stop.

**See also** Feedback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">Feedback::ErrorType</span></p></td>
</tr>
</tbody>
</table>

This property holds the error status of the [FeedbackEffect](index.html). The error is one of the following values:

-   Feedback.UnknownError - An unknown error occurred.
-   Feedback.DeviceBusy - The device resource is already being used.

**See also** Feedback and QFeedbackEffect::ErrorType.

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

This property is true if this feedback effect is paused.

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

This property is true if this feedback effect is running.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">FeedbackEffect::State</span></p></td>
</tr>
</tbody>
</table>

This is the current state of the effect. It is one of:

-   Feedback.Stopped - the effect is not playing.
-   Feedback.Loading - the effect is being loaded.
-   Feedback.Running - the effect is playing.
-   Feedback.Paused - the effect was being played, but is now paused.

**See also** Feedback.

