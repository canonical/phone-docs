---
Title: QtQuick.Repeater
---

# QtQuick.Repeater

<span class="subtitle"></span>
<!-- $$$Repeater-brief -->
<p>Instantiates a number of Item-based components using a provided model More...</p>
<!-- @@@Repeater -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : any</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#itemAdded-signal">itemAdded</a></b></b>(int <i>index</i>, Item <i>item</i>)</li>
<li class="fn"><b><b><a href="#itemRemoved-signal">itemRemoved</a></b></b>(int <i>index</i>, Item <i>item</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">Item <b><b><a href="#itemAt-method">itemAt</a></b></b>(index)</li>
</ul>
<!-- $$$Repeater-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Repeater type is used to create a large number of similar items. Like other view types, a Repeater has a <a href="#model-prop">model</a> and a <a href="#delegate-prop">delegate</a>: for each entry in the model, the delegate is instantiated in a context seeded with data from the model. A Repeater item is usually enclosed in a positioner type such as <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> or <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a> to visually position the multiple delegate items created by the Repeater.</p>
<p>The following Repeater creates three instances of a <a href="QtQuick.Rectangle.md">Rectangle</a> item within a <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type"><a href="index.html">Repeater</a></span> {
<span class="name">model</span>: <span class="number">3</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">40</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f2cc67fd-607f-4147-b149-c7757dc61cd5-../QtQuick.Repeater/images/repeater-simple.png" alt="" /></p><p>A Repeater's <a href="#model-prop">model</a> can be any of the supported <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">data models</a>. Additionally, like delegates for other views, a Repeater delegate can access its index within the repeater, as well as the model data relevant to the delegate. See the <a href="#delegate-prop">delegate</a> property documentation for details.</p>
<p>Items instantiated by the Repeater are inserted, in order, as children of the Repeater's parent. The insertion starts immediately after the repeater's position in its parent stacking list. This allows a Repeater to be used inside a layout. For example, the following Repeater's items are stacked between a red rectangle and a blue rectangle:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
<span class="type"><a href="index.html">Repeater</a></span> {
<span class="name">model</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">20</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/72032ff0-37e0-479c-a7cc-a5c6dbacde29-../QtQuick.Repeater/images/repeater.png" alt="" /></p><p><b>Note: </b>A Repeater item owns all items it instantiates. Removing or dynamically destroying an item created by a Repeater results in unpredictable behavior.</p>
<h3 >Considerations when using Repeater</h3>
<p>The Repeater type creates all of its delegate items when the repeater is first created. This can be inefficient if there are a large number of delegate items and not all of the items are required to be visible at the same time. If this is the case, consider using other view types like <a href="QtQuick.ListView.md">ListView</a> (which only creates delegate items when they are scrolled into view) or use the Dynamic Object Creation methods to create items as they are required.</p>
<p>Also, note that Repeater is <a href="QtQuick.Item.md">Item</a>-based, and can only repeat <a href="QtQuick.Item.md">Item</a>-derived objects. For example, it cannot be used to repeat QtObjects:</p>
<pre class="cpp"><span class="comment">//bad code</span>
Item {
Can<span class="char">'t repeat QtObject as it doesn'</span>t derive from Item<span class="operator">.</span>
Repeater {
model: <span class="number">10</span>
<span class="type">QtObject</span> {}
}
}</pre>
<!-- @@@Repeater -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the repeater.</p>
<!-- @@@count -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>The delegate provides a template defining each item instantiated by the repeater.</p>
<p>Delegates are exposed to a read-only <code>index</code> property that indicates the index of the delegate within the repeater. For example, the following <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> delegate displays the index of each repeated item:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">Repeater</a></span> {
<span class="name">model</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;I'm item &quot;</span> <span class="operator">+</span> <span class="name">index</span> }
}
}</pre>
</td><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/86b8f269-b2f1-4133-b837-3be886f2f077-../QtQuick.Repeater/images/repeater-index.png" alt="" /></p></td></tr>
</table>
<p>If the <a href="#model-prop">model</a> is a <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qstringlist-based-model">string list</a> or <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qobjectlist-based-model">object list</a>, the delegate is also exposed to a read-only <code>modelData</code> property that holds the string or object data. For example:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">Repeater</a></span> {
<span class="name">model</span>: [<span class="string">&quot;apples&quot;</span>, <span class="string">&quot;oranges&quot;</span>, <span class="string">&quot;pears&quot;</span>]
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Data: &quot;</span> <span class="operator">+</span> <span class="name">modelData</span> }
}
}</pre>
</td><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/550fb906-a1a5-487e-ae3e-3def237bda51-../QtQuick.Repeater/images/repeater-modeldata.png" alt="" /></p></td></tr>
</table>
<p>If the <a href="#model-prop">model</a> is a model object (such as a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>) the delegate can access all model roles as named properties, in the same way that delegates do for view classes like <a href="QtQuick.ListView.md">ListView</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">QML Data Models</a>.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type">any</span></p></td></tr></table><p>The model providing data for the repeater.</p>
<p>This property can be set to any of the supported <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">data models</a>:</p>
<ul>
<li>A number that indicates the number of delegates to be created by the repeater</li>
<li>A model (e.g&#x2e; a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> item, or a <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> subclass)</li>
<li>A string list</li>
<li>An object list</li>
</ul>
<p>The type of model affects the properties that are exposed to the <a href="#delegate-prop">delegate</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Models</a>.</p>
<!-- @@@model -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$itemAdded -->
<table class="qmlname"><tr valign="top" id="itemAdded-signal"><td class="tblQmlFuncNode"><p><span class="name">itemAdded</span>(<span class="type">int</span><i> index</i>, <span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>)</p></td></tr></table><p>This signal is emitted when an item is added to the repeater. The <i>index</i> parameter holds the index at which the item has been inserted within the repeater, and the <i>item</i> parameter holds the <a href="QtQuick.Item.md">Item</a> that has been added.</p>
<p>The corresponding handler is <code>onItemAdded</code>.</p>
<!-- @@@itemAdded -->
<br/>
<!-- $$$itemRemoved -->
<table class="qmlname"><tr valign="top" id="itemRemoved-signal"><td class="tblQmlFuncNode"><p><span class="name">itemRemoved</span>(<span class="type">int</span><i> index</i>, <span class="type"><a href="QtQuick.Item.md">Item</a></span><i> item</i>)</p></td></tr></table><p>This signal is emitted when an item is removed from the repeater. The <i>index</i> parameter holds the index at which the item was removed from the repeater, and the <i>item</i> parameter holds the <a href="QtQuick.Item.md">Item</a> that was removed.</p>
<p>Do not keep a reference to <i>item</i> if it was created by this repeater, as in these cases it will be deleted shortly after the signal is handled.</p>
<p>The corresponding handler is <code>onItemRemoved</code>.</p>
<!-- @@@itemRemoved -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$itemAt -->
<table class="qmlname"><tr valign="top" id="itemAt-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">itemAt</span>(<span class="type">index</span>)</p></td></tr></table><p>Returns the <a href="QtQuick.Item.md">Item</a> that has been created at the given <i>index</i>, or <code>null</code> if no item exists at <i>index</i>.</p>
<!-- @@@itemAt -->
<br/>
