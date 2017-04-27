---
Title: Ubuntu.Components.Tab
---

# Ubuntu.Components.Tab

<span class="subtitle"></span>
<!-- $$$Tab-brief -->
<p>Component to represent a single tab in a Tabs environment. More...</p>
<!-- @@@Tab -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : int</li>
<li class="fn"><b><b><a href="#page-prop">page</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
</ul>
<!-- $$$Tab-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples: See <a href="Ubuntu.Components.Tabs.md">Tabs</a>.</p>
<!-- @@@Tab -->
<h2>Property Documentation</h2>
<!-- $$$index -->
<table class="qmlname"><tr valign="top" id="index-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the index of the tab within the Tabs.</p>
<!-- @@@index -->
<br/>
<!-- $$$page -->
<table class="qmlname"><tr valign="top" id="page-prop"><td class="tblQmlPropNode"><p><span class="name">page</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The contents of the Tab. Use a <a href="Ubuntu.Components.Page.md">Page</a> or a Loader that instantiates a Component or loads an external <a href="Ubuntu.Components.Page.md">Page</a>. When using a Loader, do not set the anchors or dimensions of the Loader so that the <a href="Ubuntu.Components.Page.md">Page</a> can control the height and prevent overlapping the header. Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">pageComponent</span>
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Loaded when tab is selected.&quot;</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.Tabs.md">Tabs</a></span> {
<span class="name">id</span>: <span class="name">tabs</span>
<span class="type"><a href="#">Tab</a></span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Simple page&quot;</span>)
<span class="name">page</span>: <span class="name">Page</span> {
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Always loaded&quot;</span>)
}
}
}
<span class="type"><a href="#">Tab</a></span> {
<span class="name">id</span>: <span class="name">loaderTab</span>
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Page loader&quot;</span>)
<span class="name">page</span>: <span class="name">Loader</span> {
<span class="comment">// no anchors</span>
<span class="name">id</span>: <span class="name">loader</span>
<span class="name">sourceComponent</span>: <span class="name">tabs</span>.<span class="name">selectedTab</span> <span class="operator">==</span> <span class="name">loaderTab</span> ? <span class="name">pageComponent</span> : <span class="number">null</span>
<span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
}
}
}
}</pre>
<!-- @@@page -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title that is shown on the tab button used to select this tab.</p>
<!-- @@@title -->
<br/>
