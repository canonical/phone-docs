---
Title: QtContacts.FetchHint
---
        
FetchHint
=========

<span class="subtitle"></span>
The FetchHint element provides hints to the manager about which contact information needs to be retrieved in an asynchronous fetch request or a synchronous function call. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detailTypesHint](#detailTypesHint-prop)**** : list&lt;int&gt;
-   ****[imageHeight](#imageHeight-prop)**** : int
-   ****[imageWidth](#imageWidth-prop)**** : int
-   ****[optimizationHints](#optimizationHints-prop)**** : FetchHint::OptimizationHints
-   ****[relationshipTypesHint](#relationshipTypesHint-prop)**** : list&lt;string&gt;

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFetchHint.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detailTypesHint-prop"></span><span class="name">detailTypesHint</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of contact detail types the manager should (at a minimum) retrieve when fetching contacts.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageHeight-prop"></span><span class="name">imageHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the preferred pixel height for any images returned by the manager for a given request. This hint may be ignored by the manager.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageWidth-prop"></span><span class="name">imageWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the preferred pixel width for any images returned by the manager for a given request. This hint may be ignored by the manager.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="optimizationHints-prop"></span><span class="name">optimizationHints</span> : <span class="type">FetchHint::OptimizationHints</span></p></td>
</tr>
</tbody>
</table>

This property holds the optimization hint flags specified by the client. These hints may be ignored by the backend, in which case it will return the full set of information accessible in a contact, including relationships, action preferences, and binary blobs. The value of the flags can be:

-   [FetchHint](index.html).AllRequired - (default).
-   [FetchHint](index.html).NoRelationships
-   [FetchHint](index.html).NoActionPreferences
-   [FetchHint](index.html).NoBinaryBlobs

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relationshipTypesHint-prop"></span><span class="name">relationshipTypesHint</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of relationship types that the manager should (at a minimum) retrieve when fetching contacts.

