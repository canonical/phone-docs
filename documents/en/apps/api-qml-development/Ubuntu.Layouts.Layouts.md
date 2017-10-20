---
Title: Ubuntu.Layouts.Layouts
---

# Ubuntu.Layouts.Layouts

<span class="subtitle"></span>
<!-- $$$Layouts-brief -->
<p>The Layouts component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items. More...</p>
<!-- @@@Layouts -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Layouts 1.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentLayout-prop">currentLayout</a></b></b> : string</li>
<li class="fn"><b><b><a href="#layouts-prop">layouts</a></b></b> : list&lt;ConditionalLayout&gt;</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#item-attached-prop">item</a></b></b> : string</li>
</ul>
<!-- $$$Layouts-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Layouts is a layout block component incorporating layout definitions and components to lay out. The layouts are defined in the <a href="#layouts-prop">layouts</a> property, which is a list of <a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a> components, each declaring the sizes and positions of the components specified to be laid out.</p>
<pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="comment">//[...]</span>
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="comment">//[...]</span>
}
}
}
]
}</pre>
<p>The components to be laid out must be declared as children of the Layouts component, each set an attached property &quot;Layouts.item&quot; to be a unique string.</p>
<pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="comment">//[...]</span>
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="comment">//[...]</span>
}
}
}
]
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
}
}
}</pre>
<p>The layout of the children of Layouts is considered the default layout, i.e&#x2e; <a href="#currentLayout-prop">currentLayout</a> is an empty string. So in the above example, the buttons arranged in a row is the default layout.</p>
<p>The layouts defined by <a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a> components are created and activated when at least one of the layout's condition is evaluated to true. In which case components marked for layout are re-parented to the components defined to lay out those defined in the <a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a>. In case multiple conditions are evaluated to true, the first one in the list will be activated. The deactivated layout is destroyed, exception being the default layout, which is kept in memory for the entire lifetime of the Layouts component.</p>
<p>Upon activation, the created component fills in the entire layout block.</p>
<pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
}
}
}
}
]
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
}
}
}</pre>
<p>Conditional layouts must be named in order to be activatable. These names (strings) should be unique within a Layouts item and can be used to identify changes in between layouts in scripts, so additional layout specific customization on laid out items can be done. The current layout is presented by the <a href="#currentLayout-prop">currentLayout</a> property.</p>
<p>Extending the previous example by changing the button color to green when the current layout is &quot;column&quot;, the code would look as follows:</p>
<pre class="qml"><span class="type"><a href="index.html">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
}
}
}
}
]
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
<span class="name">color</span>: (<span class="name">layouts</span>.<span class="name">currentLayout</span> <span class="operator">===</span> <span class="string">&quot;column&quot;</span>) ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;gray&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Cancel&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
<span class="name">color</span>: (<span class="name">layouts</span>.<span class="name">currentLayout</span> <span class="operator">===</span> <span class="string">&quot;column&quot;</span>) ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;gray&quot;</span>
}
}
}</pre>
<!-- @@@Layouts -->
<h2>Property Documentation</h2>
<!-- $$$currentLayout -->
<table class="qmlname"><tr valign="top" id="currentLayout-prop"><td class="tblQmlPropNode"><p><span class="name">currentLayout</span> : <span class="type">string</span></p></td></tr></table><p>The property holds the active layout name. The default layout is identified by an empty string. This property can be used for additional customization of the components which are not supported by the layouting.</p>
<!-- @@@currentLayout -->
<br/>
<!-- $$$layouts -->
<table class="qmlname"><tr valign="top" id="layouts-prop"><td class="tblQmlPropNode"><p><span class="name">layouts</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span>&gt;</p></td></tr></table><p>The property holds the list of different <a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a> elements.</p>
<!-- @@@layouts -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$item -->
<table class="qmlname"><tr valign="top" id="item-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Layouts.item</span> : <span class="type">string</span></p></td></tr></table><p>This attached property identifies a component to be laid out. It is the unique identifier of the component within a layout block. The property can be attached to components to be laid out and has no effect when applied on layout containers.</p>
<p><b>See also </b><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a>.</p>
<!-- @@@item -->
<br/>
