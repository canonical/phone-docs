---
Title: Ubuntu.Components.SortFilterModel
---

# Ubuntu.Components.SortFilterModel

<span class="subtitle"></span>
<!-- $$$SortFilterModel-brief -->
<p>SortFilterModel sorts and filters rows from an existing model. More...</p>
<!-- @@@SortFilterModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#filter.pattern-prop">filter.pattern</a></b></b> : string</li>
<li class="fn"><b><b><a href="#filter.property-prop">filter.property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : QAbstractItemModel</li>
<li class="fn"><b><b><a href="#sort.order-prop">sort.order</a></b></b> : string</li>
<li class="fn"><b><b><a href="#sort.property-prop">sort.property</a></b></b> : string</li>
</ul>
<!-- $$$SortFilterModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">SortFilterModel</a> takes an existing model such as a <a href="../sdk-14.10/QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> or any <a href="../sdk-14.10/QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> implementation. The original rows and role names show up in the <a href="index.html">SortFilterModel</a> with two basic differences. For one if <a href="#sort.property-prop">sort.property</a> is set all rows will be sorted. Further more if <a href="#filter.property-prop">filter.property</a> is set only rows matching the filter will be in the model.</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
<span class="name">id</span>: <span class="name">movies</span>
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">title</span>: <span class="string">&quot;Esign&quot;</span>
<span class="name">producer</span>: <span class="string">&quot;Chris Larkee&quot;</span>
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">title</span>: <span class="string">&quot;Elephants Dream&quot;</span>
<span class="name">producer</span>: <span class="string">&quot;Blender&quot;</span>
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">title</span>: <span class="string">&quot;Big Buck Bunny&quot;</span>
<span class="name">producer</span>: <span class="string">&quot;Blender&quot;</span>
}
}
<span class="type"><a href="index.html">SortFilterModel</a></span> {
<span class="name">id</span>: <span class="name">sortedMovies</span>
<span class="name">model</span>: <span class="name">movies</span>
<span class="name">sort</span>.property: <span class="string">&quot;title&quot;</span>
<span class="name">sort</span>.order: <span class="name">Qt</span>.<span class="name">DescendingOrder</span>
<span class="comment">// case insensitive sorting</span>
<span class="name">sortCaseSensitivity</span>: <span class="name">Qt</span>.<span class="name">CaseInsensitive</span>
<span class="name">filter</span>.property: <span class="string">&quot;producer&quot;</span>
<span class="name">filter</span>.pattern: /blender/
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">sortedMovies</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">delegate</span>: <span class="name">Subtitled</span> {
<span class="name">text</span>: <span class="name">title</span>
<span class="name">subText</span>: <span class="name">producer</span>
}
<span class="name">section</span>.delegate: <span class="name">ListItem</span>.Header { <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="name">section</span>) }
<span class="name">section</span>.property: <span class="string">&quot;title&quot;</span>
<span class="name">section</span>.criteria: <span class="name">ViewSection</span>.<span class="name">FirstCharacter</span>
}
}</pre>
<p>Pay attention to the differences between the original model and the result:</p>
<ul>
<li>Big Buck Bunny will be the first row, because it's sorted by title</li>
<li>Esign won't be visible, because it's from the wrong producer</li>
</ul>
<!-- @@@SortFilterModel -->
<h2>Property Documentation</h2>
<!-- $$$filter.pattern -->
<table class="qmlname"><tr valign="top" id="filter.pattern-prop"><td class="tblQmlPropNode"><p><span class="name">filter.pattern</span> : <span class="type">string</span></p></td></tr></table><p>The pattern all rows must match, if <a href="#filter.property-prop">filter.property</a> is set.</p>
<p>Some examples:</p>
<ul>
<li>/possible/ matches anywhere in a word, so both &quot;impossible&quot; and &quot;possible&quot;.</li>
<li>/^sign/ matches &quot;sign&quot;. But not &quot;assignment&quot; because ^ means start.</li>
<li>/vest$/ matches &quot;safety vest&quot; and &quot;vest&quot; but not &quot;vested&quot;.</li>
</ul>
<p>For more advanced uses it's recommended to read up on Javascript regular expressions.</p>
<!-- @@@filter.pattern -->
<br/>
<!-- $$$filter.property -->
<table class="qmlname"><tr valign="top" id="filter.property-prop"><td class="tblQmlPropNode"><p><span class="name">filter.property</span> : <span class="type">string</span></p></td></tr></table><p>If set to a valid role name, only rows matching <a href="#filter.pattern-prop">filter.pattern</a> will be in the model.</p>
<!-- @@@filter.property -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type">QAbstractItemModel</span></p></td></tr></table><p>The source model to sort and/ or filter.</p>
<!-- @@@model -->
<br/>
<!-- $$$sort.order -->
<table class="qmlname"><tr valign="top" id="sort.order-prop"><td class="tblQmlPropNode"><p><span class="name">sort.order</span> : <span class="type">string</span></p></td></tr></table><p>The order, if <a href="#sort.property-prop">sort.property</a> is set. Qt::AscendingOrder sorts results from A to Z or 0 to 9. Qt::DescendingOrder sorts results from Z to A or 9 to 0.</p>
<!-- @@@sort.order -->
<br/>
<!-- $$$sort.property -->
<table class="qmlname"><tr valign="top" id="sort.property-prop"><td class="tblQmlPropNode"><p><span class="name">sort.property</span> : <span class="type">string</span></p></td></tr></table><p>If set to a valid role name, all rows will be sorted according to <a href="#sort.order-prop">sort.order</a>.</p>
<!-- @@@sort.property -->
<br/>
