---
Title: QtOrganizer.FetchHint
---
        
FetchHint
=========

<span class="subtitle"></span>
The FetchHint element provides hints to the manager about which organizer item information needs to be retrieved in an asynchronous fetch request or a synchronous function call. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detailTypesHint](#detailTypesHint-prop)**** : list&lt;int&gt;
-   ****[optimizationHints](#optimizationHints-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onFetchHintChanged](#onFetchHintChanged-signal)****()

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
<td><p><span id="detailTypesHint-prop"></span><span class="name">detailTypesHint</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of organizer item detail types the manager should (at a minimum) retrieve when fetching contacts.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="optimizationHints-prop"></span><span class="name">optimizationHints</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the optimization hint flags specified by the client.

-   AllRequired Tells the backend that all information is required.
-   NoActionPreferences Tells the backend that the client does not require retrieved organizer items to include a cache of action preferences.
-   NoBinaryBlobs Tells the backend that the client does not require retrieved organizer items to include binary blobs such as thumbnail images.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onFetchHintChanged-signal"></span><span class="name">onFetchHintChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [FetchHint](index.html)'s properties have been changed.

