---
Title: QtOrganizer.VisualReminder
---
        
VisualReminder
==============

<span class="subtitle"></span>
The VisualReminder element contains information about a visual reminder of an item. More...

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

-   ****[dataUrl](#dataUrl-prop)**** : url
-   ****[message](#message-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The following fields are supported:

-   [VisualReminder](index.html).FieldRepetitionCount
-   [VisualReminder](index.html).FieldRepetitionDelay
-   [VisualReminder](index.html).FieldSecondsBeforeStart
-   [VisualReminder](index.html).FieldDataUrl
-   [VisualReminder](index.html).FieldMessage

**See also** [Reminder](../QtOrganizer.Reminder.md) and QOrganizerItemVisualReminder.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataUrl-prop"></span><span class="name">dataUrl</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the url of the visual data which the user wishes to be displayed as part of the reminder.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="message-prop"></span><span class="name">message</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the message which the user wishes to be displayed as part of the reminder.

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

