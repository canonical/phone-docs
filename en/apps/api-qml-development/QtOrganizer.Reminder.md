---
Title: QtOrganizer.Reminder
---
        
Reminder
========

<span class="subtitle"></span>
The Reminder element contains information about when and how the user wants to reminded of the item. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtOrganizer 5.0</td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="QtOrganizer.AudibleReminder.md">AudibleReminder</a>, <a href="QtOrganizer.EmailReminder.md">EmailReminder</a>, and <a href="QtOrganizer.VisualReminder.md">VisualReminder</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[reminderType](#reminderType-prop)**** : enumeration
-   ****[repetitionCount](#repetitionCount-prop)**** : int
-   ****[repetitionDelay](#repetitionDelay-prop)**** : int
-   ****[secondsBeforeStart](#secondsBeforeStart-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   Reminder.FieldRepetitionCount
-   Reminder.FieldRepetitionDelay
-   Reminder.FieldSecondsBeforeStart

**See also** QOrganizerItemReminder.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reminderType-prop"></span><span class="name">reminderType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the reminder type of this reminder for an organizer item. The value can be one of:

-   Reminder.NoReminder
-   Reminder.[VisualReminder](../QtOrganizer.VisualReminder.md)
-   Reminder.[AudibleReminder](../QtOrganizer.AudibleReminder.md)
-   Reminder.[EmailReminder](../QtOrganizer.EmailReminder.md)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="repetitionCount-prop"></span><span class="name">repetitionCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of times the user should be reminded of the item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="repetitionDelay-prop"></span><span class="name">repetitionDelay</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the delay (in seconds) between each repetition of the reminder.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secondsBeforeStart-prop"></span><span class="name">secondsBeforeStart</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of seconds prior to the activation of the item at which the user wants to be reminded of the item.

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

