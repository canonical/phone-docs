---
Title: QtQuick.MultiPointTouchArea
---

# QtQuick.MultiPointTouchArea

<span class="subtitle"></span>
<!-- $$$MultiPointTouchArea-brief -->
<p>Enables handling of multiple touch points More...</p>
<!-- @@@MultiPointTouchArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#maximumTouchPoints-prop">maximumTouchPoints</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumTouchPoints-prop">minimumTouchPoints</a></b></b> : int</li>
<li class="fn"><b><b><a href="#mouseEnabled-prop">mouseEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#touchPoints-prop">touchPoints</a></b></b> : list&lt;TouchPoint&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#canceled-signal">canceled</a></b></b>(list&lt;TouchPoint&gt; <i>touchPoints</i>)</li>
<li class="fn"><b><b><a href="#gestureStarted-signal">gestureStarted</a></b></b>(GestureEvent <i>gesture</i>)</li>
<li class="fn"><b><b><a href="#pressed-signal">pressed</a></b></b>(list&lt;TouchPoint&gt; <i>touchPoints</i>)</li>
<li class="fn"><b><b><a href="#released-signal">released</a></b></b>(list&lt;TouchPoint&gt; <i>touchPoints</i>)</li>
<li class="fn"><b><b><a href="#touchUpdated-signal">touchUpdated</a></b></b>(list&lt;TouchPoint&gt; <i>touchPoints</i>)</li>
<li class="fn"><b><b><a href="#updated-signal">updated</a></b></b>(list&lt;TouchPoint&gt; <i>touchPoints</i>)</li>
</ul>
<!-- $$$MultiPointTouchArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">MultiPointTouchArea</a> is an invisible item that is used to track multiple touch points.</p>
<p>The <a href="QtQuick.Item.md#enabled-prop">Item::enabled</a> property is used to enable and disable touch handling. When disabled, the touch area becomes transparent to mouse and touch events.</p>
<p>By default, the mouse will be handled the same way as a single touch point, and items under the touch area will not receive mouse events because the touch area is handling them. But if the <a href="#mouseEnabled-prop">mouseEnabled</a> property is set to false, it becomes transparent to mouse events so that another mouse-sensitive Item (such as a <a href="QtQuick.MouseArea.md">MouseArea</a>) can be used to handle mouse interaction separately.</p>
<p><a href="index.html">MultiPointTouchArea</a> can be used in two ways:</p>
<ul>
<li>setting <code>touchPoints</code> to provide touch point objects with properties that can be bound to</li>
<li>using the onTouchUpdated or onPressed, onUpdated and onReleased handlers</li>
</ul>
<p>While a <a href="index.html">MultiPointTouchArea</a> <i>can</i> take exclusive ownership of certain touch points, it is also possible to have multiple MultiPointTouchAreas active at the same time, each operating on a different set of touch points.</p>
<p><b>See also </b><a href="QtQuick.TouchPoint.md">TouchPoint</a>.</p>
<!-- @@@MultiPointTouchArea -->
<h2>Property Documentation</h2>
<!-- $$$maximumTouchPoints -->
<table class="qmlname"><tr valign="top" id="maximumTouchPoints-prop"><td class="tblQmlPropNode"><p><span class="name">maximumTouchPoints</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the range of touch points to be handled by the touch area.</p>
<p>These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.</p>
<p>By default, all touch points within the touch area are handled.</p>
<p>If <a href="#mouseEnabled-prop">mouseEnabled</a> is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if maximumTouchPoints is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.</p>
<!-- @@@maximumTouchPoints -->
<br/>
<!-- $$$minimumTouchPoints -->
<table class="qmlname"><tr valign="top" id="minimumTouchPoints-prop"><td class="tblQmlPropNode"><p><span class="name">minimumTouchPoints</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the range of touch points to be handled by the touch area.</p>
<p>These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.</p>
<p>By default, all touch points within the touch area are handled.</p>
<p>If <a href="#mouseEnabled-prop">mouseEnabled</a> is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if <a href="#maximumTouchPoints-prop">maximumTouchPoints</a> is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.</p>
<!-- @@@minimumTouchPoints -->
<br/>
<!-- $$$mouseEnabled -->
<table class="qmlname"><tr valign="top" id="mouseEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">mouseEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property controls whether the <a href="index.html">MultiPointTouchArea</a> will handle mouse events too. If it is true (the default), the touch area will treat the mouse the same as a single touch point; if it is false, the touch area will ignore mouse events and allow them to &quot;pass through&quot; so that they can be handled by other items underneath.</p>
<!-- @@@mouseEnabled -->
<br/>
<!-- $$$touchPoints -->
<table class="qmlname"><tr valign="top" id="touchPoints-prop"><td class="tblQmlPropNode"><p><span class="name">touchPoints</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;</p></td></tr></table><p>This property holds a set of user-defined touch point objects that can be bound to.</p>
<p>If <a href="#mouseEnabled-prop">mouseEnabled</a> is true (the default) and the left mouse button is pressed while the mouse is over the touch area, the current mouse position will be one of these touch points.</p>
<p>In the following example, we have two small rectangles that follow our touch points.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type"><a href="index.html">MultiPointTouchArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">touchPoints</span>: [
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">point1</span> },
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">point2</span> }
]
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">30</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">x</span>: <span class="name">point1</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">point1</span>.<span class="name">y</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">30</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="name">x</span>: <span class="name">point2</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">point2</span>.<span class="name">y</span>
}
}</pre>
<p>By default this property holds an empty list.</p>
<p><b>See also </b><a href="QtQuick.TouchPoint.md">TouchPoint</a>.</p>
<!-- @@@touchPoints -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$canceled -->
<table class="qmlname"><tr valign="top" id="canceled-signal"><td class="tblQmlFuncNode"><p><span class="name">canceled</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;<i> touchPoints</i>)</p></td></tr></table><p>This signal is emitted when new touch events have been canceled because another item stole the touch event handling.</p>
<p>This signal is for advanced use: it is useful when there is more than one <a href="index.html">MultiPointTouchArea</a> that is handling input, or when there is a <a href="index.html">MultiPointTouchArea</a> inside a <a href="QtQuick.touchinteraction.md#flickable">Flickable</a>. In the latter case, if you execute some logic in the <code>onPressed</code> signal handler and then start dragging, the <a href="QtQuick.touchinteraction.md#flickable">Flickable</a> may steal the touch handling from the <a href="index.html">MultiPointTouchArea</a>. In these cases, to reset the logic when the <a href="index.html">MultiPointTouchArea</a> has lost the touch handling to the <a href="QtQuick.touchinteraction.md#flickable">Flickable</a>, <code>canceled</code> should be handled in addition to <a href="#released-signal">released</a>.</p>
<p><i>touchPoints</i> is the list of canceled points.</p>
<p>The corresponding handler is <code>onCanceled</code>.</p>
<!-- @@@canceled -->
<br/>
<!-- $$$gestureStarted -->
<table class="qmlname"><tr valign="top" id="gestureStarted-signal"><td class="tblQmlFuncNode"><p><span class="name">gestureStarted</span>(<span class="type">GestureEvent</span><i> gesture</i>)</p></td></tr></table><p>This signal is emitted when the global drag threshold has been reached.</p>
<p>This signal is typically used when a <a href="index.html">MultiPointTouchArea</a> has been nested in a Flickable or another <a href="index.html">MultiPointTouchArea</a>. When the threshold has been reached and the signal is handled, you can determine whether or not the touch area should grab the current touch points. By default they will not be grabbed; to grab them call <code>gesture.grab()</code>. If the gesture is not grabbed, the nesting Flickable, for example, would also have an opportunity to grab.</p>
<p>The gesture object also includes information on the current set of <code>touchPoints</code> and the <code>dragThreshold</code>.</p>
<p>The corresponding handler is <code>onGestureStarted</code>.</p>
<!-- @@@gestureStarted -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">pressed</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;<i> touchPoints</i>)</p></td></tr></table><p>This signal is emitted when new touch points are added. <i>touchPoints</i> is a list of these new points.</p>
<p>If <a href="#minimumTouchPoints-prop">minimumTouchPoints</a> is set to a value greater than one, this signal will not be emitted until the minimum number of required touch points has been reached.</p>
<p>The corresponding handler is <code>onPressed</code>.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$released -->
<table class="qmlname"><tr valign="top" id="released-signal"><td class="tblQmlFuncNode"><p><span class="name">released</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;<i> touchPoints</i>)</p></td></tr></table><p>This signal is emitted when existing touch points are removed. <i>touchPoints</i> is a list of these removed points.</p>
<p>The corresponding handler is <code>onReleased</code>.</p>
<!-- @@@released -->
<br/>
<!-- $$$touchUpdated -->
<table class="qmlname"><tr valign="top" id="touchUpdated-signal"><td class="tblQmlFuncNode"><p><span class="name">touchUpdated</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;<i> touchPoints</i>)</p></td></tr></table><p>This signal is emitted when the touch points handled by the <a href="index.html">MultiPointTouchArea</a> change. This includes adding new touch points, removing or canceling previous touch points, as well as updating current touch point data. <i>touchPoints</i> is the list of all current touch points.</p>
<p>The corresponding handler is <code>onTouchUpdated</code>.</p>
<!-- @@@touchUpdated -->
<br/>
<!-- $$$updated -->
<table class="qmlname"><tr valign="top" id="updated-signal"><td class="tblQmlFuncNode"><p><span class="name">updated</span>(<span class="type">list</span>&lt;<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span>&gt;<i> touchPoints</i>)</p></td></tr></table><p>This signal is emitted when existing touch points are updated. <i>touchPoints</i> is a list of these updated points.</p>
<p>The corresponding handler is <code>onUpdated</code>.</p>
<!-- @@@updated -->
<br/>
