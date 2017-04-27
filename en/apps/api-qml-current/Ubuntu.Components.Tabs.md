---
Title: Ubuntu.Components.Tabs
---

# Ubuntu.Components.Tabs

<span class="subtitle"></span>
<!-- $$$Tabs-brief -->
<p>The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages. More...</p>
<!-- @@@Tabs -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentPage-prop">currentPage</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#selectedTab-prop">selectedTab</a></b></b> : Tab</li>
<li class="fn"><b><b><a href="#selectedTabIndex-prop">selectedTabIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#tabChildren-prop">tabChildren</a></b></b> : list&lt;Item&gt;</li>
</ul>
<!-- $$$Tabs-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Tabs must be placed inside a <a href="Ubuntu.Components.MainView.md">MainView</a> so that it will automatically have a header that shows the tabs that can be selected, and the toolbar which contains the tools of the <a href="Ubuntu.Components.Page.md">Page</a> in the currently selected <a href="Ubuntu.Components.Tab.md">Tab</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="#">Tabs</a></span> {
<span class="name">id</span>: <span class="name">tabs</span>
<span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Simple page&quot;</span>)
<span class="name">page</span>: <span class="name">Page</span> {
<span class="type">Label</span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;A centered label&quot;</span>
}
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;action&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;action triggered&quot;</span>)
}
}
}
}
<span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
<span class="name">id</span>: <span class="name">externalTab</span>
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;External&quot;</span>)
<span class="name">page</span>: <span class="name">Loader</span> {
<span class="name">parent</span>: <span class="name">externalTab</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">source</span>: (<span class="name">tabs</span>.<span class="name">selectedTab</span> <span class="operator">===</span> <span class="name">externalTab</span>) ? <span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyCustomPage.qml&quot;</span>) : <span class="string">&quot;&quot;</span>
}
}
<span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;List view&quot;</span>)
<span class="name">page</span>: <span class="name">Page</span> {
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">clip</span>: <span class="number">true</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">20</span>
<span class="name">delegate</span>: <span class="name">ListItem</span>.Standard {
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Item &quot;</span><span class="operator">+</span><span class="name">modelData</span>
}
}
}
}
}
}</pre>
<p>As the example above shows, an external <a href="Ubuntu.Components.Page.md">Page</a> inside a <a href="Ubuntu.Components.Tab.md">Tab</a> can be loaded using a Loader. Note that setting the top anchor or the height of the Loader would override the <a href="Ubuntu.Components.Page.md">Page</a> height. We avoid this because the <a href="Ubuntu.Components.Page.md">Page</a> automatically adapts its height to accommodate for the header.</p>
<p>It is possible to use a Repeater to generate tabs, but when doing so, ensure that the Repeater is declared inside the Tabs at the end, because otherwise the shuffling of the order of children by the Repeater can cause incorrect ordering of the tabs.</p>
<p>The <a href="../design/patterns/navigation.md">Navigation Patterns</a> specify that a tabs header should never be combined with the back button of a <a href="Ubuntu.Components.PageStack.md">PageStack</a>. The only way to combine Tabs and <a href="Ubuntu.Components.PageStack.md">PageStack</a> that avoids this is by pushing the Tabs as the first page on the <a href="Ubuntu.Components.PageStack.md">PageStack</a>, and pushing other pages on top of that, as is shown in the following example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">id</span>: <span class="name">mainView</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">38</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.PageStack.md">PageStack</a></span> {
<span class="name">id</span>: <span class="name">pageStack</span>
<span class="name">Component</span>.onCompleted: <span class="name">push</span>(<span class="name">tabs</span>)
<span class="type"><a href="#">Tabs</a></span> {
<span class="name">id</span>: <span class="name">tabs</span>
<span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
<span class="name">title</span>: <span class="string">&quot;Tab 1&quot;</span>
<span class="name">page</span>: <span class="name">Page</span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">page3</span>)
<span class="name">text</span>: <span class="string">&quot;Press&quot;</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span> {
<span class="name">title</span>: <span class="string">&quot;Tab 2&quot;</span>
<span class="name">page</span>: <span class="name">Page</span> {
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Use header to navigate between tabs&quot;</span>
}
}
}
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page3</span>
<span class="name">visible</span>: <span class="number">false</span>
<span class="name">title</span>: <span class="string">&quot;Page on stack&quot;</span>
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Press back to return to the tabs&quot;</span>
}
}
}
}</pre>
<!-- @@@Tabs -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>Contains the number of tabs in the Tabs component.</p>
<!-- @@@count -->
<br/>
<!-- $$$currentPage -->
<table class="qmlname"><tr valign="top" id="currentPage-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">currentPage</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The page of the currently selected tab.</p>
<!-- @@@currentPage -->
<br/>
<!-- $$$selectedTab -->
<table class="qmlname"><tr valign="top" id="selectedTab-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">selectedTab</span> : <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span></p></td></tr></table><p>The currently selected tab.</p>
<!-- @@@selectedTab -->
<br/>
<!-- $$$selectedTabIndex -->
<table class="qmlname"><tr valign="top" id="selectedTabIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedTabIndex</span> : <span class="type">int</span></p></td></tr></table><p>The index of the currently selected tab. The first tab is 0, and -1 means that no tab is selected. The initial value is 0 if Tabs has contents, or -1 otherwise.</p>
<!-- @@@selectedTabIndex -->
<br/>
<!-- $$$tabChildren -->
<table class="qmlname"><tr valign="top" id="tabChildren-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">tabChildren</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>Children are placed in a separate item that has functionality to extract the Tab items.</p>
<!-- @@@tabChildren -->
<br/>
