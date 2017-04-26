---
Title: QtQuick.Flickable
---

# QtQuick.Flickable

<span class="subtitle"></span>
<!-- $$$Flickable-brief -->
<p>Provides a surface that can be &quot;flicked&quot; More...</p>
<!-- @@@Flickable -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.GridView.md">GridView</a> and <a href="QtQuick.ListView.md">ListView</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#atXBeginning-prop">atXBeginning</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#atXEnd-prop">atXEnd</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#atYBeginning-prop">atYBeginning</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#atYEnd-prop">atYEnd</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#bottomMargin-prop">bottomMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#boundsBehavior-prop">boundsBehavior</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentItem-prop">contentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#contentWidth-prop">contentWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentX-prop">contentX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentY-prop">contentY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#dragging-prop">dragging</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#draggingHorizontally-prop">draggingHorizontally</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#draggingVertically-prop">draggingVertically</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#flickDeceleration-prop">flickDeceleration</a></b></b> : real</li>
<li class="fn"><b><b><a href="#flickableDirection-prop">flickableDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#flicking-prop">flicking</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#flickingHorizontally-prop">flickingHorizontally</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#flickingVertically-prop">flickingVertically</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#horizontalVelocity-prop">horizontalVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#interactive-prop">interactive</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#leftMargin-prop">leftMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#maximumFlickVelocity-prop">maximumFlickVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#movingHorizontally-prop">movingHorizontally</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#movingVertically-prop">movingVertically</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#originX-prop">originX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#originY-prop">originY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pixelAligned-prop">pixelAligned</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressDelay-prop">pressDelay</a></b></b> : int</li>
<li class="fn"><b><b><a href="#rebound-prop">rebound</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#rightMargin-prop">rightMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#topMargin-prop">topMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#verticalVelocity-prop">verticalVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#visibleArea-prop">visibleArea</a></b></b><ul>
<li class="fn"><b><b><a href="#visibleArea.xPosition-prop">visibleArea.xPosition</a></b></b> : real</li>
<li class="fn"><b><b><a href="#visibleArea.widthRatio-prop">visibleArea.widthRatio</a></b></b> : real</li>
<li class="fn"><b><b><a href="#visibleArea.yPosition-prop">visibleArea.yPosition</a></b></b> : real</li>
<li class="fn"><b><b><a href="#visibleArea.heightRatio-prop">visibleArea.heightRatio</a></b></b> : real</li>
</ul>
</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#flickEnded-signal">flickEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#flickStarted-signal">flickStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#movementEnded-signal">movementEnded</a></b></b>()</li>
<li class="fn"><b><b><a href="#movementStarted-signal">movementStarted</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelFlick-method">cancelFlick</a></b></b>()</li>
<li class="fn"><b><b><a href="#flick-method">flick</a></b></b>(qreal <i>xVelocity</i>, qreal <i>yVelocity</i>)</li>
<li class="fn"><b><b><a href="#resizeContent-method">resizeContent</a></b></b>(real <i>width</i>, real <i>height</i>, QPointF <i>center</i>)</li>
<li class="fn"><b><b><a href="#returnToBounds-method">returnToBounds</a></b></b>()</li>
</ul>
<!-- $$$Flickable-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Flickable item places its children on a surface that can be dragged and flicked, causing the view onto the child items to scroll. This behavior forms the basis of Items that are designed to show large numbers of child items, such as <a href="QtQuick.ListView.md">ListView</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a>.</p>
<p>In traditional user interfaces, views can be scrolled using standard controls, such as scroll bars and arrow buttons. In some situations, it is also possible to drag the view directly by pressing and holding a mouse button while moving the cursor. In touch-based user interfaces, this dragging action is often complemented with a flicking action, where scrolling continues after the user has stopped touching the view.</p>
<p>Flickable does not automatically clip its contents. If it is not used as a full-screen item, you should consider setting the <a href="QtQuick.Item.md#clip-prop">clip</a> property to true.</p>
<h2 id="example-usage">Example Usage</h2>
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/0fd53132-3cc7-4a05-9dbc-23a94cb8cc88-../QtQuick.Flickable/images/flickable.gif" alt="" /></p>
<p>The following example shows a small view onto a large image in which the user can drag or flick the image in order to view different parts of it.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Flickable</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
}</pre>
<br style="clear: both" /><p>Items declared as children of a Flickable are automatically parented to the Flickable's <a href="#contentItem-prop">contentItem</a>. This should be taken into account when operating on the children of the Flickable; it is usually the children of <code>contentItem</code> that are relevant. For example, the bound of Items added to the Flickable will be available by <code>contentItem.childrenRect</code></p>
<h2 id="limitations">Limitations</h2>
<p><b>Note: </b>Due to an implementation detail, items placed inside a Flickable cannot anchor to it by <code>id</code>. Use <code>parent</code> instead.</p><!-- @@@Flickable -->
<h2>Property Documentation</h2>
<!-- $$$atXBeginning -->
<table class="qmlname"><tr valign="top" id="atXBeginning-prop"><td class="tblQmlPropNode"><p><span class="name">atXBeginning</span> : <span class="type">bool</span></p></td></tr></table><p>These properties are true if the flickable view is positioned at the beginning, or end respectively.</p>
<!-- @@@atXBeginning -->
<br/>
<!-- $$$atXEnd -->
<table class="qmlname"><tr valign="top" id="atXEnd-prop"><td class="tblQmlPropNode"><p><span class="name">atXEnd</span> : <span class="type">bool</span></p></td></tr></table><p>These properties are true if the flickable view is positioned at the beginning, or end respectively.</p>
<!-- @@@atXEnd -->
<br/>
<!-- $$$atYBeginning -->
<table class="qmlname"><tr valign="top" id="atYBeginning-prop"><td class="tblQmlPropNode"><p><span class="name">atYBeginning</span> : <span class="type">bool</span></p></td></tr></table><p>These properties are true if the flickable view is positioned at the beginning, or end respectively.</p>
<!-- @@@atYBeginning -->
<br/>
<!-- $$$atYEnd -->
<table class="qmlname"><tr valign="top" id="atYEnd-prop"><td class="tblQmlPropNode"><p><span class="name">atYEnd</span> : <span class="type">bool</span></p></td></tr></table><p>These properties are true if the flickable view is positioned at the beginning, or end respectively.</p>
<!-- @@@atYEnd -->
<br/>
<!-- $$$bottomMargin -->
<table class="qmlname"><tr valign="top" id="bottomMargin-prop"><td class="tblQmlPropNode"><p><span class="name">bottomMargin</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the margins around the content. This space is reserved in addition to the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a>.</p>
<!-- @@@bottomMargin -->
<br/>
<!-- $$$boundsBehavior -->
<table class="qmlname"><tr valign="top" id="boundsBehavior-prop"><td class="tblQmlPropNode"><p><span class="name">boundsBehavior</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds whether the surface may be dragged beyond the Flickable's boundaries, or overshoot the Flickable's boundaries when flicked.</p>
<p>This enables the feeling that the edges of the view are soft, rather than a hard physical boundary.</p>
<p>The <code>boundsBehavior</code> can be one of:</p>
<ul>
<li>Flickable.StopAtBounds - the contents can not be dragged beyond the boundary of the flickable, and flicks will not overshoot.</li>
<li>Flickable.DragOverBounds - the contents can be dragged beyond the boundary of the Flickable, but flicks will not overshoot.</li>
<li>Flickable.DragAndOvershootBounds (default) - the contents can be dragged beyond the boundary of the Flickable, and can overshoot the boundary when flicked.</li>
</ul>
<!-- @@@boundsBehavior -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.</p>
<p>The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Flickable</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
}</pre>
<p>In some cases, the content dimensions can be automatically set based on the <a href="QtQuick.Item.md#childrenRect.width-prop">childrenRect.width</a> and <a href="QtQuick.Item.md#childrenRect.height-prop">childrenRect.height</a> properties of the <a href="#contentItem-prop">contentItem</a>. For example, the previous snippet could be rewritten with:</p>
<pre class="cpp">contentWidth: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>width; contentHeight: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>height</pre>
<p>Though this assumes that the origin of the childrenRect is 0,0.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentItem -->
<table class="qmlname"><tr valign="top" id="contentItem-prop"><td class="tblQmlPropNode"><p><span class="name">contentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The internal item that contains the Items to be moved in the Flickable.</p>
<p>Items declared as children of a Flickable are automatically parented to the Flickable's contentItem.</p>
<p>Items created dynamically need to be explicitly parented to the <i>contentItem</i>:</p>
<pre class="cpp">Flickable {
id: myFlickable
function addItem(file) {
var component <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>createComponent(file)
component<span class="operator">.</span>createObject(myFlickable<span class="operator">.</span>contentItem);
}
}</pre>
<!-- @@@contentItem -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.</p>
<p>The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Flickable</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">contentWidth</span>: <span class="name">image</span>.<span class="name">width</span>; <span class="name">contentHeight</span>: <span class="name">image</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span>; <span class="name">source</span>: <span class="string">&quot;bigImage.png&quot;</span> }
}</pre>
<p>In some cases, the content dimensions can be automatically set based on the <a href="QtQuick.Item.md#childrenRect.width-prop">childrenRect.width</a> and <a href="QtQuick.Item.md#childrenRect.height-prop">childrenRect.height</a> properties of the <a href="#contentItem-prop">contentItem</a>. For example, the previous snippet could be rewritten with:</p>
<pre class="cpp">contentWidth: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>width; contentHeight: contentItem<span class="operator">.</span>childrenRect<span class="operator">.</span>height</pre>
<p>Though this assumes that the origin of the childrenRect is 0,0.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$contentX -->
<table class="qmlname"><tr valign="top" id="contentX-prop"><td class="tblQmlPropNode"><p><span class="name">contentX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, <code>contentY</code> will be 100.</p>
<!-- @@@contentX -->
<br/>
<!-- $$$contentY -->
<table class="qmlname"><tr valign="top" id="contentY-prop"><td class="tblQmlPropNode"><p><span class="name">contentY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, <code>contentY</code> will be 100.</p>
<!-- @@@contentY -->
<br/>
<!-- $$$dragging -->
<table class="qmlname"><tr valign="top" id="dragging-prop"><td class="tblQmlPropNode"><p><span class="name">dragging</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.</p>
<!-- @@@dragging -->
<br/>
<!-- $$$draggingHorizontally -->
<table class="qmlname"><tr valign="top" id="draggingHorizontally-prop"><td class="tblQmlPropNode"><p><span class="name">draggingHorizontally</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.</p>
<!-- @@@draggingHorizontally -->
<br/>
<!-- $$$draggingVertically -->
<table class="qmlname"><tr valign="top" id="draggingVertically-prop"><td class="tblQmlPropNode"><p><span class="name">draggingVertically</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.</p>
<!-- @@@draggingVertically -->
<br/>
<!-- $$$flickDeceleration -->
<table class="qmlname"><tr valign="top" id="flickDeceleration-prop"><td class="tblQmlPropNode"><p><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rate at which a flick will decelerate.</p>
<p>The default value is platform dependent.</p>
<!-- @@@flickDeceleration -->
<br/>
<!-- $$$flickableDirection -->
<table class="qmlname"><tr valign="top" id="flickableDirection-prop"><td class="tblQmlPropNode"><p><span class="name">flickableDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines which directions the view can be flicked.</p>
<ul>
<li>Flickable.AutoFlickDirection (default) - allows flicking vertically if the <i>contentHeight</i> is not equal to the <i>height</i> of the Flickable. Allows flicking horizontally if the <i>contentWidth</i> is not equal to the <i>width</i> of the Flickable.</li>
<li>Flickable.HorizontalFlick - allows flicking horizontally.</li>
<li>Flickable.VerticalFlick - allows flicking vertically.</li>
<li>Flickable.HorizontalAndVerticalFlick - allows flicking in both directions.</li>
</ul>
<!-- @@@flickableDirection -->
<br/>
<!-- $$$flicking -->
<table class="qmlname"><tr valign="top" id="flicking-prop"><td class="tblQmlPropNode"><p><span class="name">flicking</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.</p>
<!-- @@@flicking -->
<br/>
<!-- $$$flickingHorizontally -->
<table class="qmlname"><tr valign="top" id="flickingHorizontally-prop"><td class="tblQmlPropNode"><p><span class="name">flickingHorizontally</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.</p>
<!-- @@@flickingHorizontally -->
<br/>
<!-- $$$flickingVertically -->
<table class="qmlname"><tr valign="top" id="flickingVertically-prop"><td class="tblQmlPropNode"><p><span class="name">flickingVertically</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.</p>
<!-- @@@flickingVertically -->
<br/>
<!-- $$$horizontalVelocity -->
<table class="qmlname"><tr valign="top" id="horizontalVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalVelocity</span> : <span class="type">real</span></p></td></tr></table><p>The instantaneous velocity of movement along the x and y axes, in pixels/sec.</p>
<p>The reported velocity is smoothed to avoid erratic output.</p>
<p>Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.</p>
<!-- @@@horizontalVelocity -->
<br/>
<!-- $$$interactive -->
<table class="qmlname"><tr valign="top" id="interactive-prop"><td class="tblQmlPropNode"><p><span class="name">interactive</span> : <span class="type">bool</span></p></td></tr></table><p>This property describes whether the user can interact with the Flickable. A user cannot drag or flick a Flickable that is not interactive.</p>
<p>By default, this property is true.</p>
<p>This property is useful for temporarily disabling flicking. This allows special interaction with Flickable's children; for example, you might want to freeze a flickable map while scrolling through a pop-up dialog that is a child of the Flickable.</p>
<!-- @@@interactive -->
<br/>
<!-- $$$leftMargin -->
<table class="qmlname"><tr valign="top" id="leftMargin-prop"><td class="tblQmlPropNode"><p><span class="name">leftMargin</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the margins around the content. This space is reserved in addition to the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a>.</p>
<!-- @@@leftMargin -->
<br/>
<!-- $$$maximumFlickVelocity -->
<table class="qmlname"><tr valign="top" id="maximumFlickVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">maximumFlickVelocity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum velocity that the user can flick the view in pixels/second.</p>
<p>The default value is platform dependent.</p>
<!-- @@@maximumFlickVelocity -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top" id="moving-prop"><td class="tblQmlPropNode"><p><span class="name">moving</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.</p>
<!-- @@@moving -->
<br/>
<!-- $$$movingHorizontally -->
<table class="qmlname"><tr valign="top" id="movingHorizontally-prop"><td class="tblQmlPropNode"><p><span class="name">movingHorizontally</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.</p>
<!-- @@@movingHorizontally -->
<br/>
<!-- $$$movingVertically -->
<table class="qmlname"><tr valign="top" id="movingVertically-prop"><td class="tblQmlPropNode"><p><span class="name">movingVertically</span> : <span class="type">bool</span></p></td></tr></table><p>These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.</p>
<!-- @@@movingVertically -->
<br/>
<!-- $$$originX -->
<table class="qmlname"><tr valign="top" id="originX-prop"><td class="tblQmlPropNode"><p><span class="name">originX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.</p>
<p>This is usually (0,0), however <a href="QtQuick.ListView.md">ListView</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.</p>
<!-- @@@originX -->
<br/>
<!-- $$$originY -->
<table class="qmlname"><tr valign="top" id="originY-prop"><td class="tblQmlPropNode"><p><span class="name">originY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.</p>
<p>This is usually (0,0), however <a href="QtQuick.ListView.md">ListView</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.</p>
<!-- @@@originY -->
<br/>
<!-- $$$pixelAligned -->
<table class="qmlname"><tr valign="top" id="pixelAligned-prop"><td class="tblQmlPropNode"><p><span class="name">pixelAligned</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets the alignment of <a href="#contentX-prop">contentX</a> and <a href="#contentY-prop">contentY</a> to pixels (<code>true</code>) or subpixels (<code>false</code>).</p>
<p>Enable pixelAligned to optimize for still content or moving content with high constrast edges, such as one-pixel-wide lines, text or vector graphics. Disable pixelAligned when optimizing for animation quality.</p>
<p>The default is <code>false</code>.</p>
<!-- @@@pixelAligned -->
<br/>
<!-- $$$pressDelay -->
<table class="qmlname"><tr valign="top" id="pressDelay-prop"><td class="tblQmlPropNode"><p><span class="name">pressDelay</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the time to delay (ms) delivering a press to children of the Flickable. This can be useful where reacting to a press before a flicking action has undesirable effects.</p>
<p>If the flickable is dragged/flicked before the delay times out the press event will not be delivered. If the button is released within the timeout, both the press and release will be delivered.</p>
<p>Note that for nested Flickables with pressDelay set, the pressDelay of outer Flickables is overridden by the innermost Flickable. If the drag exceeds the platform drag threshold, the press event will be delivered regardless of this property.</p>
<p><b>See also </b>QStyleHints.</p>
<!-- @@@pressDelay -->
<br/>
<!-- $$$rebound -->
<table class="qmlname"><tr valign="top" id="rebound-prop"><td class="tblQmlPropNode"><p><span class="name">rebound</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This holds the transition to be applied to the content view when it snaps back to the bounds of the flickable. The transition is triggered when the view is flicked or dragged past the edge of the content area, or when <a href="#returnToBounds-method">returnToBounds()</a> is called.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Flickable</a></span> {
<span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">150</span>
<span class="name">contentWidth</span>: <span class="number">300</span>; <span class="name">contentHeight</span>: <span class="number">300</span>
<span class="name">rebound</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>
}
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
}
}</pre>
<p>When the above view is flicked beyond its bounds, it will return to its bounds using the transition specified:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2c40134a-32de-4cc9-8bee-4b6a0f4d479c-../QtQuick.Flickable/images/flickable-rebound.gif" alt="" /></p><p>If this property is not set, a default animation is applied.</p>
<!-- @@@rebound -->
<br/>
<!-- $$$rightMargin -->
<table class="qmlname"><tr valign="top" id="rightMargin-prop"><td class="tblQmlPropNode"><p><span class="name">rightMargin</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the margins around the content. This space is reserved in addition to the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a>.</p>
<!-- @@@rightMargin -->
<br/>
<!-- $$$topMargin -->
<table class="qmlname"><tr valign="top" id="topMargin-prop"><td class="tblQmlPropNode"><p><span class="name">topMargin</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the margins around the content. This space is reserved in addition to the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a>.</p>
<!-- @@@topMargin -->
<br/>
<!-- $$$verticalVelocity -->
<table class="qmlname"><tr valign="top" id="verticalVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">verticalVelocity</span> : <span class="type">real</span></p></td></tr></table><p>The instantaneous velocity of movement along the x and y axes, in pixels/sec.</p>
<p>The reported velocity is smoothed to avoid erratic output.</p>
<p>Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.</p>
<!-- @@@verticalVelocity -->
<br/>
<!-- $$$visibleArea -->
<table class="qmlname"><tr valign="top" id="visibleArea-prop"><th class="centerAlign"><p><b>visibleArea group</b></p></th></tr><tr valign="top" id="visibleArea.xPosition-prop"><td class="tblQmlPropNode"><p><span class="name">visibleArea.xPosition</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="visibleArea.widthRatio-prop"><td class="tblQmlPropNode"><p><span class="name">visibleArea.widthRatio</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="visibleArea.yPosition-prop"><td class="tblQmlPropNode"><p><span class="name">visibleArea.yPosition</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="visibleArea.heightRatio-prop"><td class="tblQmlPropNode"><p><span class="name">visibleArea.heightRatio</span> : <span class="type">real</span></p></td></tr></table><p>These properties describe the position and size of the currently viewed area. The size is defined as the percentage of the full view currently visible, scaled to 0.0 - 1.0&#x2e; The page position is usually in the range 0.0 (beginning) to 1.0 minus size ratio (end), i.e&#x2e; <code>yPosition</code> is in the range 0.0 to 1.0-<code>heightRatio</code>. However, it is possible for the contents to be dragged outside of the normal range, resulting in the page positions also being outside the normal range.</p>
<p>These properties are typically used to draw a scrollbar. For example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">Flickable</a></span> {
<span class="name">id</span>: <span class="name">flickable</span>
...
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">scrollbar</span>
<span class="name">anchors</span>.right: <span class="name">flickable</span>.<span class="name">right</span>
<span class="name">y</span>: <span class="name">flickable</span>.<span class="name">visibleArea</span>.<span class="name">yPosition</span> <span class="operator">*</span> <span class="name">flickable</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="number">10</span>
<span class="name">height</span>: <span class="name">flickable</span>.<span class="name">visibleArea</span>.<span class="name">heightRatio</span> <span class="operator">*</span> <span class="name">flickable</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
}
}</pre>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.customitems-scrollbar/">UI Components: Scrollbar Example</a>.</p>
<!-- @@@visibleArea -->
<br/>
<h2>Signal Documentation</h2>
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
<!-- $$$cancelFlick -->
<table class="qmlname"><tr valign="top" id="cancelFlick-method"><td class="tblQmlFuncNode"><p><span class="name">cancelFlick</span>()</p></td></tr></table><p>Cancels the current flick animation.</p>
<!-- @@@cancelFlick -->
<br/>
<!-- $$$flick -->
<table class="qmlname"><tr valign="top" id="flick-method"><td class="tblQmlFuncNode"><p><span class="name">flick</span>(<span class="type">qreal</span><i> xVelocity</i>, <span class="type">qreal</span><i> yVelocity</i>)</p></td></tr></table><p>Flicks the content with <i>xVelocity</i> horizontally and <i>yVelocity</i> vertically in pixels/sec.</p>
<!-- @@@flick -->
<br/>
<!-- $$$resizeContent -->
<table class="qmlname"><tr valign="top" id="resizeContent-method"><td class="tblQmlFuncNode"><p><span class="name">resizeContent</span>(<span class="type">real</span><i> width</i>, <span class="type">real</span><i> height</i>, <span class="type">QPointF</span><i> center</i>)</p></td></tr></table><p>Resizes the content to <i>width</i> x <i>height</i> about <i>center</i>.</p>
<p>This does not scale the contents of the Flickable - it only resizes the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a>.</p>
<p>Resizing the content may result in the content being positioned outside the bounds of the Flickable. Calling <a href="#returnToBounds-method">returnToBounds()</a> will move the content back within legal bounds.</p>
<!-- @@@resizeContent -->
<br/>
<!-- $$$returnToBounds -->
<table class="qmlname"><tr valign="top" id="returnToBounds-method"><td class="tblQmlFuncNode"><p><span class="name">returnToBounds</span>()</p></td></tr></table><p>Ensures the content is within legal bounds.</p>
<p>This may be called to ensure that the content is within legal bounds after manually positioning the content.</p>
<!-- @@@returnToBounds -->
<br/>
