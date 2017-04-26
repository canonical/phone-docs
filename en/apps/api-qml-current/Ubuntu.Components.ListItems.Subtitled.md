---
Title: Ubuntu.Components.ListItems.Subtitled
---

# Ubuntu.Components.ListItems.Subtitled

<span class="subtitle"></span>
<!-- $$$Subtitled-brief -->
<p>List item displaying a second string under the main label. More...</p>
<!-- @@@Subtitled -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#subText-prop">subText</a></b></b> : string</li>
</ul>
<!-- $$$Subtitled-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b></p><p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Idle&quot;</span>
<span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Disabled&quot;</span>
<span class="name">enabled</span>: <span class="number">false</span>
<span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Selected&quot;</span>
<span class="name">selected</span>: <span class="number">true</span>
<span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Progression&quot;</span>
<span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
<span class="name">progression</span>: <span class="number">true</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Icon&quot;</span>
<span class="name">subText</span>: <span class="string">&quot;Secondary label&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Multiple lines&quot;</span>
<span class="name">subText</span>: <span class="string">&quot;This is a multi-line subText.\nUp to 5 lines are supported.&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Subtitled {
<span class="name">text</span>: <span class="string">&quot;Multiple lines&quot;</span>
<span class="name">subText</span>: <span class="string">&quot;It also works well with icons and progression.&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">progression</span>: <span class="number">true</span>
}
}</pre>
<!-- @@@Subtitled -->
<h2>Property Documentation</h2>
<!-- $$$subText -->
<table class="qmlname"><tr valign="top" id="subText-prop"><td class="tblQmlPropNode"><p><span class="name">subText</span> : <span class="type">string</span></p></td></tr></table><p>The list of strings that will be shown under the label text</p>
<!-- @@@subText -->
<br/>
