---
Title: QtMultimedia.QtMultimedia
---

# QtMultimedia.QtMultimedia

<span class="subtitle"></span>
<!-- $$$QtMultimedia-brief -->
<p>Provides a global object with useful functions from Qt Multimedia. More...</p>
<!-- @@@QtMultimedia -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#availableCameras-prop">availableCameras</a></b></b> : list&lt;object&gt;</li>
<li class="fn"><b><b><a href="#defaultCamera-prop">defaultCamera</a></b></b> : object</li>
</ul>
<!-- $$$QtMultimedia-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <code>QtMultimedia</code> object is a global object with utility functions and properties.</p>
<p>It is not instantiable; to use it, call the members of the global <code>QtMultimedia</code> object directly. For example:</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.4
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">deviceId</span>: <span class="name">QtMultimedia</span>.<span class="name">defaultCamera</span>.<span class="name">deviceId</span>
}</pre>
<!-- @@@QtMultimedia -->
<h2>Property Documentation</h2>
<!-- $$$availableCameras -->
<table class="qmlname"><tr valign="top" id="availableCameras-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">availableCameras</span> : <span class="type">list</span>&lt;<span class="type">object</span>&gt;</p></td></tr></table><p>This property provides information about the cameras available on the system.</p>
<p>Each object in the list has the following properties:</p>
<table class="generic">
<tr valign="top"><td ><code>deviceId</code></td><td >This read-only property holds the unique identifier of the camera.<p>You can choose which device to use with a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> object by setting its <a href="QtMultimedia.Camera.md#deviceId-prop">deviceId</a> property to this value.</p>
</td></tr>
<tr valign="top"><td ><code>displayName</code></td><td >This read-only property holds the human-readable name of the camera. You can use this property to display the name of the camera in a user interface.</td></tr>
<tr valign="top"><td ><code>position</code></td><td >This read-only property holds the physical position of the camera on the hardware system. Please see <a href="QtMultimedia.Camera.md#position-prop">Camera.position</a> for more information.</td></tr>
<tr valign="top"><td ><code>orientation</code></td><td >This read-only property holds the physical orientation of the camera sensor. Please see <a href="QtMultimedia.Camera.md#orientation-prop">Camera.orientation</a> for more information.</td></tr>
</table>
<p><b>Note: </b>This property is static; it is not updated when cameras are added or removed from the system, like USB cameras on a desktop platform.</p><p>The following example shows how to display a list of available cameras. The user can change the active camera by selecting one of the items in the list.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.4
<span class="type">Item</span> {
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
}
<span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="name">camera</span>
}
<span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">QtMultimedia</span>.<span class="name">availableCameras</span>
<span class="name">delegate</span>: <span class="name">Text</span> {
<span class="name">text</span>: <span class="name">modelData</span>.<span class="name">displayName</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">camera</span>.<span class="name">deviceId</span> <span class="operator">=</span> <span class="name">modelData</span>.<span class="name">deviceId</span>
}
}
}
}</pre>
<!-- @@@availableCameras -->
<br/>
<!-- $$$defaultCamera -->
<table class="qmlname"><tr valign="top" id="defaultCamera-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">defaultCamera</span> : <span class="type">object</span></p></td></tr></table><p>The <code>defaultCamera</code> object provides information about the default camera on the system.</p>
<p>Its properties are <code>deviceId</code>, <code>displayName</code>, <code>position</code> and <code>orientation</code>. See <a href="#availableCameras-prop">availableCameras</a> for a description of each of them.</p>
<p>If there is no default camera, <code>defaultCamera.deviceId</code> will contain an empty string.</p>
<p><b>Note: </b>This property is static; it is not updated if the system's default camera changes after the application started.</p><!-- @@@defaultCamera -->
<br/>
