---
Title: QtQuick.AnimatedImage
---

# QtQuick.AnimatedImage

<span class="subtitle"></span>
<!-- $$$AnimatedImage-brief -->
<p>Plays animations stored as a series of images More...</p>
<!-- @@@AnimatedImage -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Image.md">Image</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentFrame-prop">currentFrame</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameCount-prop">frameCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#paused-prop">paused</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#playing-prop">playing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
</ul>
<!-- $$$AnimatedImage-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AnimatedImage</a> type extends the features of the <a href="QtQuick.imageelements/#image">Image</a> type, providing a way to play animations stored as images containing a series of frames, such as those stored in GIF files.</p>
<p>Information about the current frame and total length of the animation can be obtained using the <a href="#currentFrame-prop">currentFrame</a> and <a href="#frameCount-prop">frameCount</a> properties. You can start, pause and stop the animation by changing the values of the <a href="#playing-prop">playing</a> and <a href="#paused-prop">paused</a> properties.</p>
<p>The full list of supported formats can be determined with QMovie::supportedFormats().</p>
<h2 id="example-usage">Example Usage</h2>
<p class="centerAlign"><img src="../../../../media/animatedimageitem.gif" alt="" /></p><p>The following QML shows how to display an animated image and obtain information about its state, such as the current frame and total number of frames. The result is an animated image with a simple progress indicator underneath it.</p>
<p><b>Note</b>: Unlike images, animated images are not cached or shared internally.</p>
<br style="clear: both" /><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">animation</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">animation</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">8</span>
<span class="type"><a href="index.html">AnimatedImage</a></span> { <span class="name">id</span>: <span class="name">animation</span>; <span class="name">source</span>: <span class="string">&quot;animation.gif&quot;</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
property <span class="type">int</span> <span class="name">frames</span>: <span class="name">animation</span>.<span class="name">frameCount</span>
<span class="name">width</span>: <span class="number">4</span>; <span class="name">height</span>: <span class="number">8</span>
<span class="name">x</span>: (<span class="name">animation</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">width</span>) <span class="operator">*</span> <span class="name">animation</span>.<span class="name">currentFrame</span> <span class="operator">/</span> <span class="name">frames</span>
<span class="name">y</span>: <span class="name">animation</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
}</pre>
<p><b>See also </b><a href="QtQuick.imageelements/#borderimage">BorderImage</a> and <a href="QtQuick.imageelements/#image">Image</a>.</p>
<!-- @@@AnimatedImage -->
<h2>Property Documentation</h2>
<!-- $$$currentFrame -->
<table class="qmlname"><tr valign="top" id="currentFrame-prop"><td class="tblQmlPropNode"><p><span class="name">currentFrame</span> : <span class="type">int</span></p></td></tr></table><p>currentFrame is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.</p>
<p><a href="#frameCount-prop">frameCount</a> is the number of frames in the animation. For some animation formats, <a href="#frameCount-prop">frameCount</a> is unknown and has a value of zero.</p>
<!-- @@@currentFrame -->
<br/>
<!-- $$$frameCount -->
<table class="qmlname"><tr valign="top" id="frameCount-prop"><td class="tblQmlPropNode"><p><span class="name">frameCount</span> : <span class="type">int</span></p></td></tr></table><p><a href="#currentFrame-prop">currentFrame</a> is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.</p>
<p>frameCount is the number of frames in the animation. For some animation formats, frameCount is unknown and has a value of zero.</p>
<!-- @@@frameCount -->
<br/>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top" id="paused-prop"><td class="tblQmlPropNode"><p><span class="name">paused</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the animated image is paused.</p>
<p>By default, this property is false. Set it to true when you want to pause the animation.</p>
<!-- @@@paused -->
<br/>
<!-- $$$playing -->
<table class="qmlname"><tr valign="top" id="playing-prop"><td class="tblQmlPropNode"><p><span class="name">playing</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the animated image is playing.</p>
<p>By default, this property is true, meaning that the animation will start playing immediately.</p>
<p><b>Note</b>: this property is affected by changes to the actual playing state of <a href="index.html">AnimatedImage</a>. If non-animated images are used, <i>playing</i> will need to be manually set to <i>true</i> in order to animate following images.</p>
<pre class="qml"><span class="type"><a href="index.html">AnimatedImage</a></span> {
<span class="name">onStatusChanged</span>: <span class="name">playing</span> <span class="operator">=</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">AnimatedImage</span>.<span class="name">Ready</span>)
}</pre>
<!-- @@@playing -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the URL that refers to the source image.</p>
<p><a href="index.html">AnimatedImage</a> can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.</p>
<p><b>See also </b>QQuickImageProvider.</p>
<!-- @@@source -->
<br/>
