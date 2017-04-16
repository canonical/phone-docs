---
Title: Ubuntu.Content.ContentHub
---

# Ubuntu.Content.ContentHub

<span class="subtitle"></span>
<!-- $$$ContentHub-brief -->
<p>The central manager for all content operations More...</p>
<!-- @@@ContentHub -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Content 1.1</td></tr></table><ul>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#exportRequested-signal">exportRequested</a></b></b>(ContentTransfer <i>transfer</i>)</li>
<li class="fn"><b><b><a href="#importRequested-signal">importRequested</a></b></b>(ContentTransfer <i>transfer</i>)</li>
<li class="fn"><b><b><a href="#shareRequested-signal">shareRequested</a></b></b>(ContentTransfer <i>transfer</i>)</li>
</ul>
<!-- $$$ContentHub-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example usage for importing content:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Content 0.1
<span class="type">MainView</span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
property list&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt; <span class="name">importItems</span>
property <span class="type">var</span> <span class="name">activeTransfer</span>
<span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span> {
<span class="name">id</span>: <span class="name">picSourceSingle</span>
<span class="name">contentType</span>: <span class="name">ContentType</span>.<span class="name">Pictures</span>
<span class="name">handler</span>: <span class="name">ContentHandler</span>.<span class="name">Source</span>
<span class="name">selectionType</span>: <span class="name">ContentTransfer</span>.<span class="name">Single</span>
}
<span class="type"><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></span> {
<span class="name">id</span>: <span class="name">picSourceMulti</span>
<span class="name">contentType</span>: <span class="name">ContentType</span>.<span class="name">Pictures</span>
<span class="name">handler</span>: <span class="name">ContentHandler</span>.<span class="name">Source</span>
<span class="name">selectionType</span>: <span class="name">ContentTransfer</span>.<span class="name">Multiple</span>
}
<span class="type">Row</span> {
<span class="type">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Import single item&quot;</span>
<span class="name">onClicked</span>: {
<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceSingle</span>.<span class="name">request</span>()
}
}
<span class="type">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Import multiple items&quot;</span>
<span class="name">onClicked</span>: {
<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceMulti</span>.<span class="name">request</span>()
}
}
}
<span class="type"><a href="Ubuntu.Content.ContentTransferHint.md">ContentTransferHint</a></span> {
<span class="name">id</span>: <span class="name">importHint</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">activeTransfer</span>: <span class="name">root</span>.<span class="name">activeTransfer</span>
}
<span class="type">Connections</span> {
<span class="name">target</span>: <span class="name">root</span>.<span class="name">activeTransfer</span>
<span class="name">onStateChanged</span>: {
<span class="keyword">if</span> (<span class="name">root</span>.<span class="name">activeTransfer</span>.<span class="name">state</span> <span class="operator">===</span> <span class="name">ContentTransfer</span>.<span class="name">Charged</span>)
<span class="name">importItems</span> <span class="operator">=</span> <span class="name">root</span>.<span class="name">activeTransfer</span>.<span class="name">items</span>;
}
}
}</pre>
<p>Example usage for providing a content export:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Content 0.1
<span class="type">Rectangle</span> {
property list&lt;<span class="type"><a href="Ubuntu.Content.ContentItem.md">ContentItem</a></span>&gt; <span class="name">selectedItems</span>
<span class="type">Connections</span> {
<span class="name">target</span>: <span class="name">ContentHub</span>
<span class="name">onExportRequested</span>: {
<span class="comment">// show content picker</span>
<span class="name">transfer</span>.<span class="name">items</span> <span class="operator">=</span> <span class="name">selectedItems</span>;
<span class="name">transfer</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">ContentTransfer</span>.<span class="name">Charged</span>;
}
}
}</pre>
<!-- @@@ContentHub -->
<h2>Signal Documentation</h2>
<!-- $$$exportRequested -->
<table class="qmlname"><tr valign="top" id="exportRequested-signal"><td class="tblQmlFuncNode"><p><span class="name">exportRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span><i> transfer</i>)</p></td></tr></table><p>The signal is triggered when an export is requested.</p>
<!-- @@@exportRequested -->
<br/>
<!-- $$$importRequested -->
<table class="qmlname"><tr valign="top" id="importRequested-signal"><td class="tblQmlFuncNode"><p><span class="name">importRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span><i> transfer</i>)</p></td></tr></table><p>The signal is triggered when an import is requested.</p>
<!-- @@@importRequested -->
<br/>
<!-- $$$shareRequested -->
<table class="qmlname"><tr valign="top" id="shareRequested-signal"><td class="tblQmlFuncNode"><p><span class="name">shareRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span><i> transfer</i>)</p></td></tr></table><p>The signal is triggered when a share is requested.</p>
<!-- @@@shareRequested -->
<br/>
