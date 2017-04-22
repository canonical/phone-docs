---
Title: Ubuntu.Components.ListItems.Caption
---

# Ubuntu.Components.ListItems.Caption

<span class="subtitle"></span>
<!-- $$$Caption-brief -->
<p>List item that shows a piece of text. More...</p>
<!-- @@@Caption -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<!-- $$$Caption-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> and Captiopns components instead.</b></p><p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;Default list item.&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Caption {
<span class="name">text</span>: <span class="string">&quot;This is a caption text, which can span multiple lines.&quot;</span>
}
}</pre>
<!-- @@@Caption -->
<h2>Property Documentation</h2>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The text that is shown in the list item as a label.</p>
<!-- @@@text -->
<br/>
