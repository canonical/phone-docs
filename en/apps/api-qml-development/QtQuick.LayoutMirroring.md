---
Title: QtQuick.LayoutMirroring
---

# QtQuick.LayoutMirroring

<span class="subtitle"></span>
<!-- $$$LayoutMirroring-brief -->
<p>Property used to mirror layout behavior More...</p>
<!-- @@@LayoutMirroring -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#childrenInherit-prop">childrenInherit</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
</ul>
<!-- $$$LayoutMirroring-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">LayoutMirroring</a> attached property is used to horizontally mirror <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Item anchors</a>, <a href="QtQuick.qtquick-positioning-layouts.md">positioner</a> types (such as <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> and <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>) and views (such as <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> and horizontal <a href="QtQuick.ListView.md">ListView</a>). Mirroring is a visual change: left anchors become right anchors, and positioner types like <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a> and <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> reverse the horizontal layout of child items.</p>
<p>Mirroring is enabled for an item by setting the <a href="#enabled-prop">enabled</a> property to true. By default, this only affects the item itself; setting the <a href="#childrenInherit-prop">childrenInherit</a> property to true propagates the mirroring behavior to all child items as well. If the <code>LayoutMirroring</code> attached property has not been defined for an item, mirroring is not enabled.</p>
<p>The following example shows mirroring in action. The <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> below is specified as being anchored to the left of its parent. However, since mirroring has been enabled, the anchor is horizontally reversed and it is now anchored to the right. Also, since items in a <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> are positioned from left to right by default, they are now positioned from right to left instead, as demonstrated by the numbering and opacity of the items:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
<span class="name">LayoutMirroring</span>.childrenInherit: <span class="number">true</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">margins</span>: <span class="number">5</span> }
<span class="name">y</span>: <span class="number">5</span>; <span class="name">spacing</span>: <span class="number">5</span>
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">5</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">opacity</span>: (<span class="number">5</span> <span class="operator">-</span> <span class="name">index</span>) <span class="operator">/</span> <span class="number">5</span>
<span class="name">width</span>: <span class="number">40</span>; <span class="name">height</span>: <span class="number">40</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">index</span> <span class="operator">+</span> <span class="number">1</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
}
}
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/78cfad02-1ec3-4309-9aaa-803202d0bf5c-../QtQuick.LayoutMirroring/images/layoutmirroring.png" alt="" /></p><p>Layout mirroring is useful when it is necessary to support both left-to-right and right-to-left layout versions of an application to target different language areas. The <a href="#childrenInherit-prop">childrenInherit</a> property allows layout mirroring to be applied without manually setting layout configurations for every item in an application. Keep in mind, however, that mirroring does not affect any positioning that is defined by the <a href="QtQuick.Item.md">Item</a> <a href="QtQuick.Item.md#x-prop">x</a> coordinate value, so even with mirroring enabled, it will often be necessary to apply some layout fixes to support the desired layout direction. Also, it may be necessary to disable the mirroring of individual child items (by setting <a href="#enabled-prop">LayoutMirroring.enabled</a> to false for such items) if mirroring is not the desired behavior, or if the child item already implements mirroring in some custom way.</p>
<p>See <a href="QtQuick.qtquick-positioning-righttoleft.md">Right-to-left User Interfaces</a> for further details on using <code>LayoutMirroring</code> and other related features to implement right-to-left support for an application.</p>
<!-- @@@LayoutMirroring -->
<h2>Property Documentation</h2>
<!-- $$$childrenInherit -->
<table class="qmlname"><tr valign="top" id="childrenInherit-prop"><td class="tblQmlPropNode"><p><span class="name">childrenInherit</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the <a href="#enabled-prop">LayoutMirroring.enabled</a> value for this item is inherited by its children.</p>
<p>The default value is false.</p>
<!-- @@@childrenInherit -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item's layout is mirrored horizontally. Setting this to true horizontally reverses <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">anchor</a> settings such that left anchors become right, and right anchors become left. For <a href="QtQuick.qtquick-positioning-layouts.md">positioner</a> types (such as <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> and <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>) and view types (such as <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> and <a href="QtQuick.ListView.md">ListView</a>) this also mirrors the horizontal layout direction of the item.</p>
<p>The default value is false.</p>
<!-- @@@enabled -->
<br/>
