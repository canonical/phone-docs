---
Title: QtQuick.ListView
---

# QtQuick.ListView

<span class="subtitle"></span>
<!-- $$$ListView-brief -->
<p>Provides a list view of items provided by a model More...</p>
<!-- @@@ListView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Flickable.md">Flickable</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#addDisplaced-prop">addDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#cacheBuffer-prop">cacheBuffer</a></b></b> : int</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentIndex-prop">currentIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentItem-prop">currentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#currentSection-prop">currentSection</a></b></b> : string</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#displaced-prop">displaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#displayMarginBeginning-prop">displayMarginBeginning</a></b></b> : int</li>
<li class="fn"><b><b><a href="#displayMarginEnd-prop">displayMarginEnd</a></b></b> : int</li>
<li class="fn"><b><b><a href="#effectiveLayoutDirection-prop">effectiveLayoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#footer-prop">footer</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#footerItem-prop">footerItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#footerPositioning-prop">footerPositioning</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#header-prop">header</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#headerItem-prop">headerItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#headerPositioning-prop">headerPositioning</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#highlight-prop">highlight</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#highlightItem-prop">highlightItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#highlightMoveDuration-prop">highlightMoveDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#highlightMoveVelocity-prop">highlightMoveVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#highlightRangeMode-prop">highlightRangeMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#highlightResizeDuration-prop">highlightResizeDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#highlightResizeVelocity-prop">highlightResizeVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#keyNavigationWraps-prop">keyNavigationWraps</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layoutDirection-prop">layoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : model</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#moveDisplaced-prop">moveDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#preferredHighlightEnd-prop">preferredHighlightEnd</a></b></b> : real</li>
<li class="fn"><b><b><a href="#remove-prop">remove</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#removeDisplaced-prop">removeDisplaced</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#section-prop">section</a></b></b><ul>
<li class="fn"><b><b><a href="#section.property-prop">section.property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#section.criteria-prop">section.criteria</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#section.delegate-prop">section.delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#section.labelPositioning-prop">section.labelPositioning</a></b></b> : enumeration</li>
</ul>
</li>
<li class="fn"><b><b><a href="#snapMode-prop">snapMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#verticalLayoutDirection-prop">verticalLayoutDirection</a></b></b> : enumeration</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#delayRemove-attached-prop">delayRemove</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#isCurrentItem-attached-prop">isCurrentItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#nextSection-attached-prop">nextSection</a></b></b> : string</li>
<li class="fn"><b><b><a href="#previousSection-attached-prop">previousSection</a></b></b> : string</li>
<li class="fn"><b><b><a href="#section-attached-prop">section</a></b></b> : string</li>
<li class="fn"><b><b><a href="#view-attached-prop">view</a></b></b> : ListView</li>
</ul>
<h2 id="attached-signals">Attached Signals</h2>
<ul>
<li class="fn"><b><b><a href="#add-signal">add</a></b></b>()</li>
<li class="fn"><b><b><a href="#remove-signal">remove</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#decrementCurrentIndex-method">decrementCurrentIndex</a></b></b>()</li>
<li class="fn"><b><b><a href="#forceLayout-method">forceLayout</a></b></b>()</li>
<li class="fn"><b><b><a href="#incrementCurrentIndex-method">incrementCurrentIndex</a></b></b>()</li>
<li class="fn">int <b><b><a href="#indexAt-method">indexAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn">Item <b><b><a href="#itemAt-method">itemAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn"><b><b><a href="#positionViewAtBeginning-method">positionViewAtBeginning</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionViewAtEnd-method">positionViewAtEnd</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionViewAtIndex-method">positionViewAtIndex</a></b></b>(int <i>index</i>, PositionMode <i>mode</i>)</li>
</ul>
<!-- $$$ListView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">ListView</a> displays data from models created from built-in QML types like <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> and <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>, or custom model classes defined in C++ that inherit from <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> or QAbstractListModel.</p>
<p>A <a href="index.html">ListView</a> has a <a href="#model-prop">model</a>, which defines the data to be displayed, and a <a href="#delegate-prop">delegate</a>, which defines how the data should be displayed. Items in a <a href="index.html">ListView</a> are laid out horizontally or vertically. List views are inherently flickable because <a href="index.html">ListView</a> inherits from <a href="QtQuick.touchinteraction/#flickable">Flickable</a>.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows the definition of a simple list model defined in a file called <code>ContactModel.qml</code>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ListModel</span> {
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Bill Smith&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 3264&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 8426&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Sam Wise&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 0473&quot;</span>
}
}</pre>
<p>Another component can display this model data in a <a href="index.html">ListView</a>, like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">Text</span> {
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
}
}</pre>
<p class="centerAlign"><img src="../../../../media/listview-simple.png" alt="" /></p><p>Here, the <a href="index.html">ListView</a> creates a <code>ContactModel</code> component for its model, and a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> item for its delegate. The view will create a new <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> component for each item in the model. Notice the delegate is able to access the model's <code>name</code> and <code>number</code> data directly.</p>
<p>An improved list view is shown below. The delegate is visually improved and is moved into a separate <code>contactDelegate</code> component.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactDelegate</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">40</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'&lt;b&gt;Name:&lt;/b&gt; '</span> <span class="operator">+</span> <span class="name">name</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'&lt;b&gt;Number:&lt;/b&gt; '</span> <span class="operator">+</span> <span class="name">number</span> }
}
}
}
<span class="type"><a href="index.html">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactDelegate</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span> }
<span class="name">focus</span>: <span class="number">true</span>
}
}</pre>
<p class="centerAlign"><img src="../../../../media/listview-highlight.png" alt="" /></p><p>The currently selected item is highlighted with a blue <a href="QtQuick.Rectangle.md">Rectangle</a> using the <a href="QtQuick.views/#highlight">highlight</a> property, and <code>focus</code> is set to <code>true</code> to enable keyboard navigation for the list view. The list view itself is a focus scope (see <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a> for more details).</p>
<p>Delegates are instantiated as needed and may be destroyed at any time. They are parented to <a href="index.html">ListView</a>'s <a href="QtQuick.Flickable.md#contentItem-prop">contentItem</a>, not to the view itself. State should <i>never</i> be stored in a delegate.</p>
<p><a href="index.html">ListView</a> attaches a number of properties to the root item of the delegate, for example <code>ListView:isCurrentItem</code>. In the following example, the root delegate item can access this attached property directly as <code>ListView.isCurrentItem</code>, while the child <code>contactInfo</code> object must refer to this property as <code>wrapper.ListView.isCurrentItem</code>.</p>
<pre class="qml"><span class="type"><a href="index.html">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactsDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="number">180</span>
<span class="name">height</span>: <span class="name">contactInfo</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">contactInfo</span>
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactsDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p><b>Note: </b>Views do not enable <i>clip</i> automatically. If the view is not clipped by another item or the screen, it will be necessary to set <i>clip: true</i> in order to have the out of view items clipped nicely.</p>
<h2 id="listview-layouts">ListView Layouts</h2>
<p>The layout of the items in a <a href="index.html">ListView</a> can be controlled by these properties:</p>
<ul>
<li><a href="#orientation-prop">orientation</a> - controls whether items flow horizontally or vertically. This value can be either Qt.Horizontal or Qt.Vertical.</li>
<li><a href="#layoutDirection-prop">layoutDirection</a> - controls the horizontal layout direction for a horizontally-oriented view: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.</li>
<li><a href="#verticalLayoutDirection-prop">verticalLayoutDirection</a> - controls the vertical layout direction for a vertically-oriented view: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either <a href="index.html">ListView</a>.TopToBottom or <a href="index.html">ListView</a>.BottomToTop.</li>
</ul>
<p>By default, a <a href="index.html">ListView</a> has a vertical orientation, and items are laid out from top to bottom. The table below shows the different layouts that a <a href="index.html">ListView</a> can have, depending on the values of the properties listed above.</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1"><b>ListViews</b> with Qt.Vertical orientation</th></tr></thead>
<tr valign="top"><td >Top to bottom<p class="centerAlign"><img src="../../../../media/listview-layout-toptobottom.png" alt="" /></p></td><td >Bottom to top<p class="centerAlign"><img src="../../../../media/listview-layout-bottomtotop.png" alt="" /></p></td></tr>
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1"><b>ListViews</b> with Qt.Horizontal orientation</th></tr></thead>
<tr valign="top"><td >Left to right<p class="centerAlign"><img src="../../../../media/listview-layout-lefttoright.png" alt="" /></p></td><td >Right to left<p class="centerAlign"><img src="../../../../media/listview-layout-righttoleft.png" alt="" /></p></td></tr>
</table>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">QML Data Models</a>, <a href="QtQuick.draganddrop/#gridview">GridView</a>, <a href="QtQuick.PathView.md">PathView</a>, and <a href="QtQuick.views/">Qt Quick Examples - Views</a>.</p>
<!-- @@@ListView -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-prop"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items that are added to the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">ListView {
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
<pre class="cpp">ListView {
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
<p>If this value is greater than zero, the view may keep as many delegates instantiated as it can fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high and <code>cacheBuffer</code> is set to 40, then up to 2 delegates above and 2 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.</p>
<p>The default value of this property is platform dependent, but will usually be a value greater than zero. Negative values are ignored.</p>
<p>Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.</p>
<p>Setting this value can improve the smoothness of scrolling behavior at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view can be scrolled.</p>
<p>The cacheBuffer operates outside of any display margins specified by <a href="#displayMarginBeginning-prop">displayMarginBeginning</a> or <a href="#displayMarginEnd-prop">displayMarginEnd</a>.</p>
<!-- @@@cacheBuffer -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the view.</p>
<!-- @@@count -->
<br/>
<!-- $$$currentIndex -->
<table class="qmlname"><tr valign="top" id="currentIndex-prop"><td class="tblQmlPropNode"><p><span class="name">currentIndex</span> : <span class="type">int</span></p></td></tr></table><p>The <code>currentIndex</code> property holds the index of the current item, and <code>currentItem</code> holds the current item. Setting the currentIndex to -1 will clear the highlight and set <a href="#currentItem-prop">currentItem</a> to null.</p>
<p>If <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> is <code>true</code>, setting either of these properties will smoothly scroll the <a href="index.html">ListView</a> so that the current item becomes visible.</p>
<p>Note that the position of the current item may only be approximate until it becomes visible in the view.</p>
<!-- @@@currentIndex -->
<br/>
<!-- $$$currentItem -->
<table class="qmlname"><tr valign="top" id="currentItem-prop"><td class="tblQmlPropNode"><p><span class="name">currentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The <code>currentIndex</code> property holds the index of the current item, and <code>currentItem</code> holds the current item. Setting the <a href="#currentIndex-prop">currentIndex</a> to -1 will clear the highlight and set currentItem to null.</p>
<p>If <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> is <code>true</code>, setting either of these properties will smoothly scroll the <a href="index.html">ListView</a> so that the current item becomes visible.</p>
<p>Note that the position of the current item may only be approximate until it becomes visible in the view.</p>
<!-- @@@currentItem -->
<br/>
<!-- $$$currentSection -->
<table class="qmlname"><tr valign="top" id="currentSection-prop"><td class="tblQmlPropNode"><p><span class="name">currentSection</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the section that is currently at the beginning of the view.</p>
<!-- @@@currentSection -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible <code>index</code> property. Properties of the model are also available depending upon the type of <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Model</a>.</p>
<p>The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view. If at all possible, place functionality that is not needed for the normal display of the delegate in a <a href="QtQuick.Loader.md">Loader</a> which can load additional components when needed.</p>
<p>The <a href="index.html">ListView</a> will lay out the items based on the size of the root item in the delegate.</p>
<p>It is recommended that the delegate's size be a whole number to avoid sub-pixel alignment of items.</p>
<p>The default stacking order of delegate instances is <code>1</code>.</p>
<p><b>Note: </b>Delegates are instantiated as needed and may be destroyed at any time. They are parented to <a href="index.html">ListView</a>'s <a href="QtQuick.Flickable.md#contentItem-prop">contentItem</a>, not to the view itself. State should <i>never</i> be stored in a delegate.</p><!-- @@@delegate -->
<br/>
<!-- $$$displaced -->
<table class="qmlname"><tr valign="top" id="displaced-prop"><td class="tblQmlPropNode"><p><span class="name">displaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the generic transition to apply to items that have been displaced by any model operation that affects the view.</p>
<p>This is a convenience for specifying the generic transition to be applied to any items that are displaced by an add, move or remove operation, without having to specify the individual <a href="#addDisplaced-prop">addDisplaced</a>, <a href="#moveDisplaced-prop">moveDisplaced</a> and <a href="#removeDisplaced-prop">removeDisplaced</a> properties. For example, here is a view that specifies a displaced transition:</p>
<pre class="cpp">ListView {
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
<p>For example, if in a vertical view the delegate is 20 pixels high and <code>displayMarginBeginning</code> and <code>displayMarginEnd</code> are both set to 40, then 2 delegates above and 2 delegates below will be created and shown.</p>
<p>The default value is 0.</p>
<p>This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the <a href="#cacheBuffer-prop">cacheBuffer</a> property instead.</p>
<p>This QML property was introduced in  QtQuick 2.3.</p>
<!-- @@@displayMarginBeginning -->
<br/>
<!-- $$$displayMarginEnd -->
<table class="qmlname"><tr valign="top" id="displayMarginEnd-prop"><td class="tblQmlPropNode"><p><span class="name">displayMarginEnd</span> : <span class="type">int</span></p></td></tr></table><p>This property allows delegates to be displayed outside of the view geometry.</p>
<p>If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.</p>
<p>For example, if in a vertical view the delegate is 20 pixels high and <code>displayMarginBeginning</code> and <code>displayMarginEnd</code> are both set to 40, then 2 delegates above and 2 delegates below will be created and shown.</p>
<p>The default value is 0.</p>
<p>This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the <a href="#cacheBuffer-prop">cacheBuffer</a> property instead.</p>
<p>This QML property was introduced in  QtQuick 2.3.</p>
<!-- @@@displayMarginEnd -->
<br/>
<!-- $$$effectiveLayoutDirection -->
<table class="qmlname"><tr valign="top" id="effectiveLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the effective layout direction of a horizontally-oriented list.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> for locale layouts, the visual layout direction of the horizontal list will be mirrored. However, the property <a href="#layoutDirection-prop">layoutDirection</a> will remain unchanged.</p>
<p><b>See also </b><a href="#layoutDirection-prop">ListView::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveLayoutDirection -->
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
<!-- $$$footerPositioning -->
<table class="qmlname"><tr valign="top" id="footerPositioning-prop"><td class="tblQmlPropNode"><p><span class="name">footerPositioning</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines the positioning of the <a href="#footerItem-prop">footer item</a>.</p>
<p>The possible values are:</p>
<ul>
<li><a href="index.html">ListView</a>.InlineFooter (default) - the footer is positioned in the end of the content and moves together with the content like an ordinary item.</li>
<li><a href="index.html">ListView</a>.OverlayFooter - the footer is positioned in the end of the view.</li>
<li><a href="index.html">ListView</a>.PullBackFooter - the footer is positioned in the end of the view. The footer can be pushed away by moving the content backwards, and pulled back by moving the content forwards.</li>
</ul>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@footerPositioning -->
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
<!-- $$$headerPositioning -->
<table class="qmlname"><tr valign="top" id="headerPositioning-prop"><td class="tblQmlPropNode"><p><span class="name">headerPositioning</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines the positioning of the <a href="#headerItem-prop">header item</a>.</p>
<p>The possible values are:</p>
<ul>
<li><a href="index.html">ListView</a>.InlineHeader (default) - the header is positioned in the beginning of the content and moves together with the content like an ordinary item.</li>
<li><a href="index.html">ListView</a>.OverlayHeader - the header is positioned in the beginning of the view.</li>
<li><a href="index.html">ListView</a>.PullBackHeader - the header is positioned in the beginning of the view. The header can be pushed away by moving the content forwards, and pulled back by moving the content backwards.</li>
</ul>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@headerPositioning -->
<br/>
<!-- $$$highlight -->
<table class="qmlname"><tr valign="top" id="highlight-prop"><td class="tblQmlPropNode"><p><span class="name">highlight</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the component to use as the highlight.</p>
<p>An instance of the highlight component is created for each list. The geometry of the resulting component instance is managed by the list so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is <code>0</code>.</p>
<p><b>See also </b><a href="#highlightItem-prop">highlightItem</a>, <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>, and <a href="QtQuick.views/#highlight">ListView highlight example</a>.</p>
<!-- @@@highlight -->
<br/>
<!-- $$$highlightFollowsCurrentItem -->
<table class="qmlname"><tr valign="top" id="highlightFollowsCurrentItem-prop"><td class="tblQmlPropNode"><p><span class="name">highlightFollowsCurrentItem</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the highlight is managed by the view.</p>
<p>If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.</p>
<p>Here is a highlight with its motion defined by a <a href="QtQuick.SpringAnimation.md">SpringAnimation</a> item:</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">highlight</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">40</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">radius</span>: <span class="number">5</span>
<span class="name">y</span>: <span class="name">list</span>.<span class="name">currentItem</span>.<span class="name">y</span>
Behavior on <span class="name">y</span> {
<span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> {
<span class="name">spring</span>: <span class="number">3</span>
<span class="name">damping</span>: <span class="number">0.2</span>
}
}
}
}
<span class="type"><a href="index.html">ListView</a></span> {
<span class="name">id</span>: <span class="name">list</span>
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
<span class="name">highlight</span>: <span class="name">highlight</span>
<span class="name">highlightFollowsCurrentItem</span>: <span class="number">false</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p>Note that the highlight animation also affects the way that the view is scrolled. This is because the view moves to maintain the highlight within the preferred highlight range (or visible viewport).</p>
<p><b>See also </b><a href="QtQuick.views/#highlight">highlight</a> and <a href="#highlightMoveVelocity-prop">highlightMoveVelocity</a>.</p>
<!-- @@@highlightFollowsCurrentItem -->
<br/>
<!-- $$$highlightItem -->
<table class="qmlname"><tr valign="top" id="highlightItem-prop"><td class="tblQmlPropNode"><p><span class="name">highlightItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This holds the highlight item created from the <a href="QtQuick.views/#highlight">highlight</a> component.</p>
<p>The <code>highlightItem</code> is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is <code>0</code>.</p>
<p><b>See also </b><a href="QtQuick.views/#highlight">highlight</a> and <a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightItem -->
<br/>
<!-- $$$highlightMoveDuration -->
<table class="qmlname"><tr valign="top" id="highlightMoveDuration-prop"><td class="tblQmlPropNode"><p><span class="name">highlightMoveDuration</span> : <span class="type">int</span></p></td></tr></table><p>These properties control the speed of the move and resize animations for the highlight delegate.</p>
<p><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> must be true for these properties to have effect.</p>
<p>The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e&#x2e; the highlight will take as much time as necessary to move at the set speed.</p>
<p>These properties have the same characteristics as a <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>.</p>
<p><b>See also </b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightMoveDuration -->
<br/>
<!-- $$$highlightMoveVelocity -->
<table class="qmlname"><tr valign="top" id="highlightMoveVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">highlightMoveVelocity</span> : <span class="type">real</span></p></td></tr></table><p>These properties control the speed of the move and resize animations for the highlight delegate.</p>
<p><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> must be true for these properties to have effect.</p>
<p>The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e&#x2e; the highlight will take as much time as necessary to move at the set speed.</p>
<p>These properties have the same characteristics as a <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>.</p>
<p><b>See also </b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightMoveVelocity -->
<br/>
<!-- $$$highlightRangeMode -->
<table class="qmlname"><tr valign="top" id="highlightRangeMode-prop"><td class="tblQmlPropNode"><p><span class="name">highlightRangeMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>These properties define the preferred range of the highlight (for the current item) within the view. The <code>preferredHighlightBegin</code> value must be less than the <code>preferredHighlightEnd</code> value.</p>
<p>These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="index.html">ListView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.</li>
<li><a href="index.html">ListView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="index.html">ListView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@highlightRangeMode -->
<br/>
<!-- $$$highlightResizeDuration -->
<table class="qmlname"><tr valign="top" id="highlightResizeDuration-prop"><td class="tblQmlPropNode"><p><span class="name">highlightResizeDuration</span> : <span class="type">int</span></p></td></tr></table><p>These properties control the speed of the move and resize animations for the highlight delegate.</p>
<p><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> must be true for these properties to have effect.</p>
<p>The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e&#x2e; the highlight will take as much time as necessary to move at the set speed.</p>
<p>These properties have the same characteristics as a <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>.</p>
<p><b>See also </b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightResizeDuration -->
<br/>
<!-- $$$highlightResizeVelocity -->
<table class="qmlname"><tr valign="top" id="highlightResizeVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">highlightResizeVelocity</span> : <span class="type">real</span></p></td></tr></table><p>These properties control the speed of the move and resize animations for the highlight delegate.</p>
<p><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a> must be true for these properties to have effect.</p>
<p>The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e&#x2e; the highlight will take as much time as necessary to move at the set speed.</p>
<p>These properties have the same characteristics as a <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>.</p>
<p><b>See also </b><a href="#highlightFollowsCurrentItem-prop">highlightFollowsCurrentItem</a>.</p>
<!-- @@@highlightResizeVelocity -->
<br/>
<!-- $$$keyNavigationWraps -->
<table class="qmlname"><tr valign="top" id="keyNavigationWraps-prop"><td class="tblQmlPropNode"><p><span class="name">keyNavigationWraps</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the list wraps key navigation.</p>
<p>If this is true, key navigation that would move the current item selection past the end of the list instead wraps around and moves the selection to the start of the list, and vice-versa.</p>
<p>By default, key navigation is not wrapped.</p>
<!-- @@@keyNavigationWraps -->
<br/>
<!-- $$$layoutDirection -->
<table class="qmlname"><tr valign="top" id="layoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layout direction of a horizontally-oriented list.</p>
<p>Possible values:</p>
<ul>
<li>Qt.LeftToRight (default) - Items will be laid out from left to right.</li>
<li>Qt.RightToLeft - Items will be laid out from right to let.</li>
</ul>
<p>Setting this property has no effect if the <a href="#orientation-prop">orientation</a> is Qt.Vertical.</p>
<p><b>See also </b><a href="#effectiveLayoutDirection-prop">ListView::effectiveLayoutDirection</a> and <a href="#verticalLayoutDirection-prop">ListView::verticalLayoutDirection</a>.</p>
<!-- @@@layoutDirection -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="#model-prop">model</a></span></p></td></tr></table><p>This property holds the model providing data for the list.</p>
<p>The model provides the set of data that is used to create the items in the view. Models can be created directly in QML using <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>, <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> or <a href="QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel">VisualItemModel</a>, or provided by C++ model classes. If a C++ model class is used, it must be a subclass of <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a> or a simple list.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Models</a>.</p>
<!-- @@@model -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-prop"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items in the view that are being moved due to a move operation in the view's <a href="#model-prop">model</a>.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">ListView {
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
<pre class="cpp">ListView {
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
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="name">orientation</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the orientation of the list.</p>
<p>Possible values:</p>
<ul>
<li><a href="index.html">ListView</a>.Horizontal - Items are laid out horizontally</li>
<li><a href="index.html">ListView</a>.Vertical (default) - Items are laid out vertically</li>
</ul>
<table class="generic">
<tr valign="top"><td >Horizontal orientation:<p class="centerAlign"><img src="../../../../media/ListViewHorizontal.png" alt="" /></p></td></tr>
<tr valign="top"><td >Vertical orientation:<p class="centerAlign"><img src="../../../../media/listview-highlight.png" alt="" /></p></td></tr>
</table>
<!-- @@@orientation -->
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
<pre class="cpp">ListView {
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
<p>These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="index.html">ListView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.</li>
<li><a href="index.html">ListView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="index.html">ListView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@preferredHighlightBegin -->
<br/>
<!-- $$$preferredHighlightEnd -->
<table class="qmlname"><tr valign="top" id="preferredHighlightEnd-prop"><td class="tblQmlPropNode"><p><span class="name">preferredHighlightEnd</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the preferred range of the highlight (for the current item) within the view. The <code>preferredHighlightBegin</code> value must be less than the <code>preferredHighlightEnd</code> value.</p>
<p>These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code> values to the top and bottom coordinates of where the middle item would be. If the <code>currentItem</code> is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><a href="index.html">ListView</a>.ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.</li>
<li><a href="index.html">ListView</a>.StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
<li><a href="index.html">ListView</a>.NoHighlightRange - this is the default value.</li>
</ul>
<!-- @@@preferredHighlightEnd -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-prop"><td class="tblQmlPropNode"><p><span class="name">remove</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to apply to items that are removed from the view.</p>
<p>For example, here is a view that specifies such a transition:</p>
<pre class="cpp">ListView {
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
<pre class="cpp">ListView {
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
<!-- $$$section -->
<table class="qmlname"><tr valign="top" id="section-prop"><th class="centerAlign"><p><b>section group</b></p></th></tr><tr valign="top" id="section.property-prop"><td class="tblQmlPropNode"><p><span class="name">section.property</span> : <span class="type">string</span></p></td></tr><tr valign="top" id="section.criteria-prop"><td class="tblQmlPropNode"><p><span class="name">section.criteria</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="section.delegate-prop"><td class="tblQmlPropNode"><p><span class="name">section.delegate</span> : <span class="type">Component</span></p></td></tr><tr valign="top" id="section.labelPositioning-prop"><td class="tblQmlPropNode"><p><span class="name">section.labelPositioning</span> : <span class="type">enumeration</span></p></td></tr></table><p>These properties determine the expression to be evaluated and appearance of the section labels.</p>
<p><code>section.property</code> holds the name of the property that is the basis of each section.</p>
<p><code>section.criteria</code> holds the criteria for forming each section based on <code>section.property</code>. This value can be one of:</p>
<ul>
<li>ViewSection.FullString (default) - sections are created based on the <code>section.property</code> value.</li>
<li>ViewSection.FirstCharacter - sections are created based on the first character of the <code>section.property</code> value (for example, 'A', 'B', 'C' sections, etc. for an address book)</li>
</ul>
<p>A case insensitive comparison is used when determining section boundaries.</p>
<p><code>section.delegate</code> holds the delegate component for each section. The default stacking order of section delegate instances is <code>2</code>.</p>
<p><code>section.labelPositioning</code> determines whether the current and/or next section labels stick to the start/end of the view, and whether the labels are shown inline. This value can be a combination of:</p>
<ul>
<li>ViewSection.InlineLabels - section labels are shown inline between the item delegates separating sections (default).</li>
<li>ViewSection.CurrentLabelAtStart - the current section label sticks to the start of the view as it is moved.</li>
<li>ViewSection.NextLabelAtEnd - the next section label (beyond all visible sections) sticks to the end of the view as it is moved.<p><b>Note: </b>Enabling <code>ViewSection.NextLabelAtEnd</code> requires the view to scan ahead for the next section, which has performance implications, especially for slower models.</p></li>
</ul>
<p>Each item in the list has attached properties named <code>ListView.section</code>, <code>ListView.previousSection</code> and <code>ListView.nextSection</code>.</p>
<p>For example, here is a <a href="index.html">ListView</a> that displays a list of animals, separated into sections. Each item in the <a href="index.html">ListView</a> is placed in a different section depending on the &quot;size&quot; property of the model item. The <code>sectionHeading</code> delegate component provides the light blue bar that marks the beginning of each section.</p>
<pre class="qml">    <span class="comment">// The delegate for each section header</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">sectionHeading</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">container</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">section</span>
<span class="name">font</span>.bold: <span class="number">true</span>
<span class="name">font</span>.pixelSize: <span class="number">20</span>
}
}
}
<span class="type"><a href="index.html">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">anchors</span>.bottom: <span class="name">buttonBar</span>.<span class="name">top</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">animalsModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">font</span>.pixelSize: <span class="number">18</span> }
<span class="name">section</span>.property: <span class="string">&quot;size&quot;</span>
<span class="name">section</span>.criteria: <span class="name">ViewSection</span>.<span class="name">FullString</span>
<span class="name">section</span>.delegate: <span class="name">sectionHeading</span>
}</pre>
<p class="centerAlign"><img src="../../../../media/qml-listview-sections-example.png" alt="" /></p><p><b>Note: </b>Adding sections to a <a href="index.html">ListView</a> does not automatically re-order the list items by the section criteria. If the model is not ordered by section, then it is possible that the sections created will not be unique; each boundary between differing sections will result in a section header being created even if that section exists elsewhere.</p><p><b>See also </b><a href="QtQuick.views/">ListView examples</a>.</p>
<!-- @@@section -->
<br/>
<!-- $$$snapMode -->
<table class="qmlname"><tr valign="top" id="snapMode-prop"><td class="tblQmlPropNode"><p><span class="name">snapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines how the view scrolling will settle following a drag or flick. The possible values are:</p>
<ul>
<li><a href="index.html">ListView</a>.NoSnap (default) - the view stops anywhere within the visible area.</li>
<li><a href="index.html">ListView</a>.SnapToItem - the view settles with an item aligned with the start of the view.</li>
<li><a href="index.html">ListView</a>.SnapOneItem - the view settles no more than one item away from the first visible item at the time the mouse button is released. This mode is particularly useful for moving one page at a time.</li>
</ul>
<p><code>snapMode</code> does not affect the <a href="#currentIndex-prop">currentIndex</a>. To update the <a href="#currentIndex-prop">currentIndex</a> as the list is moved, set <a href="#highlightRangeMode-prop">highlightRangeMode</a> to <code>ListView.StrictlyEnforceRange</code>.</p>
<p><b>See also </b><a href="#highlightRangeMode-prop">highlightRangeMode</a>.</p>
<!-- @@@snapMode -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top" id="spacing-prop"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the spacing between items.</p>
<p>The default value is 0.</p>
<!-- @@@spacing -->
<br/>
<!-- $$$verticalLayoutDirection -->
<table class="qmlname"><tr valign="top" id="verticalLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">verticalLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layout direction of a vertically-oriented list.</p>
<p>Possible values:</p>
<ul>
<li><a href="index.html">ListView</a>.TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.</li>
<li><a href="index.html">ListView</a>.BottomToTop - Items are laid out from the bottom of the view up to the top of the view.</li>
</ul>
<p>Setting this property has no effect if the <a href="#orientation-prop">orientation</a> is Qt.Horizontal.</p>
<p><b>See also </b><a href="#layoutDirection-prop">ListView::layoutDirection</a>.</p>
<!-- @@@verticalLayoutDirection -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$delayRemove -->
<table class="qmlname"><tr valign="top" id="delayRemove-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.delayRemove</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.</p>
<p>It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">ListView</span>.onRemove: <span class="name">SequentialAnimation</span> {
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">true</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">false</span> }
}
}
}</pre>
<p>If a <a href="#remove-prop">remove</a> transition has been specified, it will not be applied until delayRemove is returned to <code>false</code>.</p>
<!-- @@@delayRemove -->
<br/>
<!-- $$$isCurrentItem -->
<table class="qmlname"><tr valign="top" id="isCurrentItem-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.isCurrentItem</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property is true if this delegate is the current item; otherwise false.</p>
<p>It is attached to each instance of the delegate.</p>
<p>This property may be used to adjust the appearance of the current item, for example:</p>
<pre class="qml"><span class="type"><a href="index.html">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">contactsDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="number">180</span>
<span class="name">height</span>: <span class="name">contactInfo</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;black&quot;</span> : <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">contactInfo</span>
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">contactsDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<!-- @@@isCurrentItem -->
<br/>
<!-- $$$nextSection -->
<table class="qmlname"><tr valign="top" id="nextSection-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.nextSection</span> : <span class="type">string</span></p></td></tr></table><p>This attached property holds the section of the next element.</p>
<p>It is attached to each instance of the delegate.</p>
<p>The section is evaluated using the <a href="#section.property-prop">section</a> properties.</p>
<!-- @@@nextSection -->
<br/>
<!-- $$$previousSection -->
<table class="qmlname"><tr valign="top" id="previousSection-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.previousSection</span> : <span class="type">string</span></p></td></tr></table><p>This attached property holds the section of the previous element.</p>
<p>It is attached to each instance of the delegate.</p>
<p>The section is evaluated using the <a href="#section.property-prop">section</a> properties.</p>
<!-- @@@previousSection -->
<br/>
<!-- $$$section -->
<table class="qmlname"><tr valign="top" id="section-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.section</span> : <span class="type">string</span></p></td></tr></table><p>This attached property holds the section of this element.</p>
<p>It is attached to each instance of the delegate.</p>
<p>The section is evaluated using the <a href="#section.property-prop">section</a> properties.</p>
<!-- @@@section -->
<br/>
<!-- $$$view -->
<table class="qmlname"><tr valign="top" id="view-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ListView.view</span> : <span class="type"><a href="index.html">ListView</a></span></p></td></tr></table><p>This attached property holds the view that manages this delegate instance.</p>
<p>It is attached to each instance of the delegate and also to the header, the footer, the section and the highlight delegates.</p>
<!-- @@@view -->
<br/>
<h2>Attached Signal Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-signal"><td class="tblQmlFuncNode"><p><span class="name">add</span>()</p></td></tr></table><p>This attached signal is emitted immediately after an item is added to the view.</p>
<p>If an <a href="#add-prop">add</a> transition is specified, it is applied immediately after this signal is handled.</p>
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
<!-- $$$decrementCurrentIndex -->
<table class="qmlname"><tr valign="top" id="decrementCurrentIndex-method"><td class="tblQmlFuncNode"><p><span class="name">decrementCurrentIndex</span>()</p></td></tr></table><p>Decrements the current index. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the beginning. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@decrementCurrentIndex -->
<br/>
<!-- $$$forceLayout -->
<table class="qmlname"><tr valign="top" id="forceLayout-method"><td class="tblQmlFuncNode"><p><span class="name">forceLayout</span>()</p></td></tr></table><p>Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the <a href="index.html">ListView</a> has not caught up yet.</p>
<p>This method forces the <a href="index.html">ListView</a> to immediately respond to any outstanding changes in the model.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@forceLayout -->
<br/>
<!-- $$$incrementCurrentIndex -->
<table class="qmlname"><tr valign="top" id="incrementCurrentIndex-method"><td class="tblQmlFuncNode"><p><span class="name">incrementCurrentIndex</span>()</p></td></tr></table><p>Increments the current index. The current index will wrap if <a href="#keyNavigationWraps-prop">keyNavigationWraps</a> is true and it is currently at the end. This method has no effect if the <a href="#count-prop">count</a> is zero.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@incrementCurrentIndex -->
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
<li><a href="index.html">ListView</a>.Beginning - position item at the top (or left for horizontal orientation) of the view.</li>
<li><a href="index.html">ListView</a>.Center - position item in the center of the view.</li>
<li><a href="index.html">ListView</a>.End - position item at bottom (or right for horizontal orientation) of the view.</li>
<li><a href="index.html">ListView</a>.Visible - if any part of the item is visible then take no action, otherwise bring the item into view.</li>
<li><a href="index.html">ListView</a>.Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for horizontal orientation) of the view.</li>
<li><a href="index.html">ListView</a>.SnapPosition - position the item at <a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a>. This mode is only valid if <a href="#highlightRangeMode-prop">highlightRangeMode</a> is StrictlyEnforceRange or snapping is enabled via <a href="#snapMode-prop">snapMode</a>.</li>
</ul>
<p>If positioning the view at <i>index</i> would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.</p>
<p>It is not recommended to use <a href="QtQuick.Flickable.md#contentX-prop">contentX</a> or <a href="QtQuick.Flickable.md#contentY-prop">contentY</a> to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates. The correct way to bring an item into view is with <code>positionViewAtIndex</code>.</p>
<p><b>Note</b>: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> ListView<span class="operator">.</span>Beginning)</pre>
<!-- @@@positionViewAtIndex -->
<br/>
