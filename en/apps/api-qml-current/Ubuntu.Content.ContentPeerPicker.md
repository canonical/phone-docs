---
Title: Ubuntu.Content.ContentPeerPicker
---
        
ContentPeerPicker
=================

<span class="subtitle"></span>
Component that allows users to select a source/destination for content transfer More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[contentType](#contentType-prop)**** : ContentType
-   ****[customerPeerModelLoader](#customerPeerModelLoader-prop)**** : Loader
-   ****[handler](#handler-prop)**** : ContentHandler
-   ****[headerText](#headerText-prop)**** : string
-   ****[peer](#peer-prop)**** : ContentPeer
-   ****[showTitle](#showTitle-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[cancelPressed](#cancelPressed-signal)****()
-   ****[peerSelected](#peerSelected-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This component displays a list of applications, devices and services which are appropriate for transferring a given content type with.

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

The [ContentType](../Ubuntu.Content.ContentType.md) to use when finding peers.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="customerPeerModelLoader-prop"></span><span class="name">customerPeerModelLoader</span> : <span class="type">Loader</span></p></td>
</tr>
</tbody>
</table>

A Loader containing a [ContentPeerModel](../Ubuntu.Content.ContentPeerModel.md).

This can optionally be used to provide a pre-populated [ContentPeerModel](../Ubuntu.Content.ContentPeerModel.md) to this [ContentPeerPicker](index.html).

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

The [ContentHandler](../Ubuntu.Content.ContentHandler.md) to use when finding peers.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerText-prop"></span><span class="name">headerText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Text to display in the header.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="peer-prop"></span><span class="name">peer</span> : <span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span></p></td>
</tr>
</tbody>
</table>

The peer selected by the user.

Once the [peerSelected](#peerSelected-signal) signal has been sent, this provides the [ContentPeer](../Ubuntu.Content.ContentPeer.md) which the user has selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showTitle-prop"></span><span class="name">showTitle</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Determines whether the header should be displayed.

This makes it possible to hide the header, which can be useful if embedding the picker within another page or popup.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelPressed-signal"></span><span class="name">cancelPressed</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the user clicks the cancel button.

The [ContentPeerPicker](index.html) will be hidden automatically when the user cancels the operations and the active [ContentTransfer](../Ubuntu.Content.ContentTransfer.md) will be set to Aborted. `onCancelPressed`

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="peerSelected-signal"></span><span class="name">peerSelected</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when a user selects a peer.

Once this signal has been emitted the selected peer can be accessed via the peer property. `onPeerSelected`

