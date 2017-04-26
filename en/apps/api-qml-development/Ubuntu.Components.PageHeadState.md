---
Title: Ubuntu.Components.PageHeadState
---

# Ubuntu.Components.PageHeadState

<span class="subtitle"></span>
<!-- $$$PageHeadState-brief -->
<p>PageHeadState is a helper component to make it easier to configure the page header when changing states. More...</p>
<!-- @@@PageHeadState -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.State.md">State</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//Ubuntu.Components.PageHeadState.md#actions-prop">actions</a></b></b> : Action</li>
<li class="fn"><b><b><a href="..//Ubuntu.Components.PageHeadState.md#backAction-prop">backAction</a></b></b> : Action</li>
<li class="fn"><b><b><a href="..//Ubuntu.Components.PageHeadState.md#contents-prop">contents</a></b></b> : Item</li>
<li class="fn"><b><b><a href="..//Ubuntu.Components.PageHeadState.md#head-prop">head</a></b></b> : PageHeadConfiguration</li>
</ul>
<!-- $$$PageHeadState-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This example shows how to add an action to the header that enables the user to enter search/input mode:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="..//Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">id</span>: <span class="name">mainView</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="..//Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">searchPage</span>
<span class="name">title</span>: <span class="string">&quot;Click the icon&quot;</span>
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;search&quot;</span> ? <span class="string">&quot;search mode&quot;</span> : <span class="string">&quot;normal mode&quot;</span>
}
<span class="name">state</span>: <span class="string">&quot;default&quot;</span>
<span class="name">states</span>: [
<span class="type"><a href="..//Ubuntu.Components.PageHeadState.md">PageHeadState</a></span> {
<span class="name">name</span>: <span class="string">&quot;default&quot;</span>
<span class="name">head</span>: <span class="name">searchPage</span>.<span class="name">head</span>
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
<span class="name">onTriggered</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;search&quot;</span>
}
},
<span class="type"><a href="..//Ubuntu.Components.PageHeadState.md">PageHeadState</a></span> {
<span class="name">id</span>: <span class="name">headerState</span>
<span class="name">name</span>: <span class="string">&quot;search&quot;</span>
<span class="name">head</span>: <span class="name">searchPage</span>.<span class="name">head</span>
<span class="name">actions</span>: [
<span class="type"><a href="..//Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;contact&quot;</span>
}
]
<span class="name">backAction</span>: <span class="name">Action</span> {
<span class="name">id</span>: <span class="name">leaveSearchAction</span>
<span class="name">text</span>: <span class="string">&quot;back&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;back&quot;</span>
<span class="name">onTriggered</span>: <span class="name">searchPage</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
}
<span class="name">contents</span>: <span class="name">TextField</span> {
<span class="name">placeholderText</span>: <span class="string">&quot;search...&quot;</span>
}
}
]
}
}</pre>
<!-- @@@PageHeadState -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="..//Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The actions to be shown in the header with this state.</p>
<!-- @@@actions -->
<br/>
<!-- $$$backAction -->
<table class="qmlname"><tr valign="top" id="backAction-prop"><td class="tblQmlPropNode"><p><span class="name">backAction</span> : <span class="type"><a href="..//Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The back action for this state.</p>
<!-- @@@backAction -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="name">contents</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The contents of the header when this state is active.</p>
<!-- @@@contents -->
<br/>
<!-- $$$head -->
<table class="qmlname"><tr valign="top" id="head-prop"><td class="tblQmlPropNode"><p><span class="name">head</span> : <span class="type"><a href="..//Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a></span></p></td></tr></table><p>The head property of the <a href="..//Ubuntu.Components.Page.md">Page</a> which will be the target of the property changes of this State. This property must always be set before the State can be used.</p>
<!-- @@@head -->
<br/>
