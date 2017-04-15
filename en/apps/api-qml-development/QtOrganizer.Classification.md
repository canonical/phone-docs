---
Title: QtOrganizer.Classification
---
        
Classification
==============

<span class="subtitle"></span>
The Classification element contains classification-information of an item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[classification](#classification-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](#onDetailChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The Classification detail contains classification related information. This can be used as a part of security model for the organizer.

**See also** QOrganizerItemClassification.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="classification-prop"></span><span class="name">classification</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the calendar item's classification related information. The value can be one of:

-   Classification.AccessPublic
-   Classification.AccessConfidential
-   Classification.AccessPrivate

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

