---
Title: QtContacts.ChangeLogFilter
---
        
ChangeLogFilter
===============

<span class="subtitle"></span>
The ChangeLogFilter element provides a filter based around a contact timestamp criterion. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[eventType](#eventType-prop)**** : enumeration
-   ****[since](#since-prop)**** : date

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactChangeLogFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="eventType-prop"></span><span class="name">eventType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of change that this filter will match against.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="since-prop"></span><span class="name">since</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the date and time lower-bound criterion of the filter.The value can be one of:

-   [ChangeLogFilter](index.html).EventAdded
-   [ChangeLogFilter](index.html).EventChanged
-   [ChangeLogFilter](index.html).EventRemoved

