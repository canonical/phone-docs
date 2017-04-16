---
Title: QtOrganizer.Detail
---

# QtOrganizer.Detail

<span class="subtitle"></span>
<!-- $$$Detail-brief -->
<p>The Detail element represents a single, complete detail about a organizer item. More...</p>
<!-- @@@Detail -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#removeValue-method">removeValue</a></b></b>(field)</li>
<li class="fn">bool <b><b><a href="#setValue-method">setValue</a></b></b>(field, value)</li>
<li class="fn">variant <b><b><a href="#value-method">value</a></b></b>(field)</li>
</ul>
<!-- $$$Detail-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b>QOrganizerItemDetail.</p>
<!-- @@@Detail -->
<h2>Property Documentation</h2>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type of the detail and is read only. It can be one of:</p>
<ul>
<li>Detail.Undefined</li>
<li>Detail.Classification</li>
<li>Detail.Comment</li>
<li>Detail.Description</li>
<li>Detail.<a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a></li>
<li>Detail.<a href="QtOrganizer.ItemType.md">ItemType</a></li>
<li>Detail.Guid</li>
<li>Detail.Location</li>
<li>Detail.Parent</li>
<li>Detail.Priority</li>
<li>Detail.Recurrence</li>
<li>Detail.Tag</li>
<li>Detail.Timestamp</li>
<li>Detail.Version</li>
<li>Detail.Reminder</li>
<li>Detail.<a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a></li>
<li>Detail.<a href="QtOrganizer.EmailReminder.md">EmailReminder</a></li>
<li>Detail.<a href="QtOrganizer.VisualReminder.md">VisualReminder</a></li>
<li>Detail.<a href="QtOrganizer.ExtendedDetail.md">ExtendedDetail</a></li>
<li>Detail.<a href="QtOrganizer.EventAttendee.md">EventAttendee</a></li>
<li>Detail.<a href="QtOrganizer.EventRsvp.md">EventRsvp</a></li>
<li>Detail.<a href="QtOrganizer.EventTime.md">EventTime</a></li>
<li>Detail.<a href="QtOrganizer.JournalTime.md">JournalTime</a></li>
<li>Detail.<a href="QtOrganizer.TodoTime.md">TodoTime</a></li>
<li>Detail.<a href="QtOrganizer.TodoProgress.md">TodoProgress</a></li>
</ul>
<p><b>See also </b><a href="QtOrganizer.Classification.md">Classification</a>, <a href="QtOrganizer.Comment.md">Comment</a>, <a href="QtOrganizer.Description.md">Description</a>, <a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a>, <a href="QtOrganizer.ItemType.md">ItemType</a>, <a href="QtOrganizer.Guid.md">Guid</a>, <a href="QtOrganizer.Location.md">Location</a>, <a href="QtOrganizer.Parent.md">Parent</a>, <a href="QtOrganizer.Priority.md">Priority</a>, <a href="QtOrganizer.Recurrence.md">Recurrence</a>, <a href="QtOrganizer.Tag.md">Tag</a>, <a href="QtOrganizer.Timestamp.md">Timestamp</a>, <a href="QtOrganizer.Version.md">Version</a>, <a href="QtOrganizer.Reminder.md">Reminder</a>, <a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>, <a href="QtOrganizer.ExtendedDetail.md">ExtendedDetail</a>, <a href="QtOrganizer.EventAttendee.md">EventAttendee</a>, <a href="QtOrganizer.EventRsvp.md">EventRsvp</a>, <a href="QtOrganizer.EventTime.md">EventTime</a>, <a href="QtOrganizer.JournalTime.md">JournalTime</a>, <a href="QtOrganizer.TodoTime.md">TodoTime</a>, and <a href="QtOrganizer.TodoProgress.md">TodoProgress</a>.</p>
<!-- @@@type -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the Details's or child element's (like <a href="QtOrganizer.EventTime.md">EventTime</a>, <a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a> etc) properties have been changed.</p>
<!-- @@@onDetailChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$removeValue -->
<table class="qmlname"><tr valign="top" id="removeValue-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">removeValue</span>(<span class="type">field</span>)</p></td></tr></table><p>Removes the value stored in this detail for the given <i>field</i>. Returns true if a value was stored for the given key and the operation succeeded, and false otherwise.</p>
<!-- @@@removeValue -->
<br/>
<!-- $$$setValue -->
<table class="qmlname"><tr valign="top" id="setValue-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td></tr></table><p>Inserts <i>value</i> into the detail for the given <i>key</i> if value is valid. If value is invalid, removes the field with the given key from the detail. Returns true if the given value was set for the key (if the value was valid), or if the given key was removed from detail (if the value was invalid), otherwise returns false if the key was unable to be removed (and the value was invalid).</p>
<!-- @@@setValue -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td></tr></table><p>Returns the value stored in this detail for the given <i>field</i>, or an empty variant if not available.</p>
<!-- @@@value -->
<br/>
