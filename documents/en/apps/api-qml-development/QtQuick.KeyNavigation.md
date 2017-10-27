---
Title: QtQuick.KeyNavigation
---

# QtQuick.KeyNavigation

<span class="subtitle"></span>
<!-- $$$KeyNavigation-brief -->
<p>Supports key navigation by arrow keys More...</p>
<!-- @@@KeyNavigation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#backtab-prop">backtab</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#down-prop">down</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#left-prop">left</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#right-prop">right</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#tab-prop">tab</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#up-prop">up</a></b></b> : Item</li>
</ul>
<!-- $$$KeyNavigation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Key-based user interfaces commonly allow the use of arrow keys to navigate between focusable items. The <a href="index.html">KeyNavigation</a> attached property enables this behavior by providing a convenient way to specify the item that should gain focus when an arrow or tab key is pressed.</p>
<p>The following example provides key navigation for a 2x2 grid of items:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">columns</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">topLeft</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">KeyNavigation</span>.right: <span class="name">topRight</span>
<span class="name">KeyNavigation</span>.down: <span class="name">bottomLeft</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">topRight</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">KeyNavigation</span>.left: <span class="name">topLeft</span>
<span class="name">KeyNavigation</span>.down: <span class="name">bottomRight</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">bottomLeft</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">KeyNavigation</span>.right: <span class="name">bottomRight</span>
<span class="name">KeyNavigation</span>.up: <span class="name">topLeft</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">bottomRight</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">KeyNavigation</span>.left: <span class="name">bottomLeft</span>
<span class="name">KeyNavigation</span>.up: <span class="name">topRight</span>
}
}</pre>
<p>The top-left item initially receives focus by setting <a href="QtQuick.Item.md#focus-prop">focus</a> to <code>true</code>. When an arrow key is pressed, the focus will move to the appropriate item, as defined by the value that has been set for the <a href="index.html">KeyNavigation</a> <a href="#left-prop">left</a>, <a href="#right-prop">right</a>, <a href="#up-prop">up</a> or <a href="#down-prop">down</a> properties.</p>
<p>Note that if a <a href="index.html">KeyNavigation</a> attached property receives the key press and release events for a requested arrow or tab key, the event is accepted and does not propagate any further.</p>
<p>By default, <a href="index.html">KeyNavigation</a> receives key events after the item to which it is attached. If the item accepts the key event, the <a href="index.html">KeyNavigation</a> attached property will not receive an event for that key. Setting the <a href="#priority-prop">priority</a> property to <code>KeyNavigation.BeforeItem</code> allows the event to be used for key navigation before the item, rather than after.</p>
<p>If the item to which the focus is switching is not enabled or visible, an attempt will be made to skip this item and focus on the next. This is possible if there are a chain of items with the same <a href="index.html">KeyNavigation</a> handler. If multiple items in a row are not enabled or visible, they will also be skipped.</p>
<p><a href="index.html">KeyNavigation</a> will implicitly set the other direction to return focus to this item. So if you set <a href="#left-prop">left</a> to another item, <a href="#right-prop">right</a> will be set on that item's <a href="index.html">KeyNavigation</a> to set focus back to this item. However, if that item's <a href="index.html">KeyNavigation</a> has had right explicitly set then no change will occur. This means that the example above could achieve the same behavior without specifying <a href="index.html">KeyNavigation</a>.right or <a href="index.html">KeyNavigation</a>.down for any of the items.</p>
<p><b>See also </b><a href="QtQuick.Keys.md">Keys attached property</a>.</p>
<!-- @@@KeyNavigation -->
<h2>Property Documentation</h2>
<!-- $$$backtab -->
<table class="qmlname"><tr valign="top" id="backtab-prop"><td class="tblQmlPropNode"><p><span class="name">backtab</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.</p>
<!-- @@@backtab -->
<br/>
<!-- $$$down -->
<table class="qmlname"><tr valign="top" id="down-prop"><td class="tblQmlPropNode"><p><span class="name">down</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.</p>
<!-- @@@down -->
<br/>
<!-- $$$left -->
<table class="qmlname"><tr valign="top" id="left-prop"><td class="tblQmlPropNode"><p><span class="name">left</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.</p>
<!-- @@@left -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines whether the keys are processed before or after the attached item's own key handling.</p>
<ul>
<li><a href="index.html">KeyNavigation</a>.BeforeItem - process the key events before normal item key processing. If the event is used for key navigation, it will be accepted and will not be passed on to the item.</li>
<li><a href="index.html">KeyNavigation</a>.AfterItem (default) - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the <a href="index.html">KeyNavigation</a> attached property handler.</li>
</ul>
<!-- @@@priority -->
<br/>
<!-- $$$right -->
<table class="qmlname"><tr valign="top" id="right-prop"><td class="tblQmlPropNode"><p><span class="name">right</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.</p>
<!-- @@@right -->
<br/>
<!-- $$$tab -->
<table class="qmlname"><tr valign="top" id="tab-prop"><td class="tblQmlPropNode"><p><span class="name">tab</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.</p>
<!-- @@@tab -->
<br/>
<!-- $$$up -->
<table class="qmlname"><tr valign="top" id="up-prop"><td class="tblQmlPropNode"><p><span class="name">up</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.</p>
<!-- @@@up -->
<br/>
