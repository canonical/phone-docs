---
Title: Ubuntu.Content.ContentPeerPicker
---

# Ubuntu.Content.ContentPeerPicker

<span class="subtitle"></span>
<!-- $$$ContentPeerPicker-brief -->
<p>Component that allows users to select a source/destination for content transfer More...</p>
<!-- @@@ContentPeerPicker -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentType-prop">contentType</a></b></b> : ContentType</li>
<li class="fn"><b><b><a href="#customerPeerModelLoader-prop">customerPeerModelLoader</a></b></b> : Loader</li>
<li class="fn"><b><b><a href="#handler-prop">handler</a></b></b> : ContentHandler</li>
<li class="fn"><b><b><a href="#headerText-prop">headerText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#peer-prop">peer</a></b></b> : ContentPeer</li>
<li class="fn"><b><b><a href="#showTitle-prop">showTitle</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#cancelPressed-signal">cancelPressed</a></b></b>()</li>
<li class="fn"><b><b><a href="#peerSelected-signal">peerSelected</a></b></b>()</li>
</ul>
<!-- $$$ContentPeerPicker-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This component displays a list of applications, devices and services which are appropriate for transferring a given content type with.</p>
<!-- @@@ContentPeerPicker -->
<h2>Property Documentation</h2>
<!-- $$$contentType -->
<table class="qmlname"><tr valign="top" id="contentType-prop"><td class="tblQmlPropNode"><p><span class="name">contentType</span> : <span class="type"><a href="Ubuntu.Content.ContentType.md">ContentType</a></span></p></td></tr></table><p>The <a href="Ubuntu.Content.ContentType.md">ContentType</a> to use when finding peers.</p>
<!-- @@@contentType -->
<br/>
<!-- $$$customerPeerModelLoader -->
<table class="qmlname"><tr valign="top" id="customerPeerModelLoader-prop"><td class="tblQmlPropNode"><p><span class="name">customerPeerModelLoader</span> : <span class="type">Loader</span></p></td></tr></table><p>A Loader containing a <a href="Ubuntu.Content.ContentPeerModel.md">ContentPeerModel</a>.</p>
<p>This can optionally be used to provide a pre-populated <a href="Ubuntu.Content.ContentPeerModel.md">ContentPeerModel</a> to this <a href="index.html">ContentPeerPicker</a>.</p>
<!-- @@@customerPeerModelLoader -->
<br/>
<!-- $$$handler -->
<table class="qmlname"><tr valign="top" id="handler-prop"><td class="tblQmlPropNode"><p><span class="name">handler</span> : <span class="type"><a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a></span></p></td></tr></table><p>The <a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a> to use when finding peers.</p>
<!-- @@@handler -->
<br/>
<!-- $$$headerText -->
<table class="qmlname"><tr valign="top" id="headerText-prop"><td class="tblQmlPropNode"><p><span class="name">headerText</span> : <span class="type">string</span></p></td></tr></table><p>Text to display in the header.</p>
<!-- @@@headerText -->
<br/>
<!-- $$$peer -->
<table class="qmlname"><tr valign="top" id="peer-prop"><td class="tblQmlPropNode"><p><span class="name">peer</span> : <span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span></p></td></tr></table><p>The peer selected by the user.</p>
<p>Once the <a href="#peerSelected-signal">peerSelected</a> signal has been sent, this provides the <a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a> which the user has selected.</p>
<!-- @@@peer -->
<br/>
<!-- $$$showTitle -->
<table class="qmlname"><tr valign="top" id="showTitle-prop"><td class="tblQmlPropNode"><p><span class="name">showTitle</span> : <span class="type">bool</span></p></td></tr></table><p>Determines whether the header should be displayed.</p>
<p>This makes it possible to hide the header, which can be useful if embedding the picker within another page or popup.</p>
<!-- @@@showTitle -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$cancelPressed -->
<table class="qmlname"><tr valign="top" id="cancelPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">cancelPressed</span>()</p></td></tr></table><p>Emitted when the user clicks the cancel button.</p>
<p>The <a href="index.html">ContentPeerPicker</a> will be hidden automatically when the user cancels the operations and the active <a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a> will be set to Aborted. <code>onCancelPressed</code></p>
<!-- @@@cancelPressed -->
<br/>
<!-- $$$peerSelected -->
<table class="qmlname"><tr valign="top" id="peerSelected-signal"><td class="tblQmlFuncNode"><p><span class="name">peerSelected</span>()</p></td></tr></table><p>Emitted when a user selects a peer.</p>
<p>Once this signal has been emitted the selected peer can be accessed via the peer property. <code>onPeerSelected</code></p>
<!-- @@@peerSelected -->
<br/>
