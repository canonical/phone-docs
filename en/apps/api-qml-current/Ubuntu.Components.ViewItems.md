---
Title: Ubuntu.Components.ViewItems
---

# Ubuntu.Components.ViewItems

<span class="subtitle"></span>
<!-- $$$ViewItems-brief -->
<p>A set of properties attached to the ListItem's parent item or ListView. More...</p>
<!-- @@@ViewItems -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#dragMode-attached-prop">dragMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#expandedIndices-attached-prop">expandedIndices</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#expansionFlags-attached-prop">expansionFlags</a></b></b> : ExpansionFlags</li>
<li class="fn"><b><b><a href="#selectMode-attached-prop">selectMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndices-attached-prop">selectedIndices</a></b></b> : list&lt;int&gt;</li>
</ul>
<h2 id="attached-signals">Attached Signals</h2>
<ul>
<li class="fn"><b><b><a href="#dragUpdated-signal">dragUpdated</a></b></b>(ListItemDrag <i>event</i>)</li>
</ul>
<!-- $$$ViewItems-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>These properties are automatically attached to the parent item of the <a href="Ubuntu.Components.ListItem.md">ListItem</a>, or to <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, when the component is used as delegate.</p>
<!-- @@@ViewItems -->
<h2>Attached Property Documentation</h2>
<!-- $$$dragMode -->
<table class="qmlname"><tr valign="top" id="dragMode-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ViewItems.dragMode</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the dragging mode of the ListItems within a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>. It has no effect on any other parent of the <a href="Ubuntu.Components.ListItem.md">ListItem</a>.</p>
<p>When set, <a href="Ubuntu.Components.ListItem.md">ListItem</a> content will be disabled and a panel will be shown enabling the dragging mode. The items can be dragged by dragging this handler only. The feature can be activated same time with <a href="Ubuntu.Components.ListItem.md#selectMode-prop">ListItem::selectMode</a>.</p>
<p>The panel is configured by the style.</p>
<p><b>See also </b><a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a> and <a href="#dragUpdated-signal">dragUpdated</a>.</p>
<!-- @@@dragMode -->
<br/>
<!-- $$$expandedIndices -->
<table class="qmlname"><tr valign="top" id="expandedIndices-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ViewItems.expandedIndices</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>The property contains the indexes of the ListItems marked as expanded. The indexes are model indexes when used in <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, and child indexes in other components. The property being writable, initial expansion configuration can be provided for a view, and provides ability to save the expansion state.</p>
<p><b>Note: </b>If the <a href="#expansionFlags-attached-prop">ViewItems::expansionFlags</a> is having <code>ViewItems.Exclusive</code> flags set, only the last item from the list will be considered and set as expanded.</p><p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@expandedIndices -->
<br/>
<!-- $$$expansionFlags -->
<table class="qmlname"><tr valign="top" id="expansionFlags-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ViewItems.expansionFlags</span> : <span class="type">ExpansionFlags</span></p></td></tr></table><p>Flags driving the expansion behavior.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Flag</th><th >description</th></tr></thead>
<tr valign="top"><td ><a href="index.html">ViewItems</a>.Exclusive</td><td >When set, only one <a href="Ubuntu.Components.ListItem.md">ListItem</a> can be expanded at a time. <b>Set by default</b>.</td></tr>
<tr valign="top"><td ><a href="index.html">ViewItems</a>.UnlockExpanded</td><td >When set, the <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s leading/trailing actions can be swiped in.</td></tr>
<tr valign="top"><td ><a href="index.html">ViewItems</a>.CollapseOnOutsidePress</td><td >When set, the active expaned <a href="Ubuntu.Components.ListItem.md">ListItem</a> collapses automatically when clicked outside of its area. The flag also turns <code>ViewItems.Exclusive</code> flag on.</td></tr>
</table>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@expansionFlags -->
<br/>
<!-- $$$selectMode -->
<table class="qmlname"><tr valign="top" id="selectMode-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ViewItems.selectMode</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives whether list items are selectable or not.</p>
<p>When set, the ListItems of the Item the property is attached to will enter into selection state. ListItems provide a visual clue which can be used to toggle the selection state of each, which in order will be reflected in the <a href="#selectedIndices-attached-prop">ViewItems.selectedIndices</a> list.</p>
<!-- @@@selectMode -->
<br/>
<!-- $$$selectedIndices -->
<table class="qmlname"><tr valign="top" id="selectedIndices-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ViewItems.selectedIndices</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>The property contains the indexes of the ListItems marked as selected. The indexes are model indexes when used in <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, and child indexes in other components. The property being writable, initial selection configuration can be provided for a view, and provides ability to save the selection state.</p>
<!-- @@@selectedIndices -->
<br/>
<h2>Attached Signal Documentation</h2>
<!-- $$$dragUpdated -->
<table class="qmlname"><tr valign="top" id="dragUpdated-signal"><td class="tblQmlFuncNode"><p><span class="name">dragUpdated</span>(<span class="type"><a href="Ubuntu.Components.ListItemDrag.md">ListItemDrag</a></span><i> event</i>)</p></td></tr></table><p>The signal is emitted whenever a dragging related event occurrs. The <b>event.status</b> specifies the dragging event type. Depending on the type, the <a href="Ubuntu.Components.ListItemDrag.md">ListItemDrag</a> event properties will have the following meaning:</p>
<table class="generic">
<thead><tr class="qt-style"><th >status</th><th >from</th><th >to</th><th >minimumIndex</th><th >maximumIndex</th></tr></thead>
<tr valign="top"><td >Started</td><td >the index of the item to be dragged</td><td >-1</td><td >default (-1), can be changed to restrict moves</td><td >default (-1), can be changed to restrict moves</td></tr>
<tr valign="top"><td >Moving</td><td >source index from where the item dragged from</td><td >destination index where the item can be dragged to</td><td >the same value set at <i>Started</i>, can be changed</td><td >the same value set at <i>Started</i>, can be changed</td></tr>
<tr valign="top"><td >Dropped</td><td >source index from where the item dragged from</td><td >destination index where the item can be dragged to</td><td >the value set at <i>Started/Moving</i>, changes are omitted</td><td >the value set at <i>Started/Moving</i>, changes are omitted</td></tr>
</table>
<p>Implementations <b>must move the model data</b> in order to re-order the <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> content. If the move is not acceptable, it must be cancelled by setting <b>event.accept</b> to <i>false</i>, in which case the dragged index (<b>from</b>) will not be updated and next time the signal is emitted will be the same.</p>
<p>An example implementation of a live dragging with restrictions:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="comment">// initiate with random data</span>
}
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="comment">// content</span>
}
<span class="name">ViewItems</span>.dragMode: <span class="number">true</span>
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListViewDrag</span>.<span class="name">Started</span>) {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&lt;</span> <span class="number">5</span>) {
<span class="comment">// deny dragging on the first 5 element</span>
<span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&gt;=</span> <span class="number">5</span> <span class="operator">&amp;&amp;</span> <span class="name">event</span>.<span class="name">from</span> <span class="operator">&lt;=</span> <span class="number">10</span> <span class="operator">&amp;&amp;</span>
<span class="name">event</span>.<span class="name">to</span> <span class="operator">&gt;=</span> <span class="number">5</span> <span class="operator">&amp;&amp;</span> <span class="name">event</span>.<span class="name">to</span> <span class="operator">&lt;=</span> <span class="number">10</span>) {
<span class="comment">// specify the interval</span>
<span class="name">event</span>.<span class="name">minimumIndex</span> <span class="operator">=</span> <span class="number">5</span>;
<span class="name">event</span>.<span class="name">maximumIndex</span> <span class="operator">=</span> <span class="number">10</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&gt;</span> <span class="number">10</span>) {
<span class="comment">// prevent dragging to the first 11 items area</span>
<span class="name">event</span>.<span class="name">minimumIndex</span> <span class="operator">=</span> <span class="number">11</span>;
}
} <span class="keyword">else</span> {
<span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
}
}
}</pre>
<p>A drag'n'drop implementation might be required when model changes are too expensive, and continuously updating while dragging would cause lot of traffic. The following example illustrates how to implement such a scenario:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="comment">// initiate with random data</span>
}
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="comment">// content</span>
}
<span class="name">ViewItems</span>.dragMode: <span class="number">true</span>
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">direction</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
<span class="comment">// this is the last event, so drop the item</span>
<span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">direction</span> <span class="operator">!=</span> <span class="name">ListItemDrag</span>.<span class="name">Started</span>) {
<span class="comment">// do not accept the moving events, so drag.from will</span>
<span class="comment">// always contain the original drag index</span>
<span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
}
}
}</pre>
<p><b>Note: </b>Do not forget to set <b>event.accept</b> to false in <b>dragUpdated</b> in case the drag event handling is not accepted, otherwise the system will not know whether the move has been performed or not, and selected indexes will not be synchronized properly.</p><!-- @@@dragUpdated -->
<br/>
