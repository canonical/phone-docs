---
Title: QtOrganizer.EmailReminder
---
        
EmailReminder
=============

<span class="subtitle"></span>
The EmailReminder element contains information about an email reminder of an item. More...

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
<td>Inherits:</td>
<td><p><a href="QtOrganizer.Reminder.md">Reminder</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[attachments](#attachments-prop)**** : list&lt;variant&gt;
-   ****[body](#body-prop)**** : string
-   ****[recipients](#recipients-prop)**** : list&lt;string&gt;
-   ****[subject](#subject-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [EmailReminder](index.html).FieldRepetitionCount
-   [EmailReminder](index.html).FieldRepetitionDelay
-   [EmailReminder](index.html).FieldSecondsBeforeStart
-   [EmailReminder](index.html).FieldSubject
-   [EmailReminder](index.html).FieldBody
-   [EmailReminder](index.html).FieldRecipients
-   [EmailReminder](index.html).FieldAttachments

**See also** [Reminder](../QtOrganizer.Reminder.md) and QOrganizerItemEmailReminder.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attachments-prop"></span><span class="name">attachments</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the attachments of the email.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="body-prop"></span><span class="name">body</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the body of the email.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recipients-prop"></span><span class="name">recipients</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of recipients that the user wishes to be sent an email as part of the reminder.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subject-prop"></span><span class="name">subject</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the subject of the email.

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

