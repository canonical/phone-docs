---
Title: Ubuntu.Components.Page
---

# Ubuntu.Components.Page

<span class="subtitle"></span>
<!-- $$$Page-brief -->
<p>A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout. More...</p>
<!-- @@@Page -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actionContext-prop">actionContext</a></b></b> : ActrionContext</li>
<li class="fn"><b><b><a href="#header-prop">header</a></b></b> : Item</li>
</ul>
<!-- $$$Page-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="Ubuntu.Components.MainView.md">MainView</a> provides a header for Pages it includes if no <a href="#header-prop">header</a> property was set. However, the application header is deprecated and it is recommended to set the <a href="#header-prop">header</a> property instead.</p>
<p>Anchors and height of a Page are automatically determined to align with the header of the <a href="Ubuntu.Components.MainView.md">MainView</a>, but can be overridden. Page contents does not automatically leave space for the Page <a href="#header-prop">header</a>, so this must be taken into account when anchoring the contents of the Page.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="index.html">Page</a></span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">id</span>: <span class="name">pageHeader</span>
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Example page&quot;</span>)
<span class="name">trailingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Search&quot;</span>)
}
]
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="type">anchors</span> {
<span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">top</span>: <span class="name">pageHeader</span>.<span class="name">bottom</span>
<span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
}
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Hello world!&quot;</span>)
}
}
}</pre>
<!-- @@@Page -->
<h2>Property Documentation</h2>
<!-- $$$actionContext -->
<table class="qmlname"><tr valign="top" id="actionContext-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">actionContext</span> : <span class="type">ActrionContext</span></p></td></tr></table><p>The action context of the page.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@actionContext -->
<br/>
<!-- $$$header -->
<table class="qmlname"><tr valign="top" id="header-prop"><td class="tblQmlPropNode"><p><span class="name">header</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The header property for this page. Setting this property will reparent the header to the page and disable the <a href="Ubuntu.Components.MainView.md">MainView</a>'s application header.</p>
<pre class="qml"><span class="type"><a href="index.html">Page</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page with header&quot;</span>
<span class="name">trailingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;settings&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;info&quot;</span> }
]
<span class="name">flickable</span>: <span class="name">myFlickable</span>
}
}</pre>
<p>To avoid Page content being occluded by the header, the contents of the Page should anchor to the bottom of the header. When the Page contents is flickable, the contents does not need to be anchored to the header, but it is recommended to use a <a href="Ubuntu.Components.PageHeader.md">PageHeader</a> or <a href="Ubuntu.Components.Header.md">Header</a> component as the Page header, and set its <a href="Ubuntu.Components.Header.md#flickable-prop">Header::flickable</a> property so that the Flickable gets a top-margin that leaves enough space for the header.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.PageHeader.md">PageHeader</a> and <a href="Ubuntu.Components.Header.md">Header</a>.</p>
<!-- @@@header -->
<br/>
