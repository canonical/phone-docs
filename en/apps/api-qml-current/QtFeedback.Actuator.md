---
Title: QtFeedback.Actuator
---

# QtFeedback.Actuator

<span class="subtitle"></span>
<!-- $$$Actuator-brief -->
<p>The Actuator element represents a feedback actuator. More...</p>
<!-- @@@Actuator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtFeedback.actuator/qfeedbackactuator.html">QFeedbackActuator</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actuatorId-prop">actuatorId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#valid-prop">valid</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#isCapabilitySupported-method">isCapabilitySupported</a></b></b>(enumeration <i>capability</i>)</li>
</ul>
<!-- $$$Actuator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Actuator class maps directly to the QFeedbackActuator C++ class, and can be used with HapticsEffect elements.</p>
<p>There are several predefined enumerations and constants provided in this object:</p>
<p>1. Capability</p>
<ul>
<li>Envelope - Value specifying that the device can bound its intensity by an envelope.</li>
<li>Period - Value specifying that the device can play periodic effects.</li>
</ul>
<p>2. State</p>
<ul>
<li>Busy - The actuator is busy.</li>
<li>Ready - The actuator is ready to play an effect.</li>
<li>Unknown - The actuator is in an unknown state.</li>
</ul>
<p><b>See also </b>HapticsEffect and QFeedbackActuator.</p>
<!-- @@@Actuator -->
<h2>Property Documentation</h2>
<!-- $$$actuatorId -->
<table class="qmlname"><tr valign="top" id="actuatorId-prop"><td class="tblQmlPropNode"><p><span class="name">actuatorId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the id of the feedback actuator. This property is read only.</p>
<!-- @@@actuatorId -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if the feedback actuator is enabled.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the feedback actuator. This property is read only.</p>
<!-- @@@name -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the state of the feedback actuator. This property is read only.</p>
<!-- @@@state -->
<br/>
<!-- $$$valid -->
<table class="qmlname"><tr valign="top" id="valid-prop"><td class="tblQmlPropNode"><p><span class="name">valid</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if the actuator is valid. This property is read only.</p>
<!-- @@@valid -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$isCapabilitySupported -->
<table class="qmlname"><tr valign="top" id="isCapabilitySupported-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">isCapabilitySupported</span>(<span class="type">enumeration</span><i> capability</i>)</p></td></tr></table><p>Returns if the actuator supports the supplied <i>capability</i>, available capabilities are:</p>
<ul>
<li>Envelope - Value specifying that the device can bound its intensity by an Envelope.</li>
<li>Period - Value specifying that the device can play periodic effects.</li>
</ul>
<!-- @@@isCapabilitySupported -->
