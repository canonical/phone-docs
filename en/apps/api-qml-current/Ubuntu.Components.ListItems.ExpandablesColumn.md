---
Title: Ubuntu.Components.ListItems.ExpandablesColumn
---

# Ubuntu.Components.ListItems.ExpandablesColumn

<span class="subtitle"></span>
<!-- $$$ExpandablesColumn-brief -->
<p>A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it. More...</p>
<!-- @@@ExpandablesColumn -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#children-prop">children</a></b></b> : QtObject</li>
<li class="fn"><b><b><a href="#expandedItem-prop">expandedItem</a></b></b> : Item</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#collapse-method">collapse</a></b></b>()</li>
<li class="fn"><b><b><a href="#expandItem-method">expandItem</a></b></b>(<i>item</i>)</li>
</ul>
<!-- $$$ExpandablesColumn-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ExpandablesColumn {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">24</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">8</span>
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Expandable {
<span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">onClicked</span>: {
<span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}
}</pre>
<!-- @@@ExpandablesColumn -->
<h2>Property Documentation</h2>
<!-- $$$children -->
<table class="qmlname"><tr valign="top" id="children-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">children</span> : <span class="type"><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></span></p></td></tr></table><p>Reparent any content to inside the Column.</p>
<!-- @@@children -->
<br/>
<!-- $$$expandedItem -->
<table class="qmlname"><tr valign="top" id="expandedItem-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">expandedItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>Points to the currently expanded item. Null if no item is expanded.</p>
<!-- @@@expandedItem -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$collapse -->
<table class="qmlname"><tr valign="top" id="collapse-method"><td class="tblQmlFuncNode"><p><span class="name">collapse</span>()</p></td></tr></table><p>Collapse the currently expanded item. If there isn't any item expanded, this function does nothing.</p>
<!-- @@@collapse -->
<br/>
<!-- $$$expandItem -->
<table class="qmlname"><tr valign="top" id="expandItem-method"><td class="tblQmlFuncNode"><p><span class="name">expandItem</span>(<i> item</i>)</p></td></tr></table><p>Expand the given item. The item must be a child of this <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>.</p>
<!-- @@@expandItem -->
<br/>
