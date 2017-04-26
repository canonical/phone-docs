---
Title: Ubuntu.Components.ListItems.Empty
---

# Ubuntu.Components.ListItems.Empty

<span class="subtitle"></span>
<!-- $$$Empty-brief -->
<p>A list item with no contents. More...</p>
<!-- @@@Empty -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a>, <a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a>, <a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a>, <a href="Ubuntu.Components.ListItems.Standard.md">Standard</a>, and <a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#backgroundIndicator-prop">backgroundIndicator</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#confirmRemoval-prop">confirmRemoval</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#divider-prop">divider</a></b></b> : ThinDivider</li>
<li class="fn"><b><b><a href="#highlightWhenPressed-prop">highlightWhenPressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#removable-prop">removable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selected-prop">selected</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showDivider-prop">showDivider</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#swipingState-prop">swipingState</a></b></b> : string</li>
<li class="fn"><b><b><a href="#waitingConfirmationForRemoval-prop">waitingConfirmationForRemoval</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#itemRemoved-signal">itemRemoved</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelItemRemoval-method">cancelItemRemoval</a></b></b>()</li>
</ul>
<!-- $$$Empty-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b> The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using <a href="#showDivider-prop">showDivider</a>). For specific types of list items, see its subclasses.</p><p>The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal <a href="#itemRemoved-signal">itemRemoved</a> that is fired after all animation is done.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type">Model</span> {
<span class="name">id</span>: <span class="name">contactModel</span>
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Bill Smith&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 3264&quot;</span>
}
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 8426&quot;</span>
}
}
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">contactModel</span>
<span class="name">delegate</span>: <span class="name">ListItem</span>.Empty {
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
<span class="name">removable</span>: <span class="number">true</span>
<span class="name">onItemRemoved</span>: <span class="name">contactModel</span>.<span class="name">remove</span>(<span class="name">index</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
}
}
}
}</pre>
<p>See the documentation of the derived classes of Empty for more examples.</p>
<!-- @@@Empty -->
<h2>Property Documentation</h2>
<!-- $$$backgroundIndicator -->
<table class="qmlname"><tr valign="top" id="backgroundIndicator-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundIndicator</span> : <span class="type">list</span>&lt;<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>Defines the item background item to be showed during the item swiping</p>
<!-- @@@backgroundIndicator -->
<br/>
<!-- $$$confirmRemoval -->
<table class="qmlname"><tr valign="top" id="confirmRemoval-prop"><td class="tblQmlPropNode"><p><span class="name">confirmRemoval</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if the item needs confirmation before removing by swiping.</p>
<!-- @@@confirmRemoval -->
<br/>
<!-- $$$divider -->
<table class="qmlname"><tr valign="top" id="divider-prop"><td class="tblQmlPropNode"><p><span class="name">divider</span> : <span class="type"><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></span></p></td></tr></table><p>Exposes our the bottom line divider.</p>
<!-- @@@divider -->
<br/>
<!-- $$$highlightWhenPressed -->
<table class="qmlname"><tr valign="top" id="highlightWhenPressed-prop"><td class="tblQmlPropNode"><p><span class="name">highlightWhenPressed</span> : <span class="type">bool</span></p></td></tr></table><p>Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in <a href="Ubuntu.Components.ListItem.md">ListItem</a>.Standard which can have a split).</p>
<!-- @@@highlightWhenPressed -->
<br/>
<!-- $$$removable -->
<table class="qmlname"><tr valign="top" id="removable-prop"><td class="tblQmlPropNode"><p><span class="name">removable</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if this item can be removed or not.</p>
<!-- @@@removable -->
<br/>
<!-- $$$selected -->
<table class="qmlname"><tr valign="top" id="selected-prop"><td class="tblQmlPropNode"><p><span class="name">selected</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the list item is selected.</p>
<!-- @@@selected -->
<br/>
<!-- $$$showDivider -->
<table class="qmlname"><tr valign="top" id="showDivider-prop"><td class="tblQmlPropNode"><p><span class="name">showDivider</span> : <span class="type">bool</span></p></td></tr></table><p>Set to show or hide the thin bottom divider line (drawn by the <a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a> component). This line is shown by default except in cases where this item is the delegate of a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>.</p>
<!-- @@@showDivider -->
<br/>
<!-- $$$swipingState -->
<table class="qmlname"><tr valign="top" id="swipingState-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">swipingState</span> : <span class="type">string</span></p></td></tr></table><p>The current swiping state (&quot;SwipingRight&quot; or &quot;&quot;)</p>
<!-- @@@swipingState -->
<br/>
<!-- $$$waitingConfirmationForRemoval -->
<table class="qmlname"><tr valign="top" id="waitingConfirmationForRemoval-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">waitingConfirmationForRemoval</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if the item is waiting for the user interaction during the swipe to delete</p>
<!-- @@@waitingConfirmationForRemoval -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$itemRemoved -->
<table class="qmlname"><tr valign="top" id="itemRemoved-signal"><td class="tblQmlFuncNode"><p><span class="name">itemRemoved</span>()</p></td></tr></table><p>This handler is called when the item is removed from the list</p>
<!-- @@@itemRemoved -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancelItemRemoval -->
<table class="qmlname"><tr valign="top" id="cancelItemRemoval-method"><td class="tblQmlFuncNode"><p><span class="name">cancelItemRemoval</span>()</p></td></tr></table><p>Cancel item romoval</p>
<!-- @@@cancelItemRemoval -->
<br/>
