---
Title: QtOrganizer.EventOccurrence
---

# QtOrganizer.EventOccurrence

<span class="subtitle"></span>
<!-- $$$EventOccurrence-brief -->
<p>The EventOccurrence element provides an occurrence of an event. More...</p>
<!-- @@@EventOccurrence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#allDay-prop">allDay</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#endDateTime-prop">endDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#location-prop">location</a></b></b> : string</li>
<li class="fn"><b><b><a href="#originalDate-prop">originalDate</a></b></b> : date</li>
<li class="fn"><b><b><a href="#parentId-prop">parentId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#startDateTime-prop">startDateTime</a></b></b> : date</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onItemChanged-signal">onItemChanged</a></b></b>()</li>
</ul>
<!-- $$$EventOccurrence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b><a href="QtOrganizer.OrganizerItem.md">OrganizerItem</a>, <a href="QtOrganizer.Event.md">Event</a>, <a href="QtOrganizer.Journal.md">Journal</a>, <a href="QtOrganizer.Todo.md">Todo</a>, <a href="QtOrganizer.TodoOccurrence.md">TodoOccurrence</a>, <a href="QtOrganizer.Note.md">Note</a>, and QOrganizerEventOccurrence.</p>
<!-- @@@EventOccurrence -->
<h2>Property Documentation</h2>
<!-- $$$allDay -->
<table class="qmlname"><tr valign="top" id="allDay-prop"><td class="tblQmlPropNode"><p><span class="name">allDay</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the time-of-day component of the event occurrence's start date-time or end date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the event occurrence will be an all-day item.</p>
<!-- @@@allDay -->
<br/>
<!-- $$$endDateTime -->
<table class="qmlname"><tr valign="top" id="endDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">endDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date time at which the event occurrence ends.</p>
<!-- @@@endDateTime -->
<br/>
<!-- $$$location -->
<table class="qmlname"><tr valign="top" id="location-prop"><td class="tblQmlPropNode"><p><span class="name">location</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the label of the location at which the event occurrence is held.</p>
<!-- @@@location -->
<br/>
<!-- $$$originalDate -->
<table class="qmlname"><tr valign="top" id="originalDate-prop"><td class="tblQmlPropNode"><p><span class="name">originalDate</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date at which the occurrence was originally going to occur.</p>
<!-- @@@originalDate -->
<br/>
<!-- $$$parentId -->
<table class="qmlname"><tr valign="top" id="parentId-prop"><td class="tblQmlPropNode"><p><span class="name">parentId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the id of the event which is this occurrence's parent.</p>
<!-- @@@parentId -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the priority of the event occurrence. The value can be one of:</p>
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
<!-- $$$startDateTime -->
<table class="qmlname"><tr valign="top" id="startDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">startDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the start date time of the event occurrence.</p>
<!-- @@@startDateTime -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onItemChanged -->
<table class="qmlname"><tr valign="top" id="onItemChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onItemChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.OrganizerItem.md#onItemChanged-signal">OrganizerItem::onItemChanged</a>.</p>
<!-- @@@onItemChanged -->
<br/>
