---
Title: Ubuntu.Components.ScrollView
---

# Ubuntu.Components.ScrollView

<span class="subtitle"></span>
<!-- $$$ScrollView-brief -->
<p>ScrollView is a scrollable view that features scrollbars and scrolling via keyboard keys. More...</p>
<!-- @@@ScrollView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentItem-prop">contentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#flickableItem-prop">flickableItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#horizontalScrollbar-prop">horizontalScrollbar</a></b></b> : Scrollbar</li>
<li class="fn"><b><b><a href="#verticalScrollbar-prop">verticalScrollbar</a></b></b> : Scrollbar</li>
<li class="fn"><b><b><a href="#viewport-prop">viewport</a></b></b> : Item</li>
</ul>
<!-- $$$ScrollView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ScrollView</a> is the recommended component to use in the implementation of scrollable content. It features scrollbars and handles keyboard input. Old applications that implemented scrollable views directly using the <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a> component should migrate to <a href="index.html">ScrollView</a>, to ensure the UX is ready for convergent devices and is consistent with the rest of the platform.</p>
<p><a href="index.html">ScrollView</a> wraps <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a>(s) in a view, and provides additional features such as:</p>
<ul>
<li>- Keyboard navigation and focus handling, for a complete convergent experience.</li>
<li>- Automatic position handling of vertical and horizontal scrollbars, preventing them from overlapping one another when both on screen.</li>
</ul>
<p>Adding scrollbars and keyboard input handling to a QML item is as simple as wrapping that item in a <a href="index.html">ScrollView</a>, as shown in the following example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ScrollView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">140</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="../sdk-14.10/QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="type"><a href="../sdk-14.10/QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
}
}</pre>
<p>NOTE: the items that are wrapped in the <a href="index.html">ScrollView</a> are reparanted to <a href="#viewport-prop">viewport</a>.</p>
<!-- @@@ScrollView -->
<h2>Property Documentation</h2>
<!-- $$$contentItem -->
<table class="qmlname"><tr valign="top" id="contentItem-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">contentItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The contentItem of the <a href="index.html">ScrollView</a>. This is set by the user. Note that the definition of contentItem is somewhat different to that of a Flickable, where the contentItem is implicitly created.</p>
<!-- @@@contentItem -->
<br/>
<!-- $$$flickableItem -->
<table class="qmlname"><tr valign="top" id="flickableItem-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">flickableItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The flickableItem of the <a href="index.html">ScrollView</a>. If the <a href="#contentItem-prop">contentItem</a> provided to the <a href="index.html">ScrollView</a> is a Flickable, that will be the flickableItem. Otherwise <a href="index.html">ScrollView</a> will create a Flickable which will hold the items provided as children.</p>
<!-- @@@flickableItem -->
<br/>
<!-- $$$horizontalScrollbar -->
<table class="qmlname"><tr valign="top" id="horizontalScrollbar-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalScrollbar</span> : <span class="type"><a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a></span></p></td></tr></table><p>This property holds the horizontal scrollbar used in the <a href="index.html">ScrollView</a>. It provides access to the scrollbar thus making it possible to change its properties or completely replace it with a custom <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a> object.</p>
<p>This property defaults to an instance of <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a>.</p>
<p><b>NOTE</b>: some <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a> properties are already handled by <a href="index.html">ScrollView</a>, and their value should hence not be overridden. These properties are:</p>
<ul>
<li>anchors margins, such as anchors.topMargin etc.</li>
<li>the parent Item</li>
<li><a href="Ubuntu.Components.Scrollbar.md#flickableItem-prop">Scrollbar::flickableItem</a></li>
</ul>
<!-- @@@horizontalScrollbar -->
<br/>
<!-- $$$verticalScrollbar -->
<table class="qmlname"><tr valign="top" id="verticalScrollbar-prop"><td class="tblQmlPropNode"><p><span class="name">verticalScrollbar</span> : <span class="type"><a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a></span></p></td></tr></table><p>This property holds the vertical scrollbar used in the <a href="index.html">ScrollView</a>. It provides access to the scrollbar thus making it possible to change its properties or completely replace it with a custom <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a> object.</p>
<p>This property defaults to an instance of <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a>.</p>
<p><b>NOTE</b>: some <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a> properties are already handled by <a href="index.html">ScrollView</a>, and their value should hence not be overridden. These properties are:</p>
<ul>
<li>anchors margins, such as anchors.topMargin etc.</li>
<li>the parent Item</li>
<li><a href="Ubuntu.Components.Scrollbar.md#flickableItem-prop">Scrollbar::flickableItem</a></li>
</ul>
<!-- @@@verticalScrollbar -->
<br/>
<!-- $$$viewport -->
<table class="qmlname"><tr valign="top" id="viewport-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">viewport</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the viewport Item. The children of the <a href="index.html">ScrollView</a> element are reparented to this item to make sure the scrollbars are correctly positioned and the items are clipped at their boundaries.</p>
<!-- @@@viewport -->
<br/>
