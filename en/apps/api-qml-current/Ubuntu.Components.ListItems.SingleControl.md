---
Title: Ubuntu.Components.ListItems.SingleControl
---

# Ubuntu.Components.ListItems.SingleControl

<span class="subtitle"></span>
<!-- $$$SingleControl-brief -->
<p>A list item containing a single control More...</p>
<!-- @@@SingleControl -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#control-prop">control</a></b></b> : Item</li>
</ul>
<!-- $$$SingleControl-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b></p><p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleControl {
<span class="name">control</span>: <span class="name">Button</span> {
<span class="type">anchors</span> {
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">fill</span>: <span class="name">parent</span>
}
<span class="name">text</span>: <span class="string">&quot;Large button&quot;</span>
}
}
}</pre>
<!-- @@@SingleControl -->
<h2>Property Documentation</h2>
<!-- $$$control -->
<table class="qmlname"><tr valign="top" id="control-prop"><td class="tblQmlPropNode"><p><span class="name">control</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The control of this <a href="index.html">SingleControl</a> list item. The control will automatically be re-parented to, and centered in, this list item.</p>
<!-- @@@control -->
<br/>
