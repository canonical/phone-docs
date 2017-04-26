---
Title: Ubuntu.Components.UbuntuListView
---

# Ubuntu.Components.UbuntuListView

<span class="subtitle"></span>
<!-- $$$UbuntuListView-brief -->
<p>A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it. More...</p>
<!-- @@@UbuntuListView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#pullToRefresh-prop">pullToRefresh</a></b></b> : pullToRefresh</li>
</ul>
<!-- $$$UbuntuListView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="../sdk-14.10/QtQml.ListModel.md">ListModel</a></span> {
<span class="name">id</span>: <span class="name">listModel</span>
}
<span class="type"><a href="index.html">UbuntuListView</a></span> {
<span class="name">id</span>: <span class="name">ubuntuListView</span>
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">24</span>)
<span class="name">model</span>: <span class="name">listModel</span>
<span class="name">delegate</span>: <span class="name">ListItem</span>.Expandable {
<span class="name">id</span>: <span class="name">expandingItem</span>
<span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">onClicked</span>: {
<span class="name">ubuntuListView</span>.<span class="name">expandedIndex</span> <span class="operator">=</span> <span class="name">index</span>;
}
}
}
}</pre>
<!-- @@@UbuntuListView -->
<h2>Property Documentation</h2>
<!-- $$$pullToRefresh -->
<table class="qmlname"><tr valign="top" id="pullToRefresh-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">pullToRefresh</span> : <span class="type"><a href="#pullToRefresh-prop">pullToRefresh</a></span></p></td></tr></table><p>Attached <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a> to control manual model refresh. The component is disabled by default.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">UbuntuListView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="name">model</span>: <span class="name">XmlListModel</span> {
<span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}
<span class="comment">// let refresh control know when the refresh gets completed</span>
<span class="type">pullToRefresh</span> {
<span class="name">enable</span>: <span class="number">true</span>
<span class="name">refreshing</span>: <span class="name">model</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
<span class="name">onRefresh</span>: <span class="name">model</span>.<span class="name">reload</span>()
}
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
<span class="name">title</span>.text: <span class="name">modelData</span>
}
<span class="name">onClicked</span>: {
<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">model</span>.<span class="name">reload</span>();
}
}
}</pre>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@pullToRefresh -->
<br/>
