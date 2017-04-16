---
Title: QtQuick.PathView
---

# QtQuick.PathView

<span class="subtitle"></span>
<!-- $$$PathView-brief -->
<p>Lays out model-provided items on a path More...</p>
<!-- @@@PathView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#cacheItemCount-prop">cacheItemCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentIndex-prop">currentIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentItem-prop">currentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#dragMargin-prop">dragMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#dragging-prop">dragging</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#flickDeceleration-prop">flickDeceleration</a></b></b> : real</li>
<li class="fn"><b><b><a href="#flicking-prop">flicking</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#highlight-prop">highlight</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#highlightItem-prop">highlightItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#highlightMoveDuration-prop">highlightMoveDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#highlightRangeMode-prop">highlightRangeMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#interactive-prop">interactive</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maximumFlickVelocity-prop">maximumFlickVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : model</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#offset-prop">offset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#path-prop">path</a></b></b> : Path</li>
<li class="fn"><b><b><a href="#pathItemCount-prop">pathItemCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#preferredHighlightEnd-prop">preferredHighlightEnd</a></b></b> : real</li>
<li class="fn"><b><b><a href="#snapMode-prop">snapMode</a></b></b> : enumeration</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#isCurrentItem-attached-prop">isCurrentItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#onPath-attached-prop">onPath</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#view-attached-prop">view</a></b></b> : PathView</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#dragEnded-signal">dragEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#dragStarted-signal">dragStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#flickEnded-signal">flickEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#flickStarted-signal">flickStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#movementEnded-signal">movementEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#movementStarted-signal">movementStarted</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#decrementCurrentIndex-method">decrementCurrentIndex</a></b></b>()</li>
<li class="fn"><b><b><a href="#incrementCurrentIndex-method">incrementCurrentIndex</a></b></b>()</li>
<li class="fn">int <b><b><a href="#indexAt-method">indexAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn">Item <b><b><a href="#itemAt-method">itemAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn"><b><b><a href="#positionViewAtIndex-method">positionViewAtIndex</a></b></b>(int <i>index</i>, PositionMode <i>mode</i>)</li>
</ul>
<!-- $$$PathView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">PathView</a> displays data from models created from built-in QML types like <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> and <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>, or custom model classes defined in C++ that inherit from QAbstractListModel.</p>
<p>The view has a <a href="#model-prop">model</a>, which defines the data to be displayed, and a <a href="#delegate-prop">delegate</a>, which defines how the data should be displayed. The <a href="#delegate-prop">delegate</a> is instantiated for each item on the <a href="#path-prop">path</a>. The items may be flicked to move them along the path.</p>
<p>For example, if there is a simple list model defined in a file <code>ContactModel.qml</code> like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ListModel</span> {
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Bill Jones&quot;</span>
<span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Jane Doe&quot;</span>
<span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;John Smith&quot;</span>
<span class="name">icon</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
}
}</pre>
<p>This data can be represented as a <a href="index.html">PathView</a>, like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">source</span>: <span class="name">icon</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">nameText</span>
<span class="name">text</span>: <span class="name">name</span>
<span class="name">font</span>.pointSize: <span class="number">16</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}
<span class="type"><a href="index.html">PathView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">ContactModel</span> {}
<span class="name">delegate</span>: <span class="name">delegate</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
<span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/52014486-2259-4d17-b722-42706f8aeafe-../QtQuick.PathView/images/pathview.gif" alt="" /></p><p>(Note the above example uses <a href="QtQuick.PathAttribute.md">PathAttribute</a> to scale and modify the opacity of the items as they rotate. This additional code can be seen in the <a href="QtQuick.PathAttribute.md">PathAttribute</a> documentation.)</p>
<p><a href="index.html">PathView</a> does not automatically handle keyboard navigation. This is because the keys to use for navigation will depend upon the shape of the path. Navigation can be added quite simply by setting <code>focus</code> to <code>true</code> and calling <a href="#decrementCurrentIndex-method">decrementCurrentIndex()</a> or <a href="#incrementCurrentIndex-method">incrementCurrentIndex()</a>, for example to navigate using the left and right arrow keys:</p>
<pre class="qml"><span class="type"><a href="index.html">PathView</a></span> {
<span class="comment">// ...</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onLeftPressed: <span class="name">decrementCurrentIndex</span>()
<span class="name">Keys</span>.onRightPressed: <span class="name">incrementCurrentIndex</span>()
}</pre>
<p>The path view itself is a focus scope (see <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a> for more details).</p>
<p>Delegates are instantiated as needed and may be destroyed at any time. State should <i>never</i> be stored in a delegate.</p>
<p><a href="index.html">PathView</a> attaches a number of properties to the root item of the delegate, for example <code>PathView.isCurrentItem</code>. In the following example, the root delegate item can access this attached property directly as <code>PathView.isCurrentItem</code>, while the child <code>nameText</code> object must refer to this property as <code>wrapper.PathView.isCurrentItem</code>.</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">source</span>: <span class="name">icon</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">nameText</span>
<span class="name">text</span>: <span class="name">name</span>
<span class="name">font</span>.pointSize: <span class="number">16</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}</pre>
<p><b>Note</b> that views do not enable <i>clip</i> automatically. If the view is not clipped by another item or the screen, it will be necessary to set <i>clip: true</i> in order to have the out of view items clipped nicely.</p>
<p><b>See also </b><a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">QML Data Models</a>, <a href="QtQuick.ListView.md">ListView</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview">GridView</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/">Qt Quick Examples - Views</a>.</p>
<!-- @@@PathView -->
<h2>Property Documentation</h2>
<!-- $$$cacheItemCount -->
<table class="qmlname"><tr valign="top" id="cacheItemCount-prop"><td class="tblQmlPropNode"><p><span class="name">cacheItemCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the maximum number of items to cache off the path.</p>
<p>For example, a <a href="index.html">PathView</a> with a model containing 20 items, a <a href="#pathItemCount-prop">pathItemCount</a> of 10, and an cacheItemCount of 4 will create up to 14 items, with 10 visible on the path and 4 invisible cached items.</p>
<p>The cached delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames.</p>
<p>Setting this value can improve the smoothness of scrolling behavior at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view can be moved.</p>
<p><b>See also </b><a href="#pathItemCount-prop">pathItemCount</a>.</p>
<!-- @@@cacheItemCount -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the model.</p>
<!-- @@@count -->
<br/>
<!-- $$$currentIndex -->
<table class="qmlname"><tr valign="top" id="currentIndex-prop"><td class="tblQmlPropNode"><p><span class="name">currentIndex</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the index of the current item.</p>
<!-- @@@currentIndex -->
<br/>
<!-- $$$currentItem -->
<table class="qmlname"><tr valign="top" id="currentItem-prop"><td class="tblQmlPropNode"><p><span class="name">currentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the current item in the view.</p>
<!-- @@@currentItem -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type">Component</span></p></td></tr></table><p>The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible <code>index</code> property. Properties of the model are also available depending upon the type of <a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Model</a>.</p>
<p>The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view when <a href="#pathItemCount-prop">pathItemCount</a> is specified. If at all possible, place functionality that is not needed for the normal display of the delegate in a <a href="QtQuick.Loader.md">Loader</a> which can load additional components when needed.</p>
<p>Note that the <a href="index.html">PathView</a> will layout the items based on the size of the root item in the delegate.</p>
<p>Here is an example delegate:</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">source</span>: <span class="name">icon</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">nameText</span>
<span class="name">text</span>: <span class="name">name</span>
<span class="name">font</span>.pointSize: <span class="number">16</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}</pre>
<!-- @@@delegate -->
<br/>
<!-- $$$dragMargin -->
<table class="qmlname"><tr valign="top" id="dragMargin-prop"><td class="tblQmlPropNode"><p><span class="name">dragMargin</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum distance from the path that initiate mouse dragging.</p>
<p>By default the path can only be dragged by clicking on an item. If dragMargin is greater than zero, a drag can be initiated by clicking within dragMargin pixels of the path.</p>
<!-- @@@dragMargin -->
<br/>
<!-- $$$dragging -->
<table class="qmlname"><tr valign="top" id="dragging-prop"><td class="tblQmlPropNode"><p><span class="name">dragging</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the view is currently moving due to the user dragging the view.</p>
<!-- @@@dragging -->
<br/>
<!-- $$$flickDeceleration -->
<table class="qmlname"><tr valign="top" id="flickDeceleration-prop"><td class="tblQmlPropNode"><p><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rate at which a flick will decelerate.</p>
<p>The default is 100.</p>
<!-- @@@flickDeceleration -->
<br/>
<!-- $$$flicking -->
<table class="qmlname"><tr valign="top" id="flicking-prop"><td class="tblQmlPropNode"><p><span class="name">flicking</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the view is currently moving due to the user flicking the view.</p>
<!-- @@@flicking -->
<br/>
<!-- $$$highlight -->
<table class="qmlname"><tr valign="top" id="highlight-prop"><td class="tblQmlPropNode"><p><span class="name">highlight</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the component to use as the highlight.</p>
<p>An instance of the highlight component will be created for each view. The geometry of the resultant component instance will be managed by the view so as to stay with the current item.</p>
<p>The below example demonstrates how to make a simple highlight. Note the use of the <a href="#onPath-attached-prop">PathView.onPath</a> attached property to ensure that the highlight is hidden when flicked away from the path.</p>
<pre class="qml"><span class="type">Component</span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">visible</span>: <span class="name">PathView</span>.<span class="name">onPath</span>
<span class="comment">// ...</span>
}
}</pre>
<p><b>See also </b><a href="#highlightItem-prop">highlightItem</a> and <a href="#highlightRangeMode-prop">highlightRangeMode</a>.</p>
<!-- @@@highlight -->
<br/>
<!-- $$$highlightItem -->
<table class="qmlname"><tr valign="top" id="highlightItem-prop"><td class="tblQmlPropNode"><p><span class="name">highlightItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p><code>highlightItem</code> holds the highlight item, which was created from the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight">highlight</a> component.</p>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight">highlight</a>.</p>
<!-- @@@highlightItem -->
<br/>
<!-- $$$highlightMoveDuration -->
<table class="qmlname"><tr valign="top" id="highlightMoveDuration-prop"><td class="tblQmlPropNode"><p><span class="name">highlightMoveDuration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the move animation duration of the highlight delegate.</p>
<p>If the <a href="#highlightRangeMode-prop">highlightRangeMode</a> is StrictlyEnforceRange then this property determines the speed that the items move along the path.</p>
<p>The default value for the duration is 300ms.</p>
<!-- @@@highlightMoveDuration -->
<br/>
<!-- $$$highlightRangeMode -->
<table class="qmlname"><tr valign="top" id="highlightRangeMode-prop"><td class="tblQmlPropNode"><p><span class="name">highlightRangeMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0&#x2e;</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><i>PathView.NoHighlightRange</i> - no range is applied and the highlight will move freely within the view.</li>
<li><i>PathView.ApplyRange</i> - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.</li>
<li><i>PathView.StrictlyEnforceRange</i> - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
</ul>
<p>The default value is <i>PathView.StrictlyEnforceRange</i>.</p>
<p>Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and highlightRangeMode to <i>PathView.StrictlyEnforceRange</i>. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.</p>
<p><b>Note: </b>A valid range requires <code>preferredHighlightEnd</code> to be greater than or equal to <code>preferredHighlightBegin</code>.</p><!-- @@@highlightRangeMode -->
<br/>
<!-- $$$interactive -->
<table class="qmlname"><tr valign="top" id="interactive-prop"><td class="tblQmlPropNode"><p><span class="name">interactive</span> : <span class="type">bool</span></p></td></tr></table><p>A user cannot drag or flick a <a href="index.html">PathView</a> that is not interactive.</p>
<p>This property is useful for temporarily disabling flicking. This allows special interaction with <a href="index.html">PathView</a>'s children.</p>
<!-- @@@interactive -->
<br/>
<!-- $$$maximumFlickVelocity -->
<table class="qmlname"><tr valign="top" id="maximumFlickVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">maximumFlickVelocity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the approximate maximum velocity that the user can flick the view in pixels/second.</p>
<p>The default value is platform dependent.</p>
<!-- @@@maximumFlickVelocity -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="#model-prop">model</a></span></p></td></tr></table><p>This property holds the model providing data for the view.</p>
<p>The model provides a set of data that is used to create the items for the view. For large or dynamic datasets the model is usually provided by a C++ model object. Models can also be created directly in QML, using the <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> type.</p>
<p><b>Note: </b>changing the model will reset the offset and <a href="#currentIndex-prop">currentIndex</a> to 0.</p><p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">Data Models</a>.</p>
<!-- @@@model -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top" id="moving-prop"><td class="tblQmlPropNode"><p><span class="name">moving</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the view is currently moving due to the user either dragging or flicking the view.</p>
<!-- @@@moving -->
<br/>
<!-- $$$offset -->
<table class="qmlname"><tr valign="top" id="offset-prop"><td class="tblQmlPropNode"><p><span class="name">offset</span> : <span class="type">real</span></p></td></tr></table><p>The offset specifies how far along the path the items are from their initial positions. This is a real number that ranges from 0.0 to the count of items in the model.</p>
<!-- @@@offset -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type"><a href="QtQuick.Path.md">Path</a></span></p></td></tr></table><p>This property holds the path used to lay out the items. For more information see the <a href="QtQuick.Path.md">Path</a> documentation.</p>
<!-- @@@path -->
<br/>
<!-- $$$pathItemCount -->
<table class="qmlname"><tr valign="top" id="pathItemCount-prop"><td class="tblQmlPropNode"><p><span class="name">pathItemCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items visible on the path at any one time.</p>
<p>Setting pathItemCount to undefined will show all items on the path.</p>
<!-- @@@pathItemCount -->
<br/>
<!-- $$$preferredHighlightBegin -->
<table class="qmlname"><tr valign="top" id="preferredHighlightBegin-prop"><td class="tblQmlPropNode"><p><span class="name">preferredHighlightBegin</span> : <span class="type">real</span></p></td></tr></table><p>These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0&#x2e;</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><i>PathView.NoHighlightRange</i> - no range is applied and the highlight will move freely within the view.</li>
<li><i>PathView.ApplyRange</i> - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.</li>
<li><i>PathView.StrictlyEnforceRange</i> - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
</ul>
<p>The default value is <i>PathView.StrictlyEnforceRange</i>.</p>
<p>Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and <a href="#highlightRangeMode-prop">highlightRangeMode</a> to <i>PathView.StrictlyEnforceRange</i>. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.</p>
<p><b>Note: </b>A valid range requires <code>preferredHighlightEnd</code> to be greater than or equal to <code>preferredHighlightBegin</code>.</p><!-- @@@preferredHighlightBegin -->
<br/>
<!-- $$$preferredHighlightEnd -->
<table class="qmlname"><tr valign="top" id="preferredHighlightEnd-prop"><td class="tblQmlPropNode"><p><span class="name">preferredHighlightEnd</span> : <span class="type">real</span></p></td></tr></table><p>These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0&#x2e;</p>
<p>Valid values for <code>highlightRangeMode</code> are:</p>
<ul>
<li><i>PathView.NoHighlightRange</i> - no range is applied and the highlight will move freely within the view.</li>
<li><i>PathView.ApplyRange</i> - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.</li>
<li><i>PathView.StrictlyEnforceRange</i> - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.</li>
</ul>
<p>The default value is <i>PathView.StrictlyEnforceRange</i>.</p>
<p>Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and <a href="#highlightRangeMode-prop">highlightRangeMode</a> to <i>PathView.StrictlyEnforceRange</i>. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.</p>
<p><b>Note: </b>A valid range requires <code>preferredHighlightEnd</code> to be greater than or equal to <code>preferredHighlightBegin</code>.</p><!-- @@@preferredHighlightEnd -->
<br/>
<!-- $$$snapMode -->
<table class="qmlname"><tr valign="top" id="snapMode-prop"><td class="tblQmlPropNode"><p><span class="name">snapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines how the items will settle following a drag or flick. The possible values are:</p>
<ul>
<li><a href="index.html">PathView</a>.NoSnap (default) - the items stop anywhere along the path.</li>
<li><a href="index.html">PathView</a>.SnapToItem - the items settle with an item aligned with the <a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a>.</li>
<li><a href="index.html">PathView</a>.SnapOneItem - the items settle no more than one item away from the item nearest <a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a> at the time the press is released. This mode is particularly useful for moving one page at a time.</li>
</ul>
<p><code>snapMode</code> does not affect the <a href="#currentIndex-prop">currentIndex</a>. To update the <a href="#currentIndex-prop">currentIndex</a> as the view is moved, set <a href="#highlightRangeMode-prop">highlightRangeMode</a> to <code>PathView.StrictlyEnforceRange</code> (default for <a href="index.html">PathView</a>).</p>
<p><b>See also </b><a href="#highlightRangeMode-prop">highlightRangeMode</a>.</p>
<!-- @@@snapMode -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$isCurrentItem -->
<table class="qmlname"><tr valign="top" id="isCurrentItem-attached-prop"><td class="tblQmlPropNode"><p><span class="name">PathView.isCurrentItem</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property is true if this delegate is the current item; otherwise false.</p>
<p>It is attached to each instance of the delegate.</p>
<p>This property may be used to adjust the appearance of the current item.</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">delegate</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">source</span>: <span class="name">icon</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">nameText</span>
<span class="name">text</span>: <span class="name">name</span>
<span class="name">font</span>.pointSize: <span class="number">16</span>
<span class="name">color</span>: <span class="name">wrapper</span>.<span class="name">PathView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;black&quot;</span>
}
}
}</pre>
<!-- @@@isCurrentItem -->
<br/>
<!-- $$$onPath -->
<table class="qmlname"><tr valign="top" id="onPath-attached-prop"><td class="tblQmlPropNode"><p><span class="name">PathView.onPath</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property holds whether the item is currently on the path.</p>
<p>If a <a href="#pathItemCount-prop">pathItemCount</a> has been set, it is possible that some items may be instantiated, but not considered to be currently on the path. Usually, these items would be set invisible, for example:</p>
<pre class="qml"><span class="type">Component</span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">visible</span>: <span class="name">PathView</span>.<span class="name">onPath</span>
<span class="comment">// ...</span>
}
}</pre>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@onPath -->
<br/>
<!-- $$$view -->
<table class="qmlname"><tr valign="top" id="view-attached-prop"><td class="tblQmlPropNode"><p><span class="name">PathView.view</span> : <span class="type"><a href="index.html">PathView</a></span></p></td></tr></table><p>This attached property holds the view that manages this delegate instance.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@view -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$dragEnded -->
<table class="qmlname"><tr valign="top" id="dragEnded-signal"><td class="tblQmlFuncNode"><p><span class="name">dragEnded</span>()</p></td></tr></table><p>This signal is emitted when the user stops dragging the view.</p>
<p>If the velocity of the drag is suffient at the time the touch/mouse button is released then a flick will start.</p>
<p>The corresponding handler is <code>onDragEnded</code>.</p>
<!-- @@@dragEnded -->
<br/>
<!-- $$$dragStarted -->
<table class="qmlname"><tr valign="top" id="dragStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">dragStarted</span>()</p></td></tr></table><p>This signal is emitted when the view starts to be dragged due to user interaction.</p>
<p>The corresponding handler is <code>onDragStarted</code>.</p>
<!-- @@@dragStarted -->
<br/>
<!-- $$$flickEnded -->
<table class="qmlname"><tr valign="top" id="flickEnded-signal"><td class="tblQmlFuncNode"><p><span class="name">flickEnded</span>()</p></td></tr></table><p>This signal is emitted when the view stops moving due to a flick.</p>
<p>The corresponding handler is <code>onFlickEnded</code>.</p>
<!-- @@@flickEnded -->
<br/>
<!-- $$$flickStarted -->
<table class="qmlname"><tr valign="top" id="flickStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">flickStarted</span>()</p></td></tr></table><p>This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.</p>
<p>The corresponding handler is <code>onFlickStarted</code>.</p>
<!-- @@@flickStarted -->
<br/>
<!-- $$$movementEnded -->
<table class="qmlname"><tr valign="top" id="movementEnded-signal"><td class="tblQmlFuncNode"><p><span class="name">movementEnded</span>()</p></td></tr></table><p>This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal will be emitted once the flick stops. If a flick was not generated, this signal will be emitted when the user stops dragging - i.e&#x2e; a mouse or touch release.</p>
<p>The corresponding handler is <code>onMovementEnded</code>.</p>
<!-- @@@movementEnded -->
<br/>
<!-- $$$movementStarted -->
<table class="qmlname"><tr valign="top" id="movementStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">movementStarted</span>()</p></td></tr></table><p>This signal is emitted when the view begins moving due to user interaction.</p>
<p>The corresponding handler is <code>onMovementStarted</code>.</p>
<!-- @@@movementStarted -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$decrementCurrentIndex -->
<table class="qmlname"><tr valign="top" id="decrementCurrentIndex-method"><td class="tblQmlFuncNode"><p><span class="name">decrementCurrentIndex</span>()</p></td></tr></table><p>Decrements the current index.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@decrementCurrentIndex -->
<br/>
<!-- $$$incrementCurrentIndex -->
<table class="qmlname"><tr valign="top" id="incrementCurrentIndex-method"><td class="tblQmlFuncNode"><p><span class="name">incrementCurrentIndex</span>()</p></td></tr></table><p>Increments the current index.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@incrementCurrentIndex -->
<br/>
<!-- $$$indexAt -->
<table class="qmlname"><tr valign="top" id="indexAt-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">indexAt</span>(<span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Returns the index of the item containing the point <i>x</i>, <i>y</i> in content coordinates. If there is no item at the point specified, -1 is returned.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@indexAt -->
<br/>
<!-- $$$itemAt -->
<table class="qmlname"><tr valign="top" id="itemAt-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">itemAt</span>(<span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Returns the item containing the point <i>x</i>, <i>y</i> in content coordinates. If there is no item at the point specified, null is returned.</p>
<p><b>Note</b>: methods should only be called after the Component has completed.</p>
<!-- @@@itemAt -->
<br/>
<!-- $$$positionViewAtIndex -->
<table class="qmlname"><tr valign="top" id="positionViewAtIndex-method"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtIndex</span>(<span class="type">int</span><i> index</i>, <span class="type">PositionMode</span><i> mode</i>)</p></td></tr></table><p>Positions the view such that the <i>index</i> is at the position specified by <i>mode</i>:</p>
<ul>
<li><a href="index.html">PathView</a>.Beginning - position item at the beginning of the path.</li>
<li><a href="index.html">PathView</a>.Center - position item in the center of the path.</li>
<li><a href="index.html">PathView</a>.End - position item at the end of the path.</li>
<li><a href="index.html">PathView</a>.Contain - ensure the item is positioned on the path.</li>
<li><a href="index.html">PathView</a>.SnapPosition - position the item at <a href="#preferredHighlightBegin-prop">preferredHighlightBegin</a>. This mode is only valid if <a href="#highlightRangeMode-prop">highlightRangeMode</a> is StrictlyEnforceRange or snapping is enabled via <a href="#snapMode-prop">snapMode</a>.</li>
</ul>
<p><b>Note</b>: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: positionViewAtIndex(count <span class="operator">-</span> <span class="number">1</span><span class="operator">,</span> PathView<span class="operator">.</span>End)</pre>
<!-- @@@positionViewAtIndex -->
<br/>
