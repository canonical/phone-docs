---
Title: Ubuntu.Components.ListItems.Expandable
---

# Ubuntu.Components.ListItems.Expandable

<span class="subtitle"></span>
<!-- $$$Expandable-brief -->
<p>An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item. More...</p>
<!-- @@@Expandable -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#children-prop">children</a></b></b> : QtObject</li>
<li class="fn"><b><b><a href="#collapseOnClick-prop">collapseOnClick</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#collapsedHeight-prop">collapsedHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#expanded-prop">expanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#expandedHeight-prop">expandedHeight</a></b></b> : real</li>
</ul>
<!-- $$$Expandable-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>When used together with an <a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a> or <a href="Ubuntu.Components.ListItems.ExpandablesColumn.md">ExpandablesColumn</a> it can coordinate with other items in the list to make sure it is scrolled while expanding to be fully visible in the view. Additionally it is made sure that only one Expandable item is expanded at a time and it is collapsed when the user clicks outside the item.</p>
<p>You can set <a href="#expanded-prop">expanded</a> to true/false to expand/collapse the item.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="../sdk-14.10/QtQml.ListModel.md">ListModel</a></span> {
<span class="name">id</span>: <span class="name">listModel</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.UbuntuListView {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">24</span>)
<span class="name">model</span>: <span class="name">listModel</span>
<span class="name">delegate</span>: <span class="name">ListItem</span>.Expandable {
<span class="name">id</span>: <span class="name">expandingItem</span>
<span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">onClicked</span>: {
<span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}
}</pre>
<!-- @@@Expandable -->
<h2>Property Documentation</h2>
<!-- $$$children -->
<table class="qmlname"><tr valign="top" id="children-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">children</span> : <span class="type"><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></span></p></td></tr></table><p>Reparent any content to inside the Flickable</p>
<!-- @@@children -->
<br/>
<!-- $$$collapseOnClick -->
<table class="qmlname"><tr valign="top" id="collapseOnClick-prop"><td class="tblQmlPropNode"><p><span class="name">collapseOnClick</span> : <span class="type">bool</span></p></td></tr></table><p>If set to true, the item will collapse again when the user clicks somewhere in the always visible (when collapsed) area.</p>
<!-- @@@collapseOnClick -->
<br/>
<!-- $$$collapsedHeight -->
<table class="qmlname"><tr valign="top" id="collapsedHeight-prop"><td class="tblQmlPropNode"><p><span class="name">collapsedHeight</span> : <span class="type">real</span></p></td></tr></table><p>The collapsed (normal) height of the item. Defaults to the standard height for list items.</p>
<!-- @@@collapsedHeight -->
<br/>
<!-- $$$expanded -->
<table class="qmlname"><tr valign="top" id="expanded-prop"><td class="tblQmlPropNode"><p><span class="name">expanded</span> : <span class="type">bool</span></p></td></tr></table><p>Reflects the expanded state. Set this to true/false to expand/collapse the item.</p>
<!-- @@@expanded -->
<br/>
<!-- $$$expandedHeight -->
<table class="qmlname"><tr valign="top" id="expandedHeight-prop"><td class="tblQmlPropNode"><p><span class="name">expandedHeight</span> : <span class="type">real</span></p></td></tr></table><p>The expanded height of the item's content. Defaults to the same as <a href="#collapsedHeight-prop">collapsedHeight</a> which disables the expanding feature. In order for the item to be expandable, set this to the expanded size. Note that the actual expanded size can be smaller if there is not enough space in the containing list. In that case the item becomes flickable automatically.</p>
<!-- @@@expandedHeight -->
<br/>
