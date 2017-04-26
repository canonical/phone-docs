---
Title: QtLocation.MapGestureArea
---

# QtLocation.MapGestureArea

<span class="subtitle"></span>
<!-- $$$MapGestureArea-brief -->
<p>The MapGestureArea type provides Map gesture interaction. More...</p>
<!-- @@@MapGestureArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#activeGestures-prop">activeGestures</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#flickDeceleration-prop">flickDeceleration</a></b></b> : real</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#isPanActive-prop">isPanActive</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#isPinchActive-prop">isPinchActive</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#maximumZoomLevelChange-prop">maximumZoomLevelChange</a></b></b> : real</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#panEnabled-prop">panEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#pinchEnabled-prop">pinchEnabled</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#flickFinished-signal">flickFinished</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#flickStarted-signal">flickStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#panFinished-signal">panFinished</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#panStarted-signal">panStarted</a></b></b>()</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#pinchFinished-signal">pinchFinished</a></b></b>(PinchEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#pinchStarted-signal">pinchStarted</a></b></b>(PinchEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="..//QtLocation.MapGestureArea.md#pinchUpdated-signal">pinchUpdated</a></b></b>(PinchEvent <i>event</i>)</li>
</ul>
<!-- $$$MapGestureArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a> objects are used as part of a Map, to provide for panning, flicking and pinch-to-zoom gesture used on touch displays.</p>
<p>A <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a> is automatically created with a new Map and available with the <a href="..//QtLocation.Map.md#gesture-prop">gesture</a> property. This is the only way to create a <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>, and once created this way cannot be destroyed without its parent Map.</p>
<p>The two most commonly used properties of the <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a> are the <a href="..//QtLocation.MapGestureArea.md#enabled-prop">enabled</a> and <a href="..//QtLocation.MapGestureArea.md#activeGestures-prop">activeGestures</a> properties. Both of these must be set before a <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a> will have any effect upon interaction with the Map. The <a href="..//QtLocation.MapGestureArea.md#flickDeceleration-prop">flickDeceleration</a> property controls how quickly the map pan slows after contact is released while panning the map.</p>
<h3 >Performance</h3>
<p>The <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>, when enabled, must process all incoming touch events in order to track the shape and size of the &quot;pinch&quot;. The overhead added on touch events can be considered constant time.</p>
<h3 >Example Usage</h3>
<p>The following example enables the zoom and pan gestures on the map, but not flicking. So the map scrolling will halt immediately on releasing the mouse button / touch.</p>
<pre class="cpp">Map {
gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
gesture<span class="operator">.</span>activeGestures: MapGestureArea<span class="operator">.</span>ZoomGesture <span class="operator">|</span> MapGestureArea<span class="operator">.</span>PanGesture
}</pre>
<!-- @@@MapGestureArea -->
<h2>Property Documentation</h2>
<!-- $$$activeGestures -->
<table class="qmlname"><tr valign="top" id="activeGestures-prop"><td class="tblQmlPropNode"><p><span class="name">activeGestures</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the gestures that will be active. By default the zoom, pan and flick gestures are enabled.</p>
<ul>
<li><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>.NoGesture - Don't support any additional gestures (value: 0x0000).</li>
<li><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>.ZoomGesture - Support the map zoom gesture (value: 0x0001).</li>
<li><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>.PanGesture - Support the map pan gesture (value: 0x0002).</li>
<li><a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>.FlickGesture - Support the map flick gesture (value: 0x0004).</li>
</ul>
<p><b>Note: </b>For the time being, only <a href="..//QtLocation.MapGestureArea.md">MapGestureArea</a>.ZoomGesture is supported.</p><!-- @@@activeGestures -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$flickDeceleration -->
<table class="qmlname"><tr valign="top" id="flickDeceleration-prop"><td class="tblQmlPropNode"><p><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rate at which a flick will decelerate.</p>
<p>The default value is 2500.</p>
<!-- @@@flickDeceleration -->
<br/>
<!-- $$$isPanActive -->
<table class="qmlname"><tr valign="top" id="isPanActive-prop"><td class="tblQmlPropNode"><p><span class="name">isPanActive</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property holds whether any pan gesture (panning or flicking) is active.</p>
<!-- @@@isPanActive -->
<br/>
<!-- $$$isPinchActive -->
<table class="qmlname"><tr valign="top" id="isPinchActive-prop"><td class="tblQmlPropNode"><p><span class="name">isPinchActive</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property holds whether any pinch gesture is active.</p>
<!-- @@@isPinchActive -->
<br/>
<!-- $$$maximumZoomLevelChange -->
<table class="qmlname"><tr valign="top" id="maximumZoomLevelChange-prop"><td class="tblQmlPropNode"><p><span class="name">maximumZoomLevelChange</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum zoom level change per pinch, essentially meant to be used for setting the zoom sensitivity.</p>
<p>It is an indicative measure calculated from the dimensions of the map area, roughly corresponding how much zoom level could change with maximum pinch zoom. Default value is 2.0, maximum value is 10.0</p>
<!-- @@@maximumZoomLevelChange -->
<br/>
<!-- $$$panEnabled -->
<table class="qmlname"><tr valign="top" id="panEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">panEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the pan gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.</p>
<!-- @@@panEnabled -->
<br/>
<!-- $$$pinchEnabled -->
<table class="qmlname"><tr valign="top" id="pinchEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">pinchEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the pinch gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.</p>
<!-- @@@pinchEnabled -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$flickFinished -->
<table class="qmlname"><tr valign="top" id="flickFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">flickFinished</span>()</p></td></tr></table><p>This signal is emitted when the view stops moving due to a flick. The order of panFinished() and flickFinished() is not specified.</p>
<p>The corresponding handler is <code>onFlickFinished</code>.</p>
<!-- @@@flickFinished -->
<br/>
<!-- $$$flickStarted -->
<table class="qmlname"><tr valign="top" id="flickStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">flickStarted</span>()</p></td></tr></table><p>This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.</p>
<p>The corresponding handler is <code>onFlichStarted</code>.</p>
<!-- @@@flickStarted -->
<br/>
<!-- $$$panFinished -->
<table class="qmlname"><tr valign="top" id="panFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">panFinished</span>()</p></td></tr></table><p>This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal is emitted when the flick stops. If a flick was not generated, this signal is emitted when the user stops dragging - that is a mouse or touch release.</p>
<p>The corresponding handler is <code>onPanFinished</code>.</p>
<!-- @@@panFinished -->
<br/>
<!-- $$$panStarted -->
<table class="qmlname"><tr valign="top" id="panStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">panStarted</span>()</p></td></tr></table><p>This signal is emitted when the view begins moving due to user interaction. Typically this means that the user is dragging a finger - or a mouse with one of more mouse buttons pressed - on the map.</p>
<p>The corresponding handler is <code>onPanStarted</code>.</p>
<!-- @@@panStarted -->
<br/>
<!-- $$$pinchFinished -->
<table class="qmlname"><tr valign="top" id="pinchFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchFinished</span>(<span class="type">PinchEvent</span><i> event</i>)</p></td></tr></table><p>This signal is emitted at the end of a pinch gesture.</p>
<p>The corresponding handler is <code>onPinchFinished</code>.</p>
<p><b>See also </b><a href="..//QtLocation.MapGestureArea.md#pinchStarted-signal">pinchStarted</a> and <a href="..//QtLocation.MapGestureArea.md#pinchUpdated-signal">pinchUpdated</a>.</p>
<!-- @@@pinchFinished -->
<br/>
<!-- $$$pinchStarted -->
<table class="qmlname"><tr valign="top" id="pinchStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchStarted</span>(<span class="type">PinchEvent</span><i> event</i>)</p></td></tr></table><p>This signal is emitted when a pinch gesture is started.</p>
<p>The corresponding handler is <code>onPinchStarted</code>.</p>
<p><b>See also </b><a href="..//QtLocation.MapGestureArea.md#pinchUpdated-signal">pinchUpdated</a> and <a href="..//QtLocation.MapGestureArea.md#pinchFinished-signal">pinchFinished</a>.</p>
<!-- @@@pinchStarted -->
<br/>
<!-- $$$pinchUpdated -->
<table class="qmlname"><tr valign="top" id="pinchUpdated-signal"><td class="tblQmlFuncNode"><p><span class="name">pinchUpdated</span>(<span class="type">PinchEvent</span><i> event</i>)</p></td></tr></table><p>This signal is emitted as the user's fingers move across the map, after the <a href="..//QtLocation.MapGestureArea.md#pinchStarted-signal">pinchStarted</a> signal is emitted.</p>
<p>The corresponding handler is <code>onPinchUpdated</code>.</p>
<p><b>See also </b><a href="..//QtLocation.MapGestureArea.md#pinchStarted-signal">pinchStarted</a> and <a href="..//QtLocation.MapGestureArea.md#pinchFinished-signal">pinchFinished</a>.</p>
<!-- @@@pinchUpdated -->
<br/>
