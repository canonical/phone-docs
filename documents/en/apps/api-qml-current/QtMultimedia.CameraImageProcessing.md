---
Title: QtMultimedia.CameraImageProcessing
---

# QtMultimedia.CameraImageProcessing

<span class="subtitle"></span>
<!-- $$$CameraImageProcessing-brief -->
<p>An interface for camera capture related settings. More...</p>
<!-- @@@CameraImageProcessing -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contrast-prop">contrast</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#denoisingLevel-prop">denoisingLevel</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#manualWhiteBalance-prop">manualWhiteBalance</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#saturation-prop">saturation</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#sharpeningLevel-prop">sharpeningLevel</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#whiteBalanceMode-prop">whiteBalanceMode</a></b></b> : enumeration</li>
</ul>
<!-- $$$CameraImageProcessing-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">CameraImageProcessing</a> provides control over post-processing done by the camera middleware, including white balance adjustments, contrast, saturation, sharpening, and denoising</p>
<p>It should not be constructed separately, instead the <code>imageProcessing</code> property of a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> should be used.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="type">imageProcessing</span> {
<span class="name">whiteBalanceMode</span>: <span class="name">Camera</span>.<span class="name">WhiteBalanceTungsten</span>
<span class="name">contrast</span>: <span class="number">0.66</span>
<span class="name">saturation</span>: -<span class="number">0.5</span>
}
}</pre>
<!-- @@@CameraImageProcessing -->
<h2>Property Documentation</h2>
<!-- $$$contrast -->
<table class="qmlname"><tr valign="top" id="contrast-prop"><td class="tblQmlPropNode"><p><span class="name">contrast</span> : <span class="type">qreal</span></p></td></tr></table><p>Image contrast adjustment. Valid contrast adjustment values range between -1.0 and 1.0, with a default of 0.</p>
<!-- @@@contrast -->
<br/>
<!-- $$$denoisingLevel -->
<table class="qmlname"><tr valign="top" id="denoisingLevel-prop"><td class="tblQmlPropNode"><p><span class="name">denoisingLevel</span> : <span class="type">qreal</span></p></td></tr></table><p>Adjustment of denoising applied to image.</p>
<p>Valid denoising level values range between -1.0 for for denoising disabled, 0 for default denoising level and 1.0 for maximum denoising applied.</p>
<!-- @@@denoisingLevel -->
<br/>
<!-- $$$manualWhiteBalance -->
<table class="qmlname"><tr valign="top" id="manualWhiteBalance-prop"><td class="tblQmlPropNode"><p><span class="name">manualWhiteBalance</span> : <span class="type">qreal</span></p></td></tr></table><p>The color temperature used when in manual white balance mode (WhiteBalanceManual). The units are Kelvin.</p>
<p><b>See also </b><a href="#whiteBalanceMode-prop">whiteBalanceMode</a>.</p>
<!-- @@@manualWhiteBalance -->
<br/>
<!-- $$$saturation -->
<table class="qmlname"><tr valign="top" id="saturation-prop"><td class="tblQmlPropNode"><p><span class="name">saturation</span> : <span class="type">qreal</span></p></td></tr></table><p>Image saturation adjustment. Valid saturation adjustment values range between -1.0 and 1.0, the default is 0.</p>
<!-- @@@saturation -->
<br/>
<!-- $$$sharpeningLevel -->
<table class="qmlname"><tr valign="top" id="sharpeningLevel-prop"><td class="tblQmlPropNode"><p><span class="name">sharpeningLevel</span> : <span class="type">qreal</span></p></td></tr></table><p>Adjustment of sharpening level applied to image.</p>
<p>Valid sharpening level values range between -1.0 for for sharpening disabled, 0 for default sharpening level and 1.0 for maximum sharpening applied.</p>
<!-- @@@sharpeningLevel -->
<br/>
<!-- $$$whiteBalanceMode -->
<table class="qmlname"><tr valign="top" id="whiteBalanceMode-prop"><td class="tblQmlPropNode"><p><span class="name">whiteBalanceMode</span> : <span class="type">enumeration</span></p></td></tr></table><table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >WhiteBalanceManual</td><td >Manual white balance. In this mode the manual white balance property value is used.</td></tr>
<tr valign="top"><td >WhiteBalanceAuto</td><td >Auto white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceSunlight</td><td >Sunlight white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceCloudy</td><td >Cloudy white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceShade</td><td >Shade white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceTungsten</td><td >Tungsten white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceFluorescent</td><td >Fluorescent white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceFlash</td><td >Flash white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceSunset</td><td >Sunset white balance mode.</td></tr>
<tr valign="top"><td >WhiteBalanceVendor</td><td >Vendor defined white balance mode.</td></tr>
</table>
<p><b>See also </b><a href="#manualWhiteBalance-prop">manualWhiteBalance</a>.</p>
<!-- @@@whiteBalanceMode -->
<br/>
