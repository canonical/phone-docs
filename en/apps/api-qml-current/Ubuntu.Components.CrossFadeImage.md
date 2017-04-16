---
Title: Ubuntu.Components.CrossFadeImage
---

# Ubuntu.Components.CrossFadeImage

<span class="subtitle"></span>
<!-- $$$CrossFadeImage-brief -->
<p>An Image like component which smoothly fades when its source is updated. More...</p>
<!-- @@@CrossFadeImage -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fadeDuration-prop">fadeDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#fadeStyle-prop">fadeStyle</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fillMode-prop">fillMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#sourceSize-prop">sourceSize</a></b></b> : size</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
</ul>
<!-- $$$CrossFadeImage-description -->
<h2 id="details">Detailed Description</h2>
</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="index.html">CrossFadeImage</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">75</span>)
<span class="name">source</span>: <span class="string">&quot;http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png&quot;</span>
<span class="name">fadeDuration</span>: <span class="number">1000</span>
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png&quot;</span>
}
}</pre>
<!-- @@@CrossFadeImage -->
<h2>Property Documentation</h2>
<!-- $$$fadeDuration -->
<table class="qmlname"><tr valign="top" id="fadeDuration-prop"><td class="tblQmlPropNode"><p><span class="name">fadeDuration</span> : <span class="type">int</span></p></td></tr></table><p>The time over which to fade between images. Defaults to <code>UbuntuAnimation.FastDuration</code>.</p>
<p><b>See also </b><a href="Ubuntu.Components.UbuntuAnimation.md">UbuntuAnimation</a>.</p>
<!-- @@@fadeDuration -->
<br/>
<!-- $$$fadeStyle -->
<table class="qmlname"><tr valign="top" id="fadeStyle-prop"><td class="tblQmlPropNode"><p><span class="name">fadeStyle</span> : <span class="type">string</span></p></td></tr></table><p>Style of the fade effect</p>
<p>Defaults to <code>overlay</code></p>
<ul>
<li>overlay - the new fading image overlays the current one</li>
<li>cross - the current one fades out while the new image fades in</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@fadeStyle -->
<br/>
<!-- $$$fillMode -->
<table class="qmlname"><tr valign="top" id="fillMode-prop"><td class="tblQmlPropNode"><p><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Defaults to <code>Image.PreserveAspectFit</code></p>
<ul>
<li>Image.Stretch - the image is scaled to fit</li>
<li>Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping</li>
<li>Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary</li>
<li>Image.Tile - the image is duplicated horizontally and vertically</li>
<li>Image.TileVertically - the image is stretched horizontally and tiled vertically</li>
<li>Image.TileHorizontally - the image is stretched vertically and tiled horizontally</li>
<li>Image.Pad - the image is not transformed</li>
</ul>
<!-- @@@fillMode -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the animation is running</p>
<!-- @@@running -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The image being displayed. Can be a URL to any image format supported by Qt.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceSize -->
<table class="qmlname"><tr valign="top" id="sourceSize-prop"><td class="tblQmlPropNode"><p><span class="name">sourceSize</span> : <span class="type">size</span></p></td></tr></table><p>The actual width and height of the loaded image This property holds the actual width and height of the loaded image.</p>
<p>Unlike the width and height properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary.</p>
<p>Note: Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.</p>
<!-- @@@sourceSize -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of image loading. It can be one of:</p>
<ul>
<li>Image.Null - no image has been set</li>
<li>Image.Ready - the image has been loaded</li>
<li>Image.Loading - the image is currently being loaded</li>
<li>Image.Error - an error occurred while loading the image</li>
</ul>
<!-- @@@status -->
<br/>
