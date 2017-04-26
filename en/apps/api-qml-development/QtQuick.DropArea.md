---
Title: QtQuick.DropArea
---

# QtQuick.DropArea

<span class="subtitle"></span>
<!-- $$$DropArea-brief -->
<p>For specifying drag and drop handling in an area More...</p>
<!-- @@@DropArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#containsDrag-prop">containsDrag</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#drag-prop">drag</a></b></b><ul>
<li class="fn"><b><b><a href="#drag.x-prop">drag.x</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#drag.y-prop">drag.y</a></b></b> : qreal</li>
</ul>
</li>
<li class="fn"><b><b><a href="#drag.source-prop">drag.source</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#keys-prop">keys</a></b></b> : stringlist</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#dropped-signal">dropped</a></b></b>(DragEvent <i>drop</i>)</li>
<li class="fn"><b><b><a href="#entered-signal">entered</a></b></b>(DragEvent <i>drag</i>)</li>
<li class="fn"><b><b><a href="#exited-signal">exited</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionChanged-signal">positionChanged</a></b></b>(DragEvent <i>drag</i>)</li>
</ul>
<!-- $$$DropArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">DropArea</a> is an invisible item which receives events when other items are dragged over it.</p>
<p>The <a href="QtQuick.Drag.md">Drag</a> attached property can be used to notify the <a href="index.html">DropArea</a> when an Item is dragged over it.</p>
<p>The <a href="#keys-prop">keys</a> property can be used to filter drag events which don't include a matching key.</p>
<p>The <a href="#drag.source-prop">drag.source</a> property is communicated to the source of a drag event as the recipient of a drop on the drag target.</p>
<!-- @@@DropArea -->
<h2>Property Documentation</h2>
<!-- $$$containsDrag -->
<table class="qmlname"><tr valign="top" id="containsDrag-prop"><td class="tblQmlPropNode"><p><span class="name">containsDrag</span> : <span class="type">bool</span></p></td></tr></table><p>This property identifies whether the <a href="index.html">DropArea</a> currently contains any dragged items.</p>
<!-- @@@containsDrag -->
<br/>
<!-- $$$drag -->
<table class="qmlname"><tr valign="top" id="drag-prop"><th class="centerAlign"><p><b>drag group</b></p></th></tr><tr valign="top" id="drag.x-prop"><td class="tblQmlPropNode"><p><span class="name">drag.x</span> : <span class="type">qreal</span></p></td></tr><tr valign="top" id="drag.y-prop"><td class="tblQmlPropNode"><p><span class="name">drag.y</span> : <span class="type">qreal</span></p></td></tr></table><p>These properties hold the coordinates of the last drag event.</p>
<!-- @@@drag -->
<br/>
<!-- $$$drag.source -->
<table class="qmlname"><tr valign="top" id="drag.source-prop"><td class="tblQmlPropNode"><p><span class="name">drag.source</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds the source of a drag.</p>
<!-- @@@drag.source -->
<br/>
<!-- $$$keys -->
<table class="qmlname"><tr valign="top" id="keys-prop"><td class="tblQmlPropNode"><p><span class="name">keys</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a list of drag keys a <a href="index.html">DropArea</a> will accept.</p>
<p>If no keys are listed the <a href="index.html">DropArea</a> will accept events from any drag source, otherwise the drag source must have at least one compatible key.</p>
<p><b>See also </b><a href="QtQuick.Drag.md#keys-attached-prop">QtQuick::Drag::keys</a>.</p>
<!-- @@@keys -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$dropped -->
<table class="qmlname"><tr valign="top" id="dropped-signal"><td class="tblQmlFuncNode"><p><span class="name">dropped</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span><i> drop</i>)</p></td></tr></table><p>This signal is emitted when a drop event occurs within the bounds of a <a href="index.html">DropArea</a>.</p>
<p>The corresponding handler is <code>onDropped</code>.</p>
<!-- @@@dropped -->
<br/>
<!-- $$$entered -->
<table class="qmlname"><tr valign="top" id="entered-signal"><td class="tblQmlFuncNode"><p><span class="name">entered</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span><i> drag</i>)</p></td></tr></table><p>This signal is emitted when a <i>drag</i> enters the bounds of a <a href="index.html">DropArea</a>.</p>
<p>The corresponding handler is <code>onEntered</code>.</p>
<!-- @@@entered -->
<br/>
<!-- $$$exited -->
<table class="qmlname"><tr valign="top" id="exited-signal"><td class="tblQmlFuncNode"><p><span class="name">exited</span>()</p></td></tr></table><p>This signal is emitted when a drag exits the bounds of a <a href="index.html">DropArea</a>.</p>
<p>The corresponding handler is <code>onExited</code>.</p>
<!-- @@@exited -->
<br/>
<!-- $$$positionChanged -->
<table class="qmlname"><tr valign="top" id="positionChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">positionChanged</span>(<span class="type"><a href="QtQuick.DragEvent.md">DragEvent</a></span><i> drag</i>)</p></td></tr></table><p>This signal is emitted when the position of a drag has changed.</p>
<p>The corresponding handler is <code>onPositionChanged</code>.</p>
<!-- @@@positionChanged -->
<br/>
