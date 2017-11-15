---
Title: QtOrganizer.Event
---

# QtOrganizer.Event

<span class="subtitle"></span>
<!-- $$$Event-brief -->
<p>The Event element provides an event in time which may reoccur. More...</p>
<!-- @@@Event -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#allDay-prop">allDay</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#attendees-prop">attendees</a></b></b> : list&lt;Detail&gt;</li>
<li class="fn"><b><b><a href="#endDateTime-prop">endDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#location-prop">location</a></b></b> : string</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#recurrence-prop">recurrence</a></b></b> : Recurrence</li>
<li class="fn"><b><b><a href="#startDateTime-prop">startDateTime</a></b></b> : date</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onItemChanged-signal">onItemChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clearDetails-method">clearDetails</a></b></b>()</li>
<li class="fn">void <b><b><a href="#removeDetail-method">removeDetail</a></b></b>(detail)</li>
<li class="fn">void <b><b><a href="#setDetail-method">setDetail</a></b></b>(detail)</li>
</ul>
<!-- $$$Event-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a>, <a href="QtOrganizer.EventOccurrence.md">EventOccurrence</a>, <a href="QtOrganizer.Journal.md">Journal</a>, <a href="QtOrganizer.Todo.md">Todo</a>, <a href="QtOrganizer.TodoOccurrence.md">TodoOccurrence</a>, <a href="QtOrganizer.Note.md">Note</a>, and QOrganizerEvent.</p>
<!-- @@@Event -->
<h2>Property Documentation</h2>
<!-- $$$allDay -->
<table class="qmlname"><tr valign="top" id="allDay-prop"><td class="tblQmlPropNode"><p><span class="name">allDay</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the time-of-day component of the event's start date-time or end date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the event will be an all-day item.</p>
<!-- @@@allDay -->
<br/>
<!-- $$$attendees -->
<table class="qmlname"><tr valign="top" id="attendees-prop"><td class="tblQmlPropNode"><p><span class="name">attendees</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt;</p></td></tr></table><p>This property holds the attendees list of the event.</p>
<!-- @@@attendees -->
<br/>
<!-- $$$endDateTime -->
<table class="qmlname"><tr valign="top" id="endDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">endDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the end date time of the event.</p>
<!-- @@@endDateTime -->
<br/>
<!-- $$$location -->
<table class="qmlname"><tr valign="top" id="location-prop"><td class="tblQmlPropNode"><p><span class="name">location</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the label of the location at which the event occurs.</p>
<!-- @@@location -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the priority of the event. The value can be one of:</p>
<ul>
<li>Priority.Unknown</li>
<li>Priority.Highest</li>
<li>Priority.ExtremelyHigh</li>
<li>Priority.VeryHigh</li>
<li>Priority.High</li>
<li>Priority.Medium</li>
<li>Priority.Low</li>
<li>Priority.VeryLow</li>
<li>Priority.ExtremelyLow</li>
<li>Priority.Lowest</li>
</ul>
<!-- @@@priority -->
<br/>
<!-- $$$recurrence -->
<table class="qmlname"><tr valign="top" id="recurrence-prop"><td class="tblQmlPropNode"><p><span class="name">recurrence</span> : <span class="type"><a href="QtOrganizer.Recurrence.md">Recurrence</a></span></p></td></tr></table><p>This property holds the recurrence element of the event item.</p>
<!-- @@@recurrence -->
<br/>
<!-- $$$startDateTime -->
<table class="qmlname"><tr valign="top" id="startDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">startDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the start date time of the event.</p>
<!-- @@@startDateTime -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onItemChanged -->
<table class="qmlname"><tr valign="top" id="onItemChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onItemChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.OrganizerItem.md#onItemChanged-signal">OrganizerItem::onItemChanged</a>.</p>
<!-- @@@onItemChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$clearDetails -->
<table class="qmlname"><tr valign="top" id="clearDetails-method"><td class="tblQmlFuncNode"><p><span class="name">clearDetails</span>()</p></td></tr></table><p>Removes all details from the organizer event.</p>
<p><b>See also </b><a href="#removeDetail-method">removeDetail()</a>.</p>
<!-- @@@clearDetails -->
<br/>
<!-- $$$removeDetail -->
<table class="qmlname"><tr valign="top" id="removeDetail-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td></tr></table><p>Removes given <i>detail</i> from the organizer event.</p>
<!-- @@@removeDetail -->
<br/>
<!-- $$$setDetail -->
<table class="qmlname"><tr valign="top" id="setDetail-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">setDetail</span>(<span class="type">detail</span>)</p></td></tr></table><p>Saves the given <i>detail</i> in the organizer event, and sets its id.</p>
<!-- @@@setDetail -->
<br/>
