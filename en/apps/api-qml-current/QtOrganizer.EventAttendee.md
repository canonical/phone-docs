---
Title: QtOrganizer.EventAttendee
---

# QtOrganizer.EventAttendee

<span class="subtitle"></span>
<!-- $$$EventAttendee-brief -->
<p>The EventAttendee element contains information about an attendee of an event. More...</p>
<!-- @@@EventAttendee -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#attendeeId-prop">attendeeId</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#emailAddress-prop">emailAddress</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#participationRole-prop">participationRole</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#participationStatus-prop">participationStatus</a></b></b> : variant</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<!-- $$$EventAttendee-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following fields are supported:</p>
<ul>
<li><a href="index.html">EventAttendee</a>.FieldName</li>
<li><a href="index.html">EventAttendee</a>.FieldEmailAddress</li>
<li><a href="index.html">EventAttendee</a>.FieldAddendeeId</li>
<li><a href="index.html">EventAttendee</a>.FieldParticipationStatus</li>
<li><a href="index.html">EventAttendee</a>.FieldParticipationRole</li>
</ul>
<p><b>See also </b>QOrganizerEventAttendee.</p>
<!-- @@@EventAttendee -->
<h2>Property Documentation</h2>
<!-- $$$attendeeId -->
<table class="qmlname"><tr valign="top" id="attendeeId-prop"><td class="tblQmlPropNode"><p><span class="name">attendeeId</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the unique identifier of the attendee.</p>
<!-- @@@attendeeId -->
<br/>
<!-- $$$emailAddress -->
<table class="qmlname"><tr valign="top" id="emailAddress-prop"><td class="tblQmlPropNode"><p><span class="name">emailAddress</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the email address of the attendee.</p>
<!-- @@@emailAddress -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the attendee.</p>
<!-- @@@name -->
<br/>
<!-- $$$participationRole -->
<table class="qmlname"><tr valign="top" id="participationRole-prop"><td class="tblQmlPropNode"><p><span class="name">participationRole</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the participation role of the attendee of the event.The value can be one of:</p>
<ul>
<li><a href="index.html">EventAttendee</a>.RoleUnknown</li>
<li><a href="index.html">EventAttendee</a>.RoleOrganizer</li>
<li><a href="index.html">EventAttendee</a>.RoleChairperson</li>
<li><a href="index.html">EventAttendee</a>.RoleHost</li>
<li><a href="index.html">EventAttendee</a>.RoleRequiredParticipant</li>
<li><a href="index.html">EventAttendee</a>.RoleOptionalParticipant</li>
<li><a href="index.html">EventAttendee</a>.RoleNonParticipant</li>
</ul>
<!-- @@@participationRole -->
<br/>
<!-- $$$participationStatus -->
<table class="qmlname"><tr valign="top" id="participationStatus-prop"><td class="tblQmlPropNode"><p><span class="name">participationStatus</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the participation status of the attendee of the event. The value can be one of:</p>
<ul>
<li><a href="index.html">EventAttendee</a>.StatusUnknown</li>
<li><a href="index.html">EventAttendee</a>.StatusAccepted</li>
<li><a href="index.html">EventAttendee</a>.StatusDeclined</li>
<li><a href="index.html">EventAttendee</a>.StatusTentative</li>
<li><a href="index.html">EventAttendee</a>.StatusDelegated</li>
<li><a href="index.html">EventAttendee</a>.StatusInProcess</li>
<li><a href="index.html">EventAttendee</a>.StatusCompleted</li>
</ul>
<!-- @@@participationStatus -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#onDetailChanged-signal">Detail::onDetailChanged</a>.</p>
<!-- @@@onDetailChanged -->
<br/>
