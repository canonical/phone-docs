---
Title: Ubuntu.Components.PageColumnsLayout
---

# Ubuntu.Components.PageColumnsLayout

<span class="subtitle"></span>
<!-- $$$PageColumnsLayout-brief -->
<p>Component configuring a layout in an AdaptivePageLayout component. More...</p>
<!-- @@@PageColumnsLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;PageColumn&gt;</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
</ul>
<!-- $$$PageColumnsLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component specifies the column configuration of a specific layout. The layout will have as many columns as many <a href="Ubuntu.Components.PageColumn.md">PageColumn</a> elements will be declared. The layout will be activated when the <a href="#when-prop">when</a> property evaluates to <code>true</code>. There can be many layouts evaluated to true, only the first one evaluated to true in the <a href="Ubuntu.Components.AdaptivePageLayout.md#layouts-prop">AdaptivePageLayout::layouts</a> list will be activated.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">primaryPage</span>: <span class="name">page1</span>
<span class="name">layouts</span>: [
<span class="type"><a href="index.html">PageColumnsLayout</a></span> {
<span class="name">when</span>: <span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="comment">// column #0</span>
<span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
<span class="name">minimumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">maximumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="name">preferredWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
}
<span class="comment">// column #1</span>
<span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
<span class="name">fillWidth</span>: <span class="number">true</span>
}
},
<span class="type"><a href="index.html">PageColumnsLayout</a></span> {
<span class="name">when</span>: <span class="number">true</span>
<span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span> {
<span class="name">fillWidth</span>: <span class="number">true</span>
<span class="name">minimumWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
}
]
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page1</span>
<span class="name">title</span>: <span class="string">&quot;Main page&quot;</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Add Page2 above &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
<span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToCurrentColumn</span>(<span class="name">page1</span>, <span class="name">page2</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Add Page3 next to &quot;</span> <span class="operator">+</span> <span class="name">page1</span>.<span class="name">title</span>
<span class="name">onClicked</span>: <span class="name">page1</span>.<span class="name">pageStack</span>.<span class="name">addPageToNextColumn</span>(<span class="name">page1</span>, <span class="name">page3</span>)
}
}
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page2</span>
<span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page3</span>
<span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
}
}
}</pre>
<p>In the example above the second PageColumnLayout's condition is always set to true, which means that that the layout will be always active unless the first layout's condition evaluates to true. The layout overrides the single column minimumWidth default value. Note that <a href="Ubuntu.Components.PageColumn.md#fillWidth-prop">PageColumn::fillWidth</a> must be also set.</p>
<p><b>Note: </b>When none of the conditions is met, a single column layout will be used.</p><p><b>See also </b><a href="Ubuntu.Components.PageColumn.md">PageColumn</a>.</p>
<!-- @@@PageColumnsLayout -->
<h2>Property Documentation</h2>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span>&gt;</p></td></tr></table><p>Default property holding the <a href="Ubuntu.Components.PageColumn.md">PageColumn</a> elements configuring each column.</p>
<!-- @@@data -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>Condition activating the layout. Defaults to false.</p>
<!-- @@@when -->
<br/>
