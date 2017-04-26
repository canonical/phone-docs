---
Title: Ubuntu.Components.PageHeader
---

# Ubuntu.Components.PageHeader

<span class="subtitle"></span>
<!-- $$$PageHeader-brief -->
<p>The PageHeader shows a title with a leading and a trailing ActionBar that add action buttons to the header. More...</p>
<!-- @@@PageHeader -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Header.md">Header</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#extension-prop">extension</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#leadingActionBar-prop">leadingActionBar</a></b></b> : ActionBar</li>
<li class="fn"><b><b><a href="#navigationActions-prop">navigationActions</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#subtitle-prop">subtitle</a></b></b> : string</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="#trailingActionBar-prop">trailingActionBar</a></b></b> : ActionBar</li>
</ul>
<!-- $$$PageHeader-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The colors for foreground, background and the divider are configured in the style, so they may be set using <a href="Ubuntu.Components.StyleHints.md">StyleHints</a>:</p>
<pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
<span class="name">title</span>: <span class="string">&quot;Colors&quot;</span>
<span class="type"><a href="Ubuntu.Components.StyleHints.md">StyleHints</a></span> {
<span class="name">foregroundColor</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">backgroundColor</span>: <span class="string">&quot;black&quot;</span>
<span class="name">dividerColor</span>: <span class="name">UbuntuColors</span>.<span class="name">slate</span>
}
}</pre>
<p>See <a href="Ubuntu.Components.Header.md">Header</a> properties that are inherited by <a href="index.html">PageHeader</a> to control the visibility of the header.</p>
<!-- @@@PageHeader -->
<h2>Property Documentation</h2>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="name">contents</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The contents item to display in the header. By default the contents is undefined, and setting it will disable showing of the title and subtitle.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
<span class="name">id</span>: <span class="name">header</span>
<span class="name">title</span>: <span class="string">&quot;Welcome&quot;</span>
<span class="name">contents</span>: <span class="name">Rectangle</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">header</span>.<span class="name">title</span>
<span class="name">color</span>: <span class="string">&quot;white&quot;</span>
}
}
}</pre>
<!-- @@@contents -->
<br/>
<!-- $$$extension -->
<table class="qmlname"><tr valign="top" id="extension-prop"><td class="tblQmlPropNode"><p><span class="name">extension</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>Item shown at the bottom of the header. The extension can be any Item, but it must have a height so that the <a href="index.html">PageHeader</a> correctly adjusts its height for the extension to fit. The extension Item should anchor to the left, right and bottom of its parent so that it will be automatically positioned above the header divider. This property replaces the sections property. Sections can now be added to the header as follows:</p>
<pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
<span class="name">title</span>: <span class="string">&quot;Header with sections&quot;</span>
<span class="name">extension</span>: <span class="name">Sections</span> {
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">model</span>: [<span class="string">&quot;one&quot;</span>, <span class="string">&quot;two&quot;</span>, <span class="string">&quot;three&quot;</span>]
}
}</pre>
<p>See <a href="Ubuntu.Components.Toolbar.md">Toolbar</a> and <a href="Ubuntu.Components.Sections.md">Sections</a>.</p>
<!-- @@@extension -->
<br/>
<!-- $$$leadingActionBar -->
<table class="qmlname"><tr valign="top" id="leadingActionBar-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">leadingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.ActionBar.md">ActionBar</a> for the leading navigation actions. Example:</p>
<pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
<span class="name">leadingActionBar</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Back&quot;</span>
}
]
}</pre>
<p>The default value of leadingActionBar actions is <a href="#navigationActions-prop">navigationActions</a>, but that value can be changed to show different actions in front of the title. The leading action bar has only one slot. See <a href="Ubuntu.Components.ActionBar.md">ActionBar</a>.</p>
<!-- @@@leadingActionBar -->
<br/>
<!-- $$$navigationActions -->
<table class="qmlname"><tr valign="top" id="navigationActions-prop"><td class="tblQmlPropNode"><p><span class="name">navigationActions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The actions to be shown in the leading action bar. This property is automatically set by the <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> and other navigation components to configure the back action for the <a href="Ubuntu.Components.Page.md">Page</a>. Application developers should not set this property, because the value may be overridden by Ubuntu components that have navigation. Instead, set <a href="#leadingActionBar-prop">leadingActionBar</a>'s actions property.</p>
<!-- @@@navigationActions -->
<br/>
<!-- $$$subtitle -->
<table class="qmlname"><tr valign="top" id="subtitle-prop"><td class="tblQmlPropNode"><p><span class="name">subtitle</span> : <span class="type">string</span></p></td></tr></table><p>Displayed under the title. Hidden when the <a href="#contents-prop">contents</a> Item is set.</p>
<!-- @@@subtitle -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title to display in the header. Note that the title will be hidden if the <a href="#contents-prop">contents</a> Item is set.</p>
<!-- @@@title -->
<br/>
<!-- $$$trailingActionBar -->
<table class="qmlname"><tr valign="top" id="trailingActionBar-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">trailingActionBar</span> : <span class="type"><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.ActionBar.md">ActionBar</a> with trailing actions. Example:</p>
<pre class="qml"><span class="type"><a href="index.html">PageHeader</a></span> {
<span class="type">trailingActionBar</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;settings&quot;</span>
<span class="name">text</span>: <span class="string">&quot;first&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;info&quot;</span>
<span class="name">text</span>: <span class="string">&quot;second&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
<span class="name">text</span>: <span class="string">&quot;third&quot;</span>
}
]
<span class="name">numberOfSlots</span>: <span class="number">2</span>
}
}</pre>
<p>By default the trailing action bar automatically adapts its number of slots to the available space in the range from 3 to 6. See <a href="Ubuntu.Components.ActionBar.md">ActionBar</a>.</p>
<!-- @@@trailingActionBar -->
<br/>
