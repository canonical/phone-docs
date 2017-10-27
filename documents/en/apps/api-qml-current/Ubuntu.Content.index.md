---
Title: Ubuntu.Content.index
---

# Ubuntu.Content.index

<span class="subtitle"></span>
<!-- $$$index.html-description -->
<h0 id="content-management-exchange">Content Management &amp; Exchange</h0>
<h2 id="introduction">Introduction</h2>
<p>Unity and the overall Ubuntu experience put heavy emphasis on the notion of content, with Unity's dash offering streamlined access to arbitrary content, both local to the device or online. More to this, Unity's dash is the primary way of surfacing content on mobile form factors without the need to access individual applications and their respective content silos. The content-hub deals with application-specific content management and implements an architecture that allows an app to define its own content silo, exchange content with other applications/the system, and a way to provide the user with content picking functionality.</p>
<h2 id="definitions">Definitions</h2>
<p>To ease conversations, we start over with a set of definitions:</p>
<ul>
<li><b>Content item</b>: A content item is an entity that consists of meta-data and data. E.g&#x2e;, an image is a content item, where the actual pixels are the data, and information like size, image format, bit depth, location etc. is considered meta data. See also <a href="Ubuntu.Content.ContentItem.md">ContentItem</a>.</li>
<li><b>Content types</b>: A set of well-known content types. E.g&#x2e;, images or music files. See also <a href="Ubuntu.Content.ContentType.md">ContentType</a></li>
<li><b>Content set</b>: A set of unique content items. Can be considered a content item itself, e.g&#x2e;, in the case of playlists.</li>
<li><b>Content owner</b>: The unique owner of a content item. A content item has to be owned by exactly one app. See also <a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></li>
<li><b>Content store</b>: A container (think of it as a top-level folder in the filesystem) that contains content items of a certain type. Different stores exist for different scopes, where scope refers to either system-wide, user-wide or app-specific storage locations. See also <a href="Ubuntu.Content.ContentStore.md">ContentStore</a></li>
<li><b>Content transfer</b>: Transferring content item/s to and from a source or destination. A transfer is uniquely defined by a source, destination, direction (import or export), and a set of items that should be exchanged. See also <a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></li>
<li><b>Content picking</b>: Operation that allows a user to select content for subsequent import from a content source (e.g&#x2e;, an application). The content source is responsible for providing a UI to the user.</li>
</ul>
<h2 id="architectural-overview">Architectural Overview</h2>
<p>The architecture enforces complete application isolation, both in terms of content separation, sandboxing/confinement and in terms of the application lifecycle. As we cannot assume that two apps that want to exchange content are running at the same time, a system-level component needs to mediate and control the content exchange operation, making sure that neither app instance assumes the existence of the other one. We refer to this component as the content hub.</p>
<h2 id="example-usage-importing-pictures">Example usage - Importing Pictures</h2>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Content 1.1
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
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
<span class="name">root</span>.<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceSingle</span>.<span class="name">request</span>()
}
}
<span class="type">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Import multiple items&quot;</span>
<span class="name">onClicked</span>: {
<span class="name">root</span>.<span class="name">activeTransfer</span> <span class="operator">=</span> <span class="name">picSourceMulti</span>.<span class="name">request</span>()
}
}
}
<span class="type"><a href="Ubuntu.Content.ContentTransferHint.md">ContentTransferHint</a></span> {
<span class="name">id</span>: <span class="name">transferHint</span>
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
<h0 id="general-topics">General Topics</h0>
<ul>
<li><a href="Ubuntu.Content.ContentHub.md">ContentHub</a></li>
<li><a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></li>
<li><a href="Ubuntu.Content.ContentPeerModel.md">ContentPeerModel</a></li>
<li><a href="Ubuntu.Content.ContentPeerPicker.md">ContentPeerPicker</a></li>
<li><a href="Ubuntu.Content.ContentStore.md">ContentStore</a></li>
<li><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></li>
<li><a href="Ubuntu.Content.ContentTransferHint.md">ContentTransferHint</a></li>
<li><a href="Ubuntu.Content.ContentType.md">ContentType</a></li>
</ul>
<h0 id="reporting-bugs">Reporting Bugs</h0>
<p>If you find any problems with the or this documentation, please file a bug in Ubuntu Content API <a href="https://bugs.launchpad.net/content-hub">Launchpad page</a></p>
<h0 id="components">Components</h0>
<p>Available through:</p>
<pre class="cpp">    import Ubuntu<span class="operator">.</span>Content <span class="number">1.1</span></pre>
<p><b>See also </b><a href="Ubuntu.Content.ContentHub.md">ContentHub</a>.</p>
<!-- @@@index.html -->
<p class="naviNextPrevious footerNavi">
</p>
