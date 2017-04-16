---
Title: QtOrganizer.Recurrence
---

# QtOrganizer.Recurrence

<span class="subtitle"></span>
<!-- $$$Recurrence-brief -->
<p>The Recurrence element contains a list of rules and dates on which the recurrent item occurs, and a list of rules and dates on which exceptions occur. More...</p>
<!-- @@@Recurrence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#exceptionDates-prop">exceptionDates</a></b></b> : list&lt;date&gt;</li>
<li class="fn"><b><b><a href="#exceptionRules-prop">exceptionRules</a></b></b> : list&lt;RecurrenceRule&gt;</li>
<li class="fn"><b><b><a href="#recurrenceDates-prop">recurrenceDates</a></b></b> : list&lt;date&gt;</li>
<li class="fn"><b><b><a href="#recurrenceRules-prop">recurrenceRules</a></b></b> : list&lt;RecurrenceRule&gt;</li>
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
<!-- $$$Recurrence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following fields are supported:</p>
<ul>
<li>Recurrence.FieldRecurrenceRules</li>
<li>Recurrence.FieldExceptionRules</li>
<li>Recurrence.FieldRecurrenceDates</li>
<li>Recurrence.FieldExceptionDates</li>
</ul>
<!-- @@@Recurrence -->
<h2>Property Documentation</h2>
<!-- $$$exceptionDates -->
<table class="qmlname"><tr valign="top" id="exceptionDates-prop"><td class="tblQmlPropNode"><p><span class="name">exceptionDates</span> : <span class="type">list</span>&lt;<span class="type">date</span>&gt;</p></td></tr></table><p>This property holds the list of exception dates.</p>
<!-- @@@exceptionDates -->
<br/>
<!-- $$$exceptionRules -->
<table class="qmlname"><tr valign="top" id="exceptionRules-prop"><td class="tblQmlPropNode"><p><span class="name">exceptionRules</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a></span>&gt;</p></td></tr></table><p>This property holds the list of exception rules.</p>
<p><b>See also </b><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a>.</p>
<!-- @@@exceptionRules -->
<br/>
<!-- $$$recurrenceDates -->
<table class="qmlname"><tr valign="top" id="recurrenceDates-prop"><td class="tblQmlPropNode"><p><span class="name">recurrenceDates</span> : <span class="type">list</span>&lt;<span class="type">date</span>&gt;</p></td></tr></table><p>This property holds the list of recurrence dates.</p>
<!-- @@@recurrenceDates -->
<br/>
<!-- $$$recurrenceRules -->
<table class="qmlname"><tr valign="top" id="recurrenceRules-prop"><td class="tblQmlPropNode"><p><span class="name">recurrenceRules</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a></span>&gt;</p></td></tr></table><p>This property holds the list of recurrence rules.</p>
<p><b>See also </b><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a>.</p>
<!-- @@@recurrenceRules -->
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
