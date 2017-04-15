---
Title: Ubuntu.Content.ContentTransfer
---
        
ContentTransfer
===============

<span class="subtitle"></span>
Represents a transfer of content between two ContentPeers More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[contentType](#contentType-prop)**** : ContentType
-   ****[destination](#destination-prop)**** : QString
-   ****[direction](#direction-prop)**** : ContentTransfer.Direction
-   ****[downloadId](#downloadId-prop)**** : string
-   ****[items](#items-prop)**** : list&lt;ContentItem&gt;
-   ****[selectionType](#selectionType-prop)**** : ContentTransfer.SelectionType
-   ****[source](#source-prop)**** : QString
-   ****[state](#state-prop)**** : ContentTransfer.State
-   ****[store](#store-prop)**** : string

<span id="methods"></span>
Methods
-------

-   ****[finalize](#finalize-method)****()
-   ****[start](#start-method)****()

<span id="details"></span>
Detailed Description
--------------------

See documentation for [ContentHub](../Ubuntu.Content.ContentHub.md)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentType-prop"></span><span class="name">contentType</span> : <span class="type"><a href="Ubuntu.Content.ContentType.md">ContentType</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the [ContentType](../Ubuntu.Content.ContentType.md) requested.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="destination-prop"></span><span class="name">destination</span> : <span class="type">QString</span></p></td>
</tr>
</tbody>
</table>

Provides the app id of the destination application for this transfer

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">Direction</span></p></td>
</tr>
</tbody>
</table>

ContentTransfer::direction indicates if this transferobject is used for import or export transaction

*[ContentTransfer](index.html).Direction* is an enumeration:
Direction
Description
[ContentTransfer](index.html).Import
Transfer is a request to import content.
[ContentTransfer](index.html).Export
Transfer is a request to export content.
[ContentTransfer](index.html).Share
Transfer is a request to share content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadId-prop"></span><span class="name">downloadId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The Download Manager ID of a SingleDownload, which will then be transfered to the selected peer.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="items-prop"></span><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of items included in the [ContentTransfer](index.html)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionType-prop"></span><span class="name">selectionType</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">SelectionType</span></p></td>
</tr>
</tbody>
</table>

ContentTransfer::selectionType indicates if this transfer object allows single or multiple selection of items

*[ContentTransfer](index.html).SelectionType* is an enumeration:
Type
Description
[ContentTransfer](index.html).Single
Transfer should contain a single item.
[ContentTransfer](index.html).Multiple
Transfer can contain multiple items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">QString</span></p></td>
</tr>
</tbody>
</table>

Provides the app id of the source application for this transfer

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">State</span></p></td>
</tr>
</tbody>
</table>

*[ContentTransfer](index.html).State* is an enumeration:
State
Description
[ContentTransfer](index.html).Created
Transfer created, waiting to be initiated.
[ContentTransfer](index.html).Initiated
Transfer has been initiated.
[ContentTransfer](index.html).InProgress
Transfer is in progress.
[ContentTransfer](index.html).Downloading
Transfer is downloading item specified by [downloadId](#downloadId-prop).
[ContentTransfer](index.html).Downloaded
Download specified by [downloadId](#downloadId-prop) has completed.
[ContentTransfer](index.html).Charged
Transfer is charged with items and ready to be collected.
[ContentTransfer](index.html).Collected
Items in the transfer have been collected.
[ContentTransfer](index.html).Aborted
Transfer has been aborted.
[ContentTransfer](index.html).Finalized
Transfer has been finished and cleaned up.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="store-prop"></span><span class="name">store</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

[ContentStore](../Ubuntu.Content.ContentStore.md) where the [ContentTransfer](index.html) will add items

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finalize-method"></span><span class="name">finalize</span>()</p></td>
</tr>
</tbody>
</table>

Sets State to [ContentTransfer](index.html).Finalized and cleans up temporary files

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Start the transfer, this sets the State to [ContentTransfer](index.html).Initiated

