---
Title: QtMultimedia.CameraExposure
---

# QtMultimedia.CameraExposure

<span class="subtitle"></span>
<!-- $$$CameraExposure-brief -->
<p>An interface for exposure related camera settings. More...</p>
<!-- @@@CameraExposure -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#aperture-prop">aperture</a></b></b> : real</li>
<li class="fn"><b><b><a href="#exposureCompensation-prop">exposureCompensation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#exposureMode-prop">exposureMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#iso-prop">iso</a></b></b> : int</li>
<li class="fn"><b><b><a href="#manualAperture-prop">manualAperture</a></b></b> : real</li>
<li class="fn"><b><b><a href="#manualIso-prop">manualIso</a></b></b> : real</li>
<li class="fn"><b><b><a href="#manualShutterSpeed-prop">manualShutterSpeed</a></b></b> : real</li>
<li class="fn"><b><b><a href="#meteringMode-prop">meteringMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#shutterSpeed-prop">shutterSpeed</a></b></b> : real</li>
<li class="fn"><b><b><a href="#spotMeteringPoint-prop">spotMeteringPoint</a></b></b> : QPointF</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#setAutoAperture-method">setAutoAperture</a></b></b>()</li>
<li class="fn"><b><b><a href="#setAutoIsoSensitivity-method">setAutoIsoSensitivity</a></b></b>()</li>
<li class="fn"><b><b><a href="#setAutoShutterSpeed-method">setAutoShutterSpeed</a></b></b>()</li>
</ul>
<!-- $$$CameraExposure-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtMultimedia 5.0</b> module.</p>
<p><a href="index.html">CameraExposure</a> allows you to adjust exposure related settings like aperture and shutter speed, metering and ISO speed.</p>
<p>It should not be constructed separately, instead the <code>exposure</code> property of the a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> should be used.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="name">exposure</span>.exposureCompensation: -<span class="number">1.0</span>
<span class="name">exposure</span>.exposureMode: <span class="name">Camera</span>.<span class="name">ExposurePortrait</span>
}</pre>
<p>Several settings have both an automatic and a manual mode. In the automatic modes the camera software itself will decide what a reasonable setting is, but in most cases these settings can be overridden with a specific manual setting.</p>
<p>For example, to select automatic shutter speed selection:</p>
<pre class="cpp">    camera<span class="operator">.</span>exposure<span class="operator">.</span><a href="#setAutoShutterSpeed-method">setAutoShutterSpeed</a>()</pre>
<p>Or for a specific shutter speed:</p>
<pre class="cpp">    camera<span class="operator">.</span>exposure<span class="operator">.</span>manualShutterSpeed <span class="operator">=</span> <span class="number">0.01</span> <span class="comment">// 10ms</span></pre>
<p>You can only choose one or the other mode.</p>
<!-- @@@CameraExposure -->
<h2>Property Documentation</h2>
<!-- $$$aperture -->
<table class="qmlname"><tr valign="top" id="aperture-prop"><td class="tblQmlPropNode"><p><span class="name">aperture</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the current lens aperture as an F number (the ratio of the focal length to effective aperture diameter).</p>
<p><b>See also </b><a href="#manualAperture-prop">manualAperture</a> and <a href="#setAutoAperture-method">setAutoAperture()</a>.</p>
<!-- @@@aperture -->
<br/>
<!-- $$$exposureCompensation -->
<table class="qmlname"><tr valign="top" id="exposureCompensation-prop"><td class="tblQmlPropNode"><p><span class="name">exposureCompensation</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the adjustment value for the automatically calculated exposure. The value is in EV units.</p>
<!-- @@@exposureCompensation -->
<br/>
<!-- $$$exposureMode -->
<table class="qmlname"><tr valign="top" id="exposureMode-prop"><td class="tblQmlPropNode"><p><span class="name">exposureMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera exposure mode.</p>
<p>The mode can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Camera.ExposureManual</td><td >Manual mode.</td></tr>
<tr valign="top"><td >Camera.ExposureAuto</td><td >Automatic mode.</td></tr>
<tr valign="top"><td >Camera.ExposureNight</td><td >Night mode.</td></tr>
<tr valign="top"><td >Camera.ExposureBacklight</td><td >Backlight exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureSpotlight</td><td >Spotlight exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureSports</td><td >Spots exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureSnow</td><td >Snow exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureBeach</td><td >Beach exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureLargeAperture</td><td >Use larger aperture with small depth of field.</td></tr>
<tr valign="top"><td >Camera.ExposureSmallAperture</td><td >Use smaller aperture.</td></tr>
<tr valign="top"><td >Camera.ExposurePortrait</td><td >Portrait exposure mode.</td></tr>
<tr valign="top"><td >Camera.ExposureModeVendor</td><td >The base value for device specific exposure modes.</td></tr>
</table>
<!-- @@@exposureMode -->
<br/>
<!-- $$$iso -->
<table class="qmlname"><tr valign="top" id="iso-prop"><td class="tblQmlPropNode"><p><span class="name">iso</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the sensor's ISO sensitivity value.</p>
<!-- @@@iso -->
<br/>
<!-- $$$manualAperture -->
<table class="qmlname"><tr valign="top" id="manualAperture-prop"><td class="tblQmlPropNode"><p><span class="name">manualAperture</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the aperture (F number) value for capturing photos.</p>
<p>If the value is less than zero, the camera automatically determines an appropriate aperture value.</p>
<p><a href="#aperture-prop">aperture</a>, <a href="#setAutoAperture-method">setAutoAperture()</a></p>
<!-- @@@manualAperture -->
<br/>
<!-- $$$manualIso -->
<table class="qmlname"><tr valign="top" id="manualIso-prop"><td class="tblQmlPropNode"><p><span class="name">manualIso</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the ISO settings for capturing photos.</p>
<p>If a negative value is specified, the camera will automatically determine an appropriate value.</p>
<p><b>See also </b><a href="#iso-prop">iso</a> and <a href="#setAutoIsoSensitivity-method">setAutoIsoSensitivity()</a>.</p>
<!-- @@@manualIso -->
<br/>
<!-- $$$manualShutterSpeed -->
<table class="qmlname"><tr valign="top" id="manualShutterSpeed-prop"><td class="tblQmlPropNode"><p><span class="name">manualShutterSpeed</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the shutter speed value (in seconds). If the value is less than zero, the camera automatically determines an appropriate shutter speed.</p>
<p><a href="#shutterSpeed-prop">shutterSpeed</a>, <a href="#setAutoShutterSpeed-method">setAutoShutterSpeed()</a></p>
<!-- @@@manualShutterSpeed -->
<br/>
<!-- $$$meteringMode -->
<table class="qmlname"><tr valign="top" id="meteringMode-prop"><td class="tblQmlPropNode"><p><span class="name">meteringMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera metering mode (how exposure is balanced).</p>
<p>The mode can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Camera.MeteringMatrix</td><td >A matrix of sample points is used to measure exposure.</td></tr>
<tr valign="top"><td >Camera.MeteringAverage</td><td >An average is used to measure exposure.</td></tr>
<tr valign="top"><td >Camera.MeteringSpot</td><td >A specific location (<a href="#spotMeteringPoint-prop">spotMeteringPoint</a>) is used to measure exposure.</td></tr>
</table>
<!-- @@@meteringMode -->
<br/>
<!-- $$$shutterSpeed -->
<table class="qmlname"><tr valign="top" id="shutterSpeed-prop"><td class="tblQmlPropNode"><p><span class="name">shutterSpeed</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the camera's current shutter speed value in seconds. To affect the shutter speed you can use the <a href="#manualShutterSpeed-prop">manualShutterSpeed</a> property and <a href="#setAutoShutterSpeed-method">setAutoShutterSpeed()</a>.</p>
<!-- @@@shutterSpeed -->
<br/>
<!-- $$$spotMeteringPoint -->
<table class="qmlname"><tr valign="top" id="spotMeteringPoint-prop"><td class="tblQmlPropNode"><p><span class="name">spotMeteringPoint</span> : <span class="type">QPointF</span></p></td></tr></table><p>The property holds the frame coordinates of the point to use for exposure metering. This point is only used in spot metering mode, and it typically defaults to the center <code>(0.5, 0.5)</code>.</p>
<!-- @@@spotMeteringPoint -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$setAutoAperture -->
<table class="qmlname"><tr valign="top" id="setAutoAperture-method"><td class="tblQmlFuncNode"><p><span class="name">setAutoAperture</span>()</p></td></tr></table><p>Turn on auto aperture selection. The manual aperture value is reset to -1.0</p>
<!-- @@@setAutoAperture -->
<br/>
<!-- $$$setAutoIsoSensitivity -->
<table class="qmlname"><tr valign="top" id="setAutoIsoSensitivity-method"><td class="tblQmlFuncNode"><p><span class="name">setAutoIsoSensitivity</span>()</p></td></tr></table><p>Turn on auto ISO sensitivity selection. The manual ISO value is reset to -1.</p>
<!-- @@@setAutoIsoSensitivity -->
<br/>
<!-- $$$setAutoShutterSpeed -->
<table class="qmlname"><tr valign="top" id="setAutoShutterSpeed-method"><td class="tblQmlFuncNode"><p><span class="name">setAutoShutterSpeed</span>()</p></td></tr></table><p>Turn on auto shutter speed selection. The manual shutter speed value is reset to -1.0</p>
<!-- @@@setAutoShutterSpeed -->
<br/>
