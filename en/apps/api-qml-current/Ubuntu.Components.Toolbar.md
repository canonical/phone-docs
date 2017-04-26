---
Title: Ubuntu.Components.Toolbar
---

# Ubuntu.Components.Toolbar

<span class="subtitle"></span>
<!-- $$$Toolbar-brief -->
<p>Toolbar that can be used as an extension for the edit mode header. Example: More...</p>
<!-- @@@Toolbar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#leadingActionBar-prop">leadingActionBar</a></b></b> : ActionBar</li>
<li class="fn"><b><b><a href="#trailingActionBar-prop">trailingActionBar</a></b></b> : ActionBar</li>
</ul>
<!-- $$$Toolbar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.PageHeader.md">PageHeader</a></span> {
<span class="name">id</span>: <span class="name">editHeader</span>
property <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span> <span class="name">delegate</span>: <span class="name">Component</span> {
<span class="type"><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">action</span>: <span class="name">modelData</span>
<span class="name">width</span>: <span class="name">label</span>.<span class="name">width</span> <span class="operator">+</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">4</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
<span class="name">opacity</span>: <span class="number">0.1</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">visible</span>: <span class="name">button</span>.<span class="name">pressed</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">label</span>
<span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span>
<span class="name">font</span>.weight: <span class="name">text</span> <span class="operator">===</span> <span class="string">&quot;Confirm&quot;</span> ? <span class="name">Font</span>.<span class="name">Normal</span> : <span class="name">Font</span>.<span class="name">Light</span>
}
}
}
<span class="type"><a href="#leadingActionBar-prop">leadingActionBar</a></span> {
<span class="name">anchors</span>.leftMargin: <span class="number">0</span>
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;close&quot;</span>
}
<span class="name">delegate</span>: <span class="name">editHeader</span>.<span class="name">delegate</span>
}
<span class="type"><a href="#trailingActionBar-prop">trailingActionBar</a></span> {
<span class="name">anchors</span>.rightMargin: <span class="number">0</span>
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;Confirm&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;tick&quot;</span>
}
<span class="name">delegate</span>: <span class="name">editHeader</span>.<span class="name">delegate</span>
}
<span class="name">extension</span>: <span class="name">Toolbar</span> {
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">trailingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;bookmark-new&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;add&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;edit-select-all&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;edit-copy&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;select&quot;</span> }
]
<span class="name">leadingActionBar</span>.actions: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">text</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;Delete action triggered&quot;</span>)
}
}
}</pre>
<p>See <a href="Ubuntu.Components.PageHeader.md">PageHeader</a>.</p>
<!-- @@@Toolbar -->
<h2>Property Documentation</h2>
<!-- $$$leadingActionBar -->
<table class="qmlname"><tr valign="top" id="leadingActionBar-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">leadingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td></tr></table><p>The leading <a href="Ubuntu.Components.ActionBar.md">ActionBar</a> that should hold at most one action. Recommneded for the delete action. Example:</p>
<pre class="qml"><span class="type"><a href="index.html">Toolbar</a></span> {
<span class="name">leadingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Delete&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;delete!&quot;</span>)
}
]
}</pre>
<p>See <a href="Ubuntu.Components.ActionBar.md">ActionBar</a>.</p>
<!-- @@@leadingActionBar -->
<br/>
<!-- $$$trailingActionBar -->
<table class="qmlname"><tr valign="top" id="trailingActionBar-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">trailingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.ActionBar.md">ActionBar</a> with trailing actions. Example:</p>
<pre class="qml"><span class="type"><a href="index.html">Toolbar</a></span> {
<span class="name">trailingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;bookmark-new&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;add&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;edit-select-all&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;edit-copy&quot;</span> }
]
}</pre>
<p>The trailing <a href="Ubuntu.Components.ActionBar.md">ActionBar</a> may contain up to 8 actions. Scrolling and support for more than 8 actions will be added in the near future. See <a href="Ubuntu.Components.ActionBar.md">ActionBar</a>.</p>
<!-- @@@trailingActionBar -->
<br/>
