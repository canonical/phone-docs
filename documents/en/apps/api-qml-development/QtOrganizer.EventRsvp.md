---
Title: QtOrganizer.EventRsvp
---

# QtOrganizer.EventRsvp

<span class="subtitle"></span>
<!-- $$$EventRsvp-brief -->
<p>The EventRsvp element contains Rsvp-information of an event. More...</p>
<!-- @@@EventRsvp -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#organizerEmail-prop">organizerEmail</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#organizerName-prop">organizerName</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#participationRole-prop">participationRole</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#participationStatus-prop">participationStatus</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#responseDate-prop">responseDate</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#responseDeadline-prop">responseDeadline</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#responseRequirement-prop">responseRequirement</a></b></b> : variant</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#setValue-method">setValue</a></b></b>(field, value)</li>
<li class="fn">variant <b><b><a href="#value-method">value</a></b></b>(field)</li>
</ul>
<!-- $$$EventRsvp-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">EventRsvp</a> detail contains user specific information about calendar event like participation status and role, information about response dates and information about organizer of the event. See more details from the properties themselves and the QOrganizerEventRsvp.</p>
<p><b>See also </b>QOrganizerEventRsvp.</p>
<!-- @@@EventRsvp -->
<h2>Property Documentation</h2>
<!-- $$$organizerEmail -->
<table class="qmlname"><tr valign="top" id="organizerEmail-prop"><td class="tblQmlPropNode"><p><span class="name">organizerEmail</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds organizer's email of the event.</p>
<!-- @@@organizerEmail -->
<br/>
<!-- $$$organizerName -->
<table class="qmlname"><tr valign="top" id="organizerName-prop"><td class="tblQmlPropNode"><p><span class="name">organizerName</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds organizer's name of the event.</p>
<!-- @@@organizerName -->
<br/>
<!-- $$$participationRole -->
<table class="qmlname"><tr valign="top" id="participationRole-prop"><td class="tblQmlPropNode"><p><span class="name">participationRole</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the calendar user's participation role related to the event. See <a href="QtOrganizer.EventAttendee.md#participationRole-prop">EventAttendee::participationRole</a> for more details.</p>
<p><b>See also </b><a href="QtOrganizer.EventAttendee.md#participationRole-prop">EventAttendee::participationRole</a>.</p>
<!-- @@@participationRole -->
<br/>
<!-- $$$participationStatus -->
<table class="qmlname"><tr valign="top" id="participationStatus-prop"><td class="tblQmlPropNode"><p><span class="name">participationStatus</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the calendar user's participation status related to the event. See <a href="QtOrganizer.EventAttendee.md#participationStatus-prop">EventAttendee::participationStatus</a> for more details.</p>
<p><b>See also </b><a href="QtOrganizer.EventAttendee.md#participationStatus-prop">EventAttendee::participationStatus</a>.</p>
<!-- @@@participationStatus -->
<br/>
<!-- $$$responseDate -->
<table class="qmlname"><tr valign="top" id="responseDate-prop"><td class="tblQmlPropNode"><p><span class="name">responseDate</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the date when user responded to the event.</p>
<!-- @@@responseDate -->
<br/>
<!-- $$$responseDeadline -->
<table class="qmlname"><tr valign="top" id="responseDeadline-prop"><td class="tblQmlPropNode"><p><span class="name">responseDeadline</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the last date for responding the event.</p>
<!-- @@@responseDeadline -->
<br/>
<!-- $$$responseRequirement -->
<table class="qmlname"><tr valign="top" id="responseRequirement-prop"><td class="tblQmlPropNode"><p><span class="name">responseRequirement</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the response requirement of the event. The value can be one of:</p>
<ul>
<li><a href="index.html">EventRsvp</a>.ResponseNotRequired</li>
<li><a href="index.html">EventRsvp</a>.ResponseRequired</li>
</ul>
<!-- @@@responseRequirement -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#onDetailChanged-signal">Detail::onDetailChanged</a>.</p>
<!-- @@@onDetailChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$setValue -->
<table class="qmlname"><tr valign="top" id="setValue-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#setValue-method">Detail::setValue</a>.</p>
<!-- @@@setValue -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#value-method">Detail::value</a>.</p>
<!-- @@@value -->
<br/>
