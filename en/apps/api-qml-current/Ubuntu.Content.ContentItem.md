---
Title: Ubuntu.Content.ContentItem
---
        
ContentItem
===========

<span class="subtitle"></span>
Content that can be imported or exported from a ContentPeer More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[text](#text-prop)**** : string
-   ****[url](#url-prop)**** : url

<span id="methods"></span>
Methods
-------

-   bool ****[move](#move-method-2)****(dir, fileName)
-   bool ****[move](#move-method)****(dir)
-   string ****[toDataURI](#toDataURI-method)****()

<span id="details"></span>
Detailed Description
--------------------

A [ContentItem](index.html) is an item that can be imported or exported from a [ContentPeer](../Ubuntu.Content.ContentPeer.md)

See documentation for [ContentHub](../Ubuntu.Content.ContentHub.md)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Content of the transfer

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

URL of the content data

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method-2"></span><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>, <span class="type">fileName</span>)</p></td>
</tr>
</tbody>
</table>

If the url is a local file, move the file to *dir* and rename to *fileName*

If the move is successful, the url property will be changed and onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if the url wasn't a local file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method"></span><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>)</p></td>
</tr>
</tbody>
</table>

If the url is a local file, move the file to *dir*

If the move is successful, the url property will be changed and onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if the url wasn't a local file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toDataURI-method"></span><span class="type">string</span> <span class="name">toDataURI</span>()</p></td>
</tr>
</tbody>
</table>

Returns the [ContentItem](index.html) base64 encoded with the mimetype as a properly formated dataUri

