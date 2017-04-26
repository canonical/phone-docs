---
Title: Ubuntu.Components.ListItems.ThinDivider
---

# Ubuntu.Components.ListItems.ThinDivider

<span class="subtitle"></span>
<!-- $$$ThinDivider-brief -->
<p>Narrow line used as a divider between ListItems. More...</p>
<!-- @@@ThinDivider -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$ThinDivider-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component's divider property instead.</b></p><p>ListItems will usually include this line at the bottom of the item to give a visually pleasing list of items. But a divider line can also be inserted manually using this component.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="number">250</span>
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ThinDivider {} <span class="comment">//can be used as header for list</span>
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;List Item without thin divider line&quot;</span>
<span class="name">showDivider</span>: <span class="number">false</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ThinDivider {} <span class="comment">// manually inserted divider line</span>
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;ListItem with thin divider line&quot;</span>
}
}</pre>
<!-- @@@ThinDivider -->
