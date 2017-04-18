---
Title: QtFeedback.HapticsEffect
---

# QtFeedback.HapticsEffect

<span class="subtitle"></span>
<!-- $$$HapticsEffect-brief -->
<p>The HapticsEffect element represents a custom haptic feedback effect. More...</p>
<!-- @@@HapticsEffect -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtFeedback.FeedbackEffect.md">FeedbackEffect</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#actuator-prop">actuator</a></b></b> : Actuator</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#attackIntensity-prop">attackIntensity</a></b></b> : double</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#attackTime-prop">attackTime</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#availableActuators-prop">availableActuators</a></b></b> : list&lt;Actuator&gt;</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#fadeIntensity-prop">fadeIntensity</a></b></b> : double</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#fadeTime-prop">fadeTime</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#intensity-prop">intensity</a></b></b> : double</li>
<li class="fn"><b><b><a href="QtFeedback.hapticseffect.md#period-prop">period</a></b></b> : int</li>
</ul>
<!-- $$$HapticsEffect-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This class closely corresponds to the C++ QFeedbackHapticsEffect class.</p>
<pre class="qml">import QtFeedback 5.0
HapticsEffect {
id: rumbleEffect
attackIntensity: 0.0
attackTime: 250
intensity: 1.0
duration: 100
fadeTime: 250
fadeIntensity: 0.0
}
MouseArea {
onClicked: {
rumbleEffect.start();  // plays a rumble effect
}</pre>
<p><b>See also </b>Actuator and QFeedbackHapticsEffect.</p>
<!-- @@@HapticsEffect -->
<h2>Property Documentation</h2>
<!-- $$$actuator -->
<table class="qmlname"><tr valign="top" id="actuator-prop"><td class="tblQmlPropNode"><p><span class="name">actuator</span> : <span class="type"><a href="QtFeedback.actuator.md">Actuator</a></span></p></td></tr></table><p>The actuator that is used for playing this effect.</p>
<p><b>See also </b><a href="QtFeedback.actuator.md">Actuator</a>.</p>
<!-- @@@actuator -->
<br/>
<!-- $$$attackIntensity -->
<table class="qmlname"><tr valign="top" id="attackIntensity-prop"><td class="tblQmlPropNode"><p><span class="name">attackIntensity</span> : <span class="type">double</span></p></td></tr></table><p>The intensity of the attack (fade-in) part of the haptics effect, from 0.0 to 1.0&#x2e;</p>
<!-- @@@attackIntensity -->
<br/>
<!-- $$$attackTime -->
<table class="qmlname"><tr valign="top" id="attackTime-prop"><td class="tblQmlPropNode"><p><span class="name">attackTime</span> : <span class="type">int</span></p></td></tr></table><p>The duration of the attack (fade-in) part of the haptics effect.</p>
<!-- @@@attackTime -->
<br/>
<!-- $$$availableActuators -->
<table class="qmlname"><tr valign="top" id="availableActuators-prop"><td class="tblQmlPropNode"><p><span class="name">availableActuators</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtFeedback.actuator.md">Actuator</a></span>&gt;</p></td></tr></table><p>This property holds a list of available actuators. This property is read only.</p>
<p><b>See also </b><a href="QtFeedback.actuator.md">Actuator</a>.</p>
<!-- @@@availableActuators -->
<br/>
<!-- $$$fadeIntensity -->
<table class="qmlname"><tr valign="top" id="fadeIntensity-prop"><td class="tblQmlPropNode"><p><span class="name">fadeIntensity</span> : <span class="type">double</span></p></td></tr></table><p>The intensity of the fade-out part of the haptics effect, from 0.0 to 1.0&#x2e;</p>
<!-- @@@fadeIntensity -->
<br/>
<!-- $$$fadeTime -->
<table class="qmlname"><tr valign="top" id="fadeTime-prop"><td class="tblQmlPropNode"><p><span class="name">fadeTime</span> : <span class="type">int</span></p></td></tr></table><p>The duration of the fade-out part of the haptics effect.</p>
<!-- @@@fadeTime -->
<br/>
<!-- $$$intensity -->
<table class="qmlname"><tr valign="top" id="intensity-prop"><td class="tblQmlPropNode"><p><span class="name">intensity</span> : <span class="type">double</span></p></td></tr></table><p>The intensity of the main part of the haptics effect, from 0.0 to 1.0&#x2e;</p>
<!-- @@@intensity -->
<br/>
<!-- $$$period -->
<table class="qmlname"><tr valign="top" id="period-prop"><td class="tblQmlPropNode"><p><span class="name">period</span> : <span class="type">int</span></p></td></tr></table><p>The period of the haptics effect. If the period is zero, the effect will not repeat. If it is non-zero, the effect will repeat every period milliseconds.</p>
<!-- @@@period -->
