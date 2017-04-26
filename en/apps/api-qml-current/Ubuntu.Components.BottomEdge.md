---
Title: Ubuntu.Components.BottomEdge
---

# Ubuntu.Components.BottomEdge

<span class="subtitle"></span>
<!-- $$$BottomEdge-brief -->
<p>A component to handle bottom edge gesture and content. More...</p>
<!-- @@@BottomEdge -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeRegion-prop">activeRegion</a></b></b> : BottomEdgeRegion</li>
<li class="fn"><b><b><a href="#contentComponent-prop">contentComponent</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#contentItem-prop">contentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#contentUrl-prop">contentUrl</a></b></b> : url</li>
<li class="fn"><b><b><a href="#dragDirection-prop">dragDirection</a></b></b> : DragDirection</li>
<li class="fn"><b><b><a href="#dragProgress-prop">dragProgress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#hint-prop">hint</a></b></b> : BottomEdgeHint</li>
<li class="fn"><b><b><a href="#preloadContent-prop">preloadContent</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#regions-prop">regions</a></b></b> : list&lt;BottomEdgeRegion&gt;</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : Status</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#collapseCompleted-signal">collapseCompleted</a></b></b>()</li>
<li class="fn"><b><b><a href="#collapseStarted-signal">collapseStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#commitCompleted-signal">commitCompleted</a></b></b>()</li>
<li class="fn"><b><b><a href="#commitStarted-signal">commitStarted</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#collapse-method">collapse</a></b></b>()</li>
<li class="fn">void <b><b><a href="#commit-method">commit</a></b></b>()</li>
</ul>
<!-- $$$BottomEdge-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component provides bottom edge content handling. The bottom egde feature is typically composed of a hint and some content. The <a href="#contentUrl-prop">contentUrl</a> is committed (i.e&#x2e; fully shown) when the drag is completed after it has been dragged for a certain amount, that is 30% of the height of the <a href="index.html">BottomEdge</a>. The <a href="#contentUrl-prop">contentUrl</a> can be anything, defined by <a href="#contentUrl-prop">contentUrl</a> or <a href="#contentComponent-prop">contentComponent</a>.</p>
<p>As the name suggests, the component automatically anchors to the bottom of its parent and takes the width of the parent. The drag is detected within the parent area, and the height drives till what extent the bottom edge content should be exposed on <a href="#commit-method">commit</a> call. The content is centered into a panel which is dragged from the bottom of the <a href="index.html">BottomEdge</a>. The content must specify its width and height.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">title</span>: <span class="string">&quot;BottomEdge&quot;</span>
<span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">hint</span>.text: <span class="string">&quot;My bottom edge&quot;</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">page</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">page</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">green</span>
}
}
}
}</pre>
<p><b>Note: </b>The content is specified either through <a href="#contentUrl-prop">contentUrl</a> or <a href="#contentComponent-prop">contentComponent</a>, where <a href="#contentComponent-prop">contentComponent</a> has precedence over <a href="#contentUrl-prop">contentUrl</a>.</p><p>There can be situations when the content depends on the progress of the drag. There are two possibilities to follow this, depending on the use case. The <a href="#dragProgress-prop">dragProgress</a> provides live updates about the fraction of the drag.</p>
<pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">hint</span>.text: <span class="string">&quot;progression&quot;</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
}
}</pre>
<p>The other use case is when the content needs to be completely different in certain regions of the area. These regions can be defined through <a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a> elements listed in the <a href="#regions-prop">regions</a> property.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;BottomEdge&quot;</span>
<span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">hint</span>.text: <span class="string">&quot;My bottom edge&quot;</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">bottomEdge</span>.<span class="name">activeRegion</span> ?
<span class="name">bottomEdge</span>.<span class="name">activeRegion</span>.<span class="name">color</span> : <span class="name">UbuntuColors</span>.<span class="name">green</span>
}
<span class="name">regions</span>: [
<span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
<span class="name">from</span>: <span class="number">0.4</span>
<span class="name">to</span>: <span class="number">0.6</span>
property <span class="type">color</span> <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
},
<span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
<span class="name">from</span>: <span class="number">0.6</span>
<span class="name">to</span>: <span class="number">1.0</span>
property <span class="type">color</span> <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">silk</span>
}
]
}
}
}</pre>
<p><b>Note: </b>Custom regions override the default declared ones. Therefore there must be one region which has its <a href="Ubuntu.Components.BottomEdgeRegion.md#to-prop">to</a> limit set to 1.0 otherwise the content will not be committed at all.</p><p><b>Note: </b>Regions can also be declared as child elements the same way as resources.</p><p>The <a href="index.html">BottomEdge</a> takes ownership over the custom BottomEdgeRegions, therefore we cannot 'reuse' regions declared in other <a href="index.html">BottomEdge</a> components, as those will be destroyed together with the reusing <a href="index.html">BottomEdge</a> component. The following scenario only works if the <i>customRegion</i> is not used in any other regions.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">hint</span>.text: <span class="string">&quot;reusing regions&quot;</span>
<span class="comment">// put your content and setup here</span>
<span class="name">regions</span>: [<span class="name">customRegion</span>]
}
<span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span> {
<span class="name">id</span>: <span class="name">customRegion</span>
<span class="name">from</span>: <span class="number">0.2</span>
}
}</pre>
<h3 >Page As Content</h3>
<p><a href="index.html">BottomEdge</a> accepts any component to be set as content. Also it can detect whether the content has a <a href="Ubuntu.Components.PageHeader.md">PageHeader</a> component declared, and will inject a collapse navigation action automatically. In case the content has no header, the collapse must be provided by the content itself by calling the <a href="#collapse-method">collapse</a> function.</p>
<pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">hint</span>.text: <span class="string">&quot;Sample collapse&quot;</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Collapse&quot;</span>
<span class="name">onClicked</span>: <span class="name">bottomEdge</span>.<span class="name">collapse</span>()
}
}
}</pre>
<p>Alternatively you can put a <a href="Ubuntu.Components.PageHeader.md">PageHeader</a> component in your custom content as follows:</p>
<pre class="qml"><span class="type"><a href="index.html">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">hint</span>.text: <span class="string">&quot;Injected collapse&quot;</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.5</span>, <span class="number">1</span>, <span class="name">bottomEdge</span>.<span class="name">dragProgress</span>, <span class="number">1</span>);
<span class="type"><a href="Ubuntu.Components.PageHeader.md">PageHeader</a></span> {
<span class="name">title</span>: <span class="string">&quot;Fancy content&quot;</span>
}
}
}</pre>
<h3 >Styling</h3>
<p>Similar to the other components the default style is expected to be defined in the theme's <i>BottomEdgeStyle</i>. However the style is not parented to the <a href="index.html">BottomEdge</a> itself, but to the <a href="index.html">BottomEdge</a>'s parent item. When loaded, the style does not fill the parent but its bottom anchor is set to the bottom of the <a href="index.html">BottomEdge</a>. Beside this the hint is also parented to the style instance. Custom styles are expected to implement the BottomEgdeStyle API.</p>
<p><b>See also </b><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a>.</p>
<!-- @@@BottomEdge -->
<h2>Property Documentation</h2>
<!-- $$$activeRegion -->
<table class="qmlname"><tr valign="top" id="activeRegion-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">activeRegion</span> : <span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span></p></td></tr></table><p>Specifies the current active region.</p>
<!-- @@@activeRegion -->
<br/>
<!-- $$$contentComponent -->
<table class="qmlname"><tr valign="top" id="contentComponent-prop"><td class="tblQmlPropNode"><p><span class="name">contentComponent</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the component defining the content of the bottom edge. The property behaves the same way as Loader's <i>sourceComponent</i> property.</p>
<!-- @@@contentComponent -->
<br/>
<!-- $$$contentItem -->
<table class="qmlname"><tr valign="top" id="contentItem-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">contentItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the item created either from <a href="#contentUrl-prop">contentUrl</a> or <a href="#contentComponent-prop">contentComponent</a> properties.</p>
<!-- @@@contentItem -->
<br/>
<!-- $$$contentUrl -->
<table class="qmlname"><tr valign="top" id="contentUrl-prop"><td class="tblQmlPropNode"><p><span class="name">contentUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The property holds the url to the document defining the content of the bottom edge. The property behaves the same way as Loader's <i>source</i> property.</p>
<!-- @@@contentUrl -->
<br/>
<!-- $$$dragDirection -->
<table class="qmlname"><tr valign="top" id="dragDirection-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">dragDirection</span> : <span class="type">DragDirection</span></p></td></tr></table><p>The property reports the current direction of the drag. The direction is flipped when the drag passes the drag threshold.</p>
<table class="generic">
<thead><tr class="qt-style"><th >DragDirection</th><th >Description</th></tr></thead>
<tr valign="top"><td >Undefined</td><td >Default. The drag is not performed or the direction is not detected.</td></tr>
<tr valign="top"><td >Upwards</td><td >The drag is performed from bottom up or it passed the drag threshold from from the last point the drag was going downwards.</td></tr>
<tr valign="top"><td >Downwards</td><td >The drag is performed from up to bottom or it passed the drag threshold from from the last point the drag was going upwards.</td></tr>
</table>
<p>Defaults to <i>Undefined</i></p>
<!-- @@@dragDirection -->
<br/>
<!-- $$$dragProgress -->
<table class="qmlname"><tr valign="top" id="dragProgress-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">dragProgress</span> : <span class="type">real</span></p></td></tr></table><p>The property specifies the proggress of the drag within [0..1] interval.</p>
<!-- @@@dragProgress -->
<br/>
<!-- $$$hint -->
<table class="qmlname"><tr valign="top" id="hint-prop"><td class="tblQmlPropNode"><p><span class="name">hint</span> : <span class="type"><a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a></span></p></td></tr></table><p>The property holds the component to display the hint for the bottom edge element.</p>
<!-- @@@hint -->
<br/>
<!-- $$$preloadContent -->
<table class="qmlname"><tr valign="top" id="preloadContent-prop"><td class="tblQmlPropNode"><p><span class="name">preloadContent</span> : <span class="type">bool</span></p></td></tr></table><p>If set, all the contents set in the component and in regions will be loaded in the background, so it will be available before it is revealed.</p>
<!-- @@@preloadContent -->
<br/>
<!-- $$$regions -->
<table class="qmlname"><tr valign="top" id="regions-prop"><td class="tblQmlPropNode"><p><span class="name">regions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span>&gt;</p></td></tr></table><p>The property holds the custom regions configured for the <a href="index.html">BottomEdge</a>. The default configuration contains one region, which commits the content when reached. The defaults can be restored by setting an empty list to the property or by calling regions.clear(). See <a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a>.</p>
<!-- @@@regions -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">status</span> : <span class="type">Status</span></p></td></tr></table><p>The property reports the actual state of the bottom edge. It can have the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Status</th><th >Description</th></tr></thead>
<tr valign="top"><td >Hidden</td><td >The bottom edge is hidden. This does not contain the hint states.</td></tr>
<tr valign="top"><td >Revealed</td><td >The Bottom edge content is revealed. The state can be reached only if the <a href="#hint-prop">hint</a> is in &quot;Active&quot; state.</td></tr>
<tr valign="top"><td >Committed</td><td >The bottom edge content is fully exposed.</td></tr>
</table>
<p><b>Note: </b>Once <i>Commited</i> status is set, no further draging is possible on the content.</p><!-- @@@status -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$collapseCompleted -->
<table class="qmlname"><tr valign="top" id="collapseCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">collapseCompleted</span>()</p></td></tr></table><p>Signal emitted when the content collapse is completed.</p>
<!-- @@@collapseCompleted -->
<br/>
<!-- $$$collapseStarted -->
<table class="qmlname"><tr valign="top" id="collapseStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">collapseStarted</span>()</p></td></tr></table><p>Signal emitted when the content collapse is started.</p>
<!-- @@@collapseStarted -->
<br/>
<!-- $$$commitCompleted -->
<table class="qmlname"><tr valign="top" id="commitCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">commitCompleted</span>()</p></td></tr></table><p>Signal emitted when the content commit is completed.</p>
<!-- @@@commitCompleted -->
<br/>
<!-- $$$commitStarted -->
<table class="qmlname"><tr valign="top" id="commitStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">commitStarted</span>()</p></td></tr></table><p>Signal emitted when the content commit is started.</p>
<!-- @@@commitStarted -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$collapse -->
<table class="qmlname"><tr valign="top" id="collapse-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">collapse</span>()</p></td></tr></table><p>The function forces the bottom edge content to be hidden. Emits <a href="#collapseStarted-signal">collapseStarted</a> and <a href="#collapseCompleted-signal">collapseCompleted</a> signals to notify the start and the completion of the collapse operation.</p>
<!-- @@@collapse -->
<br/>
<!-- $$$commit -->
<table class="qmlname"><tr valign="top" id="commit-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">commit</span>()</p></td></tr></table><p>The function forces the bottom edge content to be fully exposed. Emits <a href="#commitStarted-signal">commitStarted</a> and <a href="#commitCompleted-signal">commitCompleted</a> signals to notify the start and the completion of the commit operation. It is safe to call commit() multiple times.</p>
<!-- @@@commit -->
<br/>
