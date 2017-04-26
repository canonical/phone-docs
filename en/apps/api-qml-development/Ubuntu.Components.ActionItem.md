---
Title: Ubuntu.Components.ActionItem
---

# Ubuntu.Components.ActionItem

<span class="subtitle"></span>
<!-- $$$ActionItem-brief -->
<p>A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem. More...</p>
<!-- @@@ActionItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a>, <a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a>, and <a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>(var <i>value</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#trigger-method">trigger</a></b></b>(var <i>value</i>)</li>
</ul>
<!-- $$$ActionItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>If <a href="#action-prop">action</a> is set, the values of the other properties will by default be identical to the <a href="Ubuntu.Components.Action.md">Action</a>'s property values. Setting the other properties will override the properties copied from the <a href="Ubuntu.Components.Action.md">Action</a>.</p>
<!-- @@@ActionItem -->
<h2>Property Documentation</h2>
<!-- $$$action -->
<table class="qmlname"><tr valign="top" id="action-prop"><td class="tblQmlPropNode"><p><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.Action.md">Action</a> associated with this <a href="index.html">ActionItem</a>. If action is set, the values of the <a href="Ubuntu.Components.Action.md">Action</a> properties are copied to the values of the <a href="index.html">ActionItem</a> properties, unless those were previously overridden.</p>
<!-- @@@action -->
<br/>
<!-- $$$iconName -->
<table class="qmlname"><tr valign="top" id="iconName-prop"><td class="tblQmlPropNode"><p><span class="name">iconName</span> : <span class="type">string</span></p></td></tr></table><p>The icon associated with the actionItem in the suru icon theme. Defaults to <code>action.iconName</code>.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<p>If both <a href="#iconSource-prop">iconSource</a> and iconName are defined, iconName will be ignored.</p>
<!-- @@@iconName -->
<br/>
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top" id="iconSource-prop"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The image associated with the <a href="index.html">ActionItem</a>. Defaults to <code>action.iconSource</code>.</p>
<p>This is the URL of any image file. If both iconSource and <a href="#iconName-prop">iconName</a> are defined, <a href="#iconName-prop">iconName</a> will be ignored.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The title of the actionItem. Defaults to the <code>action.text</code>.</p>
<!-- @@@text -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top" id="triggered-signal"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Called when the actionItem is triggered.</p>
<!-- @@@triggered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top" id="trigger-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">trigger</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Trigger this action item if it is enabled.</p>
<!-- @@@trigger -->
<br/>
