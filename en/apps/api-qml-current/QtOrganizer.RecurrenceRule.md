---
Title: QtOrganizer.RecurrenceRule
---

# QtOrganizer.RecurrenceRule

<span class="subtitle"></span>
<!-- $$$RecurrenceRule-brief -->
<p>The RecurrenceRule element represents a rule by which a organizer item repeats. More...</p>
<!-- @@@RecurrenceRule -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#daysOfMonth-prop">daysOfMonth</a></b></b> : list&lt;variant&gt;</li>
<li class="fn"><b><b><a href="#daysOfWeek-prop">daysOfWeek</a></b></b> : list&lt;variant&gt;</li>
<li class="fn"><b><b><a href="#daysOfYear-prop">daysOfYear</a></b></b> : list&lt;variant&gt;</li>
<li class="fn"><b><b><a href="#firstDayOfWeek-prop">firstDayOfWeek</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#frequency-prop">frequency</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#interval-prop">interval</a></b></b> : int</li>
<li class="fn"><b><b><a href="#limit-prop">limit</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#monthsOfYear-prop">monthsOfYear</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#positions-prop">positions</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#weeksOfYear-prop">weeksOfYear</a></b></b> : list&lt;int&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onRecurrenceRuleChanged-signal">onRecurrenceRuleChanged</a></b></b>()</li>
</ul>
<!-- $$$RecurrenceRule-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@RecurrenceRule -->
<h2>Property Documentation</h2>
<!-- $$$daysOfMonth -->
<table class="qmlname"><tr valign="top" id="daysOfMonth-prop"><td class="tblQmlPropNode"><p><span class="name">daysOfMonth</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td></tr></table><p>This property holds a list of the days of the month that the item should recur on.</p>
<!-- @@@daysOfMonth -->
<br/>
<!-- $$$daysOfWeek -->
<table class="qmlname"><tr valign="top" id="daysOfWeek-prop"><td class="tblQmlPropNode"><p><span class="name">daysOfWeek</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td></tr></table><p>This property holds a list of the days of week that the item should recur on.</p>
<!-- @@@daysOfWeek -->
<br/>
<!-- $$$daysOfYear -->
<table class="qmlname"><tr valign="top" id="daysOfYear-prop"><td class="tblQmlPropNode"><p><span class="name">daysOfYear</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td></tr></table><p>This property holds a list of the days of the year that the item should recur on.</p>
<!-- @@@daysOfYear -->
<br/>
<!-- $$$firstDayOfWeek -->
<table class="qmlname"><tr valign="top" id="firstDayOfWeek-prop"><td class="tblQmlPropNode"><p><span class="name">firstDayOfWeek</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the day that the week starts on. If not set, this is Monday. The value can be one of:</p>
<ul>
<li>Qt.Monday</li>
<li>Qt.Tuesday</li>
<li>Qt.Wednesday</li>
<li>Qt.Thursday</li>
<li>Qt.Friday</li>
<li>Qt.Saturday</li>
<li>Qt.Sunday</li>
</ul>
<!-- @@@firstDayOfWeek -->
<br/>
<!-- $$$frequency -->
<table class="qmlname"><tr valign="top" id="frequency-prop"><td class="tblQmlPropNode"><p><span class="name">frequency</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the frequency with which the item recurs, the value can be one of:</p>
<ul>
<li><a href="index.html">RecurrenceRule</a>.Invalid - (default).</li>
<li><a href="index.html">RecurrenceRule</a>.Daily</li>
<li><a href="index.html">RecurrenceRule</a>.Weekly</li>
<li><a href="index.html">RecurrenceRule</a>.Monthly</li>
<li><a href="index.html">RecurrenceRule</a>.Yearly</li>
</ul>
<!-- @@@frequency -->
<br/>
<!-- $$$interval -->
<table class="qmlname"><tr valign="top" id="interval-prop"><td class="tblQmlPropNode"><p><span class="name">interval</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the interval of recurrence. The default interval is 1.</p>
<!-- @@@interval -->
<br/>
<!-- $$$limit -->
<table class="qmlname"><tr valign="top" id="limit-prop"><td class="tblQmlPropNode"><p><span class="name">limit</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the limit condition of the recurrence rule, the value can be a limit date and time or a limit count. The default is no limit.</p>
<!-- @@@limit -->
<br/>
<!-- $$$monthsOfYear -->
<table class="qmlname"><tr valign="top" id="monthsOfYear-prop"><td class="tblQmlPropNode"><p><span class="name">monthsOfYear</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds a list of the months that the item should recur on, the list element value can be one of:</p>
<ul>
<li><a href="index.html">RecurrenceRule</a>.January</li>
<li><a href="index.html">RecurrenceRule</a>.February</li>
<li><a href="index.html">RecurrenceRule</a>.March</li>
<li><a href="index.html">RecurrenceRule</a>.April</li>
<li><a href="index.html">RecurrenceRule</a>.May</li>
<li><a href="index.html">RecurrenceRule</a>.June</li>
<li><a href="index.html">RecurrenceRule</a>.July</li>
<li><a href="index.html">RecurrenceRule</a>.August</li>
<li><a href="index.html">RecurrenceRule</a>.September</li>
<li><a href="index.html">RecurrenceRule</a>.October</li>
<li><a href="index.html">RecurrenceRule</a>.November</li>
<li><a href="index.html">RecurrenceRule</a>.December</li>
</ul>
<!-- @@@monthsOfYear -->
<br/>
<!-- $$$positions -->
<table class="qmlname"><tr valign="top" id="positions-prop"><td class="tblQmlPropNode"><p><span class="name">positions</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds the position-list of the recurrence rule.</p>
<!-- @@@positions -->
<br/>
<!-- $$$weeksOfYear -->
<table class="qmlname"><tr valign="top" id="weeksOfYear-prop"><td class="tblQmlPropNode"><p><span class="name">weeksOfYear</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds a list of the weeks of the year that the item should recur on.</p>
<!-- @@@weeksOfYear -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onRecurrenceRuleChanged -->
<table class="qmlname"><tr valign="top" id="onRecurrenceRuleChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onRecurrenceRuleChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the <a href="index.html">RecurrenceRule</a>'s properties have been changed.</p>
<!-- @@@onRecurrenceRuleChanged -->
<br/>
