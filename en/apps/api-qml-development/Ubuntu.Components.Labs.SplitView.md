---
Title: Ubuntu.Components.Labs.SplitView
---

# Ubuntu.Components.Labs.SplitView

<span class="subtitle"></span>
<!-- $$$SplitView-brief -->
<p>A view component with a flexible layout configuration setup. More...</p>
<!-- @@@SplitView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Labs .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeLayout-prop">activeLayout</a></b></b> : SplitViewLayout</li>
<li class="fn"><b><b><a href="#handleDelegate-prop">handleDelegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#layouts-prop">layouts</a></b></b> : list&lt;SplitViewLayout&gt;</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : real</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#column-attached-prop">column</a></b></b> : int</li>
<li class="fn"><b><b><a href="#columnConfig-attached-prop">columnConfig</a></b></b> : ViewColumn</li>
<li class="fn"><b><b><a href="#view-attached-prop">view</a></b></b> : SplitView</li>
</ul>
<!-- $$$SplitView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component arranges the declared child elements horizontally based on an active column configuration layout. Child elements are considered to be views, and each view is identified with a column index, specified by the <a href="index.html">SplitView</a>.column attached property. Views should not have width declared, because the width of each view is specified by the active layout's configuration (<a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a>) and will overwrite the value specified by the view. On the other hand they should have a height specified, or they can be anchored to the top and bottom of the view. <a href="index.html">SplitView</a> being a positioner, remember not to anchor horizontal anchor lines or anchor fill the columns.</p>
<p>In order for a <a href="index.html">SplitView</a> to show some content it must have at least one active layout present. Views which are not configured by the active layout will be hidden. Hidden views may be resized, therefore if the content is size sensitive (i.e&#x2e; the amount shown differs depending on the space available), make sure the content of your view does take this into account.</p>
<pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
MainView {
id: main
width: units<span class="operator">.</span>gu(<span class="number">300</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
SplitView {
anchors<span class="operator">.</span>fill: parent
layouts: <span class="operator">[</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
fillWidth: <span class="keyword">true</span>
}
}<span class="operator">,</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
}
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
fillWidth: <span class="keyword">true</span>
}
}
<span class="operator">]</span>
}
Page {
id: column1
height: parent<span class="operator">.</span>height
}
Page {
id: column2
height: parent<span class="operator">.</span>height
}
}</pre>
<p>The <a href="index.html">SplitView</a> can be used with a Repeater in case the content of the view columns doesn't need to be preserved between layout changes. The example above with a Repeater would look as follows:</p>
<pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
MainView {
id: main
width: units<span class="operator">.</span>gu(<span class="number">300</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
SplitView {
id: view
anchors<span class="operator">.</span>fill: parent
layouts: <span class="operator">[</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
fillWidth: <span class="keyword">true</span>
}
}<span class="operator">,</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
}
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
fillWidth: <span class="keyword">true</span>
}
}
<span class="operator">]</span>
}
Repeater {
model: view<span class="operator">.</span>activeLayout<span class="operator">.</span>columns
Page {
height: parent<span class="operator">.</span>height
}
}
}</pre>
<h3 >Resizing</h3>
<p><a href="index.html">SplitView</a> provides the ability to resize view columns. Each column has an attached handle which provides the ability to resize the columns using a mouse or touch. Columns can be resized if the spacing property is set and the column configurations allow that (see <a href="#spacing-prop">spacing</a> property).</p>
<h3 >Attached properties</h3>
<p><a href="index.html">SplitView</a> provides a set of attached properties to each column view. Views can in this way have access to various values of the <a href="index.html">SplitView</a> and configurations.</p>
<!-- @@@SplitView -->
<h2>Property Documentation</h2>
<!-- $$$activeLayout -->
<table class="qmlname"><tr valign="top" id="activeLayout-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">activeLayout</span> : <span class="type"><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a></span></p></td></tr></table><p>The property holds the active <a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a> instance, or null is no layout is active.</p>
<!-- @@@activeLayout -->
<br/>
<!-- $$$handleDelegate -->
<table class="qmlname"><tr valign="top" id="handleDelegate-prop"><td class="tblQmlPropNode"><p><span class="name">handleDelegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the delegate to be shown for the column resizing handle. The delegate is for pure visual, mouse and touch handling is provided by the <a href="index.html">SplitView</a> component itself. The component provides a context property called <i>handle</i> which embeds the visuals. This can be used to anchor the visuals to the resize handle. The thickness of the handle is driven by the <a href="#spacing-prop">spacing</a> property.</p>
<pre class="cpp">import <span class="type"><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a></span> <span class="number">2.4</span>
import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
import Ubuntu<span class="operator">.</span>Components<span class="operator">.</span>Labs <span class="number">1.0</span>
MainView {
id: main
width: units<span class="operator">.</span>gu(<span class="number">300</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
SplitView {
anchors<span class="operator">.</span>fill: parent
handleDelegate: Rectangle {
anchors {
fill: parent
leftMargin: units<span class="operator">.</span>dp(<span class="number">2</span>)
rightMargin: units<span class="operator">.</span>dp(<span class="number">2</span>)
topMargin: handle<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span> <span class="operator">-</span> units<span class="operator">.</span>gu(<span class="number">3</span>)
bottomMargin: handle<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span> <span class="operator">-</span> units<span class="operator">.</span>gu(<span class="number">3</span>)
}
color: UbuntuColors<span class="operator">.</span>graphite
scale: handle<span class="operator">.</span>containsMouse <span class="operator">|</span><span class="operator">|</span> handle<span class="operator">.</span>pressed <span class="operator">?</span> <span class="number">1.6</span> : <span class="number">1.0</span>
Behavior on scale { UbuntuNumberAnimation {} }
}
layouts: <span class="operator">[</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&lt;</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
fillWidth: <span class="keyword">true</span>
}
}<span class="operator">,</span>
SplitViewLayout {
when: main<span class="operator">.</span>width <span class="operator">&gt;</span><span class="operator">=</span> units<span class="operator">.</span>gu(<span class="number">80</span>)
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">30</span>)
maximumWidth: units<span class="operator">.</span>gu(<span class="number">100</span>)
preferredWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
}
ViewColumn {
minimumWidth: units<span class="operator">.</span>gu(<span class="number">40</span>)
fillWidth: <span class="keyword">true</span>
}
}
<span class="operator">]</span>
}
Page {
id: column1
height: parent<span class="operator">.</span>height
}
Page {
id: column2
height: parent<span class="operator">.</span>height
}
}</pre>
<!-- @@@handleDelegate -->
<br/>
<!-- $$$layouts -->
<table class="qmlname"><tr valign="top" id="layouts-prop"><td class="tblQmlPropNode"><p><span class="name">layouts</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a></span>&gt;</p></td></tr></table><p>The property holds the layout configurations declared for the given <a href="index.html">SplitView</a>.</p>
<p><b>See also </b><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a>.</p>
<!-- @@@layouts -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top" id="spacing-prop"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">real</span></p></td></tr></table><p>Spacing between view columns. A value bigger than 0 enables resizing of columns with a <a href="Ubuntu.Components.ViewColumn.md#minimumWidth-prop">minimumWidth</a> lower than <a href="Ubuntu.Components.ViewColumn.md#maximumWidth-prop">maximumWidth</a>. If spacing is 0 the columns cannot be resized. Defaults to 4 device pixels.</p>
<!-- @@@spacing -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$column -->
<table class="qmlname"><tr valign="top" id="column-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SplitView.column</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the column index the view is configured to.</p>
<!-- @@@column -->
<br/>
<!-- $$$columnConfig -->
<table class="qmlname"><tr valign="top" id="columnConfig-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SplitView.columnConfig</span> : <span class="type"><a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a></span></p></td></tr></table><p>The attached property holds the active layout's column configuration data. The value is null if there is no active configuration value provided for the column.</p>
<!-- @@@columnConfig -->
<br/>
<!-- $$$view -->
<table class="qmlname"><tr valign="top" id="view-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SplitView.view</span> : <span class="type"><a href="index.html">SplitView</a></span></p></td></tr></table><p>Contains the <a href="index.html">SplitView</a> instance of the column.</p>
<!-- @@@view -->
<br/>
