---
Title: QtOrganizer.TodoTime
---
        
TodoTime
========

<span class="subtitle"></span>
The TodoTime element contains the start and due dates and times of a recurring todo series, or occurrence of an todo item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](#allDay-prop)**** : date
-   ****[dueDateTime](#dueDateTime-prop)**** : date
-   ****[startDateTime](#startDateTime-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [TodoTime](index.html).FieldStartDateTime
-   [TodoTime](index.html).FieldDueDateTime
-   [TodoTime](index.html).FieldAllDay

**See also** QOrganizerTodoTime.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allDay-prop"></span><span class="name">allDay</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the time is significant in the start datetime.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dueDateTime-prop"></span><span class="name">dueDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the end date and time value of the todo item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startDateTime-prop"></span><span class="name">startDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the start date and time value of the todo item.

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

