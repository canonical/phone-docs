---
Title: Ubuntu.Content.ContentPeer
---

# Ubuntu.Content.ContentPeer

<span class="subtitle"></span>
<!-- $$$ContentPeer-brief -->
<p>An application that can export or import a ContentType More...</p>
<!-- @@@ContentPeer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#appId-prop">appId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#contentType-prop">contentType</a></b></b> : ContentType</li>
<li class="fn"><b><b><a href="#handler-prop">handler</a></b></b> : ContentHandler</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#selectionType-prop">selectionType</a></b></b> : ContentTransfer.SelectionType</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#request-method-2">request</a></b></b>(ContentStore)</li>
<li class="fn"><b><b><a href="#request-method">request</a></b></b>()</li>
</ul>
<!-- $$$ContentPeer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">ContentPeer</a> is an application that is registered in the <a href="Ubuntu.Content.ContentHub.md">ContentHub</a> as a source or destination of a <a href="Ubuntu.Content.ContentType.md">ContentType</a></p>
<p>See documentation for <a href="Ubuntu.Content.ContentHub.md">ContentHub</a></p>
<!-- @@@ContentPeer -->
<h2>Property Documentation</h2>
<!-- $$$appId -->
<table class="qmlname"><tr valign="top" id="appId-prop"><td class="tblQmlPropNode"><p><span class="name">appId</span> : <span class="type">string</span></p></td></tr></table><p>When set, this property allows for a specific application to be used as a peer.</p>
<!-- @@@appId -->
<br/>
<!-- $$$contentType -->
<table class="qmlname"><tr valign="top" id="contentType-prop"><td class="tblQmlPropNode"><p><span class="name">contentType</span> : <span class="type"><a href="Ubuntu.Content.ContentType.md">ContentType</a></span></p></td></tr></table><p>Specifies the <a href="Ubuntu.Content.ContentType.md">ContentType</a> this peer should support.</p>
<!-- @@@contentType -->
<br/>
<!-- $$$handler -->
<table class="qmlname"><tr valign="top" id="handler-prop"><td class="tblQmlPropNode"><p><span class="name">handler</span> : <span class="type"><a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a></span></p></td></tr></table><p>Specifies which <a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a> this peer should support (e.g&#x2e; Source, Destination, Share).</p>
<!-- @@@handler -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>Returns user friendly name of the peer.</p>
<!-- @@@name -->
<br/>
<!-- $$$selectionType -->
<table class="qmlname"><tr valign="top" id="selectionType-prop"><td class="tblQmlPropNode"><p><span class="name">selectionType</span> : <span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span>.<span class="type">SelectionType</span></p></td></tr></table><p>Specifies whether this peer is allowed to return multiple items.</p>
<!-- @@@selectionType -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$request -->
<table class="qmlname"><tr valign="top" id="request-method-2"><td class="tblQmlFuncNode"><p><span class="name">request</span>(<span class="type"><a href="Ubuntu.Content.ContentStore.md">ContentStore</a></span>)</p></td></tr></table><p>Request to an active transfer from this <a href="index.html">ContentPeer</a> and use a <a href="Ubuntu.Content.ContentStore.md">ContentStore</a> for permanent storage.</p>
<!-- @@@request -->
<br/>
<!-- $$$request -->
<table class="qmlname"><tr valign="top" id="request-method"><td class="tblQmlFuncNode"><p><span class="name">request</span>()</p></td></tr></table><p>Request an active transfer from this <a href="index.html">ContentPeer</a>.</p>
<!-- @@@request -->
<br/>
