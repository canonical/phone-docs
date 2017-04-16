---
Title: Ubuntu.Components.PullToRefresh
---

# Ubuntu.Components.PullToRefresh

<span class="subtitle"></span>
<!-- $$$PullToRefresh-brief -->
<p>Pull-to-refresh component for Flickables to reload a model upon pull. More...</p>
<!-- @@@PullToRefresh -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#content-prop">content</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#offset-prop">offset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#refreshing-prop">refreshing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#releaseToRefresh-prop">releaseToRefresh</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Flickable</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#refresh-signal">refresh</a></b></b>()</li>
</ul>
<!-- $$$PullToRefresh-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component provides ability to initiate data model refresh by pulling the attached Flickable's content. The refresh can be initiated when the flickable content is at its top boundary. By dragging the content further, reaching the threshold value defined by the style will initiate the manual refresh by emitting the <a href="#refresh-signal">refresh</a> signal. The progress of the refresh must be notified to the component by defining the completion clause to the <a href="#refreshing-prop">refreshing</a> property.</p>
<pre class="qml">import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">listModel</span>
<span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">listModel</span>
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">text</span>: <span class="name">title</span>
}
<span class="type"><a href="index.html">PullToRefresh</a></span> {
<span class="name">refreshing</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
<span class="name">onRefresh</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">reload</span>()
}
}
}
}</pre>
<p><b>Note: </b><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a> has a built-in <a href="index.html">PullToRefresh</a>, therefore it is recommended to use <a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a> instead of <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>.</p><p>The component will also show the progress of the model's update when the refresh gets initiated by the model or from other party. Style implementations can decide whether to visualize that or not.</p>
<p>As default, the component displays a Label visualizing the two states of the component, which is pull to refresh and release to refresh. As mentioned, this is driven by the threshold value specified by the style, and the state is reported by the <a href="#releaseToRefresh-prop">releaseToRefresh</a> property. The <a href="#content-prop">content</a> specifies the visuals to be shown by the component. Custom implementations can hold any component, which will be anchor filled to the component itself.</p>
<pre class="qml">import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">listModel</span>
<span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">listModel</span>
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">text</span>: <span class="name">title</span>
}
<span class="type"><a href="index.html">PullToRefresh</a></span> {
<span class="name">id</span>: <span class="name">pullToRefresh</span>
<span class="name">refreshing</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
<span class="name">onRefresh</span>: <span class="name">view</span>.<span class="name">model</span>.<span class="name">reload</span>()
<span class="name">content</span>: <span class="name">Item</span> {
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">name</span>: <span class="name">pullToRefresh</span>.<span class="name">releaseToRefresh</span> ? <span class="string">&quot;search&quot;</span> : <span class="string">&quot;&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">height</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
}
}
}
}
}</pre>
<p><b>Note: </b>When declared as child of Flickable, set parent to the flickable explicitly so the component does not land in the <code>content</code> of Flickable.</p><pre class="qml">import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">id</span>: <span class="name">main</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">rssFeed</span>
<span class="name">source</span>: <span class="string">&quot;http://feeds.reuters.com/reuters/topNews&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Reuters&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">flickable</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">height</span>
<span class="name">contentWidth</span>: <span class="name">column</span>.<span class="name">childrenRect</span>.<span class="name">width</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="name">rssFeed</span>
<span class="type"><a href="Ubuntu.Components.ListItems.Standard.md">Standard</a></span> {
<span class="name">width</span>: <span class="name">main</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">text</span>: <span class="name">title</span>
}
}
}
<span class="type"><a href="index.html">PullToRefresh</a></span> {
<span class="name">parent</span>: <span class="name">flickable</span>
<span class="name">refreshing</span>: <span class="name">rssFeed</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
<span class="name">onRefresh</span>: <span class="name">rssFeed</span>.<span class="name">reload</span>()
}
}
}
}</pre>
<h3 >Styling</h3>
<p>The component style API is defined by the <a href="Ubuntu.Components.Styles.PullToRefreshStyle.md">PullToRefreshStyle</a> component. Styles may define different ways to initiate refresh upon dragging.</p>
<!-- @@@PullToRefresh -->
<h2>Property Documentation</h2>
<!-- $$$content -->
<table class="qmlname"><tr valign="top" id="content-prop"><td class="tblQmlPropNode"><p><span class="name">content</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the visuals to be displayed when the component is revealed upon manual refresh. The default value is a Label showing &quot;Pull to refresh..&#x2e;&quot; text when the component is pulled down till the activation threshold, and &quot;Release to refresh..&#x2e;&quot; after that.</p>
<!-- @@@content -->
<br/>
<!-- $$$offset -->
<table class="qmlname"><tr valign="top" id="offset-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">offset</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the offset the component is pulled from the <a href="#target-prop">target</a> Flickable's <i>topMargin</i>. The property can be used to provide animations in custom contents.</p>
<!-- @@@offset -->
<br/>
<!-- $$$refreshing -->
<table class="qmlname"><tr valign="top" id="refreshing-prop"><td class="tblQmlPropNode"><p><span class="name">refreshing</span> : <span class="type">bool</span></p></td></tr></table><p>The property notifies the component about the ongoing refresh operation.</p>
<!-- @@@refreshing -->
<br/>
<!-- $$$releaseToRefresh -->
<table class="qmlname"><tr valign="top" id="releaseToRefresh-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">releaseToRefresh</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies when the component is ready to trigger the refresh() signal. The logic is defined by the style and the value is transferred from the style's releaseToRefresh property. The property can be used to define custom visuals for <a href="#content-prop">content</a>.</p>
<!-- @@@releaseToRefresh -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>The Flickable or derivate the component is attached to. This can only be the parent or a sibling of the component. Defaults to the parent.</p>
<!-- @@@target -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$refresh -->
<table class="qmlname"><tr valign="top" id="refresh-signal"><td class="tblQmlFuncNode"><p><span class="name">refresh</span>()</p></td></tr></table><p>Signal emitted when the model refresh is initiated by the component.</p>
<!-- @@@refresh -->
<br/>
