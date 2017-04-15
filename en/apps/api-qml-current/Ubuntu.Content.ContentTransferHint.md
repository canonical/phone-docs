---
Title: Ubuntu.Content.ContentTransferHint
---
        
ContentTransferHint
===================

<span class="subtitle"></span>
Component that indicates that a transfer is active More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[activeTransfer](#activeTransfer-prop)**** : var

<span id="details"></span>
Detailed Description
--------------------

This component shows that the transfer is currently running, and the source application is active. It blocks all input during that time. Place this component on top of your view.

See documentation for [ContentHub](../Ubuntu.Content.ContentHub.md) to see an example

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeTransfer-prop"></span><span class="name">activeTransfer</span> : <span class="type">var</span></p></td>
</tr>
</tbody>
</table>

The [ContentTransfer](../Ubuntu.Content.ContentTransfer.md) to monitor the status of.

This should be set to the currently active [ContentTransfer](../Ubuntu.Content.ContentTransfer.md), which will then cause the [ContentTransferHint](index.html) to become visible while the transfer is in progress.

