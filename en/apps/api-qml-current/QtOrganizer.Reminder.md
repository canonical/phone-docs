---
Title: QtOrganizer.Reminder
---

# QtOrganizer.Reminder

<span class="subtitle"></span>
<!-- $$$Reminder-brief -->
<p>The Reminder element contains information about when and how the user wants to reminded of the item. More...</p>
<!-- @@@Reminder -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, and <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#reminderType-prop">reminderType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#repetitionCount-prop">repetitionCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#repetitionDelay-prop">repetitionDelay</a></b></b> : int</li>
<li class="fn"><b><b><a href="#secondsBeforeStart-prop">secondsBeforeStart</a></b></b> : int</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<!-- $$$Reminder-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following fields are supported:</p>
<ul>
<li>Reminder.FieldRepetitionCount</li>
<li>Reminder.FieldRepetitionDelay</li>
<li>Reminder.FieldSecondsBeforeStart</li>
</ul>
<p><b>See also </b>QOrganizerItemReminder.</p>
<!-- @@@Reminder -->
<h2>Property Documentation</h2>
<!-- $$$reminderType -->
<table class="qmlname"><tr valign="top" id="reminderType-prop"><td class="tblQmlPropNode"><p><span class="name">reminderType</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the reminder type of this reminder for an organizer item. The value can be one of:</p>
<ul>
<li>Reminder.NoReminder</li>
<li>Reminder.<a href="QtOrganizer.VisualReminder.md">VisualReminder</a></li>
<li>Reminder.<a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a></li>
<li>Reminder.<a href="QtOrganizer.EmailReminder.md">EmailReminder</a></li>
</ul>
<!-- @@@reminderType -->
<br/>
<!-- $$$repetitionCount -->
<table class="qmlname"><tr valign="top" id="repetitionCount-prop"><td class="tblQmlPropNode"><p><span class="name">repetitionCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of times the user should be reminded of the item.</p>
<!-- @@@repetitionCount -->
<br/>
<!-- $$$repetitionDelay -->
<table class="qmlname"><tr valign="top" id="repetitionDelay-prop"><td class="tblQmlPropNode"><p><span class="name">repetitionDelay</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the delay (in seconds) between each repetition of the reminder.</p>
<!-- @@@repetitionDelay -->
<br/>
<!-- $$$secondsBeforeStart -->
<table class="qmlname"><tr valign="top" id="secondsBeforeStart-prop"><td class="tblQmlPropNode"><p><span class="name">secondsBeforeStart</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of seconds prior to the activation of the item at which the user wants to be reminded of the item.</p>
<!-- @@@secondsBeforeStart -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#onDetailChanged-signal">Detail::onDetailChanged</a>.</p>
<!-- @@@onDetailChanged -->
<br/>
