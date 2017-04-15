---
Title: Ubuntu.Content.ContentPeer
---
        
ContentPeer
===========

<span class="subtitle"></span>
An application that can export or import a ContentType More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[appId](#appId-prop)**** : string
-   ****[contentType](#contentType-prop)**** : ContentType
-   ****[handler](#handler-prop)**** : ContentHandler
-   ****[name](#name-prop)**** : string
-   ****[selectionType](#selectionType-prop)**** : ContentTransfer.SelectionType

<span id="methods"></span>
Methods
-------

-   ****[request](#request-method-2)****(ContentStore)
-   ****[request](#request-method)****()

<span id="details"></span>
Detailed Description
--------------------

A [ContentPeer](index.html) is an application that is registered in the [ContentHub](../Ubuntu.Content.ContentHub.md) as a source or destination of a [ContentType](../Ubuntu.Content.ContentType.md)

See documentation for [ContentHub](../Ubuntu.Content.ContentHub.md)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="appId-prop"></span><span class="name">appId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

When set, this property allows for a specific application to be used as a peer.

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

Specifies the [ContentType](../Ubuntu.Content.ContentType.md) this peer should support.

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

Specifies which [ContentHandler](../Ubuntu.Content.ContentHandler.md) this peer should support (e.g. Source, Destination, Share).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Returns user friendly name of the peer.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionType-prop"></span><span class="name">selectionType</span> : <span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span>.<span class="type">SelectionType</span></p></td>
</tr>
</tbody>
</table>

Specifies whether this peer is allowed to return multiple items.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="request-method-2"></span><span class="name">request</span>(<span class="type"><a href="Ubuntu.Content.ContentStore.md">ContentStore</a></span>)</p></td>
</tr>
</tbody>
</table>

Request to an active transfer from this [ContentPeer](index.html) and use a [ContentStore](../Ubuntu.Content.ContentStore.md) for permanent storage.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="request-method"></span><span class="name">request</span>()</p></td>
</tr>
</tbody>
</table>

Request an active transfer from this [ContentPeer](index.html).

