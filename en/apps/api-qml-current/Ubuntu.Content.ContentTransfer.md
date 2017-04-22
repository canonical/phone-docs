---
Title: Ubuntu.Content.ContentTransfer
---

# Ubuntu.Content.ContentTransfer

<span class="subtitle"></span>
<!-- $$$ContentTransfer-brief -->
<p>Represents a transfer of content between two ContentPeers More...</p>
<!-- @@@ContentTransfer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentType-prop">contentType</a></b></b> : ContentType</li>
<li class="fn"><b><b><a href="#destination-prop">destination</a></b></b> : QString</li>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : ContentTransfer.Direction</li>
<li class="fn"><b><b><a href="#downloadId-prop">downloadId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#items-prop">items</a></b></b> : list&lt;ContentItem&gt;</li>
<li class="fn"><b><b><a href="#selectionType-prop">selectionType</a></b></b> : ContentTransfer.SelectionType</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : QString</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : ContentTransfer.State</li>
<li class="fn"><b><b><a href="#store-prop">store</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#finalize-method">finalize</a></b></b>()</li>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
</ul>
<!-- $$$ContentTransfer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>See documentation for <a href="Ubuntu.Content.ContentHub.md">ContentHub</a></p>
<!-- @@@ContentTransfer -->
<h2>Property Documentation</h2>
<!-- $$$contentType -->
<table class="qmlname"><tr valign="top" id="contentType-prop"><td class="tblQmlPropNode"><p><span class="name">contentType</span> : <span class="type"><a href="Ubuntu.Content.ContentType.md">ContentType</a></span></p></td></tr></table><p>Specifies the <a href="Ubuntu.Content.ContentType.md">ContentType</a> requested.</p>
<!-- @@@contentType -->
<br/>
<!-- $$$destination -->
<table class="qmlname"><tr valign="top" id="destination-prop"><td class="tblQmlPropNode"><p><span class="name">destination</span> : <span class="type">QString</span></p></td></tr></table><p>Provides the app id of the destination application for this transfer</p>
<!-- @@@destination -->
<br/>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">Direction</span></p></td></tr></table><p>ContentTransfer::direction indicates if this transferobject is used for import or export transaction</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1"><i><a href="index.html">ContentTransfer</a>.Direction</i> is an enumeration:</th></tr>
<tr class="qt-style"><th >Direction</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Import</td><td >Transfer is a request to import content.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Export</td><td >Transfer is a request to export content.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Share</td><td >Transfer is a request to share content.</td></tr>
</table>
<!-- @@@direction -->
<br/>
<!-- $$$downloadId -->
<table class="qmlname"><tr valign="top" id="downloadId-prop"><td class="tblQmlPropNode"><p><span class="name">downloadId</span> : <span class="type">string</span></p></td></tr></table><p>The Download Manager ID of a SingleDownload, which will then be transfered to the selected peer.</p>
<!-- @@@downloadId -->
<br/>
<!-- $$$items -->
<table class="qmlname"><tr valign="top" id="items-prop"><td class="tblQmlPropNode"><p><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt;</p></td></tr></table><p>List of items included in the <a href="index.html">ContentTransfer</a></p>
<!-- @@@items -->
<br/>
<!-- $$$selectionType -->
<table class="qmlname"><tr valign="top" id="selectionType-prop"><td class="tblQmlPropNode"><p><span class="name">selectionType</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">SelectionType</span></p></td></tr></table><p>ContentTransfer::selectionType indicates if this transfer object allows single or multiple selection of items</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1"><i><a href="index.html">ContentTransfer</a>.SelectionType</i> is an enumeration:</th></tr>
<tr class="qt-style"><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Single</td><td >Transfer should contain a single item.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Multiple</td><td >Transfer can contain multiple items.</td></tr>
</table>
<!-- @@@selectionType -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">QString</span></p></td></tr></table><p>Provides the app id of the source application for this transfer</p>
<!-- @@@source -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">State</span></p></td></tr></table><table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1"><i><a href="index.html">ContentTransfer</a>.State</i> is an enumeration:</th></tr>
<tr class="qt-style"><th >State</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Created</td><td >Transfer created, waiting to be initiated.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Initiated</td><td >Transfer has been initiated.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.InProgress</td><td >Transfer is in progress.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Downloading</td><td >Transfer is downloading item specified by <a href="#downloadId-prop">downloadId</a>.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Downloaded</td><td >Download specified by <a href="#downloadId-prop">downloadId</a> has completed.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Charged</td><td >Transfer is charged with items and ready to be collected.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Collected</td><td >Items in the transfer have been collected.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Aborted</td><td >Transfer has been aborted.</td></tr>
<tr valign="top"><td ><a href="index.html">ContentTransfer</a>.Finalized</td><td >Transfer has been finished and cleaned up.</td></tr>
</table>
<!-- @@@state -->
<br/>
<!-- $$$store -->
<table class="qmlname"><tr valign="top" id="store-prop"><td class="tblQmlPropNode"><p><span class="name">store</span> : <span class="type">string</span></p></td></tr></table><p><a href="Ubuntu.Content.ContentStore.md">ContentStore</a> where the <a href="index.html">ContentTransfer</a> will add items</p>
<!-- @@@store -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$finalize -->
<table class="qmlname"><tr valign="top" id="finalize-method"><td class="tblQmlFuncNode"><p><span class="name">finalize</span>()</p></td></tr></table><p>Sets State to <a href="index.html">ContentTransfer</a>.Finalized and cleans up temporary files</p>
<!-- @@@finalize -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Start the transfer, this sets the State to <a href="index.html">ContentTransfer</a>.Initiated</p>
<!-- @@@start -->
<br/>
