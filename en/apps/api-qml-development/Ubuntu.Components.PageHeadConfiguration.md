---
Title: Ubuntu.Components.PageHeadConfiguration
---

# Ubuntu.Components.PageHeadConfiguration

<span class="subtitle"></span>
<!-- $$$PageHeadConfiguration-brief -->
<p>Page.head is used to configure the header for a Page. More...</p>
<!-- @@@PageHeadConfiguration -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#backAction-prop">backAction</a></b></b> : Action</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#contents-prop">contents</a></b></b> : Item</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#foregroundColor-prop">foregroundColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#locked-prop">locked</a></b></b> : bool</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#preset-prop">preset</a></b></b> : string</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#sections-prop">sections</a></b></b> : PageHeadSections</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="Ubuntu.Components.PageHeadConfiguration.md#visible-prop">visible</a></b></b> : bool</li>
</ul>
<!-- $$$PageHeadConfiguration-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>For examples how to use Page.head, see <a href="Ubuntu.Components.Page.md">Page</a>.</p>
<!-- @@@PageHeadConfiguration -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>List of actions to show in the header.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Custom header actions&quot;</span>
<span class="name">head</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;save&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Save&quot;</span>)
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;add&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Add&quot;</span>)
}
]
}</pre>
<!-- @@@actions -->
<br/>
<!-- $$$backAction -->
<table class="qmlname"><tr valign="top" id="backAction-prop"><td class="tblQmlPropNode"><p><span class="name">backAction</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>Overrides the default <a href="Ubuntu.Components.PageStack.md">PageStack</a> back button and the <a href="Ubuntu.Components.Tabs.md">Tabs</a> drawer button in the header.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Back Action Page&quot;</span>
<span class="name">head</span>.backAction: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;close&quot;</span>
<span class="name">onTriggered</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Run custom back action&quot;</span>)
}
}
}</pre>
<!-- @@@backAction -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="name">contents</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>Set this property to show this Item in the header instead of the title. Use a <a href="Ubuntu.Components.TextField.md">TextField</a> here for implementing search in header.</p>
<p>The parent of this Item will be binded while the <a href="Ubuntu.Components.Page.md">Page</a> is active. The header contents will automatically be anchored to the left and vertically centered inside the header.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Invisible title&quot;</span>
<span class="name">head</span>.contents: <span class="name">Rectangle</span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">width</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>) : <span class="name">undefined</span>
}
}</pre>
<p>See <a href="Ubuntu.Components.PageHeadState.md">PageHeadState</a> for an example that shows how search mode can be implemented.</p>
<!-- @@@contents -->
<br/>
<!-- $$$foregroundColor -->
<table class="qmlname"><tr valign="top" id="foregroundColor-prop"><td class="tblQmlPropNode"><p><span class="name">foregroundColor</span> : <span class="type">color</span></p></td></tr></table><p>The color of the text and icons.</p>
<!-- @@@foregroundColor -->
<br/>
<!-- $$$locked -->
<table class="qmlname"><tr valign="top" id="locked-prop"><td class="tblQmlPropNode"><p><span class="name">locked</span> : <span class="type">bool</span></p></td></tr></table><p>When the <a href="Ubuntu.Components.Page.md">Page</a> is active, the locked property controls the behavior of the header. A locked header stays visible or invisible, depending on the value of the <a href="Ubuntu.Components.PageHeadConfiguration.md#visible-prop">visible</a> property. An unlocked header automatically shows and hides if the <a href="Ubuntu.Components.Page.md">Page</a> has a flickable in which the user scrolls up or down. Default value: false</p>
<p>This QML property was introduced in  Qt 1.3.</p>
<!-- @@@locked -->
<br/>
<!-- $$$preset -->
<table class="qmlname"><tr valign="top" id="preset-prop"><td class="tblQmlPropNode"><p><span class="name">preset</span> : <span class="type">string</span></p></td></tr></table><p>Choose a preset for the header visuals and behavior. The default is an empty string &quot;&quot;. By setting this to &quot;select&quot;, title will be hidden and actions will be represented by icons with a label.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">id</span>: <span class="name">mainView</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">title</span>: <span class="string">&quot;Demo&quot;</span>
<span class="name">state</span>: <span class="string">&quot;default&quot;</span>
<span class="name">states</span>: [
<span class="type"><a href="Ubuntu.Components.PageHeadState.md">PageHeadState</a></span> {
<span class="name">name</span>: <span class="string">&quot;default&quot;</span>
<span class="name">head</span>: <span class="name">page</span>.<span class="name">head</span>
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;contact&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Contact&quot;</span>
}
]
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">selectState</span>
<span class="name">name</span>: <span class="string">&quot;select&quot;</span>
property <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> <span class="name">leaveSelect</span>: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Back&quot;</span>
<span class="name">onTriggered</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
}
property list&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt; <span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;select&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Select All&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Delete&quot;</span>
}
]
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">page</span>.<span class="name">head</span>
<span class="name">backAction</span>: <span class="name">selectState</span>.<span class="name">leaveSelect</span>
<span class="name">actions</span>: <span class="name">selectState</span>.<span class="name">actions</span>
<span class="name">preset</span>: <span class="string">&quot;select&quot;</span>
}
}
]
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Use back button to leave selection mode.&quot;</span>
<span class="name">visible</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;select&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;select&quot;</span>
<span class="name">visible</span>: <span class="name">page</span>.<span class="name">state</span> <span class="operator">!=</span> <span class="string">&quot;select&quot;</span>
<span class="name">text</span>: <span class="string">&quot;selection mode&quot;</span>
}
}
}</pre>
<!-- @@@preset -->
<br/>
<!-- $$$sections -->
<table class="qmlname"><tr valign="top" id="sections-prop"><td class="tblQmlPropNode"><p><span class="name">sections</span> : <span class="type"><a href="Ubuntu.Components.PageHeadSections.md">PageHeadSections</a></span></p></td></tr></table><p>Defines the sections in the page header divider.</p>
<!-- @@@sections -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title to show in the header. This is automatically copied from the <a href="Ubuntu.Components.Page.md">Page</a> title.</p>
<p>This QML property was introduced in  Qt 1.3.</p>
<!-- @@@title -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top" id="visible-prop"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>Update the value of the visible property to show or hide the header. This works both when the header is <a href="Ubuntu.Components.PageHeadConfiguration.md#locked-prop">locked</a> and unlocked. An unlocked header can also become visible or hidden when the user scrolls the active <a href="Ubuntu.Components.Page.md">Page</a>'s flickable. The value of the visible property will be updated at the end of the showing/hiding animation of the header.</p>
<p>This QML property was introduced in  Qt 1.3.</p>
<!-- @@@visible -->
<br/>
