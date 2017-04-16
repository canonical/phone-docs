---
Title: QtQuick.Image
---

# QtQuick.Image

<span class="subtitle"></span>
<!-- $$$Image-brief -->
<p>Displays an image More...</p>
<!-- @@@Image -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.AnimatedImage.md">AnimatedImage</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#cache-prop">cache</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#fillMode-prop">fillMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#horizontalAlignment-prop">horizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#mipmap-prop">mipmap</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#mirror-prop">mirror</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#paintedHeight-prop">paintedHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#paintedWidth-prop">paintedWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#smooth-prop">smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#sourceSize-prop">sourceSize</a></b></b> : QSize</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#verticalAlignment-prop">verticalAlignment</a></b></b> : enumeration</li>
</ul>
<!-- $$$Image-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Image type displays an image.</p>
<p>The source of the image is specified as a URL using the <a href="#source-prop">source</a> property. Images can be supplied in any of the standard image formats supported by Qt, including bitmap formats such as PNG and JPEG, and vector graphics formats such as SVG. If you need to display animated images, use <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a> or <a href="QtQuick.AnimatedImage.md">AnimatedImage</a>.</p>
<p>If the <a href="QtQuick.Item.md#width-prop">width</a> and <a href="QtQuick.Item.md#height-prop">height</a> properties are not specified, the Image automatically uses the size of the loaded image. By default, specifying the width and height of the item causes the image to be scaled to that size. This behavior can be changed by setting the <a href="#fillMode-prop">fillMode</a> property, allowing the image to be stretched and tiled instead.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows the simplest usage of the Image type.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/88ff1898-d790-4461-b166-769f7e61e0dc-../QtQuick.Image/images/declarative-qtlogo.png" alt="" /></p><br style="clear: both" />
<h2 id="performance">Performance</h2>
<p>By default, locally available images are loaded immediately, and the user interface is blocked until loading is complete. If a large image is to be loaded, it may be preferable to load the image in a low priority thread, by enabling the <a href="#asynchronous-prop">asynchronous</a> property.</p>
<p>If the image is obtained from a network rather than a local resource, it is automatically loaded asynchronously, and the <a href="#progress-prop">progress</a> and <a href="#status-prop">status</a> properties are updated as appropriate.</p>
<p>Images are cached and shared internally, so if several Image items have the same <a href="#source-prop">source</a>, only one copy of the image will be loaded.</p>
<p><b>Note</b>: Images are often the greatest user of memory in QML user interfaces. It is recommended that images which do not form part of the user interface have their size bounded via the <a href="#sourceSize-prop">sourceSize</a> property. This is especially important for content that is loaded from external sources or provided by the user.</p>
<p><b>See also </b>Qt Quick Examples - Image Elements and QQuickImageProvider.</p>
<!-- @@@Image -->
<h2>Property Documentation</h2>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies that images on the local filesystem should be loaded asynchronously in a separate thread. The default value is false, causing the user interface thread to block while the image is loaded. Setting <i>asynchronous</i> to true is useful where maintaining a responsive user interface is more desirable than having images immediately visible.</p>
<p>Note that this property is only valid for images read from the local filesystem. Images loaded via a network resource (e.g&#x2e; HTTP) are always loaded asynchronously.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$cache -->
<table class="qmlname"><tr valign="top" id="cache-prop"><td class="tblQmlPropNode"><p><span class="name">cache</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the image should be cached. The default value is true. Setting <i>cache</i> to false is useful when dealing with large images, to make sure that they aren't cached at the expense of small 'ui element' images.</p>
<!-- @@@cache -->
<br/>
<!-- $$$fillMode -->
<table class="qmlname"><tr valign="top" id="fillMode-prop"><td class="tblQmlPropNode"><p><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to define what happens when the source image has a different size than the item.</p>
<ul>
<li>Image.Stretch - the image is scaled to fit</li>
<li>Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping</li>
<li>Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary</li>
<li>Image.Tile - the image is duplicated horizontally and vertically</li>
<li>Image.TileVertically - the image is stretched horizontally and tiled vertically</li>
<li>Image.TileHorizontally - the image is stretched vertically and tiled horizontally</li>
<li>Image.Pad - the image is not transformed</li>
</ul>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/942ddd3d-e9a3-4e60-a175-659a5019e50e-../QtQuick.Image/images/declarative-qtlogo-stretch.png" alt="" /></p></td><td >Stretch (default)<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6696e9e4-4614-4cc0-9d9a-f655b3697cf1-../QtQuick.Image/images/declarative-qtlogo-preserveaspectfit.png" alt="" /></p></td><td >PreserveAspectFit<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/28170bc7-b947-4c98-9816-ba912d11607c-../QtQuick.Image/images/declarative-qtlogo-preserveaspectcrop.png" alt="" /></p></td><td >PreserveAspectCrop<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
<span class="name">clip</span>: <span class="number">true</span>
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/9b716802-02fb-4ffe-ac7f-8fd51ab8ef55-../QtQuick.Image/images/declarative-qtlogo-tile.png" alt="" /></p></td><td >Tile<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">Tile</span>
<span class="name">horizontalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignLeft</span>
<span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignTop</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0e0bed12-80ec-4237-82b6-6980e7df4fdb-../QtQuick.Image/images/declarative-qtlogo-tilevertically.png" alt="" /></p></td><td >TileVertically<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">TileVertically</span>
<span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignTop</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/057285b1-d967-4ddf-bbaf-3001546ba21a-../QtQuick.Image/images/declarative-qtlogo-tilehorizontally.png" alt="" /></p></td><td >TileHorizontally<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">TileHorizontally</span>
<span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignLeft</span>
<span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
}</pre>
</td></tr>
</table>
<p>Note that <code>clip</code> is <code>false</code> by default which means that the item might paint outside its bounding rectangle even if the fillMode is set to <code>PreserveAspectCrop</code>.</p>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/">Qt Quick Examples - Image Elements</a>.</p>
<!-- @@@fillMode -->
<br/>
<!-- $$$horizontalAlignment -->
<table class="qmlname"><tr valign="top" id="horizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the image. By default, the image is center aligned.</p>
<p>The valid values for <code>horizontalAlignment</code> are <code>Image.AlignLeft</code>, <code>Image.AlignRight</code> and <code>Image.AlignHCenter</code>. The valid values for <code>verticalAlignment</code> are <code>Image.AlignTop</code>, <code>Image.AlignBottom</code> and <code>Image.AlignVCenter</code>.</p>
<!-- @@@horizontalAlignment -->
<br/>
<!-- $$$mipmap -->
<table class="qmlname"><tr valign="top" id="mipmap-prop"><td class="tblQmlPropNode"><p><span class="name">mipmap</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the image uses mipmap filtering when scaled or transformed.</p>
<p>Mipmap filtering gives better visual quality when scaling down compared to smooth, but it may come at a performance cost (both when initializing the image and during rendering).</p>
<p>By default, this property is set to false.</p>
<p>This QML property was introduced in  Qt 5.3.</p>
<p><b>See also </b><a href="#smooth-prop">smooth</a>.</p>
<!-- @@@mipmap -->
<br/>
<!-- $$$mirror -->
<table class="qmlname"><tr valign="top" id="mirror-prop"><td class="tblQmlPropNode"><p><span class="name">mirror</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the image should be horizontally inverted (effectively displaying a mirrored image).</p>
<p>The default value is false.</p>
<!-- @@@mirror -->
<br/>
<!-- $$$paintedHeight -->
<table class="qmlname"><tr valign="top" id="paintedHeight-prop"><td class="tblQmlPropNode"><p><span class="name">paintedHeight</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the size of the image that is actually painted. In most cases it is the same as <code>width</code> and <code>height</code>, but when using a <code>fillMode</code> <code>PreserveAspectFit</code> or <code>fillMode</code> <code>PreserveAspectCrop</code> <code>paintedWidth</code> or <code>paintedHeight</code> can be smaller or larger than <code>width</code> and <code>height</code> of the Image item.</p>
<!-- @@@paintedHeight -->
<br/>
<!-- $$$paintedWidth -->
<table class="qmlname"><tr valign="top" id="paintedWidth-prop"><td class="tblQmlPropNode"><p><span class="name">paintedWidth</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the size of the image that is actually painted. In most cases it is the same as <code>width</code> and <code>height</code>, but when using a <code>fillMode</code> <code>PreserveAspectFit</code> or <code>fillMode</code> <code>PreserveAspectCrop</code> <code>paintedWidth</code> or <code>paintedHeight</code> can be smaller or larger than <code>width</code> and <code>height</code> of the Image item.</p>
<!-- @@@paintedWidth -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the progress of image loading, from 0.0 (nothing loaded) to 1.0 (finished).</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@progress -->
<br/>
<!-- $$$smooth -->
<table class="qmlname"><tr valign="top" id="smooth-prop"><td class="tblQmlPropNode"><p><span class="name">smooth</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the image is smoothly filtered when scaled or transformed. Smooth filtering gives better visual quality, but it may be slower on some hardware. If the image is displayed at its natural size, this property has no visual or performance effect.</p>
<p>By default, this property is set to true.</p>
<p><b>See also </b><a href="#mipmap-prop">mipmap</a>.</p>
<!-- @@@smooth -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>Image can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.</p>
<p>The URL may be absolute, or relative to the URL of the component.</p>
<p><b>See also </b>QQuickImageProvider.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceSize -->
<table class="qmlname"><tr valign="top" id="sourceSize-prop"><td class="tblQmlPropNode"><p><span class="name">sourceSize</span> : <span class="type">QSize</span></p></td></tr></table><p>This property holds the actual width and height of the loaded image.</p>
<p>Unlike the <a href="QtQuick.Item.md#width-prop">width</a> and <a href="QtQuick.Item.md#height-prop">height</a> properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary. For example, this ensures the image in memory is no larger than 1024x1024 pixels, regardless of the Image's <a href="QtQuick.Item.md#width-prop">width</a> and <a href="QtQuick.Item.md#height-prop">height</a> values:</p>
<pre class="cpp">Rectangle {
width: <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
height: <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
Image {
anchors<span class="operator">.</span>fill: parent
source: <span class="string">&quot;reallyBigImage.jpg&quot;</span>
sourceSize<span class="operator">.</span>width: <span class="number">1024</span>
sourceSize<span class="operator">.</span>height: <span class="number">1024</span>
}
}</pre>
<p>If the image's actual size is larger than the sourceSize, the image is scaled down. If only one dimension of the size is set to greater than 0, the other dimension is set in proportion to preserve the source image's aspect ratio. (The <a href="#fillMode-prop">fillMode</a> is independent of this.)</p>
<p>If both the sourceSize.width and sourceSize.height are set the image will be scaled down to fit within the specified size, maintaining the image's aspect ratio. The actual size of the image after scaling is available via <a href="QtQuick.Item.md#implicitWidth-prop">Item::implicitWidth</a> and <a href="QtQuick.Item.md#implicitHeight-prop">Item::implicitHeight</a>.</p>
<p>If the source is an intrinsically scalable image (eg. SVG), this property determines the size of the loaded image regardless of intrinsic size. Avoid changing this property dynamically; rendering an SVG is <i>slow</i> compared to an image.</p>
<p>If the source is a non-scalable image (eg. JPEG), the loaded image will be no greater than this property specifies. For some formats (currently only JPEG), the whole image will never actually be loaded into memory.</p>
<p>sourceSize can be cleared to the natural size of the image by setting sourceSize to <code>undefined</code>.</p>
<p><b>Note: </b><i>Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.</i></p><!-- @@@sourceSize -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of image loading. It can be one of:</p>
<ul>
<li>Image.Null - no image has been set</li>
<li>Image.Ready - the image has been loaded</li>
<li>Image.Loading - the image is currently being loaded</li>
<li>Image.Error - an error occurred while loading the image</li>
</ul>
<p>Use this status to provide an update or respond to the status change in some way. For example, you could:</p>
<ul>
<li>Trigger a state change:<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> }</pre>
</li>
<li>Implement an <code>onStatusChanged</code> signal handler:<pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
<span class="name">id</span>: <span class="name">image</span>
<span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
}</pre>
</li>
<li>Bind to the status value:<pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>
</li>
</ul>
<p><b>See also </b><a href="#progress-prop">progress</a>.</p>
<!-- @@@status -->
<br/>
<!-- $$$verticalAlignment -->
<table class="qmlname"><tr valign="top" id="verticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the image. By default, the image is center aligned.</p>
<p>The valid values for <code>horizontalAlignment</code> are <code>Image.AlignLeft</code>, <code>Image.AlignRight</code> and <code>Image.AlignHCenter</code>. The valid values for <code>verticalAlignment</code> are <code>Image.AlignTop</code>, <code>Image.AlignBottom</code> and <code>Image.AlignVCenter</code>.</p>
<!-- @@@verticalAlignment -->
<br/>
