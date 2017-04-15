---
Title: QtOrganizer.RecurrenceRule
---
        
RecurrenceRule
==============

<span class="subtitle"></span>
The RecurrenceRule element represents a rule by which a organizer item repeats. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[daysOfMonth](#daysOfMonth-prop)**** : list&lt;variant&gt;
-   ****[daysOfWeek](#daysOfWeek-prop)**** : list&lt;variant&gt;
-   ****[daysOfYear](#daysOfYear-prop)**** : list&lt;variant&gt;
-   ****[firstDayOfWeek](#firstDayOfWeek-prop)**** : enumeration
-   ****[frequency](#frequency-prop)**** : enumeration
-   ****[interval](#interval-prop)**** : int
-   ****[limit](#limit-prop)**** : variant
-   ****[monthsOfYear](#monthsOfYear-prop)**** : list&lt;int&gt;
-   ****[positions](#positions-prop)**** : list&lt;int&gt;
-   ****[weeksOfYear](#weeksOfYear-prop)**** : list&lt;int&gt;

<span id="signals"></span>
Signals
-------

-   ****[onRecurrenceRuleChanged](#onRecurrenceRuleChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="daysOfMonth-prop"></span><span class="name">daysOfMonth</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the days of the month that the item should recur on.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="daysOfWeek-prop"></span><span class="name">daysOfWeek</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the days of week that the item should recur on.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="daysOfYear-prop"></span><span class="name">daysOfYear</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the days of the year that the item should recur on.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="firstDayOfWeek-prop"></span><span class="name">firstDayOfWeek</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the day that the week starts on. If not set, this is Monday. The value can be one of:

-   Qt.Monday
-   Qt.Tuesday
-   Qt.Wednesday
-   Qt.Thursday
-   Qt.Friday
-   Qt.Saturday
-   Qt.Sunday

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frequency-prop"></span><span class="name">frequency</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the frequency with which the item recurs, the value can be one of:

-   [RecurrenceRule](index.html).Invalid - (default).
-   [RecurrenceRule](index.html).Daily
-   [RecurrenceRule](index.html).Weekly
-   [RecurrenceRule](index.html).Monthly
-   [RecurrenceRule](index.html).Yearly

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interval-prop"></span><span class="name">interval</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the interval of recurrence. The default interval is 1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limit-prop"></span><span class="name">limit</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the limit condition of the recurrence rule, the value can be a limit date and time or a limit count. The default is no limit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="monthsOfYear-prop"></span><span class="name">monthsOfYear</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the months that the item should recur on, the list element value can be one of:

-   [RecurrenceRule](index.html).January
-   [RecurrenceRule](index.html).February
-   [RecurrenceRule](index.html).March
-   [RecurrenceRule](index.html).April
-   [RecurrenceRule](index.html).May
-   [RecurrenceRule](index.html).June
-   [RecurrenceRule](index.html).July
-   [RecurrenceRule](index.html).August
-   [RecurrenceRule](index.html).September
-   [RecurrenceRule](index.html).October
-   [RecurrenceRule](index.html).November
-   [RecurrenceRule](index.html).December

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positions-prop"></span><span class="name">positions</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the position-list of the recurrence rule.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="weeksOfYear-prop"></span><span class="name">weeksOfYear</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the weeks of the year that the item should recur on.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onRecurrenceRuleChanged-signal"></span><span class="name">onRecurrenceRuleChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [RecurrenceRule](index.html)'s properties have been changed.

