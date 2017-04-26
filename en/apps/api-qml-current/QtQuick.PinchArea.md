---
Title: QtQuick.PinchArea
---

# QtQuick.PinchArea

<span class="subtitle"></span>
<!-- $$$PinchArea-brief -->
<p>Enables simple pinch gesture handling More...</p>
<!-- @@@PinchArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pinch-prop">pinch</a></b></b><ul>
<li class="fn"><b><b><a href="#pinch.target-prop">pinch.target</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#pinch.active-prop">pinch.active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pinch.minimumScale-prop">pinch.minimumScale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.maximumScale-prop">pinch.maximumScale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.minimumRotation-prop">pinch.minimumRotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.maximumRotation-prop">pinch.maximumRotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.dragAxis-prop">pinch.dragAxis</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#pinch.minimumX-prop">pinch.minimumX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.maximumX-prop">pinch.maximumX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.minimumY-prop">pinch.minimumY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pinch.maximumY-prop">pinch.maximumY</a></b></b> : real</li>
</ul>
</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#pinchFinished-signal">pinchFinished</a></b></b>()</li>
<li class="fn"><b><b><a href="#pinchStarted-signal">pinchStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="#pinchUpdated-signal">pinchUpdated</a></b></b>()</li>
</ul>
<!-- $$$PinchArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>The PinchArea type was added in QtQuick 1.1</b></p>
<p>A <a href="index.html">PinchArea</a> is an invisible item that is typically used in conjunction with a visible item in order to provide pinch gesture handling for that item.</p>
<p>The <a href="#enabled-prop">enabled</a> property is used to enable and disable pinch handling for the proxied item. When disabled, the pinch area becomes transparent to mouse/touch events.</p>
<p><a href="index.html">PinchArea</a> can be used in two ways:</p>
<ul>
<li>setting a <code>pinch.target</code> to provide automatic interaction with an item</li>
<li>using the onPinchStarted, onPinchUpdated and onPinchFinished handlers</li>
</ul>
<p><b>See also </b><a href="QtQuick.PinchEvent.md">PinchEvent</a>.</p>
<!-- @@@PinchArea -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item accepts pinch gestures.</p>
<p>This property defaults to true.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$pinch -->
<table class="qmlname"><tr valign="top" id="pinch-prop"><th class="centerAlign"><p><b>pinch group</b></p></th></tr><tr valign="top" id="pinch.target-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr><tr valign="top" id="pinch.active-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.active</span> : <span class="type">bool</span></p></td></tr><tr valign="top" id="pinch.minimumScale-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.minimumScale</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.maximumScale-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.maximumScale</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.minimumRotation-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.minimumRotation</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.maximumRotation-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.maximumRotation</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.dragAxis-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.dragAxis</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="pinch.minimumX-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.minimumX</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.maximumX-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.maximumX</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.minimumY-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.minimumY</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="pinch.maximumY-prop"><td class="tblQmlPropNode"><p><span class="name">pinch.maximumY</span> : <span class="type">real</span></p></td></tr></table><p><code>pinch</code> provides a convenient way to make an item react to pinch gestures.</p>
<ul>
<li><code>pinch.target</code> specifies the id of the item to drag.</li>
<li><code>pinch.active</code> specifies if the target item is currently being dragged.</li>
<li><code>pinch.minimumScale</code> and <code>pinch.maximumScale</code> limit the range of the Item.scale property, but not the <code>PinchEvent</code> <a href="QtQuick.PinchEvent.md">scale</a> property.</li>
<li><code>pinch.minimumRotation</code> and <code>pinch.maximumRotation</code> limit the range of the Item.rotation property, but not the <code>PinchEvent</code> <a href="QtQuick.PinchEvent.md">rotation</a> property.</li>
<li><code>pinch.dragAxis</code> specifies whether dragging in not allowed (<code>Pinch.NoDrag</code>), can be done horizontally (<code>Pinch.XAxis</code>), vertically (<code>Pinch.YAxis</code>), or both (<code>Pinch.XAndYAxis</code>)</li>
<li><code>pinch.minimum</code> and <code>pinch.maximum</code> limit how far the target can be dragged along the corresponding axes.</li>
</ul>
<!-- @@@pinch -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$pinchFinished -->
<table class="qmlname"><tr valign="top" id="pinchFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchFinished</span>()</p></td></tr></table><p>This signal is emitted when the pinch area detects that a pinch gesture has finished.</p>
<p>The <a href="QtQuick.PinchEvent.md">pinch</a> parameter (not the same as the <a href="index.html">pinch</a> property) provides information about the pinch gesture, including the scale, center and angle of the pinch.</p>
<p>The corresponding handler is <code>onPinchFinished</code>.</p>
<!-- @@@pinchFinished -->
<br/>
<!-- $$$pinchStarted -->
<table class="qmlname"><tr valign="top" id="pinchStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchStarted</span>()</p></td></tr></table><p>This signal is emitted when the pinch area detects that a pinch gesture has started: two touch points (fingers) have been detected, and they have moved beyond the startDragDistance threshold for the gesture to begin.</p>
<p>The <a href="QtQuick.PinchEvent.md">pinch</a> parameter (not the same as the <a href="index.html">pinch</a> property) provides information about the pinch gesture, including the scale, center and angle of the pinch. At the time of the <code>pinchStarted</code> signal, these values are reset to the default values, regardless of the results from previous gestures: pinch.scale will be <code>1.0</code> and pinch.rotation will be <code>0.0</code>. As the gesture progresses, <a href="#pinchUpdated-signal">pinchUpdated</a> will report the deviation from those defaults.</p>
<p>To ignore this gesture set the <code>pinch.accepted</code> property to false. The gesture will be canceled and no further events will be sent.</p>
<p>The corresponding handler is <code>onPinchStarted</code>.</p>
<!-- @@@pinchStarted -->
<br/>
<!-- $$$pinchUpdated -->
<table class="qmlname"><tr valign="top" id="pinchUpdated-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchUpdated</span>()</p></td></tr></table><p>This signal is emitted when the pinch area detects that a pinch gesture has changed.</p>
<p>The <a href="QtQuick.PinchEvent.md">pinch</a> parameter provides information about the pinch gesture, including the scale, center and angle of the pinch. These values reflect changes only since the beginning of the current gesture, and therefore are not limited by the minimum and maximum limits in the <a href="index.html">pinch</a> property.</p>
<p>The corresponding handler is <code>onPinchUpdated</code>.</p>
<!-- @@@pinchUpdated -->
<br/>
