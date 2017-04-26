---
Title: Ubuntu.Components.AdaptivePageLayout
---

# Ubuntu.Components.AdaptivePageLayout

<span class="subtitle"></span>
<!-- $$$AdaptivePageLayout-brief -->
<p>View with multiple columns of Pages. More...</p>
<!-- @@@AdaptivePageLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#columns-prop">columns</a></b></b> : int</li>
<li class="fn"><b><b><a href="#layouts-prop">layouts</a></b></b> : PageColumnsLayout</li>
<li class="fn"><b><b><a href="#primaryPage-prop">primaryPage</a></b></b> : Page</li>
<li class="fn"><b><b><a href="#primaryPageSource-prop">primaryPageSource</a></b></b> : var</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addPageToCurrentColumn-method">addPageToCurrentColumn</a></b></b>(<i>sourcePage</i>,  <i>page</i>,  <i>properties</i>)</li>
<li class="fn"><b><b><a href="#addPageToNextColumn-method">addPageToNextColumn</a></b></b>(<i>sourcePage</i>,  <i>page</i>,  <i>properties</i>)</li>
<li class="fn"><b><b><a href="#removePages-method">removePages</a></b></b>(<i>page</i>)</li>
</ul>
<!-- $$$AdaptivePageLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component provides a flexible way of viewing a stack of pages in one or more columns. Unlike in <a href="Ubuntu.Components.PageStack.md">PageStack</a>, there can be more than one Page active at a time, depending on the number of the columns in the view.</p>
<p><a href="index.html">AdaptivePageLayout</a> stores pages added in a tree. Pages are added relative to a given page, either as sibling (<a href="#addPageToCurrentColumn-method">addPageToCurrentColumn</a>) or as child (<a href="#addPageToNextColumn-method">addPageToNextColumn</a>). This means that removing a non-leaf page from the Page tree will remove all its children from the page tree.</p>
<p>The columns are populated from left to right. The column a page is added to is detected based on the source page that is given to the functions adding the page. The pages can be added either to the same column the source page resides or to the column next to the source page. Giving a null value to the source page will add the page to the leftmost column of the view.</p>
<p>The primary page, the very first page must be specified either through the <a href="#primaryPage-prop">primaryPage</a> or <a href="#primaryPageSource-prop">primaryPageSource</a> properties. <a href="#primaryPage-prop">primaryPage</a> can only hold a Page instance, <a href="#primaryPageSource-prop">primaryPageSource</a> can either be a Component or a url to a document defining a Page. <a href="#primaryPageSource-prop">primaryPageSource</a> has precedence over <a href="#primaryPage-prop">primaryPage</a>, and when set it will report the loaded Page through <a href="#primaryPage-prop">primaryPage</a> property, and will replace any value set into that property.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">primaryPage</span>: <span class="name">page1</span>
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page1</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">id</span>: <span class="name">header</span>
<span class="name">title</span>: <span class="string">&quot;Main Page&quot;</span>
}
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
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
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
}
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page3</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
}
}
}
}</pre>
<p><b>Note: </b>Observe the use of the <code>Page::pageStack</code> property in the example above. The same property is used to share the <a href="index.html">AdaptivePageLayout</a> instance the Page is used in, therefore the same page can be used in a <a href="Ubuntu.Components.PageStack.md">PageStack</a> or in an <a href="index.html">AdaptivePageLayout</a>. However implementations must make sure the desired <a href="Ubuntu.Components.PageStack.md">PageStack</a> or <a href="index.html">AdaptivePageLayout</a> function exists in the instance before using it.</p><p><a href="index.html">AdaptivePageLayout</a> supports adaptive column handling. When the number of columns changes at runtime the pages are automatically rearranged.</p>
<p>By default the component splits the layout in two columns when the width of the layout exceeds 80 grid units. The first column is sized to 40 grid unit width and the second one to fill the rest of the remaining space. When the 80 grid unit breakpoint is reached, the component will switch from one column to two, and vice versa. These defaults can be overridden through the <a href="#layouts-prop">layouts</a> property by defining the possible layouts, their column sizing and the breakpoints when the layouts should be activated. <a href="Ubuntu.Components.PageColumn.md">PageColumn</a> configurations must appear in the same order (from left to right) as the columns appear in the layout. If none of the layouts condition is met, a one column layout will be used.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">primaryPageSource</span>: <span class="name">page1Component</span>
<span class="name">layouts</span>: <span class="name">PageColumnsLayout</span> {
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
}
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">page1Component</span>
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page1</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">id</span>: <span class="name">header</span>
<span class="name">title</span>: <span class="string">&quot;Main page&quot;</span>
}
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
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
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page2</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page #2&quot;</span>
}
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page3</span>
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page #3&quot;</span>
}
}
}
}</pre>
<p>A column is considered to be resizable if the <a href="Ubuntu.Components.PageColumn.md#minimumWidth-prop">PageColumn::minimumWidth</a> and <a href="Ubuntu.Components.PageColumn.md#maximumWidth-prop">PageColumn::maximumWidth</a> configuration differs. This implies that if a column is not meant to be resized, it should have <a href="Ubuntu.Components.PageColumn.md#minimumWidth-prop">PageColumn::minimumWidth</a> and <a href="Ubuntu.Components.PageColumn.md#maximumWidth-prop">PageColumn::maximumWidth</a> set to the same value. In the example above, the first column can be resized to a minimum of 30, and a maximum of 60 grid units, and the preferred width is set to 40 grid units. This width is set every time the layout is activated.</p>
<p>When a <a href="Ubuntu.Components.Page.md">Page</a> with the <a href="Ubuntu.Components.Page.md#header-prop">Page::header</a> property set is added to an <a href="index.html">AdaptivePageLayout</a>, the <a href="index.html">AdaptivePageLayout</a> will synchronize the height of that header with the height of the headers in other columns, i.e&#x2e;, the height of each of the headers will be set to the maximum implicitHeight of all the headers.</p>
<p><b>See also </b><a href="Ubuntu.Components.PageStack.md">PageStack</a>, <a href="Ubuntu.Components.PageColumnsLayout.md">PageColumnsLayout</a>, and <a href="Ubuntu.Components.PageColumn.md">PageColumn</a>.</p>
<!-- @@@AdaptivePageLayout -->
<h2>Property Documentation</h2>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the way the pages should be loaded, synchronously or asynchronously. Defaults to true.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$columns -->
<table class="qmlname"><tr valign="top" id="columns-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">columns</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the number of columns shown in the layout.</p>
<!-- @@@columns -->
<br/>
<!-- $$$layouts -->
<table class="qmlname"><tr valign="top" id="layouts-prop"><td class="tblQmlPropNode"><p><span class="name">layouts</span> : <span class="type"><a href="Ubuntu.Components.PageColumnsLayout.md">PageColumnsLayout</a></span></p></td></tr></table><p>The property holds the different layout configurations overriding the default configurations. Defaults to an empty list.</p>
<p><b>See also </b><a href="Ubuntu.Components.PageColumnsLayout.md">PageColumnsLayout</a>.</p>
<!-- @@@layouts -->
<br/>
<!-- $$$primaryPage -->
<table class="qmlname"><tr valign="top" id="primaryPage-prop"><td class="tblQmlPropNode"><p><span class="name">primaryPage</span> : <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span></p></td></tr></table><p>The property holds the first Page which will be added to the view. If the view has more than one column, the page will be added to the leftmost column. The property can only hold a Page instance. When changed runtime (not by the <a href="index.html">AdaptivePageLayout</a> component itself), the <a href="#primaryPageSource-prop">primaryPageSource</a> property will be reset.</p>
<!-- @@@primaryPage -->
<br/>
<!-- $$$primaryPageSource -->
<table class="qmlname"><tr valign="top" id="primaryPageSource-prop"><td class="tblQmlPropNode"><p><span class="name">primaryPageSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The property specifies the source of the <a href="#primaryPage-prop">primaryPage</a> in case the primary page is created from a Component or loaded from an external document. It has precedence over <a href="#primaryPage-prop">primaryPage</a>.</p>
<!-- @@@primaryPageSource -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addPageToCurrentColumn -->
<table class="qmlname"><tr valign="top" id="addPageToCurrentColumn-method"><td class="tblQmlFuncNode"><p><span class="name">addPageToCurrentColumn</span>(<i> sourcePage</i>, <i> page</i>, <i> properties</i>)</p></td></tr></table><p>Adds a <code>page</code> to the column the <code>sourcePage</code> resides in and removes all pages from the higher columns. <code>page</code> can be a Component or a file. <code>properties</code> is a JSON object containing properties to be set when page is created. <code>sourcePage</code> must be active.</p>
<p>The function creates the new page asynchronously if the new <code>page</code> to be added is a Component or a QML document and the <a href="#asynchronous-prop">asynchronous</a> property is set to true. In this case the function returns an incubator which can be used to track the page creation. For more about incubation in QML and creating components asynchronously, see <a href="QtQml.Component.md#incubateObject-method">Component.incubateObject()</a>. The following example removes an element from the list model whenever the page opened in the second column is closed. Note, the example must be run on desktop or on a device with at least 90 grid units screen width.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">page2Component</span>
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">id</span>: <span class="name">header</span>
<span class="name">title</span>: <span class="string">&quot;Second Page&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.top: <span class="name">header</span>.<span class="name">bottom</span>
<span class="name">text</span>: <span class="string">&quot;Close me&quot;</span>
<span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">removePages</span>(<span class="name">pageStack</span>.<span class="name">primaryPage</span>);
}
}
}
<span class="type"><a href="index.html">AdaptivePageLayout</a></span> {
<span class="name">id</span>: <span class="name">pageLayout</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">primaryPage</span>: <span class="name">Page</span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Primary Page&quot;</span>
<span class="name">flickable</span>: <span class="name">listView</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">listView</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">10</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> { <span class="name">text</span>: <span class="name">modelData</span> }
<span class="name">onClicked</span>: {
var <span class="name">incubator</span> = <span class="name">pageLayout</span>.<span class="name">addPageToNextColumn</span>(<span class="name">pageLayout</span>.<span class="name">primaryPage</span>, <span class="name">page2Component</span>);
<span class="keyword">if</span> (<span class="name">incubator</span> <span class="operator">&amp;&amp;</span> <span class="name">incubator</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Loading</span>) {
<span class="name">incubator</span>.<span class="name">onStatusChanged</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">status</span>) {
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
<span class="comment">// connect page's destruction to decrement model</span>
<span class="name">incubator</span>.<span class="name">object</span>.<span class="name">Component</span>.<span class="name">destruction</span>.<span class="name">connect</span>(<span class="keyword">function</span>() {
listView.model--;
});
}
}
}
}
}
}
}
}
}</pre>
<p><b>See also </b><a href="QtQml.Component.md#incubateObject-method">Component.incubateObject</a>.</p>
<!-- @@@addPageToCurrentColumn -->
<br/>
<!-- $$$addPageToNextColumn -->
<table class="qmlname"><tr valign="top" id="addPageToNextColumn-method"><td class="tblQmlFuncNode"><p><span class="name">addPageToNextColumn</span>(<i> sourcePage</i>, <i> page</i>, <i> properties</i>)</p></td></tr></table><p>Remove all previous pages from the next column (relative to the column that holds <code>sourcePage</code>) and all following columns, and then add <code>page</code> to the next column. If <code>sourcePage</code> is located in the rightmost column, the new page will be pushed to the same column as <code>sourcePage</code>. The return value is the same as in <a href="#addPageToCurrentColumn-method">addPageToCurrentColumn</a> case.</p>
<!-- @@@addPageToNextColumn -->
<br/>
<!-- $$$removePages -->
<table class="qmlname"><tr valign="top" id="removePages-method"><td class="tblQmlFuncNode"><p><span class="name">removePages</span>(<i> page</i>)</p></td></tr></table><p>The function removes and deletes all pages up to and including <code>page</code> is reached. If the <i>page</i> is the same as the <a href="#primaryPage-prop">primaryPage</a>, only its child pages will be removed.</p>
<!-- @@@removePages -->
<br/>
