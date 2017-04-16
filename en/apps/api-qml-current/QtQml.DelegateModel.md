---
Title: QtQml.DelegateModel
---

# QtQml.DelegateModel

<span class="subtitle"></span>
<!-- $$$DelegateModel-brief -->
<p>Encapsulates a model and delegate More...</p>
<!-- @@@DelegateModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.Models 2.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#filterOnGroup-prop">filterOnGroup</a></b></b> : string</li>
<li class="fn"><b><b><a href="#groups-prop">groups</a></b></b> : list&lt;DelegateModelGroup&gt;</li>
<li class="fn"><b><b><a href="#items-prop">items</a></b></b> : DelegateModelGroup</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : model</li>
<li class="fn"><b><b><a href="#parts-prop">parts</a></b></b> : object</li>
<li class="fn"><b><b><a href="#persistedItems-prop">persistedItems</a></b></b> : DelegateModelGroup</li>
<li class="fn"><b><b><a href="#rootIndex-prop">rootIndex</a></b></b> : QModelIndex</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#groups-attached-prop">groups</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#inItems-attached-prop">inItems</a></b></b> : int</li>
<li class="fn"><b><b><a href="#inPersistedItems-attached-prop">inPersistedItems</a></b></b> : int</li>
<li class="fn"><b><b><a href="#isUnresolved-attached-prop">isUnresolved</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#itemsIndex-attached-prop">itemsIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#model-attached-prop">model</a></b></b> : int</li>
<li class="fn"><b><b><a href="#persistedItemsIndex-attached-prop">persistedItemsIndex</a></b></b> : int</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">QModelIndex <b><b><a href="#modelIndex-method">modelIndex</a></b></b>(int <i>index</i>)</li>
<li class="fn">QModelIndex <b><b><a href="#parentModelIndex-method">parentModelIndex</a></b></b>()</li>
</ul>
<!-- $$$DelegateModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">DelegateModel</a> type encapsulates a model and the delegate that will be instantiated for items in the model.</p>
<p>It is usually not necessary to create a <a href="index.html">DelegateModel</a>. However, it can be useful for manipulating and accessing the <a href="#modelIndex-method">modelIndex</a> when a QAbstractItemModel subclass is used as the model. Also, <a href="index.html">DelegateModel</a> is used together with <a href="QtQml.Package.md">Package</a> to provide delegates to multiple views, and with <a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a> to sort and filter delegate items.</p>
<p>The example below illustrates using a <a href="index.html">DelegateModel</a> with a ListView.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQml.VisualDataModel.md">VisualDataModel</a></span> {
<span class="name">id</span>: <span class="name">visualModel</span>
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span> }
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span> }
}
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">height</span>: <span class="number">25</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Name: &quot;</span> <span class="operator">+</span> <span class="name">name</span>}
}
}
<span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">visualModel</span>
}
}</pre>
<p><b>Note: </b>This type is also available as <a href="QtQml.VisualDataModel.md">VisualDataModel</a> in the <a href="QtQml.qtqml-index.md">Qt QML</a> module due to compatibility reasons.</p><!-- @@@DelegateModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><!-- @@@count -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The delegate provides a template defining each item instantiated by a view. The index is exposed as an accessible <code>index</code> property. Properties of the model are also available depending upon the type of Data Model.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$filterOnGroup -->
<table class="qmlname"><tr valign="top" id="filterOnGroup-prop"><td class="tblQmlPropNode"><p><span class="name">filterOnGroup</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the group used to filter the visual data model.</p>
<p>Only items which belong to this group are visible to a view.</p>
<p>By default this is the <a href="#items-prop">items</a> group.</p>
<!-- @@@filterOnGroup -->
<br/>
<!-- $$$groups -->
<table class="qmlname"><tr valign="top" id="groups-prop"><td class="tblQmlPropNode"><p><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span>&gt;</p></td></tr></table><p>This property holds a delegate model's group definitions.</p>
<p>Groups define a sub-set of the items in a delegate model and can be used to filter a model.</p>
<p>For every group defined in a <a href="index.html">DelegateModel</a> two attached properties are added to each delegate item. The first of the form <a href="index.html">DelegateModel</a>.in<i>GroupName</i> holds whether the item belongs to the group and the second <a href="index.html">DelegateModel</a>.<i>groupName</i>Index holds the index of the item in that group.</p>
<p>The following example illustrates using groups to select items in a model.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQml.VisualDataModel.md">VisualDataModel</a></span> {
<span class="name">id</span>: <span class="name">visualModel</span>
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span> }
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span> }
}
<span class="name">groups</span>: [
<span class="type"><a href="QtQml.VisualDataGroup.md">VisualDataGroup</a></span> { <span class="name">name</span>: <span class="string">&quot;selected&quot;</span> }
]
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">id</span>: <span class="name">item</span>
<span class="name">height</span>: <span class="number">25</span>
<span class="name">width</span>: <span class="number">200</span>
<span class="type">Text</span> {
<span class="name">text</span>: {
var <span class="name">text</span> = <span class="string">&quot;Name: &quot;</span> <span class="operator">+</span> <span class="name">name</span>
<span class="keyword">if</span> (<span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span>)
<span class="name">text</span> <span class="operator">+=</span> <span class="string">&quot; (&quot;</span> <span class="operator">+</span> <span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">selectedIndex</span> <span class="operator">+</span> <span class="string">&quot;)&quot;</span>
<span class="keyword">return</span> <span class="name">text</span>;
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span> <span class="operator">=</span> !<span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span>
}
}
}
<span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">visualModel</span>
}
}</pre>
<!-- @@@groups -->
<br/>
<!-- $$$items -->
<table class="qmlname"><tr valign="top" id="items-prop"><td class="tblQmlPropNode"><p><span class="name">items</span> : <span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span></p></td></tr></table><p>This property holds visual data model's default group to which all new items are added.</p>
<!-- @@@items -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="#model-attached-prop">model</a></span></p></td></tr></table><p>This property holds the model providing data for the <a href="index.html">DelegateModel</a>.</p>
<p>The model provides a set of data that is used to create the items for a view. For large or dynamic datasets the model is usually provided by a C++ model object. The C++ model object must be a QAbstractItemModel subclass or a simple list.</p>
<p>Models can also be created directly in QML, using a <a href="QtQml.ListModel.md">ListModel</a> or XmlListModel.</p>
<p><b>See also </b>Data Models.</p>
<!-- @@@model -->
<br/>
<!-- $$$parts -->
<table class="qmlname"><tr valign="top" id="parts-prop"><td class="tblQmlPropNode"><p><span class="name">parts</span> : <span class="type">object</span></p></td></tr></table><p>The <i>parts</i> property selects a <a href="index.html">DelegateModel</a> which creates delegates from the part named. This is used in conjunction with the <a href="QtQml.Package.md">Package</a> type.</p>
<p>For example, the code below selects a model which creates delegates named <i>list</i> from a <a href="QtQml.Package.md">Package</a>:</p>
<pre class="cpp">DelegateModel {
id: visualModel
delegate: Package {
Item { Package<span class="operator">.</span>name: <span class="string">&quot;list&quot;</span> }
}
model: myModel
}
ListView {
width: <span class="number">200</span>; height:<span class="number">200</span>
model: visualModel<span class="operator">.</span>parts<span class="operator">.</span>list
}</pre>
<p><b>See also </b><a href="QtQml.Package.md">Package</a>.</p>
<!-- @@@parts -->
<br/>
<!-- $$$persistedItems -->
<table class="qmlname"><tr valign="top" id="persistedItems-prop"><td class="tblQmlPropNode"><p><span class="name">persistedItems</span> : <span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span></p></td></tr></table><p>This property holds visual data model's persisted items group.</p>
<p>Items in this group are not destroyed when released by a view, instead they are persisted until removed from the group.</p>
<p>An item can be removed from the persistedItems group by setting the <a href="index.html">DelegateModel</a>.<a href="#inPersistedItems-attached-prop">inPersistedItems</a> property to false. If the item is not referenced by a view at that time it will be destroyed. Adding an item to this group will not create a new instance.</p>
<p>Items returned by the <a href="QtQml.DelegateModelGroup.md#create-method">QtQml.Models::DelegateModelGroup::create()</a> function are automatically added to this group.</p>
<!-- @@@persistedItems -->
<br/>
<!-- $$$rootIndex -->
<table class="qmlname"><tr valign="top" id="rootIndex-prop"><td class="tblQmlPropNode"><p><span class="name">rootIndex</span> : <span class="type">QModelIndex</span></p></td></tr></table><p>QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. <code>rootIndex</code> allows the children of any node in a QAbstractItemModel to be provided by this model.</p>
<p>This property only affects models of type QAbstractItemModel that are hierarchical (e.g, a tree model).</p>
<p>For example, here is a simple interactive file system browser. When a directory name is clicked, the view's <code>rootIndex</code> is set to the QModelIndex node of the clicked directory, thus updating the view to show the new directory's contents.</p>
<p><code>main.cpp</code>:</p>
<pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
{
<span class="type">QApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQuickView</span> view;
<span class="type">QDirModel</span> model;
view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;dirModel&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>model);
view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;view.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p><code>view.qml</code>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ListView</span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">400</span>
<span class="name">model</span>: <span class="name">VisualDataModel</span> {
<span class="name">model</span>: <span class="name">dirModel</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">25</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">filePath</span> }
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="keyword">if</span> (<span class="name">model</span>.<span class="name">hasModelChildren</span>)
<span class="name">view</span>.<span class="name">model</span>.<span class="name">rootIndex</span> <span class="operator">=</span> <span class="name">view</span>.<span class="name">model</span>.<span class="name">modelIndex</span>(<span class="name">index</span>)
}
}
}
}
}</pre>
<p>If the <a href="#model-attached-prop">model</a> is a QAbstractItemModel subclass, the delegate can also reference a <code>hasModelChildren</code> property (optionally qualified by a <i>model</i>. prefix) that indicates whether the delegate's model item has any child nodes.</p>
<p><b>See also </b><a href="#modelIndex-method">modelIndex()</a> and <a href="#parentModelIndex-method">parentModelIndex()</a>.</p>
<!-- @@@rootIndex -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$groups -->
<table class="qmlname"><tr valign="top" id="groups-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.groups</span> : <span class="type">stringlist</span></p></td></tr></table><p>This attached property holds the name of DelegateModelGroups the item belongs to.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@groups -->
<br/>
<!-- $$$inItems -->
<table class="qmlname"><tr valign="top" id="inItems-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.inItems</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds whether the item belongs to the default <a href="#items-prop">items</a> <a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a>.</p>
<p>Changing this property will add or remove the item from the items group.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@inItems -->
<br/>
<!-- $$$inPersistedItems -->
<table class="qmlname"><tr valign="top" id="inPersistedItems-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.inPersistedItems</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds whether the item belongs to the <a href="#persistedItems-prop">persistedItems</a> <a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a>.</p>
<p>Changing this property will add or remove the item from the items group. Change with caution as removing an item from the <a href="#persistedItems-prop">persistedItems</a> group will destroy the current instance if it is not referenced by a model.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@inPersistedItems -->
<br/>
<!-- $$$isUnresolved -->
<table class="qmlname"><tr valign="top" id="isUnresolved-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.isUnresolved</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property holds whether the visual item is bound to a data model index. Returns true if the item is not bound to the model, and false if it is.</p>
<p>An unresolved item can be bound to the data model using the <a href="QtQml.DelegateModelGroup.md#resolve-method">DelegateModelGroup::resolve()</a> function.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@isUnresolved -->
<br/>
<!-- $$$itemsIndex -->
<table class="qmlname"><tr valign="top" id="itemsIndex-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.itemsIndex</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds the index of the item in the default <a href="#items-prop">items</a> <a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a>.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@itemsIndex -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.model</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds the visual data model this delegate instance belongs to.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@model -->
<br/>
<!-- $$$persistedItemsIndex -->
<table class="qmlname"><tr valign="top" id="persistedItemsIndex-attached-prop"><td class="tblQmlPropNode"><p><span class="name">DelegateModel.persistedItemsIndex</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds the index of the item in the <a href="#persistedItems-prop">persistedItems</a> <a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a>.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@persistedItemsIndex -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$modelIndex -->
<table class="qmlname"><tr valign="top" id="modelIndex-method"><td class="tblQmlFuncNode"><p><span class="type">QModelIndex</span> <span class="name">modelIndex</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.</p>
<p>Returns a QModelIndex for the specified index. This value can be assigned to <a href="#rootIndex-prop">rootIndex</a>.</p>
<p><b>See also </b><a href="#rootIndex-prop">rootIndex</a>.</p>
<!-- @@@modelIndex -->
<br/>
<!-- $$$parentModelIndex -->
<table class="qmlname"><tr valign="top" id="parentModelIndex-method"><td class="tblQmlFuncNode"><p><span class="type">QModelIndex</span> <span class="name">parentModelIndex</span>()</p></td></tr></table><p>QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.</p>
<p>Returns a QModelIndex for the parent of the current <a href="#rootIndex-prop">rootIndex</a>. This value can be assigned to <a href="#rootIndex-prop">rootIndex</a>.</p>
<p><b>See also </b><a href="#rootIndex-prop">rootIndex</a>.</p>
<!-- @@@parentModelIndex -->
<br/>
