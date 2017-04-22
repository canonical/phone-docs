---
Title: Ubuntu.Content.ContentPeerModel
---

# Ubuntu.Content.ContentPeerModel

<span class="subtitle"></span>
<!-- $$$ContentPeerModel-brief -->
<p>A list of applications that can export or import a ContentType More...</p>
<!-- @@@ContentPeerModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentType-prop">contentType</a></b></b> : ContentType</li>
<li class="fn"><b><b><a href="#handler-prop">handler</a></b></b> : ContentHandler</li>
<li class="fn"><b><b><a href="#peers-prop">peers</a></b></b> : list&lt;ContentPeer&gt;</li>
</ul>
<!-- $$$ContentPeerModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">ContentPeerModel</a> provides a list of all applications that are registered in the <a href="Ubuntu.Content.ContentHub.md">ContentHub</a> as a source or destination of a <a href="Ubuntu.Content.ContentType.md">ContentType</a></p>
<p>See documentation for <a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></p>
<!-- @@@ContentPeerModel -->
<h2>Property Documentation</h2>
<!-- $$$contentType -->
<table class="qmlname"><tr valign="top" id="contentType-prop"><td class="tblQmlPropNode"><p><span class="name">contentType</span> : <span class="type"><a href="Ubuntu.Content.ContentType.md">ContentType</a></span></p></td></tr></table><p>Specifies which <a href="Ubuntu.Content.ContentType.md">ContentType</a> discovered peers should support.</p>
<!-- @@@contentType -->
<br/>
<!-- $$$handler -->
<table class="qmlname"><tr valign="top" id="handler-prop"><td class="tblQmlPropNode"><p><span class="name">handler</span> : <span class="type"><a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a></span></p></td></tr></table><p>Specifies which <a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a> discovered peers should support.</p>
<!-- @@@handler -->
<br/>
<!-- $$$peers -->
<table class="qmlname"><tr valign="top" id="peers-prop"><td class="tblQmlPropNode"><p><span class="name">peers</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span>&gt;</p></td></tr></table><p>Provides a list of discovered peers matching the requested <a href="Ubuntu.Content.ContentType.md">ContentType</a> and <a href="Ubuntu.Content.ContentHandler.md">ContentHandler</a>.</p>
<!-- @@@peers -->
<br/>
