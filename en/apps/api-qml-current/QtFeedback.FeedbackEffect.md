---
Title: QtFeedback.FeedbackEffect
---

# QtFeedback.FeedbackEffect

<span class="subtitle"></span>
<!-- $$$FeedbackEffect-brief -->
<p>The FeedbackEffect element is the base class for all feedback effects. More...</p>
<!-- @@@FeedbackEffect -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p>FileEffect and <a href="QtFeedback.hapticseffect.md">HapticsEffect</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : Feedback::ErrorType</li>
<li class="fn"><b><b><a href="#paused-prop">paused</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : FeedbackEffect::State</li>
</ul>
<!-- $$$FeedbackEffect-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>You can't create one of these elements directly, but several other elements inherit the methods and properties of these elements.</p>
<p>There are several predefined enumerations and constants provided in this class:</p>
<p>1. Duration This enum describes the possible predefined duration types. Generally a specific value in milliseconds can be supplied instead of one of these values.</p>
<ul>
<li>Feedback.Infinite - Infinite effect duration</li>
</ul>
<p>2. State This enum describes the state of the effect. An effect will be in one of these states.</p>
<ul>
<li>Feedback.Stopped - The effect is not running. This is the initial state.</li>
<li>Feedback.Paused - The effect is paused.</li>
<li>Feedback.Running - The effect is running.</li>
<li>Feedback.Loading - The effect is loading.</li>
</ul>
<p>3. ErrorType This enum describes the possible errors happening on the effect.</p>
<ul>
<li>Feedback.UnknownError - An unknown error occurred.</li>
<li>Feedback.DeviceBusy - The feedback could not start because the device is busy, the device could be busy if a higher-priority client is using the haptics/actuator device.</li>
</ul>
<p><b>See also </b>FileEffect, ThemeEffect, HapticsEffect, and QFeedbackEffect.</p>
<!-- @@@FeedbackEffect -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>The duration of the effect, in milliseconds. This is 0 for effects of unknown duration, or Feedback.Infinite for effects that don't stop.</p>
<p><b>See also </b>Feedback.</p>
<!-- @@@duration -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">Feedback::ErrorType</span></p></td></tr></table><p>This property holds the error status of the <a href="index.html">FeedbackEffect</a>. The error is one of the following values:</p>
<ul>
<li>Feedback.UnknownError - An unknown error occurred.</li>
<li>Feedback.DeviceBusy - The device resource is already being used.</li>
</ul>
<p><b>See also </b>Feedback and QFeedbackEffect::ErrorType.</p>
<!-- @@@error -->
<br/>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top" id="paused-prop"><td class="tblQmlPropNode"><p><span class="name">paused</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if this feedback effect is paused.</p>
<!-- @@@paused -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if this feedback effect is running.</p>
<!-- @@@running -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">FeedbackEffect::State</span></p></td></tr></table><p>This is the current state of the effect. It is one of:</p>
<ul>
<li>Feedback.Stopped - the effect is not playing.</li>
<li>Feedback.Loading - the effect is being loaded.</li>
<li>Feedback.Running - the effect is playing.</li>
<li>Feedback.Paused - the effect was being played, but is now paused.</li>
</ul>
<p><b>See also </b>Feedback.</p>
<!-- @@@state -->
