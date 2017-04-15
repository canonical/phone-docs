---
Title: QtOrganizer.Recurrence
---
        
Recurrence
==========

<span class="subtitle"></span>
The Recurrence element contains a list of rules and dates on which the recurrent item occurs, and a list of rules and dates on which exceptions occur. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[exceptionDates](#exceptionDates-prop)**** : list&lt;date&gt;
-   ****[exceptionRules](#exceptionRules-prop)**** : list&lt;RecurrenceRule&gt;
-   ****[recurrenceDates](#recurrenceDates-prop)**** : list&lt;date&gt;
-   ****[recurrenceRules](#recurrenceRules-prop)**** : list&lt;RecurrenceRule&gt;

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[setValue](#setValue-method)****(field, value)
-   variant ****[value](#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   Recurrence.FieldRecurrenceRules
-   Recurrence.FieldExceptionRules
-   Recurrence.FieldRecurrenceDates
-   Recurrence.FieldExceptionDates

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exceptionDates-prop"></span><span class="name">exceptionDates</span> : <span class="type">list</span>&lt;<span class="type">date</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of exception dates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exceptionRules-prop"></span><span class="name">exceptionRules</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of exception rules.

**See also** [RecurrenceRule](../QtOrganizer.RecurrenceRule.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recurrenceDates-prop"></span><span class="name">recurrenceDates</span> : <span class="type">list</span>&lt;<span class="type">date</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of recurrence dates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recurrenceRules-prop"></span><span class="name">recurrenceRules</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.RecurrenceRule.md">RecurrenceRule</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of recurrence rules.

**See also** [RecurrenceRule](../QtOrganizer.RecurrenceRule.md).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onDetailChanged-signal"></span><span class="name">onDetailChanged</span>()</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::onDetailChanged](../QtOrganizer.Detail.md#onDetailChanged-signal).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setValue-method"></span><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::setValue](../QtOrganizer.Detail.md#setValue-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-method"></span><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

**See also** [Detail::value](../QtOrganizer.Detail.md#value-method).

