---
Title: Ubuntu.Content.ContentItem
---

# Ubuntu.Content.ContentItem

<span class="subtitle"></span>
<!-- $$$ContentItem-brief -->
<p>Content that can be imported or exported from a ContentPeer More...</p>
<!-- @@@ContentItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : url</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#move-method-2">move</a></b></b>(dir, fileName)</li>
<li class="fn">bool <b><b><a href="#move-method">move</a></b></b>(dir)</li>
<li class="fn">string <b><b><a href="#toDataURI-method">toDataURI</a></b></b>()</li>
</ul>
<!-- $$$ContentItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">ContentItem</a> is an item that can be imported or exported from a <a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></p>
<p>See documentation for <a href="Ubuntu.Content.ContentHub.md">ContentHub</a></p>
<!-- @@@ContentItem -->
<h2>Property Documentation</h2>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>Content of the transfer</p>
<!-- @@@text -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-prop"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type"><a href="#url-prop">url</a></span></p></td></tr></table><p>URL of the content data</p>
<!-- @@@url -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-method-2"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>, <span class="type">fileName</span>)</p></td></tr></table><p>If the url is a local file, move the file to <i>dir</i> and rename to <i>fileName</i></p>
<p>If the move is successful, the url property will be changed and onUrlChanged will be emitted.</p>
<p>Returns true if the file was moved successfully, false on error or if the url wasn't a local file.</p>
<!-- @@@move -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>)</p></td></tr></table><p>If the url is a local file, move the file to <i>dir</i></p>
<p>If the move is successful, the url property will be changed and onUrlChanged will be emitted.</p>
<p>Returns true if the file was moved successfully, false on error or if the url wasn't a local file.</p>
<!-- @@@move -->
<br/>
<!-- $$$toDataURI -->
<table class="qmlname"><tr valign="top" id="toDataURI-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toDataURI</span>()</p></td></tr></table><p>Returns the <a href="index.html">ContentItem</a> base64 encoded with the mimetype as a properly formated dataUri</p>
<!-- @@@toDataURI -->
<br/>
