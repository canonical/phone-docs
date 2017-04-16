---
Title: QtMultimedia.CameraCapture
---

# QtMultimedia.CameraCapture

<span class="subtitle"></span>
<!-- $$$CameraCapture-brief -->
<p>An interface for capturing camera images More...</p>
<!-- @@@CameraCapture -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#capturedImagePath-prop">capturedImagePath</a></b></b> : string</li>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#ready-prop">ready</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#resolution-prop">resolution</a></b></b> : size</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#captureFailed-signal">captureFailed</a></b></b>(requestId, message)</li>
<li class="fn"><b><b><a href="#imageCaptured-signal">imageCaptured</a></b></b>(requestId, preview)</li>
<li class="fn"><b><b><a href="#imageMetadataAvailable-signal">imageMetadataAvailable</a></b></b>(requestId, key, value)</li>
<li class="fn"><b><b><a href="#imageSaved-signal">imageSaved</a></b></b>(requestId, path)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelCapture-method">cancelCapture</a></b></b>()</li>
<li class="fn"><b><b><a href="#capture-method">capture</a></b></b>()</li>
<li class="fn"><b><b><a href="#captureToLocation-method">captureToLocation</a></b></b>(location)</li>
<li class="fn"><b><b><a href="#setMetadata-method">setMetadata</a></b></b>(key, value)</li>
</ul>
<!-- $$$CameraCapture-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type allows you to capture still images and be notified when they are available or saved to disk. You can adjust the resolution of the captured image and where the saved image should go.</p>
<p><a href="index.html">CameraCapture</a> is a child of a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> (as the <code>imageCapture</code> property) and cannot be created directly.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="type">imageCapture</span> {
<span class="name">onImageCaptured</span>: {
<span class="comment">// Show the preview in an Image</span>
<span class="name">photoPreview</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">preview</span>
}
}
}
<span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">source</span>: <span class="name">camera</span>
<span class="name">focus</span> : <span class="name">visible</span> <span class="comment">// to receive focus and capture key events when visible</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>;
<span class="name">onClicked</span>: <span class="name">camera</span>.<span class="name">imageCapture</span>.<span class="name">capture</span>();
}
}
<span class="type">Image</span> {
<span class="name">id</span>: <span class="name">photoPreview</span>
}
}</pre>
<!-- @@@CameraCapture -->
<h2>Property Documentation</h2>
<!-- $$$capturedImagePath -->
<table class="qmlname"><tr valign="top" id="capturedImagePath-prop"><td class="tblQmlPropNode"><p><span class="name">capturedImagePath</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the location of the last captured image.</p>
<!-- @@@capturedImagePath -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the error message related to the last capture.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$ready -->
<table class="qmlname"><tr valign="top" id="ready-prop"><td class="tblQmlPropNode"><p><span class="name">ready</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a bool value indicating whether the camera is ready to capture photos or not.</p>
<p>It's permissible to call <a href="#capture-method">capture()</a> while the camera is active regardless of the <i>ready</i> property value. If camera is not ready to capture image immediately, the capture request is queued with all the related camera settings, and the request will be executed as soon as possible.</p>
<!-- @@@ready -->
<br/>
<!-- $$$resolution -->
<table class="qmlname"><tr valign="top" id="resolution-prop"><td class="tblQmlPropNode"><p><span class="name">resolution</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the resolution/size of the image to be captured. If empty, the system chooses the appropriate resolution.</p>
<!-- @@@resolution -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$captureFailed -->
<table class="qmlname"><tr valign="top" id="captureFailed-signal"><td class="tblQmlFuncNode"><p><span class="name">captureFailed</span>(<span class="type">requestId</span>, <span class="type">message</span>)</p></td></tr></table><p>This signal is emitted when an error occurs during capture with <i>requestId</i>. A descriptive message is available in <i>message</i>.</p>
<p>The corresponding handler is <code>onCaptureFailed</code>.</p>
<!-- @@@captureFailed -->
<br/>
<!-- $$$imageCaptured -->
<table class="qmlname"><tr valign="top" id="imageCaptured-signal"><td class="tblQmlFuncNode"><p><span class="name">imageCaptured</span>(<span class="type">requestId</span>, <span class="type">preview</span>)</p></td></tr></table><p>This signal is emitted when an image with <i>requestId</i> has been captured but not yet saved to the filesystem. The <i>preview</i> parameter can be used as the URL supplied to an Image.</p>
<p>The corresponding handler is <code>onImageCaptured</code>.</p>
<p><b>See also </b><a href="#imageSaved-signal">imageSaved</a>.</p>
<!-- @@@imageCaptured -->
<br/>
<!-- $$$imageMetadataAvailable -->
<table class="qmlname"><tr valign="top" id="imageMetadataAvailable-signal"><td class="tblQmlFuncNode"><p><span class="name">imageMetadataAvailable</span>(<span class="type">requestId</span>, <span class="type">key</span>, <span class="type">value</span>)</p></td></tr></table><p>This signal is emitted when the image with <i>requestId</i> has new metadata available with the key <i>key</i> and value <i>value</i>.</p>
<p>The corresponding handler is <code>onImageMetadataAvailable</code>.</p>
<p><b>See also </b><a href="#imageCaptured-signal">imageCaptured</a>.</p>
<!-- @@@imageMetadataAvailable -->
<br/>
<!-- $$$imageSaved -->
<table class="qmlname"><tr valign="top" id="imageSaved-signal"><td class="tblQmlFuncNode"><p><span class="name">imageSaved</span>(<span class="type">requestId</span>, <span class="type">path</span>)</p></td></tr></table><p>This signal is emitted after the image with <i>requestId</i> has been written to the filesystem. The <i>path</i> is a local file path, not a URL.</p>
<p>The corresponding handler is <code>onImageSaved</code>.</p>
<p><b>See also </b><a href="#imageCaptured-signal">imageCaptured</a>.</p>
<!-- @@@imageSaved -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancelCapture -->
<table class="qmlname"><tr valign="top" id="cancelCapture-method"><td class="tblQmlFuncNode"><p><span class="name">cancelCapture</span>()</p></td></tr></table><p>Cancel pending image capture requests.</p>
<!-- @@@cancelCapture -->
<br/>
<!-- $$$capture -->
<table class="qmlname"><tr valign="top" id="capture-method"><td class="tblQmlFuncNode"><p><span class="name">capture</span>()</p></td></tr></table><p>Start image capture. The <a href="#imageCaptured-signal">imageCaptured</a> and <a href="#imageSaved-signal">imageSaved</a> signals will be emitted when the capture is complete.</p>
<p>The image will be captured to the default system location, typically QStandardPaths::writableLocation(QStandardPaths::PicturesLocation) for still imaged or QStandardPaths::writableLocation(QStandardPaths::MoviesLocation) for video.</p>
<p>Camera saves all the capture parameters like exposure settings or image processing parameters, so changes to camera paramaters after capture() is called do not affect previous capture requests.</p>
<p>CameraCapture::capture returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.</p>
<!-- @@@capture -->
<br/>
<!-- $$$captureToLocation -->
<table class="qmlname"><tr valign="top" id="captureToLocation-method"><td class="tblQmlFuncNode"><p><span class="name">captureToLocation</span>(<span class="type">location</span>)</p></td></tr></table><p>Start image capture to specified <i>location</i>. The <a href="#imageCaptured-signal">imageCaptured</a> and <a href="#imageSaved-signal">imageSaved</a> signals will be emitted when the capture is complete.</p>
<p>CameraCapture::captureToLocation returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.</p>
<p>If the application is unable to write to the location specified by <code>location</code> the <a href="index.html">CameraCapture</a> will emit an error. The most likely reasons for the application to be unable to write to a location is that the path is wrong and the location does not exists, or the application does not have write permission for that location.</p>
<!-- @@@captureToLocation -->
<br/>
<!-- $$$setMetadata -->
<table class="qmlname"><tr valign="top" id="setMetadata-method"><td class="tblQmlFuncNode"><p><span class="name">setMetadata</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td></tr></table><p>Sets a particular metadata <i>key</i> to <i>value</i> for the subsequent image captures.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@setMetadata -->
<br/>
