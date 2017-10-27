---
Title: QtMultimedia.CameraFocus
---

# QtMultimedia.CameraFocus

<span class="subtitle"></span>
<!-- $$$CameraFocus-brief -->
<p>An interface for focus related camera settings. More...</p>
<!-- @@@CameraFocus -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#customFocusPoint-prop">customFocusPoint</a></b></b> : point</li>
<li class="fn"><b><b><a href="#focusMode-prop">focusMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#focusPointMode-prop">focusPointMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#focusZones-prop">focusZones</a></b></b> : list&lt;focusZone&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#isFocusModeSupported-method">isFocusModeSupported</a></b></b>(mode)</li>
<li class="fn">bool <b><b><a href="#isFocusPointModeSupported-method">isFocusPointModeSupported</a></b></b>(mode)</li>
</ul>
<!-- $$$CameraFocus-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>CameraFocus is part of the <b>QtMultimedia 5.0</b> module.</p>
<p>This type allows control over manual and automatic focus settings, including information about any parts of the camera frame that are selected for autofocusing.</p>
<p>It should not be constructed separately, instead the <code>focus</code> property of a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> should be used.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="type">focus</span> {
<span class="name">focusMode</span>: <span class="name">Camera</span>.<span class="name">FocusMacro</span>
<span class="name">focusPointMode</span>: <span class="name">Camera</span>.<span class="name">FocusPointCustom</span>
<span class="name">customFocusPoint</span>: <span class="name">Qt</span>.<span class="name">point</span>(<span class="number">0.2</span>, <span class="number">0.2</span>) <span class="comment">// Focus relative to top-left corner</span>
}
}
<span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">source</span>: <span class="name">camera</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}</pre>
<!-- @@@CameraFocus -->
<h2>Property Documentation</h2>
<!-- $$$customFocusPoint -->
<table class="qmlname"><tr valign="top" id="customFocusPoint-prop"><td class="tblQmlPropNode"><p><span class="name">customFocusPoint</span> : <span class="type">point</span></p></td></tr></table><p>This property holds the position of custom focus point, in relative frame coordinates: QPointF(0,0) points to the left top frame point, QPointF(0.5,0.5) points to the frame center.</p>
<p>Custom focus point is used only in FocusPointCustom focus mode.</p>
<!-- @@@customFocusPoint -->
<br/>
<!-- $$$focusMode -->
<table class="qmlname"><tr valign="top" id="focusMode-prop"><td class="tblQmlPropNode"><p><span class="name">focusMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current camera focus mode, which can be one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >FocusManual</td><td >Manual or fixed focus mode.</td></tr>
<tr valign="top"><td >FocusHyperfocal</td><td >Focus to hyperfocal distance, with the maximum depth of field achieved. All objects at distances from half of this distance out to infinity will be acceptably sharp.</td></tr>
<tr valign="top"><td >FocusInfinity</td><td >Focus strictly to infinity.</td></tr>
<tr valign="top"><td >FocusAuto</td><td >One-shot auto focus mode.</td></tr>
<tr valign="top"><td >FocusContinuous</td><td >Continuous auto focus mode.</td></tr>
<tr valign="top"><td >FocusMacro</td><td >One shot auto focus to objects close to camera.</td></tr>
</table>
<p>It's possible to combine multiple Camera::FocusMode values, for example Camera.FocusMacro + Camera.FocusContinuous.</p>
<p>In automatic focusing modes, the <a href="#focusPointMode-prop">focusPointMode</a> property and <a href="#focusZones-prop">focusZones</a> property provide information and control over how automatic focusing is performed.</p>
<!-- @@@focusMode -->
<br/>
<!-- $$$focusPointMode -->
<table class="qmlname"><tr valign="top" id="focusPointMode-prop"><td class="tblQmlPropNode"><p><span class="name">focusPointMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current camera focus point mode. It is used in automatic focusing modes to determine what to focus on. If the current focus point mode is <code>Camera.FocusPointCustom</code>, the <a href="#customFocusPoint-prop">customFocusPoint</a> property allows you to specify which part of the frame to focus on.</p>
<p>The property can take one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >FocusPointAuto</td><td >Automatically select one or multiple focus points.</td></tr>
<tr valign="top"><td >FocusPointCenter</td><td >Focus to the frame center.</td></tr>
<tr valign="top"><td >FocusPointFaceDetection</td><td >Focus on faces in the frame.</td></tr>
<tr valign="top"><td >FocusPointCustom</td><td >Focus to the custom point, defined by the <a href="#customFocusPoint-prop">customFocusPoint</a> property.</td></tr>
</table>
<!-- @@@focusPointMode -->
<br/>
<!-- $$$focusZones -->
<table class="qmlname"><tr valign="top" id="focusZones-prop"><td class="tblQmlPropNode"><p><span class="name">focusZones</span> : <span class="type">list</span>&lt;<span class="type">focusZone</span>&gt;</p></td></tr></table><p>This property holds the list of current camera focus zones, each including <code>area</code> specified in the same coordinates as <a href="#customFocusPoint-prop">customFocusPoint</a>, and zone <code>status</code> as one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Camera.FocusAreaUnused</td><td >This focus point area is currently unused in autofocusing.</td></tr>
<tr valign="top"><td >Camera.FocusAreaSelected</td><td >This focus point area is used in autofocusing, but is not in focus.</td></tr>
<tr valign="top"><td >Camera.FocusAreaFocused</td><td >This focus point is used in autofocusing, and is in focus.</td></tr>
</table>
<pre class="qml"><span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">id</span>: <span class="name">viewfinder</span>
<span class="name">source</span>: <span class="name">camera</span>
<span class="comment">//display focus areas on camera viewfinder:</span>
<span class="type">Repeater</span> {
<span class="name">model</span>: <span class="name">camera</span>.<span class="name">focus</span>.<span class="name">focusZones</span>
<span class="type">Rectangle</span> {
<span class="type">border</span> {
<span class="name">width</span>: <span class="number">2</span>
<span class="name">color</span>: <span class="name">status</span> <span class="operator">==</span> <span class="name">Camera</span>.<span class="name">FocusAreaFocused</span> ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;white&quot;</span>
}
<span class="name">color</span>: <span class="string">&quot;transparent&quot;</span>
<span class="comment">// Map from the relative, normalized frame coordinates</span>
property <span class="type">variant</span> <span class="name">mappedRect</span>: <span class="name">viewfinder</span>.<span class="name">mapNormalizedRectToItem</span>(<span class="name">area</span>);
<span class="name">x</span>: <span class="name">mappedRect</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">mappedRect</span>.<span class="name">y</span>
<span class="name">width</span>: <span class="name">mappedRect</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">mappedRect</span>.<span class="name">height</span>
}
}
}</pre>
<!-- @@@focusZones -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$isFocusModeSupported -->
<table class="qmlname"><tr valign="top" id="isFocusModeSupported-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">isFocusModeSupported</span>(<span class="type">mode</span>) const</p></td></tr></table><p>Returns true if the supplied <i>mode</i> is a supported focus mode, and false otherwise.</p>
<!-- @@@isFocusModeSupported -->
<br/>
<!-- $$$isFocusPointModeSupported -->
<table class="qmlname"><tr valign="top" id="isFocusPointModeSupported-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">isFocusPointModeSupported</span>(<span class="type">mode</span>) const</p></td></tr></table><p>Returns true if the supplied <i>mode</i> is a supported focus point mode, and false otherwise.</p>
<!-- @@@isFocusPointModeSupported -->
<br/>
