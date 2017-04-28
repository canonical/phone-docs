---
Title: QtQuick.BorderImage
---

# QtQuick.BorderImage

<span class="subtitle"></span>
<!-- $$$BorderImage-brief -->
<p>Paints a border based on an image More...</p>
<!-- @@@BorderImage -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#border-prop">border</a></b></b><ul>
<li class="fn"><b><b><a href="#border.left-prop">border.left</a></b></b> : int</li>
<li class="fn"><b><b><a href="#border.right-prop">border.right</a></b></b> : int</li>
<li class="fn"><b><b><a href="#border.top-prop">border.top</a></b></b> : int</li>
<li class="fn"><b><b><a href="#border.bottom-prop">border.bottom</a></b></b> : int</li>
</ul>
</li>
<li class="fn"><b><b><a href="#cache-prop">cache</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#horizontalTileMode-prop">horizontalTileMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#mirror-prop">mirror</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#smooth-prop">smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#sourceSize-prop">sourceSize</a></b></b> : QSize</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#verticalTileMode-prop">verticalTileMode</a></b></b> : enumeration</li>
</ul>
<!-- $$$BorderImage-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtQuick.imageelements.md#borderimage">BorderImage</a> type is used to create borders out of images by scaling or tiling parts of each image.</p>
<p>A <a href="QtQuick.imageelements.md#borderimage">BorderImage</a> breaks a source image, specified using the <a href="#source-prop">source</a> property, into 9 regions, as shown below:</p>
<p class="centerAlign"><img src="../../../media/declarative-scalegrid.png" alt="" /></p><p>When the image is scaled, regions of the source image are scaled or tiled to create the displayed border image in the following way:</p>
<ul>
<li>The corners (regions 1, 3, 7, and 9) are not scaled at all.</li>
<li>Regions 2 and 8 are scaled according to <a href="#horizontalTileMode-prop">horizontalTileMode</a>.</li>
<li>Regions 4 and 6 are scaled according to <a href="#verticalTileMode-prop">verticalTileMode</a>.</li>
<li>The middle (region 5) is scaled according to both <a href="#horizontalTileMode-prop">horizontalTileMode</a> and <a href="#verticalTileMode-prop">verticalTileMode</a>.</li>
</ul>
<p>The regions of the image are defined using the <a href="#border-prop">border</a> property group, which describes the distance from each edge of the source image to use as a border.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following examples show the effects of the different modes on an image. Guide lines are overlaid onto the image to show the different regions of the image as described above.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com../images/qml-borderimage-normal-image.png" alt="" /></p><p>An unscaled image is displayed using an Image. The <a href="#border-prop">border</a> property is used to determine the parts of the image that will lie inside the unscaled corner areas and the parts that will be stretched horizontally and vertically.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
}</pre>
<br style="clear: both" /><p class="centerAlign"><img src="../../../media/qml-borderimage-scaled.png" alt="" /></p><p>A <a href="QtQuick.imageelements.md#borderimage">BorderImage</a> is used to display the image, and it is given a size that is larger than the original image. Since the <a href="#horizontalTileMode-prop">horizontalTileMode</a> property is set to <a href="#horizontalTileMode-prop">BorderImage.Stretch</a>, the parts of image in regions 2 and 8 are stretched horizontally. Since the <a href="#verticalTileMode-prop">verticalTileMode</a> property is set to <a href="#verticalTileMode-prop">BorderImage.Stretch</a>, the parts of image in regions 4 and 6 are stretched vertically.</p>
<pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">180</span>
<span class="type">border</span> { <span class="name">left</span>: <span class="number">30</span>; <span class="name">top</span>: <span class="number">30</span>; <span class="name">right</span>: <span class="number">30</span>; <span class="name">bottom</span>: <span class="number">30</span> }
<span class="name">horizontalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Stretch</span>
<span class="name">verticalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Stretch</span>
<span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
}</pre>
<br style="clear: both" /><p class="centerAlign"><img src="../../../media/qml-borderimage-tiled.png" alt="" /></p><p>Again, a large <a href="QtQuick.imageelements.md#borderimage">BorderImage</a> is used to display the image. With the <a href="#horizontalTileMode-prop">horizontalTileMode</a> property set to <a href="#horizontalTileMode-prop">BorderImage.Repeat</a>, the parts of image in regions 2 and 8 are tiled so that they fill the space at the top and bottom of the item. Similarly, the <a href="#verticalTileMode-prop">verticalTileMode</a> property is set to <a href="#verticalTileMode-prop">BorderImage.Repeat</a>, the parts of image in regions 4 and 6 are tiled so that they fill the space at the left and right of the item.</p>
<pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">180</span>
<span class="type">border</span> { <span class="name">left</span>: <span class="number">30</span>; <span class="name">top</span>: <span class="number">30</span>; <span class="name">right</span>: <span class="number">30</span>; <span class="name">bottom</span>: <span class="number">30</span> }
<span class="name">horizontalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Repeat</span>
<span class="name">verticalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Repeat</span>
<span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
}</pre>
<br style="clear: both" /><p>In some situations, the width of regions 2 and 8 may not be an exact multiple of the width of the corresponding regions in the source image. Similarly, the height of regions 4 and 6 may not be an exact multiple of the height of the corresponding regions. It can be useful to use <a href="#horizontalTileMode-prop">BorderImage.Round</a> instead of <a href="#horizontalTileMode-prop">BorderImage.Repeat</a> in cases like these.</p>
<p>The Border Image example in <a href="QtQuick.imageelements.md">Qt Quick Examples - Image Elements</a> shows how a <a href="QtQuick.imageelements.md#borderimage">BorderImage</a> can be used to simulate a shadow effect on a rectangular item.</p>
<h2 id="image-loading">Image Loading</h2>
<p>The source image may not be loaded instantaneously, depending on its original location. Loading progress can be monitored with the <a href="#progress-prop">progress</a> property.</p>
<p><b>See also </b><a href="QtQuick.imageelements.md#image">Image</a> and <a href="QtQuick.AnimatedImage.md">AnimatedImage</a>.</p>
<!-- @@@BorderImage -->
<h2>Property Documentation</h2>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies that images on the local filesystem should be loaded asynchronously in a separate thread. The default value is false, causing the user interface thread to block while the image is loaded. Setting <i>asynchronous</i> to true is useful where maintaining a responsive user interface is more desirable than having images immediately visible.</p>
<p>Note that this property is only valid for images read from the local filesystem. Images loaded via a network resource (e.g&#x2e; HTTP) are always loaded asynchronously.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$border -->
<table class="qmlname"><tr valign="top" id="border-prop"><th class="centerAlign"><p><b>border group</b></p></th></tr><tr valign="top" id="border.left-prop"><td class="tblQmlPropNode"><p><span class="name">border.left</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.right-prop"><td class="tblQmlPropNode"><p><span class="name">border.right</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.top-prop"><td class="tblQmlPropNode"><p><span class="name">border.top</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.bottom-prop"><td class="tblQmlPropNode"><p><span class="name">border.bottom</span> : <span class="type">int</span></p></td></tr></table><p>The 4 border lines (2 horizontal and 2 vertical) break the image into 9 sections, as shown below:</p>
<p class="centerAlign"><img src="../../../media/declarative-scalegrid.png" alt="" /></p><p>Each border line (left, right, top, and bottom) specifies an offset in pixels from the respective edge of the source image. By default, each border line has a value of 0.</p>
<p>For example, the following definition sets the bottom line 10 pixels up from the bottom of the image:</p>
<pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
<span class="name">border</span>.bottom: <span class="number">10</span>
<span class="comment">// ...</span>
}</pre>
<p>The border lines can also be specified using a <a href="#source-prop">.sci file</a>.</p>
<!-- @@@border -->
<br/>
<!-- $$$cache -->
<table class="qmlname"><tr valign="top" id="cache-prop"><td class="tblQmlPropNode"><p><span class="name">cache</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the image should be cached. The default value is true. Setting <i>cache</i> to false is useful when dealing with large images, to make sure that they aren't cached at the expense of small 'ui element' images.</p>
<!-- @@@cache -->
<br/>
<!-- $$$horizontalTileMode -->
<table class="qmlname"><tr valign="top" id="horizontalTileMode-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalTileMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property describes how to repeat or stretch the middle parts of the border image.</p>
<ul>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Stretch - Scales the image to fit to the available area.</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Repeat - Tile the image until there is no more space. May crop the last image.</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Round - Like Repeat, but scales the images down to ensure that the last image is not cropped.</li>
</ul>
<p>The default tile mode for each property is <a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Stretch.</p>
<!-- @@@horizontalTileMode -->
<br/>
<!-- $$$mirror -->
<table class="qmlname"><tr valign="top" id="mirror-prop"><td class="tblQmlPropNode"><p><span class="name">mirror</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the image should be horizontally inverted (effectively displaying a mirrored image).</p>
<p>The default value is false.</p>
<!-- @@@mirror -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the progress of image loading, from 0.0 (nothing loaded) to 1.0 (finished).</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@progress -->
<br/>
<!-- $$$smooth -->
<table class="qmlname"><tr valign="top" id="smooth-prop"><td class="tblQmlPropNode"><p><span class="name">smooth</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the image is smoothly filtered when scaled or transformed. Smooth filtering gives better visual quality, but it may be slower on some hardware. If the image is displayed at its natural size, this property has no visual or performance effect.</p>
<p>By default, this property is set to true.</p>
<!-- @@@smooth -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the URL that refers to the source image.</p>
<p><a href="QtQuick.imageelements.md#borderimage">BorderImage</a> can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.</p>
<p>This property can also be used to refer to .sci files, which are written in a QML-specific, text-based format that specifies the borders, the image file and the tile rules for a given border image.</p>
<p>The following .sci file sets the borders to 10 on each side for the image <code>picture.png</code>:</p>
<pre class="cpp">border<span class="operator">.</span>left: <span class="number">10</span>
border<span class="operator">.</span>top: <span class="number">10</span>
border<span class="operator">.</span>bottom: <span class="number">10</span>
border<span class="operator">.</span>right: <span class="number">10</span>
source: <span class="string">&quot;picture.png&quot;</span></pre>
<p>The URL may be absolute, or relative to the URL of the component.</p>
<p><b>See also </b>QQuickImageProvider.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceSize -->
<table class="qmlname"><tr valign="top" id="sourceSize-prop"><td class="tblQmlPropNode"><p><span class="name">sourceSize</span> : <span class="type">QSize</span></p></td></tr></table><p>This property holds the actual width and height of the loaded image.</p>
<p>In <a href="QtQuick.imageelements.md#borderimage">BorderImage</a>, this property is read-only.</p>
<p><b>See also </b><a href="QtQuick.Image.md#sourceSize-prop">Image::sourceSize</a>.</p>
<!-- @@@sourceSize -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property describes the status of image loading. It can be one of:</p>
<ul>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Null - no image has been set</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Ready - the image has been loaded</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Loading - the image is currently being loaded</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Error - an error occurred while loading the image</li>
</ul>
<p><b>See also </b><a href="#progress-prop">progress</a>.</p>
<!-- @@@status -->
<br/>
<!-- $$$verticalTileMode -->
<table class="qmlname"><tr valign="top" id="verticalTileMode-prop"><td class="tblQmlPropNode"><p><span class="name">verticalTileMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property describes how to repeat or stretch the middle parts of the border image.</p>
<ul>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Stretch - Scales the image to fit to the available area.</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Repeat - Tile the image until there is no more space. May crop the last image.</li>
<li><a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Round - Like Repeat, but scales the images down to ensure that the last image is not cropped.</li>
</ul>
<p>The default tile mode for each property is <a href="QtQuick.imageelements.md#borderimage">BorderImage</a>.Stretch.</p>
<!-- @@@verticalTileMode -->
<br/>
