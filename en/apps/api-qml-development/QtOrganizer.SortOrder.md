---
Title: QtOrganizer.SortOrder
---

# QtOrganizer.SortOrder

<span class="subtitle"></span>
<!-- $$$SortOrder-brief -->
<p>The SortOrder element defines how a list of organizer item should be ordered according to some criteria. More...</p>
<!-- @@@SortOrder -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#blankPolicy-prop">blankPolicy</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#caseSensitivity-prop">caseSensitivity</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : string</li>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onSortOrderChanged-signal">onSortOrderChanged</a></b></b>()</li>
</ul>
<!-- $$$SortOrder-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@SortOrder -->
<h2>Property Documentation</h2>
<!-- $$$blankPolicy -->
<table class="qmlname"><tr valign="top" id="blankPolicy-prop"><td class="tblQmlPropNode"><p><span class="name">blankPolicy</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property enumerates the ways in which the sort order interprets blanks when sorting organizer.</p>
<ul>
<li><a href="index.html">SortOrder</a>.BlanksFirst Considers blank values to evaluate to less than all other values in comparisons.</li>
<li><a href="index.html">SortOrder</a>.BlanksLast Considers blank values to evaluate to greater than all other values in comparisons.</li>
</ul>
<!-- @@@blankPolicy -->
<br/>
<!-- $$$caseSensitivity -->
<table class="qmlname"><tr valign="top" id="caseSensitivity-prop"><td class="tblQmlPropNode"><p><span class="name">caseSensitivity</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the case sensitivity of the sort order, the value can be one of:</p>
<ul>
<li>Qt.CaseInsensitive Sets the case sensitivity of the sort order to insensitivity.</li>
<li>Qt.CaseSensitive Sets the case sensitivity of the sort order to sensitivity (default).</li>
</ul>
<!-- @@@caseSensitivity -->
<br/>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the detail type of which the sorting will be performed to. The value should be the enumeration value of <a href="QtOrganizer.Detail.md#type-prop">Detail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the direction of the sort order, the value can be one of:</p>
<ul>
<li>Qt.AscendingOrder The items will be sorted by the ascending order (default).</li>
<li>Qt.DescendingOrder The items will be sorted by the descending order.</li>
</ul>
<!-- @@@direction -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the detail field type of which the sorting will be performed to. The value should be the filld enumeration value defined in each detail element.</p>
<p><b>See also </b><a href="QtOrganizer.EventTime.md">EventTime</a>, <a href="QtOrganizer.JournalTime.md">JournalTime</a>, <a href="QtOrganizer.TodoTime.md">TodoTime</a>, <a href="QtOrganizer.TodoProgress.md">TodoProgress</a>, <a href="QtOrganizer.Reminder.md">Reminder</a>, <a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, <a href="QtOrganizer.Comment.md">Comment</a>, <a href="QtOrganizer.Description.md">Description</a>, <a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a>, <a href="QtOrganizer.Guid.md">Guid</a>, <a href="QtOrganizer.Location.md">Location</a>, <a href="QtOrganizer.Parent.md">Parent</a>, <a href="QtOrganizer.Priority.md">Priority</a>, <a href="QtOrganizer.Recurrence.md">Recurrence</a>, <a href="QtOrganizer.Timestamp.md">Timestamp</a>, <a href="QtOrganizer.ItemType.md">ItemType</a>, and <a href="QtOrganizer.Tag.md">Tag</a>.</p>
<!-- @@@field -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onSortOrderChanged -->
<table class="qmlname"><tr valign="top" id="onSortOrderChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onSortOrderChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the <a href="index.html">SortOrder</a>'s properties have been changed.</p>
<!-- @@@onSortOrderChanged -->
<br/>
