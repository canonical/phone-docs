---
Title: Ubuntu.Content.ContentPeerModel
---
        
ContentPeerModel
================

<span class="subtitle"></span>
A list of applications that can export or import a ContentType More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[contentType](#contentType-prop)**** : ContentType
-   ****[handler](#handler-prop)**** : ContentHandler
-   ****[peers](#peers-prop)**** : list&lt;ContentPeer&gt;

<span id="details"></span>
Detailed Description
--------------------

A [ContentPeerModel](index.html) provides a list of all applications that are registered in the [ContentHub](../Ubuntu.Content.ContentHub.md) as a source or destination of a [ContentType](../Ubuntu.Content.ContentType.md)

See documentation for [ContentPeer](../Ubuntu.Content.ContentPeer.md)

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

Specifies which [ContentType](../Ubuntu.Content.ContentType.md) discovered peers should support.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handler-prop"></span><span class="name">handler</span> : <span class="type"><a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a></span></p></td>
</tr>
</tbody>
</table>

Specifies which [ContentHandler](../Ubuntu.Content.ContentHandler.md) discovered peers should support.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="peers-prop"></span><span class="name">peers</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Provides a list of discovered peers matching the requested [ContentType](../Ubuntu.Content.ContentType.md) and [ContentHandler](../Ubuntu.Content.ContentHandler.md).

