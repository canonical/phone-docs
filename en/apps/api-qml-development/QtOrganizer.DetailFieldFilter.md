---
Title: QtOrganizer.DetailFieldFilter
---

# QtOrganizer.DetailFieldFilter

<span class="subtitle"></span>
<!-- $$$DetailFieldFilter-brief -->
<p>The DetailFieldFilter element provides a filter based around a detail value criterion. More...</p>
<!-- @@@DetailFieldFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#matchFlags-prop">matchFlags</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : variant</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onFilterChanged-signal">onFilterChanged</a></b></b>()</li>
</ul>
<!-- $$$DetailFieldFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Simple example how to utilize <a href="index.html">DetailFieldFilter</a> element together with <a href="QtOrganizer.OrganizerModel.md">OrganizerModel</a> and ListView elements:</p>
<pre class="cpp">Rectangle {
height: <span class="number">400</span>; width: <span class="number">400</span>;
OrganizerModel{
id: organizer
startPeriod: <span class="string">&quot;2009-01-01&quot;</span>
endPeriod: <span class="string">&quot;2012-12-31&quot;</span>
filter: todoFilter
}
DetailFieldFilter {
id: todoFilter
detail: Detail<span class="operator">.</span>Type
field: Type<span class="operator">.</span>FieldType
value: Type<span class="operator">.</span>Todo
}
ListView {
width: parent<span class="operator">.</span>width; height: parent<span class="operator">.</span>height;
model: organizer<span class="operator">.</span>items
delegate: Text {text: displayLabel}
}
}</pre>
<p><b>See also </b>QOrganizerItemDetailFieldFilter.</p>
<!-- @@@DetailFieldFilter -->
<h2>Property Documentation</h2>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the detail type of which the detail filter will be matched to. The value shuold be the enumeration value of <a href="QtOrganizer.Detail.md#type-prop">Detail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the detail field type of which the detail field filter will be matched to. The value should be the filld enumeration value defined in each detail element.</p>
<p><b>See also </b><a href="QtOrganizer.EventTime.md">EventTime</a>, <a href="QtOrganizer.JournalTime.md">JournalTime</a>, <a href="QtOrganizer.TodoTime.md">TodoTime</a>, <a href="QtOrganizer.TodoProgress.md">TodoProgress</a>, <a href="QtOrganizer.Reminder.md">Reminder</a>, <a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, <a href="QtOrganizer.Comment.md">Comment</a>, <a href="QtOrganizer.Description.md">Description</a>, <a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a>, <a href="QtOrganizer.Guid.md">Guid</a>, <a href="QtOrganizer.Location.md">Location</a>, <a href="QtOrganizer.Parent.md">Parent</a>, <a href="QtOrganizer.Priority.md">Priority</a>, <a href="QtOrganizer.Recurrence.md">Recurrence</a>, <a href="QtOrganizer.Timestamp.md">Timestamp</a>, <a href="QtOrganizer.ItemType.md">ItemType</a>, and <a href="QtOrganizer.Tag.md">Tag</a>.</p>
<!-- @@@field -->
<br/>
<!-- $$$matchFlags -->
<table class="qmlname"><tr valign="top" id="matchFlags-prop"><td class="tblQmlPropNode"><p><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the semantics of the value matching criterion. The valid match flags include:</p>
<ul>
<li>MatchExactly - Performs QVariant-based matching (default).</li>
<li>MatchContains - The search term is contained in the item.</li>
<li>MatchStartsWith - The search term matches the start of the item.</li>
<li>MatchEndsWith - The search term matches the end of the item.</li>
<li>MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the <code>MatchCaseSensitive</code> flag is also specified.</li>
<li>MatchCaseSensitive - The search is case sensitive.</li>
</ul>
<!-- @@@matchFlags -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the value criterion of the detail field filter.</p>
<!-- @@@value -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onFilterChanged -->
<table class="qmlname"><tr valign="top" id="onFilterChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onFilterChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Filter.md#onFilterChanged-signal">QtOrganizer5::Filter::onFilterChanged</a>.</p>
<!-- @@@onFilterChanged -->
<br/>
