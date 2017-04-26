---
Title: QtOrganizer.DetailRangeFilter
---

# QtOrganizer.DetailRangeFilter

<span class="subtitle"></span>
<!-- $$$DetailRangeFilter-brief -->
<p>The DetailRangeFilter element provides a filter based around a detail value range criterion. More...</p>
<!-- @@@DetailRangeFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#matchFlags-prop">matchFlags</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#max-prop">max</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#min-prop">min</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#rangeFlags-prop">rangeFlags</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onFilterChanged-signal">onFilterChanged</a></b></b>()</li>
</ul>
<!-- $$$DetailRangeFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b>QOrganizerItemDetailRangeFilter.</p>
<!-- @@@DetailRangeFilter -->
<h2>Property Documentation</h2>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the detail type of which the detail filter will be matched to. The value shuold be the enumeration value of <a href="QtOrganizer.Detail.md#type-prop">Detail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the detail field type of which the detail filter will be matched to. The value should be the filld enumeration value defined in each detail element.</p>
<p><b>See also </b><a href="QtOrganizer.EventTime.md">EventTime</a>, <a href="QtOrganizer.JournalTime.md">JournalTime</a>, <a href="QtOrganizer.TodoTime.md">TodoTime</a>, <a href="QtOrganizer.TodoProgress.md">TodoProgress</a>, <a href="QtOrganizer.Reminder.md">Reminder</a>, <a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, <a href="QtOrganizer.Comment.md">Comment</a>, <a href="QtOrganizer.Description.md">Description</a>, <a href="QtOrganizer.DisplayLabel.md">DisplayLabel</a>, <a href="QtOrganizer.Guid.md">Guid</a>, <a href="QtOrganizer.Location.md">Location</a>, <a href="QtOrganizer.Parent.md">Parent</a>, <a href="QtOrganizer.Priority.md">Priority</a>, <a href="QtOrganizer.Recurrence.md">Recurrence</a>, <a href="QtOrganizer.Timestamp.md">Timestamp</a>, <a href="QtOrganizer.ItemType.md">ItemType</a>, and <a href="QtOrganizer.Tag.md">Tag</a>.</p>
<!-- @@@field -->
<br/>
<!-- $$$matchFlags -->
<table class="qmlname"><tr valign="top" id="matchFlags-prop"><td class="tblQmlPropNode"><p><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.</p>
<p><b>See also </b><a href="QtOrganizer.DetailFieldFilter.md#matchFlags-prop">DetailFieldFilter::matchFlags</a>.</p>
<!-- @@@matchFlags -->
<br/>
<!-- $$$max -->
<table class="qmlname"><tr valign="top" id="max-prop"><td class="tblQmlPropNode"><p><span class="name">max</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the upper bound of the value range criterion. By default, there is no upper bound.</p>
<!-- @@@max -->
<br/>
<!-- $$$min -->
<table class="qmlname"><tr valign="top" id="min-prop"><td class="tblQmlPropNode"><p><span class="name">min</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the lower bound of the value range criterion. By default, there is no lower bound.</p>
<!-- @@@min -->
<br/>
<!-- $$$rangeFlags -->
<table class="qmlname"><tr valign="top" id="rangeFlags-prop"><td class="tblQmlPropNode"><p><span class="name">rangeFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds a set of flags which defines the boundary condition semantics of the value range criterion. The valid range flags include:</p>
<ul>
<li><a href="index.html">DetailRangeFilter</a>.IncludeLower</li>
<li><a href="index.html">DetailRangeFilter</a>.IncludeUpper</li>
<li><a href="index.html">DetailRangeFilter</a>.ExcludeLower</li>
<li><a href="index.html">DetailRangeFilter</a>.ExcludeUpper</li>
</ul>
<!-- @@@rangeFlags -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onFilterChanged -->
<table class="qmlname"><tr valign="top" id="onFilterChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onFilterChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Filter.md#onFilterChanged-signal">QtOrganizer5::Filter::onFilterChanged</a>.</p>
<!-- @@@onFilterChanged -->
<br/>
