---
Title: Ubuntu.Components.BottomEdgeRegion
---

# Ubuntu.Components.BottomEdgeRegion

<span class="subtitle"></span>
<!-- $$$BottomEdgeRegion-brief -->
<p>Defines an active region within the BottomEdge component. More...</p>
<!-- @@@BottomEdgeRegion -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentComponent-prop">contentComponent</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#contentUrl-prop">contentUrl</a></b></b> : url</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : real</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : real</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#dragEnded-signal">dragEnded</a></b></b>()</li>
<li class="fn">void <b><b><a href="#entered-signal">entered</a></b></b>()</li>
<li class="fn">void <b><b><a href="#exited-signal">exited</a></b></b>()</li>
</ul>
<!-- $$$BottomEdgeRegion-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Bottom edge regions are portions within the bottom edge area which can define different content or action whenever the drag enters in the area. The area is defined by <a href="#from-prop">from</a> and <a href="#to-prop">to</a> properties vertically, whereas horizontally is stretched across bottom edge width. Custom content can be defined through <a href="#contentUrl-prop">contentUrl</a> or <a href="#contentComponent-prop">contentComponent</a> properties, which will override the <a href="Ubuntu.Components.BottomEdge.md#contentUrl-prop">BottomEdge::contentUrl</a> and <a href="Ubuntu.Components.BottomEdge.md#contentComponent-prop">BottomEdge::contentComponent</a> properties for the time the gesture is in the section area.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;BottomEdge regions&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a></span> {
<span class="name">id</span>: <span class="name">bottomEdge</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">hint</span>: <span class="name">BottomEdgeHint</span> {
<span class="name">text</span>: <span class="string">&quot;My bottom edge&quot;</span>
}
<span class="comment">// a fake content till we reach the committable area</span>
<span class="name">contentComponent</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">green</span>
}
<span class="comment">// override bottom edge sections to switch to real content</span>
<span class="type"><a href="index.html">BottomEdgeRegion</a></span> {
<span class="name">from</span>: <span class="number">0.33</span>
<span class="name">contentComponent</span>: <span class="name">Page</span> {
<span class="name">width</span>: <span class="name">bottomEdge</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">bottomEdge</span>.<span class="name">height</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;BottomEdge Content&quot;</span>
}
}
}
}
}
}</pre>
<p>Entering into the section area is signalled by the <a href="#entered-signal">entered</a> signal and when drag leaves the area the <a href="#exited-signal">exited</a> signal is emitted. If the drag ends within the section area, the <a href="#dragEnded-signal">dragEnded</a> signal is emitted. In case the section's <a href="#to-prop">to</a> property is less than 1.0, the bottom edge content will only be exposed to that value, and the <a href="Ubuntu.Components.BottomEdge.md#status-prop">BottomEdge::status</a> will get the <i>Committed</i> value. No further drag is possible after reaching <i>Commited</i> state.</p>
<p><b>Note: </b>Whereas there is no restriction on making overlapping sections, beware that overlapping sections changing the content through the <a href="#contentUrl-prop">contentUrl</a> or <a href="#contentComponent-prop">contentComponent</a> properties will cause unpredictable results.</p><!-- @@@BottomEdgeRegion -->
<h2>Property Documentation</h2>
<!-- $$$contentComponent -->
<table class="qmlname"><tr valign="top" id="contentComponent-prop"><td class="tblQmlPropNode"><p><span class="name">contentComponent</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Specifies the component defining the section specific content. This propery will temporarily override the <a href="Ubuntu.Components.BottomEdge.md#contentComponent-prop">BottomEdge::contentComponent</a> property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.</p>
<!-- @@@contentComponent -->
<br/>
<!-- $$$contentUrl -->
<table class="qmlname"><tr valign="top" id="contentUrl-prop"><td class="tblQmlPropNode"><p><span class="name">contentUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>Specifies the url to the document defining the section specific content. This propery will temporarily override the <a href="Ubuntu.Components.BottomEdge.md#contentUrl-prop">BottomEdge::contentUrl</a> property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.</p>
<!-- @@@contentUrl -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>Enables the section. Disabled sections do not trigger nor change the <a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a> content. Defaults to false.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the starting ratio of the bottom erge area. The value must be bigger or equal to 0 but strictly smaller than <a href="#to-prop">to</a>. Defaults to 0.0&#x2e;</p>
<!-- @@@from -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the ending ratio of the bottom edge area. The value must be bigger than <a href="#from-prop">from</a> and smaller or equal to 1.0&#x2e;</p>
<p><b>Note: </b>If the end point is less than 1.0, ending the drag within the section will result in exposing the bottom edge content only till the ration specified by this property.</p><!-- @@@to -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$dragEnded -->
<table class="qmlname"><tr valign="top" id="dragEnded-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">dragEnded</span>()</p></td></tr></table><p>Signal triggered when the drag ends within the active bottom edge section area.</p>
<!-- @@@dragEnded -->
<br/>
<!-- $$$entered -->
<table class="qmlname"><tr valign="top" id="entered-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">entered</span>()</p></td></tr></table><p>Signal triggered when the drag enters into the area defined by the bottom edge section.</p>
<!-- @@@entered -->
<br/>
<!-- $$$exited -->
<table class="qmlname"><tr valign="top" id="exited-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">exited</span>()</p></td></tr></table><p>Signal triggered when the drag leaves the area defined by the bottom edge section.</p>
<!-- @@@exited -->
<br/>
