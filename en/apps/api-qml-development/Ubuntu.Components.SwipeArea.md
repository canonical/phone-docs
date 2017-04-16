---
Title: Ubuntu.Components.SwipeArea
---

# Ubuntu.Components.SwipeArea

<span class="subtitle"></span>
<!-- $$$SwipeArea-brief -->
<p>An area which detects axis-aligned single-finger drag gestures. More...</p>
<!-- @@@SwipeArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#distance-prop">distance</a></b></b> : real</li>
<li class="fn"><b><b><a href="#dragging-prop">dragging</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#grabGesture-prop">grabGesture</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#immediateRecognition-prop">immediateRecognition</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#touchPosition-prop">touchPosition</a></b></b> : point</li>
</ul>
<!-- $$$SwipeArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component can be used to detect gestures of a certain direction, and can grab gestures started on a component placed behind of the <a href="index.html">SwipeArea</a>. The gesture is detected on the <a href="index.html">SwipeArea</a>, therefore the size must be chosen carefully so it can properly detect the gesture.</p>
<p>The gesture direction is specified by the <a href="#direction-prop">direction</a> property. The recognized and captured gesture is reported through the <a href="#dragging-prop">dragging</a> property, which becomes <code>true</code> when the gesture is detected. If there was a component under the <a href="index.html">SwipeArea</a>, the gesture will be cancelled on that component.</p>
<p>The drag recognition is performed within the component area in the specified direction. If the drag deviates too much from this, recognition will fail, as well as if the drag or the flick is too short. Once the drag is intercepted, the gesture will be followed even after it leaves the detection area.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;SwipeArea sample&quot;</span>
<span class="type"><a href="index.html">SwipeArea</a></span> {
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">direction</span>: <span class="name">SwipeArea</span>.<span class="name">Upwards</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Drag upwards&quot;</span>
<span class="type">anchors</span> {
<span class="name">centerIn</span>: <span class="name">parent</span>
<span class="name">verticalOffset</span>: <span class="name">parent</span>.<span class="name">dragging</span> ? <span class="name">parent</span>.<span class="name">distance</span> : <span class="number">0</span>
}
}
}
}
}</pre>
<p><b>Note: </b>When used with a Flickable (or <a href="QtQuick.ListView.md">ListView</a>, <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a>) always put the <a href="index.html">SwipeArea</a> next to the Flickable as sibling.</p><!-- @@@SwipeArea -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enum</span></p></td></tr></table><p>The direction in which the gesture should move in order to be recognized.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Direction</th><th >Description</th></tr></thead>
<tr valign="top"><td >Rightwards</td><td >Along the positive direction of the X axis</td></tr>
<tr valign="top"><td >Leftwards</td><td >Along the negative direction of the X axis</td></tr>
<tr valign="top"><td >Downwards</td><td >Along the positive direction of the Y axis</td></tr>
<tr valign="top"><td >Upwards</td><td >Along the negative direction of the Y axis</td></tr>
<tr valign="top"><td >Horizontal</td><td >Along the X axis, in any direction</td></tr>
<tr valign="top"><td >Vertical</td><td >Along the Y axis, in any direction</td></tr>
</table>
<!-- @@@direction -->
<br/>
<!-- $$$distance -->
<table class="qmlname"><tr valign="top" id="distance-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">distance</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the distance of the swipe from the beginning of the gesture recognition to the current touch position.</p>
<!-- @@@distance -->
<br/>
<!-- $$$dragging -->
<table class="qmlname"><tr valign="top" id="dragging-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">dragging</span> : <span class="type">bool</span></p></td></tr></table><p>Reports whether a drag gesture is taking place.</p>
<!-- @@@dragging -->
<br/>
<!-- $$$grabGesture -->
<table class="qmlname"><tr valign="top" id="grabGesture-prop"><td class="tblQmlPropNode"><p><span class="name">grabGesture</span> : <span class="type">bool</span></p></td></tr></table><p>If true, any gestures will be grabbed and owned by the <a href="index.html">SwipeArea</a> as usual. If false, gestures will still be reported, but events may be grabbed by another Qml object.</p>
<p>Defaults to true. In most cases this should not be unset.</p>
<!-- @@@grabGesture -->
<br/>
<!-- $$$immediateRecognition -->
<table class="qmlname"><tr valign="top" id="immediateRecognition-prop"><td class="tblQmlPropNode"><p><span class="name">immediateRecognition</span> : <span class="type">bool</span></p></td></tr></table><p>Drives whether the gesture should be recognized as soon as the touch lands on the area. With this property set it will work the same way as a <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a>,</p>
<p>Defaults to false. In most cases this should not be set.</p>
<!-- @@@immediateRecognition -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>Reports whether the drag area is pressed.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$touchPosition -->
<table class="qmlname"><tr valign="top" id="touchPosition-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">touchPosition</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span></p></td></tr></table><p>Position of the touch point performing the drag relative to this item.</p>
<!-- @@@touchPosition -->
<br/>
