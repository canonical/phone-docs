---
Title: QtQml.DelegateModelGroup
---

# QtQml.DelegateModelGroup

<span class="subtitle"></span>
<!-- $$$DelegateModelGroup-brief -->
<p>Encapsulates a filtered set of visual data items More...</p>
<!-- @@@DelegateModelGroup -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.Models 2.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#includeByDefault-prop">includeByDefault</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#changed-signal">changed</a></b></b>(array <i>removed</i>, array <i>inserted</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#addGroups-method">addGroups</a></b></b>(int <i>index</i>, int <i>count</i>, stringlist <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#create-method-3">create</a></b></b>(jsdict <i>data</i>, array <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#create-method-2">create</a></b></b>(int <i>index</i>, jsdict <i>data</i>, array <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#create-method">create</a></b></b>(int <i>index</i>)</li>
<li class="fn">object <b><b><a href="#get-method">get</a></b></b>(int <i>index</i>)</li>
<li class="fn">void <b><b><a href="#insert-method-2">insert</a></b></b>(jsdict <i>data</i>, var <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#insert-method">insert</a></b></b>(int <i>index</i>, jsdict <i>data</i>, array <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#move-method">move</a></b></b>(var <i>from</i>, var <i>to</i>, int <i>count</i>)</li>
<li class="fn">void <b><b><a href="#remove-method">remove</a></b></b>(int <i>index</i>, int <i>count</i>)</li>
<li class="fn">void <b><b><a href="#removeGroups-method">removeGroups</a></b></b>(int <i>index</i>, int <i>count</i>, stringlist <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#resolve-method">resolve</a></b></b>(int <i>from</i>, int <i>to</i>)</li>
<li class="fn">void <b><b><a href="#setGroups-method-2">setGroups</a></b></b>(int <i>index</i>, int <i>count</i>, stringlist <i>groups</i>)</li>
<li class="fn">void <b><b><a href="#setGroups-method">setGroups</a></b></b>(int <i>index</i>, int <i>count</i>, stringlist <i>groups</i>)</li>
</ul>
<!-- $$$DelegateModelGroup-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">DelegateModelGroup</a> type provides a means to address the model data of a <a href="QtQml.DelegateModel.md">DelegateModel</a>'s delegate items, as well as sort and filter these delegate items.</p>
<p>The initial set of instantiable delegate items in a <a href="QtQml.DelegateModel.md">DelegateModel</a> is represented by its <a href="QtQml.DelegateModel.md#items-prop">items</a> group, which normally directly reflects the contents of the model assigned to <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a>. This set can be changed to the contents of any other member of <a href="QtQml.DelegateModel.md#groups-attached-prop">DelegateModel::groups</a> by assigning the <a href="#name-prop">name</a> of that <a href="index.html">DelegateModelGroup</a> to the <a href="QtQml.DelegateModel.md#filterOnGroup-prop">DelegateModel::filterOnGroup</a> property.</p>
<p>The data of an item in a <a href="index.html">DelegateModelGroup</a> can be accessed using the <a href="#get-method">get()</a> function, which returns information about group membership and indexes as well as model data. In combination with the <a href="#move-method">move()</a> function this can be used to implement view sorting, with <a href="#remove-method">remove()</a> to filter items out of a view, or with <a href="#setGroups-method">setGroups()</a> and <a href="QtQml.Package.md">Package</a> delegates to categorize items into different views.</p>
<p>Data from models can be supplemented by inserting data directly into a <a href="index.html">DelegateModelGroup</a> with the <a href="#insert-method">insert()</a> function. This can be used to introduce mock items into a view, or placeholder items that are later <a href="#resolve-method">resolved</a> to real model data when it becomes available.</p>
<p>Delegate items can also be instantiated directly from a <a href="index.html">DelegateModelGroup</a> using the <a href="#create-method">create()</a> function, making it possible to use <a href="QtQml.DelegateModel.md">DelegateModel</a> without an accompanying view type or to cherry-pick specific items that should be instantiated irregardless of whether they're currently within a view's visible area.</p>
<p><b>Note: </b>This type is also available as <a href="QtQml.VisualDataGroup.md">VisualDataGroup</a> in the <a href="QtQml.qtqml-index.md">Qt QML</a> module due to compatibility reasons.</p><p><b>See also </b>QML Dynamic View Ordering Tutorial.</p>
<!-- @@@DelegateModelGroup -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the group.</p>
<!-- @@@count -->
<br/>
<!-- $$$includeByDefault -->
<table class="qmlname"><tr valign="top" id="includeByDefault-prop"><td class="tblQmlPropNode"><p><span class="name">includeByDefault</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether new items are assigned to this group by default.</p>
<!-- @@@includeByDefault -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the group.</p>
<p>Each group in a model must have a unique name starting with a lower case letter.</p>
<!-- @@@name -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$changed -->
<table class="qmlname"><tr valign="top" id="changed-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">changed</span>(<span class="type">array</span><i> removed</i>, <span class="type">array</span><i> inserted</i>)</p></td></tr></table><p>This signal is emitted when items have been removed from or inserted into the group.</p>
<p>Each object in the <i>removed</i> and <i>inserted</i> arrays has two values; the <i>index</i> of the first item inserted or removed and a <i>count</i> of the number of consecutive items inserted or removed.</p>
<p>Each index is adjusted for previous changes with all removed items preceding any inserted items.</p>
<p>The corresponding handler is <code>onChanged</code>.</p>
<!-- @@@changed -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addGroups -->
<table class="qmlname"><tr valign="top" id="addGroups-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">addGroups</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i>, <span class="type">stringlist</span><i> groups</i>)</p></td></tr></table><p>Adds <i>count</i> items starting at <i>index</i> to <i>groups</i>.</p>
<!-- @@@addGroups -->
<br/>
<!-- $$$create -->
<table class="qmlname"><tr valign="top" id="create-method-3"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">create</span>(<span class="type">jsdict</span><i> data</i>, <span class="type">array</span><i> groups</i> = undefined)</p></td></tr></table><p>Returns a reference to the instantiated item at <i>index</i> in the group.</p>
<p>If a <i>data</i> object is provided it will be <a href="#insert-method">inserted</a> at <i>index</i> and an item referencing this new entry will be returned. The optional <i>groups</i> parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group <a href="#create-method">create()</a> was called on.</p>
<p>All items returned by create are added to the <a href="QtQml.DelegateModel.md#persistedItems-prop">persistedItems</a> group. Items in this group remain instantiated when not referenced by any view.</p>
<!-- @@@create -->
<br/>
<!-- $$$create -->
<table class="qmlname"><tr valign="top" id="create-method-2"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">create</span>(<span class="type">int</span><i> index</i>, <span class="type">jsdict</span><i> data</i>, <span class="type">array</span><i> groups</i> = undefined)</p></td></tr></table><p>Returns a reference to the instantiated item at <i>index</i> in the group.</p>
<p>If a <i>data</i> object is provided it will be <a href="#insert-method">inserted</a> at <i>index</i> and an item referencing this new entry will be returned. The optional <i>groups</i> parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group <a href="#create-method">create()</a> was called on.</p>
<p>All items returned by create are added to the <a href="QtQml.DelegateModel.md#persistedItems-prop">persistedItems</a> group. Items in this group remain instantiated when not referenced by any view.</p>
<!-- @@@create -->
<br/>
<!-- $$$create -->
<table class="qmlname"><tr valign="top" id="create-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">create</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns a reference to the instantiated item at <i>index</i> in the group.</p>
<p>If a <i>data</i> object is provided it will be <a href="#insert-method">inserted</a> at <i>index</i> and an item referencing this new entry will be returned. The optional <i>groups</i> parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group create() was called on.</p>
<p>All items returned by create are added to the <a href="QtQml.DelegateModel.md#persistedItems-prop">persistedItems</a> group. Items in this group remain instantiated when not referenced by any view.</p>
<!-- @@@create -->
<br/>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns a javascript object describing the item at <i>index</i> in the group.</p>
<p>The returned object contains the same information that is available to a delegate from the <a href="QtQml.DelegateModel.md">DelegateModel</a> attached as well as the model for that item. It has the properties:</p>
<ul>
<li><b>model</b> The model data of the item. This is the same as the model context property in a delegate</li>
<li><b>groups</b> A list the of names of groups the item is a member of. This property can be written to change the item's membership.</li>
<li><b>inItems</b> Whether the item belongs to the <a href="QtQml.DelegateModel.md#items-prop">items</a> group. Writing to this property will add or remove the item from the group.</li>
<li><b>itemsIndex</b> The index of the item within the <a href="QtQml.DelegateModel.md#items-prop">items</a> group.</li>
<li><b>in&lt;GroupName&gt;</b> Whether the item belongs to the dynamic group <i>groupName</i>. Writing to this property will add or remove the item from the group.</li>
<li><b>&lt;groupName&gt;Index</b> The index of the item within the dynamic group <i>groupName</i>.</li>
<li><b>isUnresolved</b> Whether the item is bound to an index in the model assigned to <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a>. Returns true if the item is not bound to the model, and false if it is.</li>
</ul>
<!-- @@@get -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method-2"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">insert</span>(<span class="type">jsdict</span><i> data</i>, <span class="type">var</span><i> groups</i> = undefined)</p></td></tr></table><p>Creates a new entry at <i>index</i> in a DelegateModel with the values from <i>data</i> that correspond to roles in the model assigned to DelegateModel::model.</p>
<p>If no index is supplied the data is appended to the model.</p>
<p>The optional <i>groups</i> parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.</p>
<p>Data inserted into a <a href="QtQml.DelegateModel.md">DelegateModel</a> can later be merged with an existing entry in <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a> using the <a href="#resolve-method">resolve()</a> function. This can be used to create placeholder items that are later replaced by actual data.</p>
<!-- @@@insert -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">insert</span>(<span class="type">int</span><i> index</i>, <span class="type">jsdict</span><i> data</i>, <span class="type">array</span><i> groups</i> = undefined)</p></td></tr></table><p>Creates a new entry at <i>index</i> in a <a href="QtQml.DelegateModel.md">DelegateModel</a> with the values from <i>data</i> that correspond to roles in the model assigned to <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a>.</p>
<p>If no index is supplied the data is appended to the model.</p>
<p>The optional <i>groups</i> parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.</p>
<p>Data inserted into a <a href="QtQml.DelegateModel.md">DelegateModel</a> can later be merged with an existing entry in <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a> using the <a href="#resolve-method">resolve()</a> function. This can be used to create placeholder items that are later replaced by actual data.</p>
<!-- @@@insert -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">move</span>(<span class="type">var</span><i> from</i>, <span class="type">var</span><i> to</i>, <span class="type">int</span><i> count</i>)</p></td></tr></table><p>Moves <i>count</i> at <i>from</i> in a group <i>to</i> a new position.</p>
<!-- @@@move -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">remove</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i>)</p></td></tr></table><p>Removes <i>count</i> items starting at <i>index</i> from the group.</p>
<!-- @@@remove -->
<br/>
<!-- $$$removeGroups -->
<table class="qmlname"><tr valign="top" id="removeGroups-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">removeGroups</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i>, <span class="type">stringlist</span><i> groups</i>)</p></td></tr></table><p>Removes <i>count</i> items starting at <i>index</i> from <i>groups</i>.</p>
<!-- @@@removeGroups -->
<br/>
<!-- $$$resolve -->
<table class="qmlname"><tr valign="top" id="resolve-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">resolve</span>(<span class="type">int</span><i> from</i>, <span class="type">int</span><i> to</i>)</p></td></tr></table><p>Binds an unresolved item at <i>from</i> to an item in <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a> at index <i>to</i>.</p>
<p>Unresolved items are entries whose data has been <a href="#insert-method">inserted</a> into a <a href="index.html">DelegateModelGroup</a> instead of being derived from a <a href="QtQml.DelegateModel.md#model-attached-prop">DelegateModel::model</a> index. Resolving an item will replace the item at the target index with the unresolved item. A resolved an item will reflect the data of the source model at its bound index and will move when that index moves like any other item.</p>
<p>If a new item is replaced in the <a href="index.html">DelegateModelGroup</a> onChanged() handler its insertion and replacement will be communicated to views as an atomic operation, creating the appearance that the model contents have not changed, or if the unresolved and model item are not adjacent that the previously unresolved item has simply moved.</p>
<!-- @@@resolve -->
<br/>
<!-- $$$setGroups -->
<table class="qmlname"><tr valign="top" id="setGroups-method-2"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">setGroups</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i>, <span class="type">stringlist</span><i> groups</i>)</p></td></tr></table><p>Sets the <i>groups</i> <i>count</i> items starting at <i>index</i> belong to.</p>
<!-- @@@setGroups -->
<br/>
<!-- $$$setGroups -->
<table class="qmlname"><tr valign="top" id="setGroups-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">setGroups</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i>, <span class="type">stringlist</span><i> groups</i>)</p></td></tr></table><p>Sets the <i>groups</i> <i>count</i> items starting at <i>index</i> belong to.</p>
<!-- @@@setGroups -->
<br/>
