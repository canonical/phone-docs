---
Title: QtQuick.GridView
---

# QtQuick.GridView

<span class="subtitle"></span>
<!-- $$$GridView-brief -->
<p>For specifying a grid view of items provided by a model More...</p>
<!-- @@@GridView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Flickable.md">Flickable</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#addDisplaced-prop">addDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#cacheBuffer-prop">cacheBuffer</a></b></b> : int</li>
<li class="fn"><b><b><a href="#cellHeight-prop">cellHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#cellWidth-prop">cellWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentIndex-prop">currentIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentItem-prop">currentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#displaced-prop">displaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#displayMarginBeginning-prop">displayMarginBeginning</a></b></b> : int</li>
<li class="fn"><b><b><a href="#displayMarginEnd-prop">displayMarginEnd</a></b></b> : int</li>
<li class="fn"><b><b><a href="#effectiveLayoutDirection-prop">effectiveLayoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#flow-prop">flow</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#footer-prop">footer</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#footerItem-prop">footerItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#header-prop">header</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#headerItem-prop">headerItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#highlight-prop">highlight</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#highlightItem-prop">highlightItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#highlightMoveDuration-prop">highlightMoveDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#highlightRangeMode-prop">highlightRangeMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#keyNavigationWraps-prop">keyNavigationWraps</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layoutDirection-prop">layoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : model</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#moveDisplaced-prop">moveDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#preferredHighlightEnd-prop">preferredHighlightEnd</a></b></b> : real</li>
<li class="fn"><b><b><a href="#remove-prop">remove</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#removeDisplaced-prop">removeDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#snapMode-prop">snapMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#verticalLayoutDirection-prop">verticalLayoutDirection</a></b></b> : enumeration</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#delayRemove-attached-prop">delayRemove</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#isCurrentItem-attached-prop">isCurrentItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#view-attached-prop">view</a></b></b> : GridView</li>
</ul>
<h2 id="attached-signals">Attached Signals</h2>
<ul>
<li class="fn"><b><b><a href="#add-signal">add</a></b></b>()</li>
<li class="fn"><b><b><a href="#remove-signal">remove</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#forceLayout-method">forceLayout</a></b></b>()</li>
<li class="fn">int <b><b><a href="#indexAt-method">indexAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn">Item <b><b><a href="#itemAt-method">itemAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn"><b><b><a href="#moveCurrentIndexDown-method">moveCurrentIndexDown</a></b></b>()</li>
<li class="fn"><b><b><a href="#moveCurrentIndexLeft-method">moveCurrentIndexLeft</a></b></b>()</li>
<li class="fn"><b><b><a href="#moveCurrentIndexRight-method">moveCurrentIndexRight</a></b></b>()</li>
<li class="fn"><b><b><a href="#moveCurrentIndexUp-method">moveCurrentIndexUp</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionViewAtBeginning-method">positionViewAtBeginning</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionViewAtEnd-method">positionViewAtEnd</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionViewAtIndex-method">positionViewAtIndex</a></b></b>(int <i>index</i>, PositionMode <i>mode</i>)</li>
</ul>
<!-- $$$GridView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="QtQuick.Drag.md#gridview">GridView</a> displays data from models created from built-in QML types like <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> and <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>, or custom model classes defined in C++ that inherit from QAbstractListModel.</p>
<p>A <a href="QtQuick.Drag.md#gridview">GridView</a> has a <a href="#model-prop">model</a>, which defines the data to be displayed, and a <a href="#delegate-prop">delegate</a>, which defines how the data should be displayed. Items in a <a href="QtQuick.Drag.md#gridview">GridView</a> are laid out horizontally or vertically. Grid views are inherently flickable as <a href="QtQuick.Drag.md#gridview">GridView</a> inherits from <a href="QtQuick.qtquick-touchinteraction-example.md#flickable">Flickable</a>.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows the definition of a simple list model defined in a file called <code>ContactModel.qml</code>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ListModel</span> {
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Jim Williams&quot;</span>
<span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
<span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Bill Smyth&quot;</span>
<span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Sam Wise&quot;</span>
<span class="name">portrait</span>: <span class="string">&quot;pics/portrait.png&quot;</span>
}
}</pre>
<p><img src="https://assets.ubuntu.com/v1/8ae65f12-gridview-simple.png" alt="" /></p>
<p>This model can be referenced as <code>ContactModel</code> in other QML files. See QML Modules for more information about creating reusable components like this.</p>
<p>Another component can display this model data in a <a href="QtQuick.Drag.md#gridview">GridView</a>, as in the following example, which creates a <code>ContactModel</code> component for its model, and a <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a> (containing <a href="QtQuick.qtquick-imageelements-example.md#image">Image</a> and <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> items) for its delegate.</p>
<br style="clear: both" /><pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">GridView</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">Column</span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
}
}</pre>
<p><img src="https://assets.ubuntu.com/v1/394bfe12-gridview-highlight.png" alt="" /></p>
<p>The view will create a new delegate for each item in the model. Note that the delegate is able to access the model's <code>name</code> and <code>portrait</code> data directly.</p>
<p>An improved grid view is shown below. The delegate is visually improved and is moved into a separate <code>contactDelegate</code> component.</p>
<br style="clear: both" /><pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactDelegate</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">grid</span>.<span class="name">cellWidth</span>; <span class="name">height</span>: <span class="name">grid</span>.<span class="name">cellHeight</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
}
}
}
<span class="type"><a href="index.html">GridView</a></span> {
<span class="name">id</span>: <span class="name">grid</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactDelegate</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span> }
<span class="name">focus</span>: <span class="number">true</span>
}
}</pre>
<p>The currently selected item is highlighted with a blue <a href="QtQuick.Rectangle.md">Rectangle</a> using the <a href="QtQuick.qtquick-views-example.md#highlight">highlight</a> property, and <code>focus</code> is set to <code>true</code> to enable keyboard navigation for the grid view. The grid view itself is a focus scope (see <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a> for more details).</p>
<p>Delegates are instantiated as needed and may be destroyed at any time. State should <i>never</i> be stored in a delegate.</p>
<p><a href="QtQuick.Drag.md#gridview">GridView</a> attaches a number of properties to the root item of the delegate, for example <code>GridView.isCurrentItem</code>. In the following example, the root delegate item can access this attached property directly as <code>GridView.isCurrentItem</code>, while the child <code>contactInfo</code> object must refer to this property as <code>wrapper.GridView.isCurrentItem</code>.</p>
<pre class="qml"><span class="type"><a href="index.html">GridView</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactsDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="number">80</span>
<span class="name">height</span>: <span class="number">80</span>
<span class="name">color</span>: <span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">contactInfo</span>
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactsDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p><b>Note: </b>Views do not set the <a href="QtQuick.Item.md#clip-prop">clip</a> property automatically. If the view is not clipped by another item or the screen, it will be necessary to set this property to true in order to clip the items that are partially or fully outside the view.</p>
<h2 id="gridview-layouts">GridView Layouts</h2>
<p>The layout of the items in a <a href="QtQuick.Drag.md#gridview">GridView</a> can be controlled by these properties:</p>
<ul>
<li><a href="QtQuick.qtquick-positioning-layouts.md#flow">flow</a> - controls whether items flow from left to right (as a series of rows) or from top to bottom (as a series of columns). This value can be either <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight or <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowTopToBottom.</li>
<li><a href="#layoutDirection-prop">layoutDirection</a> - controls the horizontal layout direction: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.</li>
<li><a href="#verticalLayoutDirection-prop">verticalLayoutDirection</a> - controls the vertical layout direction: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either <a href="QtQuick.Drag.md#gridview">GridView</a>.TopToBottom or <a href="QtQuick.Drag.md#gridview">GridView</a>.BottomToTop.</li>
</ul>
<p>By default, a <a href="QtQuick.Drag.md#gridview">GridView</a> flows from left to right, and items are laid out from left to right horizontally, and from top to bottom vertically.</p>
<p>These properties can be combined to produce a variety of layouts, as shown in the table below. The GridViews in the first row all have a <a href="QtQuick.qtquick-positioning-layouts.md#flow">flow</a> value of <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight, but use different combinations of horizontal and vertical layout directions (specified by <a href="#layoutDirection-prop">layoutDirection</a> and <a href="#verticalLayoutDirection-prop">verticalLayoutDirection</a> respectively). Similarly, the GridViews in the second row below all have a <a href="QtQuick.qtquick-positioning-layouts.md#flow">flow</a> value of <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowTopToBottom, but use different combinations of horizontal and vertical layout directions to lay out their items in different ways.</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="4" rowspan=" 1"><b>GridViews</b> with <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight flow</th></tr></thead>
<tr valign="top"><td ><b>(H)</b> Left to right <b>(V)</b> Top to bottom<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/656c2c94-gridview-layout-lefttoright-ltr-btt.png" alt="" /></p></td><td ><b>(H)</b> Right to left <b>(V)</b> Bottom to top<p class="centerAlign"><img src="dd72133d-gridview-layout-lefttoright-rtl-btt.png" alt="" /></p></td></tr>
<thead><tr class="qt-style"><th  colspan="4" rowspan=" 1"><b>GridViews</b> with <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowTopToBottom flow</th></tr></thead>
<tr valign="top"><td ><b>(H)</b> Left to right <b>(V)</b> Top to bottom<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/ef70aad3-gridview-layout-toptobottom-ltr-btt.png" alt="" /></p></td><td ><b>(H)</b> Right to left <b>(V)</b> Bottom to top<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/9b74ebe5-gridview-layout-toptobottom-rtl-btt.png" alt="" /></p></td></tr>
</table>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">QML Data Models</a>, <a href="QtQuick.ListView.md">ListView</a>, <a href="QtQuick.PathView.md">PathView</a>, and <a href="QtQuick.qtquick-views-example.md">Qt Quick Examples - Views</a>.</p>
<!-- @@@GridView -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-prop"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items that are added to the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
add: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; from: <span class="number">100</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>Whenever an item is added to the above view, the item will be animated from the position (100,100) to its final x,y position within the view, over one second. The transition only applies to the new items that are added to the view; it does not apply to the items below that are displaced by the addition of the new items. To animate the displaced items, set the <a href="#displaced-prop">displaced</a> or <a href="#addDisplaced-prop">addDisplaced</a> properties.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>Note: </b>This transition is not applied to the items that are created when the view is initially populated, or when the view's <a href="#model-prop">model</a> changes. (In those cases, the <a href="#populate-prop">populate</a> transition is applied instead.) Additionally, this transition should <i>not</i> animate the height of the new item; doing so will cause any items beneath the new item to be laid out at the wrong position. Instead, the height can be animated within the onAdd handler in the delegate.</p><p><b>See also </b><a href="#addDisplaced-prop">addDisplaced</a>, <a href="#populate-prop">populate</a>, and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@add -->
<br/>
<!-- $$$addDisplaced -->
<table class="qmlname"><tr valign="top" id="addDisplaced-prop"><td class="tblQmlPropNode"><p><span class="name">addDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items within the view that are displaced by the addition of other items to the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
addDisplaced: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>Whenever an item is added to the above view, all items beneath the new item are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> over one second, as specified. This transition is not applied to the new item that has been added to the view; to animate the added items, set the <a href="#add-prop">add</a> property.</p>
<p>If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the addDisplaced, <a href="#moveDisplaced-prop">moveDisplaced</a> or <a href="#removeDisplaced-prop">removeDisplaced</a> transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the <a href="#displaced-prop">displaced</a> property instead.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>Note: </b>This transition is not applied to the items that are created when the view is initially populated, or when the view's <a href="#model-prop">model</a> changes. In those cases, the <a href="#populate-prop">populate</a> transition is applied instead.</p><p><b>See also </b><a href="#displaced-prop">displaced</a>, <a href="#add-prop">add</a>, <a href="#populate-prop">populate</a>, and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@addDisplaced -->
<br/>
<!-- $$$cacheBuffer -->
<table class="qmlname"><tr valign="top" id="cacheBuffer-prop"><td class="tblQmlPropNode"><p><span class="name">cacheBuffer</span> : <span class="type">int</span></p></td></tr></table><p>This property determines whether delegates are retained outside the visible area of the view.</p>
<p>If this value is greater than zero, the view may keep as many delegates instantiated as will fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns and <code>cacheBuffer</code> is set to 40, then up to 6 delegates above and 6 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.</p>
<p>The default value of this property is platform dependent, but will usually be a value greater than zero. Negative values are ignored.</p>
<p>Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.</p>
<p>Setting this value can make scrolling the list smoother at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view may be scrolled.</p>
<p>The cacheBuffer operates outside of any display margins specified by <a href="#displayMarginBeginning-prop">displayMarginBeginning</a> or <a href="#displayMarginEnd-prop">displayMarginEnd</a>.</p>
<!-- @@@cacheBuffer -->
<br/>
<!-- $$$cellHeight -->
<table class="qmlname"><tr valign="top" id="cellHeight-prop"><td class="tblQmlPropNode"><p><span class="name">cellHeight</span> : <span class="type">real</span></p></td></tr></table><p>These properties holds the width and height of each cell in the grid.</p>
<p>The default cell size is 100x100.</p>
<!-- @@@cellHeight -->
<br/>
<!-- $$$cellWidth -->
<table class="qmlname"><tr valign="top" id="cellWidth-prop"><td class="tblQmlPropNode"><p><span class="name">cellWidth</span> : <span class="type">real</span></p></td></tr></table><p>These properties holds the width and height of each cell in the grid.</p>
<p>The default cell size is 100x100.</p>
<!-- @@@cellWidth -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the view.</p>
<!-- @@@count -->
<br/>
<!-- $$$currentIndex -->
<table class="qmlname"><tr valign="top" id="currentIndex-prop"><td class="tblQmlPropNode"><p><span class="name">currentIndex</span> : <span class="type">int</span></p></td></tr></table><p>The <code>currentIndex</code> property holds the index of the current item, and <code>currentItem</code> holds the current item. Setting the currentIndex to -1 will clear the highlight and set <a href="#currentItem-prop">currentItem</a> to null.</p>
<p>If <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> is <code>true</code>, setting either of these properties will smoothly scroll the <a href="QtQuick.Drag.md#gridview">GridView</a> so that the current item becomes visible.</p>
<p>Note that the position of the current item may only be approximate until it becomes visible in the view.</p>
<!-- @@@currentIndex -->
<br/>
<!-- $$$currentItem -->
<table class="qmlname"><tr valign="top" id="currentItem-prop"><td class="tblQmlPropNode"><p><span class="name">currentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The <code>currentIndex</code> property holds the index of the current item, and <code>currentItem</code> holds the current item. Setting the <a href="#currentIndex-prop">currentIndex</a> to -1 will clear the highlight and set currentItem to null.</p>
<p>If <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> is <code>true</code>, setting either of these properties will smoothly scroll the <a href="QtQuick.Drag.md#gridview">GridView</a> so that the current item becomes visible.</p>
<p>Note that the position of the current item may only be approximate until it becomes visible in the view.</p>
<!-- @@@currentItem -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible <code>index</code> property. Properties of the model are also available depending upon the type of <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Model</a>.</p>
<p>The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view. If at all possible, place functionality that is not needed for the normal display of the delegate in a <a href="QtQuick.Loader.md">Loader</a> which can load additional components when needed.</p>
<p>The item size of the <a href="QtQuick.Drag.md#gridview">GridView</a> is determined by <a href="#cellHeight-prop">cellHeight</a> and <a href="#cellWidth-prop">cellWidth</a>. It will not resize the items based on the size of the root item in the delegate.</p>
<p>The default stacking order of delegate instances is <code>1</code>.</p>
<p><b>Note: </b>Delegates are instantiated as needed and may be destroyed at any time. State should <i>never</i> be stored in a delegate.</p><!-- @@@delegate -->
<br/>
<!-- $$$displaced -->
<table class="qmlname"><tr valign="top" id="displaced-prop"><td class="tblQmlPropNode"><p><span class="name">displaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the generic transition to apply to items that have been displaced by any model operation that affects the view.</p>
<p>This is a convenience for specifying a generic transition for items that are displaced by add, move or remove operations, without having to specify the individual <a href="#addDisplaced-prop">addDisplaced</a>, <a href="#moveDisplaced-prop">moveDisplaced</a> and <a href="#removeDisplaced-prop">removeDisplaced</a> properties. For example, here is a view that specifies a displaced transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
displaced: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>When any item is added, moved or removed within the above view, the items below it are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> over one second, as specified.</p>
<p>If a view specifies this generic displaced transition as well as a specific <a href="#addDisplaced-prop">addDisplaced</a>, <a href="#moveDisplaced-prop">moveDisplaced</a> or <a href="#removeDisplaced-prop">removeDisplaced</a> transition, the more specific transition will be used instead of the generic displaced transition when the relevant operation occurs, providing that the more specific transition has not been disabled (by setting <a href="QtQuick.Transition.md#enabled-prop">enabled</a> to false). If it has indeed been disabled, the generic displaced transition is applied instead.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#addDisplaced-prop">addDisplaced</a>, <a href="#moveDisplaced-prop">moveDisplaced</a>, <a href="#removeDisplaced-prop">removeDisplaced</a>, and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@displaced -->
<br/>
<!-- $$$displayMarginBeginning -->
<table class="qmlname"><tr valign="top" id="displayMarginBeginning-prop"><td class="tblQmlPropNode"><p><span class="name">displayMarginBeginning</span> : <span class="type">int</span></p></td></tr></table><p>This property allows delegates to be displayed outside of the view geometry.</p>
<p>If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.</p>
<p>For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and <code>displayMarginBeginning</code> and <code>displayMarginEnd</code> are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.</p>
<p>The default value is 0.</p>
<p>This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the <a href="#cacheBuffer-prop">cacheBuffer</a> property instead.</p>
<p>This QML property was introduced in  QtQuick 2.3.</p>
<!-- @@@displayMarginBeginning -->
<br/>
<!-- $$$displayMarginEnd -->
<table class="qmlname"><tr valign="top" id="displayMarginEnd-prop"><td class="tblQmlPropNode"><p><span class="name">displayMarginEnd</span> : <span class="type">int</span></p></td></tr></table><p>This property allows delegates to be displayed outside of the view geometry.</p>
<p>If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.</p>
<p>For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and <code>displayMarginBeginning</code> and <code>displayMarginEnd</code> are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.</p>
<p>The default value is 0.</p>
<p>This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the <a href="#cacheBuffer-prop">cacheBuffer</a> property instead.</p>
<p>This QML property was introduced in  QtQuick 2.3.</p>
<!-- @@@displayMarginEnd -->
<br/>
<!-- $$$effectiveLayoutDirection -->
<table class="qmlname"><tr valign="top" id="effectiveLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the effective layout direction of the grid.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> for locale layouts, the visual layout direction of the grid will be mirrored. However, the property <a href="#layoutDirection-prop">layoutDirection</a> will remain unchanged.</p>
<p><b>See also </b><a href="#layoutDirection-prop">GridView::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveLayoutDirection -->
<br/>
<!-- $$$flow -->
<table class="qmlname"><tr valign="top" id="flow-prop"><td class="tblQmlPropNode"><p><span class="name">flow</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the flow of the grid.</p>
<p>Possible values:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight (default) - Items are laid out from left to right, and the view scrolls vertically</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.FlowTopToBottom - Items are laid out from top to bottom, and the view scrolls horizontally</li>
</ul>
<!-- @@@flow -->
<br/>
<!-- $$$footer -->
<table class="qmlname"><tr valign="top" id="footer-prop"><td class="tblQmlPropNode"><p><span class="name">footer</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the component to use as the footer.</p>
<p>An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is <code>1</code>.</p>
<p><b>See also </b><a href="#header-prop">header</a> and <a href="#footerItem-prop">footerItem</a>.</p>
<!-- @@@footer -->
<br/>
<!-- $$$footerItem -->
<table class="qmlname"><tr valign="top" id="footerItem-prop"><td class="tblQmlPropNode"><p><span class="name">footerItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This holds the footer item created from the <a href="#footer-prop">footer</a> component.</p>
<p>An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is <code>1</code>.</p>
<p><b>See also </b><a href="#footer-prop">footer</a> and <a href="#headerItem-prop">headerItem</a>.</p>
<!-- @@@footerItem -->
<br/>
<!-- $$$header -->
<table class="qmlname"><tr valign="top" id="header-prop"><td class="tblQmlPropNode"><p><span class="name">header</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the component to use as the header.</p>
<p>An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is <code>1</code>.</p>
<p><b>See also </b><a href="#footer-prop">footer</a> and <a href="#headerItem-prop">headerItem</a>.</p>
<!-- @@@header -->
<br/>
<!-- $$$headerItem -->
<table class="qmlname"><tr valign="top" id="headerItem-prop"><td class="tblQmlPropNode"><p><span class="name">headerItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This holds the header item created from the <a href="#header-prop">header</a> component.</p>
<p>An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is <code>1</code>.</p>
<p><b>See also </b><a href="#header-prop">header</a> and <a href="#footerItem-prop">footerItem</a>.</p>
<!-- @@@headerItem -->
<br/>
<!-- $$$highlight -->
<table class="qmlname"><tr valign="top" id="highlight-prop"><td class="tblQmlPropNode"><p><span class="name">highlight</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the component to use as the highlight.</p>
<p>An instance of the highlight component is created for each view. The geometry of the resulting component instance will be managed by the view so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is <code>0</code>.</p>
<p><b>See also </b><a href="#highlightItem-prop">highlightItem</a> and <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlight -->
<br/>
<!-- $$$highlightFollowsCurrentItem -->
<table class="qmlname"><tr valign="top" id="highlightFollowsCurrentItem-prop"><td class="tblQmlPropNode"><p><span class="name">highlightFollowsCurrentItem</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets whether the highlight is managed by the view.</p>
<p>If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.</p>
<p>Here is a highlight with its motion defined by a <a href="QtQuick.SpringAnimation.md">SpringAnimation</a> item:</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">highlight</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">view</span>.<span class="name">cellWidth</span>; <span class="name">height</span>: <span class="name">view</span>.<span class="name">cellHeight</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span>
<span class="name">x</span>: <span class="name">view</span>.<span class="name">currentItem</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">view</span>.<span class="name">currentItem</span>.<span class="name">y</span>
Behavior on <span class="name">x</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
}
}
<span class="type"><a href="index.html">GridView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">Column</span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="name">portrait</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
}
<span class="name">highlight</span>: <span class="name">highlight</span>
<span class="name">highlightFollowsCurrentItem</span>: <span class="number">false</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<!-- @@@highlightFollowsCurrentItem -->
<br/>
<!-- $$$highlightItem -->
<table class="qmlname"><tr valign="top" id="highlightItem-prop"><td class="tblQmlPropNode"><p><span class="name">highlightItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This holds the highlight item created from the <a href="QtQuick.qtquick-views-example.md#highlight">highlight</a> component.</p>
<p>The highlightItem is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is <code>0</code>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-views-example.md#highlight">highlight</a> and <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightItem -->
<br/>
<!-- $$$highlightMoveDuration -->
<table class="qmlname"><tr valign="top" id="highlightMoveDuration-prop"><td class="tblQmlPropNode"><p><span class="name">highlightMoveDuration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the move animation duration of the highlight delegate.</p>
<p><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> must be true for this property to have effect.</p>
<p>The default value for the duration is 150ms.</p>
<p><b>See also </b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightMoveDuration -->
<br/>
<!-- $$$highlightRangeMode -->
<table class="qmlname"><tr valign="top" id="highlightRangeMode-prop"><td class="tblQmlPropNode"><p><span class="name">highlightRangeMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>These properties define the preferred range of the highlight (for the current item) within the view. The <code>preferredHighlightBegin</code> value must be less than the <code>preferredHighlightEnd</code> value.</p>
<p>These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@highlightRangeMode -->
<br/>
<!-- $$$keyNavigationWraps -->
<table class="qmlname"><tr valign="top" id="keyNavigationWraps-prop"><td class="tblQmlPropNode"><p><span class="name">keyNavigationWraps</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the grid wraps key navigation</p>
<p>If this is true, key navigation that would move the current item selection past one end of the view instead wraps around and moves the selection to the other end of the view.</p>
<p>By default, key navigation is not wrapped.</p>
<!-- @@@keyNavigationWraps -->
<br/>
<!-- $$$layoutDirection -->
<table class="qmlname"><tr valign="top" id="layoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layout direction of the grid.</p>
<p>Possible values:</p>
<ul>
<li>Qt.LeftToRight (default) - Items will be laid out starting in the top, left corner. The flow is dependent on the <a href="#flow-prop">GridView::flow</a> property.</li>
<li>Qt.RightToLeft - Items will be laid out starting in the top, right corner. The flow is dependent on the <a href="#flow-prop">GridView::flow</a> property.</li>
</ul>
<p><b>Note</b>: If <a href="#flow-prop">GridView::flow</a> is set to <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight, this is not to be confused if GridView::layoutDirection is set to Qt.RightToLeft. The <a href="QtQuick.Drag.md#gridview">GridView</a>.FlowLeftToRight flow value simply indicates that the flow is horizontal.</p>
<p><b>See also </b><a href="#effectiveLayoutDirection-prop">GridView::effectiveLayoutDirection</a> and <a href="#verticalLayoutDirection-prop">GridView::verticalLayoutDirection</a>.</p>
<!-- @@@layoutDirection -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="#model-prop">model</a></span></p></td></tr></table><p>This property holds the model providing data for the grid.</p>
<p>The model provides the set of data that is used to create the items in the view. Models can be created directly in QML using <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>, <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> or <a href="QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel">VisualItemModel</a>, or provided by C++ model classes. If a C++ model class is used, it must be a subclass of <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> or a simple list.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Models</a>.</p>
<!-- @@@model -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-prop"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items in the view that are being moved due to a move operation in the view's <a href="#model-prop">model</a>.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
move: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>Whenever the <a href="#model-prop">model</a> performs a move operation to move a particular set of indexes, the respective items in the view will be animated to their new positions in the view over one second. The transition only applies to the items that are the subject of the move operation in the model; it does not apply to items below them that are displaced by the move operation. To animate the displaced items, set the <a href="#displaced-prop">displaced</a> or <a href="#moveDisplaced-prop">moveDisplaced</a> properties.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#moveDisplaced-prop">moveDisplaced</a> and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$moveDisplaced -->
<table class="qmlname"><tr valign="top" id="moveDisplaced-prop"><td class="tblQmlPropNode"><p><span class="name">moveDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items that are displaced by a move operation in the view's <a href="#model-prop">model</a>.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
moveDisplaced: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>Whenever the <a href="#model-prop">model</a> performs a move operation to move a particular set of indexes, the items between the source and destination indexes of the move operation are displaced, causing them to move upwards or downwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> over one second, as specified. This transition is not applied to the items that are the actual subjects of the move operation; to animate the moved items, set the <a href="#move-prop">move</a> property.</p>
<p>If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the <a href="#addDisplaced-prop">addDisplaced</a>, moveDisplaced or <a href="#removeDisplaced-prop">removeDisplaced</a> transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the <a href="#displaced-prop">displaced</a> property instead.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#displaced-prop">displaced</a>, <a href="#move-prop">move</a>, and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@moveDisplaced -->
<br/>
<!-- $$$populate -->
<table class="qmlname"><tr valign="top" id="populate-prop"><td class="tblQmlPropNode"><p><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to the items that are initially created for a view.</p>
<p>It is applied to all items that are created when:</p>
<ul>
<li>The view is first created</li>
<li>The view's <a href="#model-prop">model</a> changes</li>
<li>The view's <a href="#model-prop">model</a> is reset, if the model is a <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> subclass</li>
</ul>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
populate: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>When the view is initialized, the view will create all the necessary items for the view, then animate them to their correct positions within the view over one second.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#add-prop">add</a> and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@populate -->
<br/>
<!-- $$$preferredHighlightBegin -->
<table class="qmlname"><tr valign="top" id="preferredHighlightBegin-prop"><td class="tblQmlPropNode"><p><span class="name">preferredHighlightBegin</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the preferred range of the highlight (for the current item) within the view. The <code>preferredHighlightBegin</code> value must be less than the <code>preferredHighlightEnd</code> value.</p>
<p>These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@preferredHighlightBegin -->
<br/>
<!-- $$$preferredHighlightEnd -->
<table class="qmlname"><tr valign="top" id="preferredHighlightEnd-prop"><td class="tblQmlPropNode"><p><span class="name">preferredHighlightEnd</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the preferred range of the highlight (for the current item) within the view. The <code>preferredHighlightBegin</code> value must be less than the <code>preferredHighlightEnd</code> value.</p>
<p>These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@preferredHighlightEnd -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-prop"><td class="tblQmlPropNode"><p><span class="name">remove</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items that are removed from the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
remove: Transition {
ParallelAnimation {
NumberAnimation { property: <span class="string">&quot;opacity&quot;</span>; to: <span class="number">0</span>; duration: <span class="number">1000</span> }
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; to: <span class="number">100</span>; duration: <span class="number">1000</span> }
}
}
}</pre>
<p>Whenever an item is removed from the above view, the item will be animated to the position (100,100) over one second, and in parallel will also change its opacity to 0. The transition only applies to the items that are removed from the view; it does not apply to the items below them that are displaced by the removal of the items. To animate the displaced items, set the <a href="#displaced-prop">displaced</a> or <a href="#removeDisplaced-prop">removeDisplaced</a> properties.</p>
<p>Note that by the time the transition is applied, the item has already been removed from the model; any references to the model data for the removed index will not be valid.</p>
<p>Additionally, if the <a href="#delayRemove-attached-prop">delayRemove</a> attached property has been set for a delegate item, the remove transition will not be applied until <a href="#delayRemove-attached-prop">delayRemove</a> becomes false again.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#removeDisplaced-prop">removeDisplaced</a> and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$removeDisplaced -->
<table class="qmlname"><tr valign="top" id="removeDisplaced-prop"><td class="tblQmlPropNode"><p><span class="name">removeDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items in the view that are displaced by the removal of other items in the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">GridView {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
removeDisplaced: Transition {
NumberAnimation { properties: <span class="string">&quot;x,y&quot;</span>; duration: <span class="number">1000</span> }
}
}</pre>
<p>Whenever an item is removed from the above view, all items beneath it are displaced, causing them to move upwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> over one second, as specified. This transition is not applied to the item that has actually been removed from the view; to animate the removed items, set the <a href="#remove-prop">remove</a> property.</p>
<p>If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the <a href="#addDisplaced-prop">addDisplaced</a>, <a href="#moveDisplaced-prop">moveDisplaced</a> or removeDisplaced transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the <a href="#displaced-prop">displaced</a> property instead.</p>
<p>For more details and examples on how to use view transitions, see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation.</p>
<p><b>See also </b><a href="#displaced-prop">displaced</a>, <a href="#remove-prop">remove</a>, and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.</p>
<!-- @@@removeDisplaced -->
<br/>
<!-- $$$snapMode -->
<table class="qmlname"><tr valign="top" id="snapMode-prop"><td class="tblQmlPropNode"><p><span class="name">snapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines how the view scrolling will settle following a drag or flick. The possible values are:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.NoSnap (default) - the view stops anywhere within the visible area.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.SnapToRow - the view settles with a row (or column for <code>GridView.FlowTopToBottom</code> flow) aligned with the start of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.SnapOneRow - the view will settle no more than one row (or column for <code>GridView.FlowTopToBottom</code> flow) away from the first visible row at the time the mouse button is released. This mode is particularly useful for moving one page at a time.</li>
</ul>
<!-- @@@snapMode -->
<br/>
<!-- $$$verticalLayoutDirection -->
<table class="qmlname"><tr valign="top" id="verticalLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">verticalLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the vertical layout direction of the grid.</p>
<p>Possible values:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.BottomToTop - Items are laid out from the bottom of the view up to the top of the view.</li>
</ul>
<p><b>See also </b><a href="#layoutDirection-prop">GridView::layoutDirection</a>.</p>
<!-- @@@verticalLayoutDirection -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$delayRemove -->
<table class="qmlname"><tr valign="top" id="delayRemove-attached-prop"><td class="tblQmlPropNode"><p><span class="name">GridView.delayRemove</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.</p>
<p>It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">GridView</span>.onRemove: <span class="name">SequentialAnimation</span> {
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;GridView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">true</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;GridView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">false</span> }
}
}
}</pre>
<p>If a <a href="#remove-prop">remove</a> transition has been specified, it will not be applied until delayRemove is returned to <code>false</code>.</p>
<!-- @@@delayRemove -->
<br/>
<!-- $$$isCurrentItem -->
<table class="qmlname"><tr valign="top" id="isCurrentItem-attached-prop"><td class="tblQmlPropNode"><p><span class="name">GridView.isCurrentItem</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property is true if this delegate is the current item; otherwise false.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@isCurrentItem -->
<br/>
<!-- $$$view -->
<table class="qmlname"><tr valign="top" id="view-attached-prop"><td class="tblQmlPropNode"><p><span class="name">GridView.view</span> : <span class="type"><a href="index.html">GridView</a></span></p></td></tr></table><p>This attached property holds the view that manages this delegate instance.</p>
<p>It is attached to each instance of the delegate and also to the header, the footer and the highlight delegates.</p>
<pre class="qml"><span class="type"><a href="index.html">GridView</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">cellWidth</span>: <span class="number">80</span>; <span class="name">cellHeight</span>: <span class="number">80</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactsDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="number">80</span>
<span class="name">height</span>: <span class="number">80</span>
<span class="name">color</span>: <span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">contactInfo</span>
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">GridView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactsDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<!-- @@@view -->
<br/>
<h2>Attached Signal Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-signal"><td class="tblQmlFuncNode"><p><span class="name">add</span>()</p></td></tr></table><p>This attached signal is emitted immediately after an item is added to the view.</p>
<p>The corresponding handler is <code>onAdd</code>.</p>
<!-- @@@add -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-signal"><td class="tblQmlFuncNode"><p><span class="name">remove</span>()</p></td></tr></table><p>This attached signal is emitted immediately before an item is removed from the view.</p>
<p>If a <a href="#remove-prop">remove</a> transition has been specified, it is applied after this signal is handled, providing that <a href="#delayRemove-attached-prop">delayRemove</a> is false.</p>
<p>The corresponding handler is <code>onRemove</code>.</p>
<!-- @@@remove -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$forceLayout -->
<table class="qmlname"><tr valign="top" id="forceLayout-method"><td class="tblQmlFuncNode"><p><span class="name">forceLayout</span>()</p></td></tr></table><p>Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the <a href="QtQuick.Drag.md#gridview">GridView</a> has not caught up yet.</p>
<p>This method forces the <a href="QtQuick.Drag.md#gridview">GridView</a> to immediately respond to any outstanding changes in the model.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@forceLayout -->
<br/>
<!-- $$$indexAt -->
<table class="qmlname"><tr valign="top" id="indexAt-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">indexAt</span>(<span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Returns the index of the visible item containing the point <i>x</i>, <i>y</i> in content coordinates. If there is no item at the point specified, or the item is not visible -1 is returned.</p>
<p>If the item is outside the visible area, -1 is returned, regardless of whether an item will exist at that point when scrolled into view.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@indexAt -->
<br/>
<!-- $$$itemAt -->
<table class="qmlname"><tr valign="top" id="itemAt-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">itemAt</span>(<span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Returns the visible item containing the point <i>x</i>, <i>y</i> in content coordinates. If there is no item at the point specified, or the item is not visible null is returned.</p>
<p>If the item is outside the visible area, null is returned, regardless of whether an item will exist at that point when scrolled into view.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@itemAt -->
<br/>
<!-- $$$moveCurrentIndexDown -->
<table class="qmlname"><tr valign="top" id="moveCurrentIndexDown-method"><td class="tblQmlFuncNode"><p><span class="name">moveCurrentIndexDown</span>()</p></td></tr></table><p>Move the <a href="#currentIndex-prop">currentIndex</a> down one item in the view. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the end. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@moveCurrentIndexDown -->
<br/>
<!-- $$$moveCurrentIndexLeft -->
<table class="qmlname"><tr valign="top" id="moveCurrentIndexLeft-method"><td class="tblQmlFuncNode"><p><span class="name">moveCurrentIndexLeft</span>()</p></td></tr></table><p>Move the <a href="#currentIndex-prop">currentIndex</a> left one item in the view. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the end. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@moveCurrentIndexLeft -->
<br/>
<!-- $$$moveCurrentIndexRight -->
<table class="qmlname"><tr valign="top" id="moveCurrentIndexRight-method"><td class="tblQmlFuncNode"><p><span class="name">moveCurrentIndexRight</span>()</p></td></tr></table><p>Move the <a href="#currentIndex-prop">currentIndex</a> right one item in the view. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the end. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@moveCurrentIndexRight -->
<br/>
<!-- $$$moveCurrentIndexUp -->
<table class="qmlname"><tr valign="top" id="moveCurrentIndexUp-method"><td class="tblQmlFuncNode"><p><span class="name">moveCurrentIndexUp</span>()</p></td></tr></table><p>Move the <a href="#currentIndex-prop">currentIndex</a> up one item in the view. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the end. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@moveCurrentIndexUp -->
<br/>
<!-- $$$positionViewAtBeginning -->
<table class="qmlname"><tr valign="top" id="positionViewAtBeginning-method"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtBeginning</span>()</p></td></tr></table><p>Positions the view at the beginning or end, taking into account any header or footer.</p>
<p>It is not recommended to use <a href="QtQuick.Flickable.md#contentX-prop">contentX</a> or <a href="QtQuick.Flickable.md#contentY-prop">contentY</a> to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.</p>
<p><b>Note</b>: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: <a href="#positionViewAtEnd-method">positionViewAtEnd</a>()</pre>
<!-- @@@positionViewAtBeginning -->
<br/>
<!-- $$$positionViewAtEnd -->
<table class="qmlname"><tr valign="top" id="positionViewAtEnd-method"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtEnd</span>()</p></td></tr></table><p>Positions the view at the beginning or end, taking into account any header or footer.</p>
<p>It is not recommended to use <a href="QtQuick.Flickable.md#contentX-prop">contentX</a> or <a href="QtQuick.Flickable.md#contentY-prop">contentY</a> to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.</p>
<p><b>Note</b>: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtEnd()</pre>
<!-- @@@positionViewAtEnd -->
<br/>
<!-- $$$positionViewAtIndex -->
<table class="qmlname"><tr valign="top" id="positionViewAtIndex-method"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtIndex</span>(<span class="type">int</span><i> index</i>, <span class="type">PositionMode</span><i> mode</i>)</p></td></tr></table><p>Positions the view such that the <i>index</i> is at the position specified by <i>mode</i>:</p>
<ul>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.Beginning - position item at the top (or left for <code>GridView.FlowTopToBottom</code> flow) of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.Center - position item in the center of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.End - position item at bottom (or right for horizontal orientation) of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.Visible - if any part of the item is visible then take no action, otherwise bring the item into view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for <code>GridView.FlowTopToBottom</code> flow) of the view.</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a>.SnapPosition - position the item at <a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a>. This mode is only valid if <a href="#highlightRangeMode-prop">highlightRangeMode</a> is StrictlyEnforceRange or snapping is enabled via <a href="#snapMode-prop">snapMode</a>.</li>
</ul>
<p>If positioning the view at the index would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.</p>
<p>It is not recommended to use <a href="QtQuick.Flickable.md#contentX-prop">contentX</a> or <a href="QtQuick.Flickable.md#contentY-prop">contentY</a> to position the view at a particular index. This is unreliable since removing items from the start of the view does not cause all other items to be repositioned. The correct way to bring an item into view is with <code>positionViewAtIndex</code>.</p>
<p><b>Note</b>: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> GridView<span class="operator">.</span>Beginning)</pre>
<!-- @@@positionViewAtIndex -->
<br/>
