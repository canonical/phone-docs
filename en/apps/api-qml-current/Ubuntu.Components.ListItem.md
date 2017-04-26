---
Title: Ubuntu.Components.ListItem
---

# Ubuntu.Components.ListItem

<span class="subtitle"></span>
<!-- $$$ListItem-brief -->
<p>The ListItem element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must be taken to keep the contents light in order to ensure good performance when used in long list views. More...</p>
<!-- @@@ListItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#contentItem-prop">contentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#contentMoving-prop">contentMoving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#divider-prop">divider</a></b></b><ul>
<li class="fn"><b><b><a href="#divider.colorFrom-prop">divider.colorFrom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#divider.colorTo-prop">divider.colorTo</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#dragMode-prop">dragMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#dragging-prop">dragging</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#expansion-prop">expansion</a></b></b><ul>
<li class="fn"><b><b><a href="#expansion.expanded-prop">expansion.expanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#expansion.height-prop">expansion.height</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#highlightColor-prop">highlightColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#highlighted-prop">highlighted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#leadingActions-prop">leadingActions</a></b></b> : ListItemActions</li>
<li class="fn"><b><b><a href="#selectMode-prop">selectMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selected-prop">selected</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#swipeEnabled-prop">swipeEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#swiped-prop">swiped</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#trailingActions-prop">trailingActions</a></b></b> : ListItemActions</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#clicked-signal">clicked</a></b></b>()</li>
<li class="fn"><b><b><a href="#contentMovementEnded-signal">contentMovementEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#contentMovementStarted-signal">contentMovementStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#pressAndHold-signal">pressAndHold</a></b></b>()</li>
</ul>
<!-- $$$ListItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component provides two color properties which configures the item's background when normal or highlighted. This can be configured through <a href="#color-prop">color</a> and <a href="#highlightColor-prop">highlightColor</a> properties. The list item is highlighted if there is an action attached to it. This means that the list item must have an active component declared as child, at least leading- or trailing actions specified, or to have a slot connected to <a href="#clicked-signal">clicked</a> or <a href="#pressAndHold-signal">pressAndHold</a> signal. In any other case the component will not be highlighted, and <a href="#highlighted-prop">highlighted</a> property will not be toggled either. Also, there will be no highlight happening if the click happens on the active component.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
}
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem&quot;</span>)
}
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
}
]
}
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with leadingActions set&quot;</span>)
}
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
}
]
}
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with trailingActions set&quot;</span>)
}
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;onClicked implemented&quot;</span>
}
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with onClicked implemented&quot;</span>)
}
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;onPressAndHold implemented&quot;</span>
}
<span class="name">onPressAndHold</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;long-pressed on ListItem with onPressAndHold implemented&quot;</span>)
}
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;No highlight&quot;</span>
}
}
}
}</pre>
<p><a href="#contentItem-prop">contentItem</a> holds all components and resources declared as child to <a href="index.html">ListItem</a>. Being an Item, all properties can be accessed or altered. However, make sure you never change <b>x</b>, <b>y</b>, <b>width</b>, <b>height</b> or <b>anchors</b> properties as those are controlled by the <a href="index.html">ListItem</a> itself when leading or trailing actions are revealed or when selectable and draggable mode is turned on, and thus might cause the component to misbehave. Anchors margins are free to alter.</p>
<p>Each <a href="index.html">ListItem</a> has a thin divider shown on the bottom of the component. This divider can be configured through the <a href="#divider-prop">divider</a> grouped property, which can configure its margins from the edges of the <a href="index.html">ListItem</a> as well as its visibility. When used in <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> or <a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a>, the last list item will not show the divider no matter of the visible property value set.</p>
<p><a href="index.html">ListItem</a> can handle actions that can get swiped from front or back of the item. These actions are Action elements visualized in panels attached to the front or to the back of the item, and are revealed by swiping the item horizontally. The swipe is started only after the mouse/touch move had passed a given threshold. The actions are visualized by a panel, which is configurable through the <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a>.</p>
<p>The actions are configured through the <a href="#leadingActions-prop">leadingActions</a> as well as <a href="#trailingActions-prop">trailingActions</a> properties.</p>
<pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
<span class="name">id</span>: <span class="name">listItem</span>
<span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">onTriggered</span>: <span class="name">listItem</span>.<span class="name">destroy</span>()
}
]
}
<span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
<span class="name">onTriggered</span>: {
<span class="comment">// do some search</span>
}
}
]
}
}</pre>
<p><b>Note: </b>When a list item is swiped, it automatically connects both leading and trailing actions to the list item. If needed, the same <a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a> instance can be used in both leading and trailing side. In the following example the list item can be deleted through both leading and trailing actions using the same container:</p><pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
<span class="name">id</span>: <span class="name">listItem</span>
<span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
<span class="name">onTriggered</span>: <span class="name">listItem</span>.<span class="name">destroy</span>()
}
]
}
<span class="name">trailingActions</span>: <span class="name">leadingActions</span>
}</pre>
<p>The action is triggered only after all the animations are completed.</p>
<p><a href="index.html">ListItem</a> provides a set of attached properties which are attached to each panel of the <a href="index.html">ListItem</a>. However not all properties are valid in all the circumstances.</p>
<p>The component is styled using the <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a> style interface.</p>
<h3 >Selection mode</h3>
<p>The selection mode of a <a href="index.html">ListItem</a> is controlled by the <a href="Ubuntu.Components.ViewItems.md#selectMode-attached-prop">ViewItems::selectMode</a> attached property. This property is attached to each parent item of the <a href="index.html">ListItem</a> exception being when used as delegate in <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, where the property is attached to the view itself.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="comment">// this will not have any effect</span>
<span class="name">ViewItems</span>.selectMode: <span class="number">true</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="comment">// this will work</span>
<span class="name">ViewItems</span>.selectMode: <span class="number">false</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">25</span>
<span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;ListItem in Flickable #&quot;</span> <span class="operator">+</span> <span class="name">index</span>
}
}
}
}
}</pre>
<p>The indices selected are stored in <a href="Ubuntu.Components.ViewItems.md#selectedIndices-attached-prop">ViewItems::selectedIndices</a> attached property, attached the same way as the <a href="Ubuntu.Components.ViewItems.md#selectMode-attached-prop">ViewItems::selectMode</a> property is. This is a read/write property, meaning that initial selected item indices can be set up. The list contains the indices added in the order of selection, not sorted in any form.</p>
<p><b>Note: </b>When in selectable mode, the <a href="index.html">ListItem</a> content is not disabled and <a href="#clicked-signal">clicked</a> and <a href="#pressAndHold-signal">pressAndHold</a> signals are also emitted. The only restriction the component implies is that leading and trailing actions cannot be swiped in. selectable property can be used to implement different behavior when <a href="#clicked-signal">clicked</a> or <a href="#pressAndHold-signal">pressAndHold</a>.</p>
<h3 >Dragging mode</h3>
<p>The dragging mode is only supported on <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, as it requires a model supported view to be used. The drag mode can be activated through the <a href="Ubuntu.Components.ViewItems.md#dragMode-attached-prop">ViewItems::dragMode</a> attached property, when attached to the <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>. The items will show a panel as defined in the style, and dragging will be possible when initiated over this panel. Pressing or clicking anywhere else on the <a href="index.html">ListItem</a> will invoke the item's action assigned to the touched area.</p>
<p>The dragging is realized through the <a href="Ubuntu.Components.ViewItems.md#dragUpdated-signal">ViewItems::dragUpdated</a> signal, and a signal handler must be implemented in order to have the draging working. Implementations can drive the drag to be live (each time the dragged item is dragged over an other item will change the order of the items) or drag'n'drop way (the dragged item will be moved only when the user releases the item by dropping it to the desired position). The signal has a <a href="Ubuntu.Components.ListItemDrag.md">ListItemDrag</a> <i>event</i> parameter, which gives detailed information about the drag event, like started, dragged up or downwards or dropped, allowing in this way various restrictions on the dragging.</p>
<p>The dragging event provides three states reported in <a href="Ubuntu.Components.ListItemDrag.md#status-prop">ListItemDrag::status</a> field, <i>Started</i>, <i>Moving</i> and <i>Dropped</i>. The other event field values depend on the status, therefore the status must be taken into account when implementing the signal handler. In case live dragging is needed, <i>Moving</i> state must be checked, and for non-live drag (drag'n'drop) the <i>Moving</i> state must be blocked by setting <i>event.accept = false</i>, otherwise the dragging will not know whether the model has been updated or not.</p>
<p>Example of live drag implementation:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="name">Component</span>.onCompleted: {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">100</span>; i++) {
<span class="name">append</span>({tag: <span class="string">&quot;List item #&quot;</span><span class="operator">+</span><span class="name">i</span>});
}
}
}
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
<span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
!<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
}
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
<span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
}
}
<span class="name">moveDisplaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></span> {
<span class="name">property</span>: <span class="string">&quot;y&quot;</span>
}
}
}</pre>
<p>Example of drag'n'drop implementation:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="name">Component</span>.onCompleted: {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">100</span>; i++) {
<span class="name">append</span>({tag: <span class="string">&quot;List item #&quot;</span><span class="operator">+</span><span class="name">i</span>});
}
}
}
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
<span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
!<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
}
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
<span class="comment">// inform dragging that move is not performed</span>
<span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
<span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
}
}
<span class="name">moveDisplaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></span> {
<span class="name">property</span>: <span class="string">&quot;y&quot;</span>
}
}
}</pre>
<p><a href="index.html">ListItem</a> does not provide animations when the <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>'s model is updated. In order to have animation, use <a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a> or provide a transition animation to the moveDisplaced or displaced property of the <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>.</p>
<h4 >Using non-QAbstractItemModel models</h4>
<p>Live dragging (moving content on the move) is only possible when the model is a derivate of the <a href="../sdk-14.10/QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a>. When a list model is used, the <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> will re-create all the items in the view, meaning that the dragged item will no longer be controlled by the dragging. However, non-live drag'n'drop operations can still be implemented with these kind of lists as well.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: [<span class="string">&quot;plum&quot;</span>, <span class="string">&quot;peach&quot;</span>, <span class="string">&quot;pomegrenade&quot;</span>, <span class="string">&quot;pear&quot;</span>, <span class="string">&quot;banana&quot;</span>]
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
<span class="name">color</span>: <span class="name">dragMode</span> ? <span class="string">&quot;lightblue&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
<span class="name">onPressAndHold</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span> <span class="operator">=</span>
!<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">ViewItems</span>.<span class="name">dragMode</span>
}
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Started</span>) {
<span class="keyword">return</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
var <span class="name">fromData</span> = <span class="name">model</span>[<span class="name">event</span>.<span class="name">from</span>];
<span class="comment">// must use a temporary variable as list manipulation</span>
<span class="comment">// is not working directly on model</span>
var <span class="name">list</span> = <span class="name">model</span>;
<span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="number">1</span>);
<span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">to</span>, <span class="number">0</span>, <span class="name">fromData</span>);
<span class="name">model</span> <span class="operator">=</span> <span class="name">list</span>;
} <span class="keyword">else</span> {
<span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
}
}
}</pre>
<p>When using <a href="../sdk-14.10/QtQml.DelegateModel.md">DelegateModel</a>, it must be taken into account when implementing the <a href="Ubuntu.Components.ViewItems.md#dragUpdated-signal">ViewItems::dragUpdated</a> signal handler.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">DelegateModel</span> {
<span class="name">model</span>: [<span class="string">&quot;apple&quot;</span>, <span class="string">&quot;pear&quot;</span>, <span class="string">&quot;plum&quot;</span>, <span class="string">&quot;peach&quot;</span>, <span class="string">&quot;nuts&quot;</span>, <span class="string">&quot;dates&quot;</span>]
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
<span class="name">onPressAndHold</span>: <span class="name">dragMode</span> <span class="operator">=</span> !<span class="name">dragMode</span>;
}
}
<span class="name">ViewItems</span>.onDragUpdated: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Moving</span>) {
<span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
var <span class="name">fromData</span> = <span class="name">model</span>.<span class="name">model</span>[<span class="name">event</span>.<span class="name">from</span>];
var <span class="name">list</span> = <span class="name">model</span>.<span class="name">model</span>;
<span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="number">1</span>);
<span class="name">list</span>.<span class="name">splice</span>(<span class="name">event</span>.<span class="name">to</span>, <span class="number">0</span>, <span class="name">fromData</span>);
<span class="name">model</span>.<span class="name">model</span> <span class="operator">=</span> <span class="name">list</span>;
}
}
}</pre>
<h3 >Expansion</h3>
<p>Since Ubuntu.Components 1.3, <a href="index.html">ListItem</a> supports expansion. ListItems declared in a view can expand exclusively, having leading and trailing panes locked when expanded and to be collapsed when tapping outside of the expanded area. The expansion is driven by the <a href="#expansion">expansion</a> group property, and the behavior by the <a href="Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop">ViewItems::expansionFlags</a> and <a href="Ubuntu.Components.ViewItems.md#expandedIndices-attached-prop">ViewItems::expandedIndices</a> attached properties. Each <a href="index.html">ListItem</a> which is required to expand should set a proper height in the <a href="#expansion.height-prop">expansion.height</a> property, which should be bigger than the collapsed height of the <a href="index.html">ListItem</a> is. The expansion itself is driven by the <a href="#expansion.expanded-prop">expansion.expanded</a> property, which can be set freely depending on the use case, on click, on long press, etc.</p>
<p>The default expansion behavior is set to be exclusive and locked, meaning there can be only one <a href="index.html">ListItem</a> expanded within a view and neither leading nor trailing action panels cannot be swiped in. Expanding an other <a href="index.html">ListItem</a> will collapse the previosuly expanded one. There can be cases when tapping outside of the expanded area of a <a href="index.html">ListItem</a> we woudl need the expanded one to collapse automatically. This can be achieved by setting <code>ViewItems.CollapseOnOutsidePress</code> flag to <a href="Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop">ViewItems::expansionFlags</a>. This flag will also turn on <code>ViewItems.Exclusive</code> flag, as tapping outside practicly forbids more than one item to be expanded at a time.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="name">Component</span>.onCompleted: {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">50</span>; i++) {
<span class="name">append</span>({data: <span class="name">i</span>});
}
}
}
<span class="name">ViewItems</span>.expansionFlags: <span class="name">ViewItems</span>.<span class="name">CollapseOnOutsidePress</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Model item #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
<span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">icon</span>: <span class="string">&quot;search&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">icon</span>: <span class="string">&quot;edit&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">icon</span>: <span class="string">&quot;copy&quot;</span>
}
]
}
<span class="name">expansion</span>.height: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
<span class="name">onClicked</span>: <span class="name">expansion</span>.<span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>
}
}</pre>
<p>The example above collapses the expanded item whenever it is tapped or mouse pressed outside of the expanded list item.</p>
<p><b>Note: </b>Set 0 to <a href="Ubuntu.Components.ViewItems.md#expansionFlags-attached-prop">ViewItems::expansionFlags</a> if no restrictions on expanded items is required (i.e multiple expanded items are allowed, swiping leading/trailing actions when expanded).</p><p><b>Note: </b>Do not bind <a href="#expansion.height-prop">expansion.height</a> to the <a href="index.html">ListItem</a>'s height as is will cause binding loops.</p>
<h3 >Note on styling</h3>
<p><a href="index.html">ListItem</a>'s styling differs from the other components styling, as <a href="index.html">ListItem</a> loads the style only when either of the leadin/trailing panels are swiped, or when the item enters in select- or drag mode. The component does not assume any visuals to be present in the style.</p>
<p><b>See also </b><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a>, <a href="Ubuntu.Components.ViewItems.md#dragMode-attached-prop">ViewItems::dragMode</a>, <a href="Ubuntu.Components.ViewItems.md#dragUpdated-signal">ViewItems::dragUpdated</a>, and <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a>.</p>
<!-- @@@ListItem -->
<h2>Property Documentation</h2>
<!-- $$$action -->
<table class="qmlname"><tr valign="top" id="action-prop"><td class="tblQmlPropNode"><p><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The property holds the action which will be triggered when the <a href="index.html">ListItem</a> is clicked. <a href="index.html">ListItem</a> will not visualize the action, that is the responsibility of the components placed inside the list item. However, when set, the <a href="index.html">ListItem</a> will be highlighted on press.</p>
<p>If the action set has no value type set, <a href="index.html">ListItem</a> will set its type to <b>Action.Integer</b> and the <a href="Ubuntu.Components.Action.md#triggered-signal">triggered</a> signal will be getting the <a href="index.html">ListItem</a> index as <i>value</i> parameter.</p>
<p>Defaults no null.</p>
<!-- @@@action -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>Configures the color of the normal background. The default value is transparent.</p>
<!-- @@@color -->
<br/>
<!-- $$$contentItem -->
<table class="qmlname"><tr valign="top" id="contentItem-prop"><td class="tblQmlPropNode"><p><span class="name">contentItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>contentItem holds the components placed on a <a href="index.html">ListItem</a>. It is anchored to the <a href="index.html">ListItem</a> on left, top and right, and to the divider on the bottom, or to the <a href="index.html">ListItem</a>'s bottom in case the divider is not visible. The content is clipped by default. It is not recommended to change the anchors as the <a href="index.html">ListItem</a> controls them, however any other property value is free to change. Example:</p>
<pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
<span class="type">contentItem</span>.anchors {
<span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">0.5</span>)
<span class="name">bottomMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">0.5</span>)
}
}</pre>
<!-- @@@contentItem -->
<br/>
<!-- $$$contentMoving -->
<table class="qmlname"><tr valign="top" id="contentMoving-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">contentMoving</span> : <span class="type">bool</span></p></td></tr></table><p>The property describes whether the content is moving or not. The content is moved when swiped or when snapping in or out, and lasts till the snapping animation completes.</p>
<!-- @@@contentMoving -->
<br/>
<!-- $$$divider -->
<table class="qmlname"><tr valign="top" id="divider-prop"><th class="centerAlign"><p><b>divider group</b></p></th></tr><tr valign="top" id="divider.colorFrom-prop"><td class="tblQmlPropNode"><p><span class="name">divider.colorFrom</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="divider.colorTo-prop"><td class="tblQmlPropNode"><p><span class="name">divider.colorTo</span> : <span class="type">real</span></p></td></tr></table><p>This grouped property configures the thin divider shown in the bottom of the component. The divider is not moved together with the content when swiped left or right to reveal the actions. <b>colorFrom</b> and <b>colorTo</b> configure the starting and ending colors of the divider. Beside these properties all Item specific properties can be accessed.</p>
<p>When <b>visible</b> is true, the <a href="index.html">ListItem</a>'s content size gets thinner with the divider's <b>thickness</b>. By default the divider is anchored to the bottom, left right of the <a href="index.html">ListItem</a>, and has a 2dp height.</p>
<!-- @@@divider -->
<br/>
<!-- $$$dragMode -->
<table class="qmlname"><tr valign="top" id="dragMode-prop"><td class="tblQmlPropNode"><p><span class="name">dragMode</span> : <span class="type">bool</span></p></td></tr></table><p>The property reports whether a <a href="index.html">ListItem</a> is draggable or not. While in drag mode, the list item content cannot be swiped. The default value is false.</p>
<!-- @@@dragMode -->
<br/>
<!-- $$$dragging -->
<table class="qmlname"><tr valign="top" id="dragging-prop"><td class="tblQmlPropNode"><p><span class="name">dragging</span> : <span class="type">bool</span></p></td></tr></table><p>The property informs about an ongoing dragging on a <a href="index.html">ListItem</a>.</p>
<!-- @@@dragging -->
<br/>
<!-- $$$expansion -->
<table class="qmlname"><tr valign="top" id="expansion-prop"><th class="centerAlign"><p><b>expansion group</b></p></th></tr><tr valign="top" id="expansion.expanded-prop"><td class="tblQmlPropNode"><p><span class="name">expansion.expanded</span> : <span class="type">bool</span></p></td></tr><tr valign="top" id="expansion.height-prop"><td class="tblQmlPropNode"><p><span class="name">expansion.height</span> : <span class="type">real</span></p></td></tr></table><p>The group drefines the expansion state of the <a href="index.html">ListItem</a>.</p>
<p>This property group was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@expansion -->
<br/>
<!-- $$$highlightColor -->
<table class="qmlname"><tr valign="top" id="highlightColor-prop"><td class="tblQmlPropNode"><p><span class="name">highlightColor</span> : <span class="type">color</span></p></td></tr></table><p>Configures the color when highlighted. Defaults to the theme palette's background color. If changed, it can be reset by assigning undefined as value.</p>
<!-- @@@highlightColor -->
<br/>
<!-- $$$highlighted -->
<table class="qmlname"><tr valign="top" id="highlighted-prop"><td class="tblQmlPropNode"><p><span class="name">highlighted</span> : <span class="type">bool</span></p></td></tr></table><p>True when the item is pressed. The items stays highlighted when the mouse or touch is moved horizontally. When in Flickable (or <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>), the item gets un-highlighted (false) when the mouse or touch is moved towards the vertical direction causing the flickable to move.</p>
<p>Configures the color when highlighted. Defaults to the theme palette's background color.</p>
<p>An item is highlighted, thus highlight state toggled, when pressed and it has one of the following conditions fulfilled:</p>
<ul>
<li><a href="#leadingActions-prop">leadingActions</a> or <a href="#trailingActions-prop">trailingActions</a> set,</li>
<li>it has an <a href="#action-prop">action</a> attached</li>
<li>if the <a href="index.html">ListItem</a> has an active child component, such as a <a href="Ubuntu.Components.Button.md">Button</a>, a <a href="Ubuntu.Components.Switch.md">Switch</a>, etc.</li>
<li>in general, if an active (enabled and visible) <b>MouseArea</b> is added as a child component</li>
<li><a href="#clicked-signal">clicked</a> signal handler is implemented or there is a slot or function connected to it</li>
<li><a href="#pressAndHold-signal">pressAndHold</a> signal handler is implemented or there is a slot or function connected to it.</li>
</ul>
<p><b>Note: </b>Adding an active component does not mean the component will be activated when the <a href="index.html">ListItem</a> will be tapped/clicked outside of the component area. If such a behavior is needed, that must be done explicitly.</p><pre class="qml"><span class="type"><a href="index.html">ListItem</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;This is a label&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Switch.md">Switch</a></span> {
<span class="name">id</span>: <span class="name">toggle</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">Component</span>.onCompleted: <span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">toggle</span>.<span class="name">clicked</span>)
}</pre>
<p><b>See also </b><a href="#action-prop">action</a>, <a href="#leadingActions-prop">leadingActions</a>, and <a href="#trailingActions-prop">trailingActions</a>.</p>
<!-- @@@highlighted -->
<br/>
<!-- $$$leadingActions -->
<table class="qmlname"><tr valign="top" id="leadingActions-prop"><td class="tblQmlPropNode"><p><span class="name">leadingActions</span> : <span class="type"><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a></span></p></td></tr></table><p>The property holds the actions and its configuration to be revealed when swiped from left to right.</p>
<p><b>See also </b><a href="#trailingActions-prop">trailingActions</a>.</p>
<!-- @@@leadingActions -->
<br/>
<!-- $$$selectMode -->
<table class="qmlname"><tr valign="top" id="selectMode-prop"><td class="tblQmlPropNode"><p><span class="name">selectMode</span> : <span class="type">bool</span></p></td></tr></table><p>The property reports whether the component and the view using the component is in selectable state. While selectable, the <a href="index.html">ListItem</a>'s leading- and trailing panels cannot be swiped in. <a href="#clicked-signal">clicked</a> and <a href="#pressAndHold-signal">pressAndHold</a> signals are also triggered. Selectable mode can be set either through this property or through the parent attached <a href="Ubuntu.Components.ViewItems.md#selectMode-attached-prop">ViewItems::selectMode</a> property.</p>
<!-- @@@selectMode -->
<br/>
<!-- $$$selected -->
<table class="qmlname"><tr valign="top" id="selected-prop"><td class="tblQmlPropNode"><p><span class="name">selected</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives whether a list item is selected or not. Defaults to false.</p>
<p><b>See also </b><a href="#selectMode-prop">ListItem::selectMode</a> and <a href="Ubuntu.Components.ViewItems.md#selectMode-attached-prop">ViewItems::selectMode</a>.</p>
<!-- @@@selected -->
<br/>
<!-- $$$swipeEnabled -->
<table class="qmlname"><tr valign="top" id="swipeEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">swipeEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>The property enables the swiping of the leading- or trailing actions. This is useful when an overlay component needs to handle mouse moves or drag events without the <a href="index.html">ListItem</a> to steal the events. Defaults to true.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="name">model</span>: <span class="number">25</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="name">swipeEnabled</span>: !<span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">height</span>: <span class="name">width</span>
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">parent</span>
}
}
}
}</pre>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@swipeEnabled -->
<br/>
<!-- $$$swiped -->
<table class="qmlname"><tr valign="top" id="swiped-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">swiped</span> : <span class="type">bool</span></p></td></tr></table><p>The property notifies about the content being swiped so leading or trailing actions are visible.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@swiped -->
<br/>
<!-- $$$trailingActions -->
<table class="qmlname"><tr valign="top" id="trailingActions-prop"><td class="tblQmlPropNode"><p><span class="name">trailingActions</span> : <span class="type"><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a></span></p></td></tr></table><p>The property holds the actions and its configuration to be revealed when swiped from right to left.</p>
<p><b>See also </b><a href="#leadingActions-prop">leadingActions</a>.</p>
<!-- @@@trailingActions -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top" id="clicked-signal"><td class="tblQmlFuncNode"><p><span class="name">clicked</span>()</p></td></tr></table><p>The signal is emitted when the component gets released while the <a href="#highlighted-prop">highlighted</a> property is set. The signal is not emitted if the <a href="index.html">ListItem</a> content is swiped or when used in Flickable (or <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>, <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a>) and the Flickable gets moved.</p>
<p>If the <a href="index.html">ListItem</a> contains a component which contains an active <a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a>, the clicked signal will be supressed when clicked over this area.</p>
<!-- @@@clicked -->
<br/>
<!-- $$$contentMovementEnded -->
<table class="qmlname"><tr valign="top" id="contentMovementEnded-signal"><td class="tblQmlFuncNode"><p><span class="name">contentMovementEnded</span>()</p></td></tr></table><p>The signal is emitted when the content movement has ended.</p>
<!-- @@@contentMovementEnded -->
<br/>
<!-- $$$contentMovementStarted -->
<table class="qmlname"><tr valign="top" id="contentMovementStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">contentMovementStarted</span>()</p></td></tr></table><p>The signal is emitted when the content movement has started.</p>
<!-- @@@contentMovementStarted -->
<br/>
<!-- $$$pressAndHold -->
<table class="qmlname"><tr valign="top" id="pressAndHold-signal"><td class="tblQmlFuncNode"><p><span class="name">pressAndHold</span>()</p></td></tr></table><p>The signal is emitted when the list item is long pressed.</p>
<p>If the <a href="index.html">ListItem</a> contains a component which contains an active <a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a>, the pressAndHold signal will be supressed when pressed over this area.</p>
<!-- @@@pressAndHold -->
<br/>
