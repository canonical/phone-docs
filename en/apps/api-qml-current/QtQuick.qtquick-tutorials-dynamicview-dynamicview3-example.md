---
Title: QtQuick.qtquick-tutorials-dynamicview-dynamicview3-example
---

# QtQuick.qtquick-tutorials-dynamicview-dynamicview3-example

<span class="subtitle"></span>
<!-- $$$tutorials/dynamicview/dynamicview3-description -->
<p>The next step in our application to move items within the list as they're dragged so that we can re-order the list. To achieve this we introduce three new types to our application; DelegateModel, <a href="QtQuick.Drag.md">Drag</a> and <a href="QtQuick.DropArea.md">DropArea</a>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">dragDelegate</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">dragArea</span>
property <span class="type">bool</span> <span class="name">held</span>: <span class="number">false</span>
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">content</span>.<span class="name">height</span>
<span class="name">drag</span>.target: <span class="name">held</span> ? <span class="name">content</span> : <span class="name">undefined</span>
<span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">YAxis</span>
<span class="name">onPressAndHold</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">true</span>
<span class="name">onReleased</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">false</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">content</span>
<span class="name">Drag</span>.active: <span class="name">dragArea</span>.<span class="name">held</span>
<span class="name">Drag</span>.source: <span class="name">dragArea</span>
<span class="name">Drag</span>.hotSpot.x: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">Drag</span>.hotSpot.y: <span class="name">height</span> <span class="operator">/</span> <span class="number">2</span>
}
<span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">10</span> }
<span class="name">onEntered</span>: {
<span class="name">visualModel</span>.<span class="name">items</span>.<span class="name">move</span>(
<span class="name">drag</span>.<span class="name">source</span>.<span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>,
<span class="name">dragArea</span>.<span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>)
}
}
}
}
}</pre>
<h3 >Walkthrough</h3>
<p>In order to re-order the view we need to determine when one item has been dragged over another. With the Drag attached property we can generate events that are sent to the scene graph whenever the item it is attached to moves.</p>
<pre class="qml">                <span class="name">Drag</span>.active: <span class="name">dragArea</span>.<span class="name">held</span>
<span class="name">Drag</span>.source: <span class="name">dragArea</span>
<span class="name">Drag</span>.hotSpot.x: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">Drag</span>.hotSpot.y: <span class="name">height</span> <span class="operator">/</span> <span class="number">2</span></pre>
<p>Drag events are only sent while the active property is true, so in this example the first event would be sent when the delegate was held with additional event sents when dragging. The <a href="QtQuick.Drag.md#hotSpot-attached-prop">hotSpot</a> property specifies the relative position of the drag events within the dragged item, the center of the item in this instance.</p>
<p>Then we use a <a href="QtQuick.DropArea.md">DropArea</a> in each view item to determine when the hot spot of the dragged item intersects another item, when a drag enters one of these DropAreas we can move the dragged item to the index of the item it was dragged over.</p>
<pre class="qml">            <span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">10</span> }
<span class="name">onEntered</span>: {
<span class="name">visualModel</span>.<span class="name">items</span>.<span class="name">move</span>(
<span class="name">drag</span>.<span class="name">source</span>.<span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>,
<span class="name">dragArea</span>.<span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>)
}
}</pre>
<p>To move the items within the view we use a DelegateModel. The DelegateModel type is used by the view types to instantiate delegate items from model data and when constructed explicitly can be used to filter and re-order the model items provided to <a href="QtQuick.ListView.md">ListView</a>. The items property of DelegateModel provides access to the view's items and allows us to change the visible order without modifying the source model. To determine the current visible index of the items we use itemsIndex property on the DelegateModel attached property of the delegate item.</p>
<p>To utilize a DelegateModel with a <a href="QtQuick.ListView.md">ListView</a> we bind it to the <a href="QtQuick.ListView.md#model-prop">model</a> property of the view and bind the model and delegate to the DelegateModel.</p>
<pre class="qml">    <span class="type">DelegateModel</span> {
<span class="name">id</span>: <span class="name">visualModel</span>
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">dragDelegate</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
<span class="name">model</span>: <span class="name">visualModel</span>
<span class="name">spacing</span>: <span class="number">4</span>
<span class="name">cacheBuffer</span>: <span class="number">50</span>
}</pre>
<p>Files:</p>
<ul>
<li>tutorials/dynamicview/dynamicview3/PetsModel.qml</li>
<li>tutorials/dynamicview/dynamicview3/dynamicview.qml</li>
<li>tutorials/dynamicview/dynamicview3/dynamicview3.qmlproject</li>
</ul>
<!-- @@@tutorials/dynamicview/dynamicview3 -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.tutorials-dynamicview-dynamicview2/">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a>
<a class="nextPage" href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.tutorials-dynamicview-dynamicview4/">QML Dynamic View Ordering Tutorial 4 - Sorting Items</a>
</p>
