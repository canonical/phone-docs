---
Title: QtMultimedia.CameraFlash
---

# QtMultimedia.CameraFlash

<span class="subtitle"></span>
<!-- $$$CameraFlash-brief -->
<p>An interface for flash related camera settings. More...</p>
<!-- @@@CameraFlash -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#mode-prop">mode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#ready-prop">ready</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#flashModeChanged-signal">flashModeChanged</a></b></b>(int)</li>
<li class="fn"><b><b><a href="#flashReady-signal">flashReady</a></b></b>(bool)</li>
</ul>
<!-- $$$CameraFlash-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>CameraFlash is part of the <b>QtMultimedia 5.0</b> module.</p>
<p>This type allows you to operate the camera flash hardware and control the flash mode used. Not all cameras have flash hardware (and in some cases it is shared with the <a href="QtMultimedia.Torch.md">torch</a> hardware).</p>
<p>It should not be constructed separately, instead the <code>flash</code> property of a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> should be used.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="name">exposure</span>.exposureCompensation: -<span class="number">1.0</span>
<span class="name">flash</span>.mode: <span class="name">Camera</span>.<span class="name">FlashRedEyeReduction</span>
}</pre>
<!-- @@@CameraFlash -->
<h2>Property Documentation</h2>
<!-- $$$mode -->
<table class="qmlname"><tr valign="top" id="mode-prop"><td class="tblQmlPropNode"><p><span class="name">mode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera flash mode.</p>
<p>The mode can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Camera.FlashOff</td><td >Flash is Off.</td></tr>
<tr valign="top"><td >Camera.FlashOn</td><td >Flash is On.</td></tr>
<tr valign="top"><td >Camera.FlashAuto</td><td >Automatic flash.</td></tr>
<tr valign="top"><td >Camera.FlashRedEyeReduction</td><td >Red eye reduction flash.</td></tr>
<tr valign="top"><td >Camera.FlashFill</td><td >Use flash to fillin shadows.</td></tr>
<tr valign="top"><td >Camera.FlashTorch</td><td >Constant light source, useful for focusing and video capture.</td></tr>
<tr valign="top"><td >Camera.FlashSlowSyncFrontCurtain</td><td >Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect.</td></tr>
<tr valign="top"><td >Camera.FlashSlowSyncRearCurtain</td><td >The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.</td></tr>
<tr valign="top"><td >Camera.FlashManual</td><td >Flash power is manually set.</td></tr>
</table>
<!-- @@@mode -->
<br/>
<!-- $$$ready -->
<table class="qmlname"><tr valign="top" id="ready-prop"><td class="tblQmlPropNode"><p><span class="name">ready</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the flash is charged.</p>
<!-- @@@ready -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$flashModeChanged -->
<table class="qmlname"><tr valign="top" id="flashModeChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">flashModeChanged</span>(<span class="type">int</span>)</p></td></tr></table><p>This signal is emitted when the <code>flashMode</code> property is changed. The corresponding handler is <code>onFlashModeChanged</code>.</p>
<!-- @@@flashModeChanged -->
<br/>
<!-- $$$flashReady -->
<table class="qmlname"><tr valign="top" id="flashReady-signal"><td class="tblQmlFuncNode"><p><span class="name">flashReady</span>(<span class="type">bool</span>)</p></td></tr></table><p>This signal is emitted when QCameraExposure indicates that the flash is ready to use. The corresponding handler is <code>onFlashReadyChanged</code>.</p>
<!-- @@@flashReady -->
<br/>
