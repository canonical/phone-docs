---
Title: Ubuntu.Content.ContentTransferHint
---

# Ubuntu.Content.ContentTransferHint

<span class="subtitle"></span>
<!-- $$$ContentTransferHint-brief -->
<p>Component that indicates that a transfer is active More...</p>
<!-- @@@ContentTransferHint -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeTransfer-prop">activeTransfer</a></b></b> : var</li>
</ul>
<!-- $$$ContentTransferHint-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This component shows that the transfer is currently running, and the source application is active. It blocks all input during that time. Place this component on top of your view.</p>
<p>See documentation for <a href="Ubuntu.Content.ContentHub.md">ContentHub</a> to see an example</p>
<!-- @@@ContentTransferHint -->
<h2>Property Documentation</h2>
<!-- $$$activeTransfer -->
<table class="qmlname"><tr valign="top" id="activeTransfer-prop"><td class="tblQmlPropNode"><p><span class="name">activeTransfer</span> : <span class="type">var</span></p></td></tr></table><p>The <a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a> to monitor the status of.</p>
<p>This should be set to the currently active <a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a>, which will then cause the <a href="index.html">ContentTransferHint</a> to become visible while the transfer is in progress.</p>
<!-- @@@activeTransfer -->
<br/>
