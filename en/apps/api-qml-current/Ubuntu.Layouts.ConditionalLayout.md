---
Title: Ubuntu.Layouts.ConditionalLayout
---

# Ubuntu.Layouts.ConditionalLayout

<span class="subtitle"></span>
<!-- $$$ConditionalLayout-brief -->
<p>ConditionalLayout defines the layout of a given form factor. More...</p>
<!-- @@@ConditionalLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Layouts 1.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#layout-prop">layout</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
</ul>
<!-- $$$ConditionalLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ConditionalLayout</a> is a non-visual element defining the actual layout to be applied when a given condition evaluates to true. The condition can be any valid boolean JavaScript expression.</p>
<p>As Layouts can be nested, it is recommended to choose properties of the Layouts item, often width and height, when defining the condition. Other elements like Screen orientation can also be used to define the layout activation condition.</p>
<p>There must be only a single component defined in the <a href="index.html">ConditionalLayout</a> which will be instantiated upon activation.</p>
<p>Each conditional layout must be named with a string, which identifies the layout when activated.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">layouts</span>: [
<span class="type"><a href="index.html">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">3</span>)
<span class="name">flow</span>: <span class="name">Flow</span>.<span class="name">LeftToRight</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item3&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}
]
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">2</span>)
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Button #1&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Button #2&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Button #3&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item3&quot;</span>
}
}
}</pre>
<p>All Items to be managed by the Layouts engine must identify themselves by setting the Layouts.item attached property to a unique name (string). These unique names are then used by the <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> component, so can apply the new layout to the correct Item.</p>
<p><b>See also </b><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a>.</p>
<!-- @@@ConditionalLayout -->
<h2>Property Documentation</h2>
<!-- $$$layout -->
<table class="qmlname"><tr valign="top" id="layout-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">layout</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Default property holding the definition component of the layout. The component will be instantiated once the condition evaluates to true.</p>
<!-- @@@layout -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property defines the name of the layout. Within the definition of Layouts, these names should be unique for each layout.</p>
<p><b>See also </b><a href="Ubuntu.Layouts.Layouts.md">Layouts</a>.</p>
<!-- @@@name -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>This property defines the condition that when evaluating to true, chooses this <a href="index.html">ConditionalLayout</a> to become the active layout. When two ConditionalLayouts <b>when</b> condition is evaluated to true, the first one declared in the layouts list is chosen.</p>
<!-- @@@when -->
<br/>
