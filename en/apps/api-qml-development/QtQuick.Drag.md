---
Title: QtQuick.Drag
---

# QtQuick.Drag

<span class="subtitle"></span>
<!-- $$$Drag-brief -->
<p>For specifying drag and drop events for moved Items More...</p>
<!-- @@@Drag -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-attached-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#dragType-attached-prop">dragType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#hotSpot-attached-prop">hotSpot</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#keys-attached-prop">keys</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#mimeData-attached-prop">mimeData</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#proposedAction-attached-prop">proposedAction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#source-attached-prop">source</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#supportedActions-attached-prop">supportedActions</a></b></b> : flags</li>
<li class="fn"><b><b><a href="#target-attached-prop">target</a></b></b> : Object</li>
</ul>
<h2 id="attached-signals">Attached Signals</h2>
<ul>
<li class="fn"><b><b><a href="#dragFinished-signal">dragFinished</a></b></b>(DropAction <i>action</i>)</li>
<li class="fn"><b><b><a href="#dragStarted-signal">dragStarted</a></b></b>()</li>
</ul>
<h2 id="attached-methods">Attached Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#cancel-method">cancel</a></b></b>()</li>
<li class="fn">enumeration <b><b><a href="#drop-method">drop</a></b></b>()</li>
<li class="fn">void <b><b><a href="#start-method">start</a></b></b>(flags <i>supportedActions</i>)</li>
<li class="fn">void <b><b><a href="#startDrag-method">startDrag</a></b></b>(flags <i>supportedActions</i>)</li>
</ul>
<!-- $$$Drag-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Using the Drag attached property, any Item can be made a source of drag and drop events within a scene.</p>
<p>When a drag is <a href="#active-attached-prop">active</a> on an item, any change in that item's position will generate a drag event that will be sent to any <a href="QtQuick.DropArea.md">DropArea</a> that intersects with the new position of the item. Other items which implement drag and drop event handlers can also receive these events.</p>
<p>The following snippet shows how an item can be dragged with a <a href="QtQuick.MouseArea.md">MouseArea</a>. However, dragging is not limited to mouse drags; anything that can move an item can generate drag events, including touch events, animations and bindings.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
<span class="name">x</span>: <span class="number">75</span>; <span class="name">y</span>: <span class="number">75</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">visible</span>: <span class="name">parent</span>.<span class="name">containsDrag</span>
}
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>
<span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">20</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">Drag</span>.active: <span class="name">dragArea</span>.<span class="name">drag</span>.<span class="name">active</span>
<span class="name">Drag</span>.hotSpot.x: <span class="number">10</span>
<span class="name">Drag</span>.hotSpot.y: <span class="number">10</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">dragArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">parent</span>
}
}
}</pre>
<p>A drag can be terminated either by canceling it with Drag.<a href="#cancel-method">cancel()</a> or setting Drag.active to false, or it can be terminated with a drop event by calling Drag.<a href="#drop-method">drop()</a>. If the drop event is accepted, Drag.<a href="#drop-method">drop()</a> will return the <a href="#supportedActions-attached-prop">drop action</a> chosen by the recipient of the event, otherwise it will return Qt.IgnoreAction.</p>
<!-- @@@Drag -->
<h2>Attached Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.active</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether a drag event sequence is currently active.</p>
<p>Binding this property to the active property of <a href="QtQuick.MouseArea.md#drag-prop">MouseArea::drag</a> will cause <a href="#startDrag-method">startDrag</a> to be called when the user starts dragging.</p>
<p>Setting this property to true will also send a QDragEnter event to the scene with the item's current position. Setting it to false will send a QDragLeave event.</p>
<p>While a drag is active any change in an item's position will send a QDragMove event with item's new position to the scene.</p>
<!-- @@@active -->
<br/>
<!-- $$$dragType -->
<table class="qmlname"><tr valign="top" id="dragType-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.dragType</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property indicates whether to automatically start drags, do nothing, or to use backwards compatible internal drags. The default is to use backwards compatible internal drags.</p>
<p>A drag can also be started manually using <a href="#startDrag-method">startDrag</a>.</p>
<ul>
<li>Drag.None - do not start drags automatically</li>
<li>Drag.Automatic - start drags automatically</li>
<li>Drag.Internal (default) - start backwards compatible drags automatically</li>
</ul>
<p>When using <code>Drag.Automatic</code> you should also define <a href="#mimeData-attached-prop">mimeData</a> and bind the <a href="#active-attached-prop">active</a> property to the active property of MouseArea.drag.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@dragType -->
<br/>
<!-- $$$hotSpot -->
<table class="qmlname"><tr valign="top" id="hotSpot-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.hotSpot</span> : <span class="type">QPointF</span></p></td></tr></table><p>This property holds the drag position relative to the top left of the item.</p>
<p>By default this is (0, 0).</p>
<p>Changes to hotSpot trigger a new drag move with the updated position.</p>
<!-- @@@hotSpot -->
<br/>
<!-- $$$keys -->
<table class="qmlname"><tr valign="top" id="keys-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.keys</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a list of keys that can be used by a <a href="QtQuick.DropArea.md">DropArea</a> to filter drag events.</p>
<p>Changing the keys while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.</p>
<!-- @@@keys -->
<br/>
<!-- $$$mimeData -->
<table class="qmlname"><tr valign="top" id="mimeData-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.mimeData</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a map of mimeData that is used during <a href="#startDrag-method">startDrag</a>.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@mimeData -->
<br/>
<!-- $$$proposedAction -->
<table class="qmlname"><tr valign="top" id="proposedAction-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.proposedAction</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds an action that is recommended by the drag source as a return value from Drag.<a href="#drop-method">drop()</a>.</p>
<p>Changes to proposedAction will trigger a move event with the updated proposal.</p>
<!-- @@@proposedAction -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.source</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds an object that is identified to recipients of drag events as the source of the events. By default this is the item that the Drag property is attached to.</p>
<p>Changing the source while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.</p>
<!-- @@@source -->
<br/>
<!-- $$$supportedActions -->
<table class="qmlname"><tr valign="top" id="supportedActions-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.supportedActions</span> : <span class="type">flags</span></p></td></tr></table><p>This property holds return values of Drag.<a href="#drop-method">drop()</a> supported by the drag source.</p>
<p>Changing the supportedActions while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.</p>
<!-- @@@supportedActions -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Drag.target</span> : <span class="type">Object</span></p></td></tr></table><p>While a drag is active this property holds the last object to accept an enter event from the dragged item, if the current drag position doesn't intersect any accepting targets it is null.</p>
<p>When a drag is not active this property holds the object that accepted the drop event that ended the drag, if no object accepted the drop or the drag was canceled the target will then be null.</p>
<!-- @@@target -->
<br/>
<h2>Attached Signal Documentation</h2>
<!-- $$$dragFinished -->
<table class="qmlname"><tr valign="top" id="dragFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">dragFinished</span>(<span class="type">DropAction</span><i> action</i>)</p></td></tr></table><p>This signal is emitted when a drag finishes and the drag was started with the <a href="#startDrag-method">startDrag()</a> method or started automatically using the <a href="#dragType-attached-prop">dragType</a> property.</p>
<p>The corresponding handler is <code>onDragFinished</code>.</p>
<!-- @@@dragFinished -->
<br/>
<!-- $$$dragStarted -->
<table class="qmlname"><tr valign="top" id="dragStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">dragStarted</span>()</p></td></tr></table><p>This signal is emitted when a drag is started with the <a href="#startDrag-method">startDrag()</a> method or when it is started automatically using the <a href="#dragType-attached-prop">dragType</a> property.</p>
<p>The corresponding handler is <code>onDragStarted</code>.</p>
<!-- @@@dragStarted -->
<br/>
<h2>Attached Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">cancel</span>()</p></td></tr></table><p>Ends a drag sequence.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$drop -->
<table class="qmlname"><tr valign="top" id="drop-method"><td class="tblQmlFuncNode"><p><span class="type">enumeration</span> <span class="name">drop</span>()</p></td></tr></table><p>Ends a drag sequence by sending a drop event to the target item.</p>
<p>Returns the action accepted by the target item. If the target item or a parent doesn't accept the drop event then Qt.IgnoreAction will be returned.</p>
<p>The returned drop action may be one of:</p>
<ul>
<li>Qt.CopyAction Copy the data to the target</li>
<li>Qt.MoveAction Move the data from the source to the target</li>
<li>Qt.LinkAction Create a link from the source to the target.</li>
<li>Qt.IgnoreAction Ignore the action (do nothing with the data).</li>
</ul>
<!-- @@@drop -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">start</span>(<span class="type">flags</span><i> supportedActions</i>)</p></td></tr></table><p>Starts sending drag events. Used for starting old-style internal drags. <a href="#startDrag-method">startDrag</a> is the new-style, preferred method of starting drags.</p>
<p>The optional <i>supportedActions</i> argument can be used to override the <a href="#supportedActions-attached-prop">supportedActions</a> property for the started sequence.</p>
<!-- @@@start -->
<br/>
<!-- $$$startDrag -->
<table class="qmlname"><tr valign="top" id="startDrag-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">startDrag</span>(<span class="type">flags</span><i> supportedActions</i>)</p></td></tr></table><p>Starts sending drag events.</p>
<p>The optional <i>supportedActions</i> argument can be used to override the <a href="#supportedActions-attached-prop">supportedActions</a> property for the started sequence.</p>
<!-- @@@startDrag -->
<br/>
