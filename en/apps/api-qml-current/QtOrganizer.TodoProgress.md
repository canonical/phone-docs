---
Title: QtOrganizer.TodoProgress
---
        
TodoProgress
============

<span class="subtitle"></span>
The TodoProgress element contains information about the progress of a todo item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[finishedDateTime](#finishedDateTime-prop)**** : date
-   ****[percentageComplete](#percentageComplete-prop)**** : int
-   ****[status](#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [TodoProgress](index.html).FieldStatus
-   [TodoProgress](index.html).FieldPercentage
-   [TodoProgress](index.html).FieldFinishedDateTime

**See also** QOrganizerTodoProgress.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finishedDateTime-prop"></span><span class="name">finishedDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date time value which contains the date and time at which the todo item was completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="percentageComplete-prop"></span><span class="name">percentageComplete</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the value which contains the current completion percentage of the todo item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the value which describes the current completion status of the todo item. The value can be one of:

-   [TodoProgress](index.html).NotStarted
-   [TodoProgress](index.html).InProgress
-   [TodoProgress](index.html).Complete

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

