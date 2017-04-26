---
Title: Ubuntu.Components.ActionContext
---

# Ubuntu.Components.ActionContext

<span class="subtitle"></span>
<!-- $$$ActionContext-brief -->
<p>ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts. More...</p>
<!-- @@@ActionContext -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.PopupContext.md">PopupContext</a>.</p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
</ul>
<!-- $$$ActionContext-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ActionContext</a> drives the state of its <a href="#actions-prop">actions</a>. Shortcuts and mnemonics are only registered if the context is active or if the action is assigned to an <a href="Ubuntu.Components.ActionItem.md">ActionItem</a> all of whose parent contexts are active. In the following example the <a href="index.html">ActionContext</a> drives the underlaying <code>action1</code> and <code>action2</code> shortcuts, and <code>orphanAction</code> will never trigger as it is neither enclosed in an active context nor assigned to an <a href="Ubuntu.Components.ActionItem.md">ActionItem</a>.</p>
<pre class="qml">import QtQuick 2.4
import ubuntu.Componenst 1.3
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="index.html">ActionContext</a></span> {
<span class="name">id</span>: <span class="name">rootContext</span>
<span class="name">active</span>: <span class="number">true</span>
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">shortcut</span>: <span class="string">'Ctrl+A'</span>
<span class="name">text</span>: <span class="name">rootContext</span>.<span class="name">active</span> ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
<span class="name">onTriggered</span>: <span class="name">rootContext</span>.<span class="name">active</span> <span class="operator">=</span> !<span class="name">rootContext</span>.<span class="name">active</span>
}
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">orphanAction</span>
<span class="name">text</span>: <span class="string">&quot;Orphan&quot;</span>
<span class="name">shortcut</span>: <span class="string">'Ctrl+O'</span>
<span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This will not be called&quot;</span>)
}
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="name">rootContext</span>.<span class="name">active</span> ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
<span class="name">onClicked</span>: <span class="name">rootContext</span>.<span class="name">active</span> <span class="operator">=</span> !<span class="name">rootContext</span>.<span class="name">active</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;F&amp;irst Button&quot;</span>
<span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;First Button triggered&quot;</span>)
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">id</span>: <span class="name">action2</span>
<span class="name">text</span>: <span class="string">&quot;S&amp;econd Button&quot;</span>
<span class="name">shortcut</span>: <span class="string">'Ctrl+Alt+2'</span>
<span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Second Button triggered&quot;</span>)
}
}
}
}</pre>
<p>The toolkit assigns an <a href="index.html">ActionContext</a> to each Page component, which is activated/deactivated together with the Page itself, driving the shortcut activations on the components and actions declared in the Page.</p>
<p><b>See also </b><a href="Ubuntu.Components.PopupContext.md">PopupContext</a>.</p>
<!-- @@@ActionContext -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>List of Actions in this <a href="index.html">ActionContext</a>.</p>
<!-- @@@actions -->
<br/>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p>If true the context is active. If false the context is inactive. Defaults to false.</p>
<p>When context has been added to the <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> setting this value controls whether or not the actions in a context are available to external components.</p>
<p>The <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> monitors the active property of each of the local contexts that has been added to it. There can be more than one local context active at a. time. When a local context is set active the manager will notice this and will export the actions from the context.</p>
<p><b>Note: </b>An Action declared to a component falling under an item that is a child of an inactive ActiveContext can be triggered manually using the mouse or connections.</p><!-- @@@active -->
<br/>
