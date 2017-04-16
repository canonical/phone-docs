---
Title: Ubuntu.Components.Popups.ActionSelectionPopover
---

# Ubuntu.Components.Popups.ActionSelectionPopover

<span class="subtitle"></span>
<!-- $$$ActionSelectionPopover-brief -->
<p>A special popover presenting actions to the user. The popover is closed automatically when the action is chosen. More...</p>
<!-- @@@ActionSelectionPopover -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.Popover.md">Popover</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : var</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Item</li>
</ul>
<!-- $$$ActionSelectionPopover-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The actions can be given either using <a href="Ubuntu.Components.ActionList.md">ActionList</a> or as an array of action objects. The visualization of the actions is realized either using the default visualization, which is realised using list items having centered text, or using the component given as delegate. The actions are triggered with the specified target as parameter.</p>
<p>The popover recognizes the following properties from the delegate:</p>
<ul>
<li>data properties like <b>modelData</b>, <b>refModelData</b> or <b>action</b>. When either of these is detected the popover will set their value to the action object to be visualized.</li>
<li>trigger signals like <b>clicked</b>, <b>accepted</b> or <b>triggered</b>. When these are detected, the popover will automatically connect those to the action's trigger.</li>
</ul>
<p>An example presenting list of actions using <a href="Ubuntu.Components.ActionList.md">ActionList</a>:</p>
<pre class="qml"><span class="type"><a href="index.html">ActionSelectionPopover</a></span> {
<span class="name">delegate</span>: <span class="name">ListItems</span>.Standard {
<span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span>
}
<span class="name">actions</span>: <span class="name">ActionList</span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;Action one&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;Action two&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
}
}
}</pre>
<p>An array of actions can be used when the actions to be presented are reused from a set of predefined actions:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;Action one&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action2</span>
<span class="name">text</span>: <span class="string">&quot;Action two&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action3</span>
<span class="name">text</span>: <span class="string">&quot;Action three&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="name">text</span>)
}
<span class="type">ActionListPopover</span> {
<span class="name">actions</span>: [<span class="name">action1</span>, <span class="name">action3</span>]
<span class="name">delegate</span>: <span class="name">ListItems</span>.Standard {
<span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span>
}
}
}</pre>
<!-- @@@ActionSelectionPopover -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The property holds the list of actions to be presented. Each action triggered will use the actionHost as caller.</p>
<!-- @@@actions -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the delegate to visualize the action. The delegate should define one of the data holder properties recognized by the popover in order to access action data.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the object on which the action will be performed.</p>
<!-- @@@target -->
<br/>
