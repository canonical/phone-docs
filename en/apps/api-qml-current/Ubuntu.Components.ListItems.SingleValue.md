---
Title: Ubuntu.Components.ListItems.SingleValue
---

# Ubuntu.Components.ListItems.SingleValue

<span class="subtitle"></span>
<!-- $$$SingleValue-brief -->
<p>A list item displaying a single value More...</p>
<!-- @@@SingleValue -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : string</li>
</ul>
<!-- $$$SingleValue-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b></p><p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">value</span>: <span class="string">&quot;Status&quot;</span>
<span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">value</span>: <span class="string">&quot;Parameter&quot;</span>
<span class="name">progression</span>: <span class="number">true</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked&quot;</span>)
}
}</pre>
<!-- @@@SingleValue -->
<h2>Property Documentation</h2>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">string</span></p></td></tr></table><p>The values that will be shown next to the label text</p>
<!-- @@@value -->
<br/>
