---
Title: QtQuick.Canvas
---

# QtQuick.Canvas

<span class="subtitle"></span>
<!-- $$$Canvas-brief -->
<p>Provides a 2D canvas item enabling drawing via JavaScript More...</p>
<!-- @@@Canvas -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#available-prop">available</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#canvasSize-prop">canvasSize</a></b></b> : size</li>
<li class="fn"><b><b><a href="#canvasWindow-prop">canvasWindow</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#context-prop">context</a></b></b> : object</li>
<li class="fn"><b><b><a href="#contextType-prop">contextType</a></b></b> : string</li>
<li class="fn"><b><b><a href="#renderStrategy-prop">renderStrategy</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#renderTarget-prop">renderTarget</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#tileSize-prop">tileSize</a></b></b> : size</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#imageLoaded-signal">imageLoaded</a></b></b>()</li>
<li class="fn"><b><b><a href="#paint-signal">paint</a></b></b>(rect <i>region</i>)</li>
<li class="fn"><b><b><a href="#painted-signal">painted</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelRequestAnimationFrame-method">cancelRequestAnimationFrame</a></b></b>(long <i>handle</i>)</li>
<li class="fn">object <b><b><a href="#getContext-method">getContext</a></b></b>(string <i>contextId</i>, ... <i>args</i>)</li>
<li class="fn"><b><b><a href="#isImageError-method">isImageError</a></b></b>(url <i>image</i>)</li>
<li class="fn"><b><b><a href="#isImageLoaded-method">isImageLoaded</a></b></b>(url <i>image</i>)</li>
<li class="fn"><b><b><a href="#isImageLoading-method">isImageLoading</a></b></b>(url <i>image</i>)</li>
<li class="fn"><b><b><a href="#loadImage-method">loadImage</a></b></b>(url <i>image</i>)</li>
<li class="fn"><b><b><a href="#markDirty-method">markDirty</a></b></b>(rect <i>area</i>)</li>
<li class="fn">long <b><b><a href="#requestAnimationFrame-method">requestAnimationFrame</a></b></b>(callback)</li>
<li class="fn"><b><b><a href="#requestPaint-method">requestPaint</a></b></b>()</li>
<li class="fn">bool <b><b><a href="#save-method">save</a></b></b>(string <i>filename</i>)</li>
<li class="fn">string <b><b><a href="#toDataURL-method">toDataURL</a></b></b>(string <i>mimeType</i>)</li>
<li class="fn"><b><b><a href="#unloadImage-method">unloadImage</a></b></b>(url <i>image</i>)</li>
</ul>
<!-- $$$Canvas-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Canvas item allows drawing of straight and curved lines, simple and complex shapes, graphs, and referenced graphic images. It can also add text, colors, shadows, gradients, and patterns, and do low level pixel operations. The Canvas output may be saved as an image file or serialized to a URL.</p>
<p>To define a drawing area in the Canvas item set the <code>width</code> and <code>height</code> properties. For example, the following code creates a Canvas item which has a drawing area with a height of 100 pixels and width of 200 pixels:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Canvas</a></span> {
<span class="name">id</span>: <span class="name">mycanvas</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">200</span>
}</pre>
<p>Currently the Canvas item only supports the two-dimensional rendering context.</p>
<h2 id="threaded-rendering-and-render-target">Threaded Rendering and Render Target</h2>
<p>The Canvas item supports two render targets: <code>Canvas.Image</code> and <code>Canvas.FramebufferObject</code>.</p>
<p>The <code>Canvas.Image</code> render target is a <i>QImage</i> object. This render target supports background thread rendering, allowing complex or long running painting to be executed without blocking the UI.</p>
<p>The Canvas.FramebufferObject render target utilizes OpenGL hardware acceleration rather than rendering into system memory, which in many cases results in faster rendering. Canvas.FramebufferObject relies on the OpenGL extensions <code>GL_EXT_framebuffer_multisample</code> and <code>GL_EXT_framebuffer_blit</code> for antialiasing. It will also use more graphics memory when rendering strategy is anything other than Canvas.Cooperative.</p>
<p>The default render target is Canvas.Image and the default <a href="#renderStrategy-prop">renderStrategy</a> is Canvas.Immediate.</p>
<h2 id="tiled-canvas">Tiled Canvas</h2>
<p>The Canvas item supports tiled rendering by setting <a href="#canvasSize-prop">canvasSize</a>, <a href="#tileSize-prop">tileSize</a> and <a href="#canvasWindow-prop">canvasWindow</a> properties.</p>
<p>Tiling allows efficient display of a very large virtual canvas via a smaller canvas window. The actual memory consumption is in relation to the canvas window size. The painting code can draw within the virtual canvas without handling coordinate system transformations.</p>
<p>The tiles overlapping with the canvas window may be cached eliminating the need to redraw, which can lead to significantly improved performance in some situations.</p>
<h2 id="pixel-operations">Pixel Operations</h2>
<p>All HTML5 2D context pixel operations are supported. In order to ensure improved pixel reading/writing performance the <i>Canvas.Image</i> render target should be chosen. The <i>Canvas.FramebufferObject</i> render target requires the pixel data to be exchanged between the system memory and the graphic card, which is significantly more expensive. Rendering may also be synchronized with the V-sync signal (to avoid <a href="http://en.wikipedia.org/wiki/Screen_tearing">screen tearing</a>) which will further impact pixel operations with <code>Canvas.FrambufferObject</code> render target.</p>
<h2 id="tips-for-porting-existing-html5-canvas-applications">Tips for Porting Existing HTML5 Canvas Applications</h2>
<p>Although the Canvas item is provides a HTML5 like API, HTML5 canvas applications need to be modified to run in the Canvas item:</p>
<ul>
<li>Replace all DOM API calls with QML property bindings or Canvas item methods.</li>
<li>Replace all HTML event handlers with the <a href="QtQuick.MouseArea.md">MouseArea</a> item.</li>
<li>Change setInterval/setTimeout function calls with the Timer item or the use of <a href="#requestAnimationFrame-method">requestAnimationFrame()</a>.</li>
<li>Place painting code into the <code>onPaint</code> handler and trigger painting by calling the <a href="#markDirty-method">markDirty()</a> or <a href="#requestPaint-method">requestPaint()</a> methods.</li>
<li>To draw images, load them by calling the Canvas's <a href="#loadImage-method">loadImage()</a> method and then request to paint them in the <code>onImageLoaded</code> handler.</li>
</ul>
<p>Starting Qt 5.4, the Canvas is a texture provider and can be used directly in ShaderEffects and other classes that consume texture providers.</p>
<p><b>See also </b><a href="QtQuick.Context2D.md">Context2D</a>.</p>
<!-- @@@Canvas -->
<h2>Property Documentation</h2>
<!-- $$$available -->
<table class="qmlname"><tr valign="top" id="available-prop"><td class="tblQmlPropNode"><p><span class="name">available</span> : <span class="type">bool</span></p></td></tr></table><p>Indicates when Canvas is able to provide a drawing context to operate on.</p>
<!-- @@@available -->
<br/>
<!-- $$$canvasSize -->
<table class="qmlname"><tr valign="top" id="canvasSize-prop"><td class="tblQmlPropNode"><p><span class="name">canvasSize</span> : <span class="type">size</span></p></td></tr></table><p>Holds the logical canvas size that the context paints on.</p>
<p>By default, the canvas size is the same size as the current canvas item size.</p>
<p>By setting the canvasSize, <a href="#tileSize-prop">tileSize</a> and <a href="#canvasWindow-prop">canvasWindow</a>, the Canvas item can act as a large virtual canvas with many separately rendered tile rectangles. Only those tiles within the current canvas window are painted by the Canvas render engine.</p>
<p><b>See also </b><a href="#tileSize-prop">tileSize</a> and <a href="#canvasWindow-prop">canvasWindow</a>.</p>
<!-- @@@canvasSize -->
<br/>
<!-- $$$canvasWindow -->
<table class="qmlname"><tr valign="top" id="canvasWindow-prop"><td class="tblQmlPropNode"><p><span class="name">canvasWindow</span> : <span class="type">rect</span></p></td></tr></table><p>Holds the current canvas visible window.</p>
<p>By default the canvasWindow size is the same as the Canvas item size with the top-left point as (0, 0).</p>
<p>If the <a href="#canvasSize-prop">canvasSize</a> is different to the Canvas item size, the Canvas item can display different visible areas by changing the canvas windowSize and/or position.</p>
<p><b>See also </b><a href="#canvasSize-prop">canvasSize</a> and <a href="#tileSize-prop">tileSize</a>.</p>
<!-- @@@canvasWindow -->
<br/>
<!-- $$$context -->
<table class="qmlname"><tr valign="top" id="context-prop"><td class="tblQmlPropNode"><p><span class="name">context</span> : <span class="type">object</span></p></td></tr></table><p>Holds the active drawing context.</p>
<p>If the canvas is ready and there has been a successful call to <a href="#getContext-method">getContext()</a> or the <a href="#contextType-prop">contextType</a> property has been set with a supported context type, this property will contain the current drawing context, otherwise null.</p>
<!-- @@@context -->
<br/>
<!-- $$$contextType -->
<table class="qmlname"><tr valign="top" id="contextType-prop"><td class="tblQmlPropNode"><p><span class="name">contextType</span> : <span class="type">string</span></p></td></tr></table><p>The type of drawing context to use.</p>
<p>This property is set to the name of the active context type.</p>
<p>If set explicitly the canvas will attempt to create a context of the named type after becoming available.</p>
<p>The type name is the same as used in the <a href="#getContext-method">getContext()</a> call, for the 2d canvas the value will be &quot;2d&quot;.</p>
<p><b>See also </b><a href="#getContext-method">getContext()</a> and <a href="#available-prop">available</a>.</p>
<!-- @@@contextType -->
<br/>
<!-- $$$renderStrategy -->
<table class="qmlname"><tr valign="top" id="renderStrategy-prop"><td class="tblQmlPropNode"><p><span class="name">renderStrategy</span> : <span class="type">enumeration</span></p></td></tr></table><p>Holds the current canvas rendering strategy.</p>
<ul>
<li>Canvas.Immediate - context will perform graphics commands immediately in the main UI thread.</li>
<li>Canvas.Threaded - context will defer graphics commands to a private rendering thread.</li>
<li>Canvas.Cooperative - context will defer graphics commands to the applications global render thread.</li>
</ul>
<p>This hint is supplied along with <a href="#renderTarget-prop">renderTarget</a> to the graphics context to determine the method of rendering. A renderStrategy, <a href="#renderTarget-prop">renderTarget</a> or a combination may not be supported by a graphics context, in which case the context will choose appropriate options and Canvas will signal the change to the properties.</p>
<p>Configuration or runtime tests may cause the QML Scene Graph to render in the GUI thread. Selecting <code>Canvas.Cooperative</code>, does not guarantee rendering will occur on a thread separate from the GUI thread.</p>
<p>The default value is <code>Canvas.Immediate</code>.</p>
<p><b>See also </b><a href="#renderTarget-prop">renderTarget</a>.</p>
<!-- @@@renderStrategy -->
<br/>
<!-- $$$renderTarget -->
<table class="qmlname"><tr valign="top" id="renderTarget-prop"><td class="tblQmlPropNode"><p><span class="name">renderTarget</span> : <span class="type">enumeration</span></p></td></tr></table><p>Holds the current canvas render target.</p>
<ul>
<li>Canvas.Image - render to an in memory image buffer.</li>
<li>Canvas.FramebufferObject - render to an OpenGL frame buffer</li>
</ul>
<p>This hint is supplied along with <a href="#renderStrategy-prop">renderStrategy</a> to the graphics context to determine the method of rendering. A <a href="#renderStrategy-prop">renderStrategy</a>, renderTarget or a combination may not be supported by a graphics context, in which case the context will choose appropriate options and Canvas will signal the change to the properties.</p>
<p>The default render target is <code>Canvas.Image</code>.</p>
<!-- @@@renderTarget -->
<br/>
<!-- $$$tileSize -->
<table class="qmlname"><tr valign="top" id="tileSize-prop"><td class="tblQmlPropNode"><p><span class="name">tileSize</span> : <span class="type">size</span></p></td></tr></table><p>Holds the canvas rendering tile size.</p>
<p>The Canvas item enters tiled mode by setting <a href="#canvasSize-prop">canvasSize</a>, tileSize and the <a href="#canvasWindow-prop">canvasWindow</a>. This can improve rendering performance by rendering and caching tiles instead of rendering the whole canvas every time.</p>
<p>Memory will be consumed only by those tiles within the current visible region.</p>
<p>By default the tileSize is the same as the <a href="#canvasSize-prop">canvasSize</a>.</p>
<p><b>See also </b><a href="#canvasSize-prop">canvasSize</a> and <a href="#canvasWindow-prop">canvasWindow</a>.</p>
<!-- @@@tileSize -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$imageLoaded -->
<table class="qmlname"><tr valign="top" id="imageLoaded-signal"><td class="tblQmlFuncNode"><p><span class="name">imageLoaded</span>()</p></td></tr></table><p>This signal is emitted when an image has been loaded.</p>
<p>The corresponding handler is <code>onImageLoaded</code>.</p>
<p><b>See also </b><a href="#loadImage-method">loadImage()</a>.</p>
<!-- @@@imageLoaded -->
<br/>
<!-- $$$paint -->
<table class="qmlname"><tr valign="top" id="paint-signal"><td class="tblQmlFuncNode"><p><span class="name">paint</span>(<span class="type">rect</span><i> region</i>)</p></td></tr></table><p>This signal is emitted when the <i>region</i> needs to be rendered. If a context is active it can be referenced from the context property.</p>
<p>This signal can be triggered by markdirty(), <a href="#requestPaint-method">requestPaint()</a> or by changing the current canvas window.</p>
<p>The corresponding handler is <code>onPaint</code>.</p>
<!-- @@@paint -->
<br/>
<!-- $$$painted -->
<table class="qmlname"><tr valign="top" id="painted-signal"><td class="tblQmlFuncNode"><p><span class="name">painted</span>()</p></td></tr></table><p>This signal is emitted after all context painting commands are executed and the Canvas has been rendered.</p>
<p>The corresponding handler is <code>onPainted</code>.</p>
<!-- @@@painted -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancelRequestAnimationFrame -->
<table class="qmlname"><tr valign="top" id="cancelRequestAnimationFrame-method"><td class="tblQmlFuncNode"><p><span class="name">cancelRequestAnimationFrame</span>(<span class="type">long</span><i> handle</i>)</p></td></tr></table><p>This function will cancel the animation callback referenced by <i>handle</i>.</p>
<!-- @@@cancelRequestAnimationFrame -->
<br/>
<!-- $$$getContext -->
<table class="qmlname"><tr valign="top" id="getContext-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">getContext</span>(<span class="type">string</span><i> contextId</i>, ...<i> args</i>)</p></td></tr></table><p>Returns a drawing context, or <code>null</code> if no context is available.</p>
<p>The <i>contextId</i> parameter names the required context. The Canvas item will return a context that implements the required drawing mode. After the first call to getContext, any subsequent call to getContext with the same contextId will return the same context object.</p>
<p>If the context type is not supported or the canvas has previously been requested to provide a different and incompatible context type, <code>null</code> will be returned.</p>
<p>Canvas only supports a 2d context.</p>
<!-- @@@getContext -->
<br/>
<!-- $$$isImageError -->
<table class="qmlname"><tr valign="top" id="isImageError-method"><td class="tblQmlFuncNode"><p><span class="name">isImageError</span>(<span class="type">url</span><i> image</i>)</p></td></tr></table><p>Returns true if the <i>image</i> failed to load.</p>
<p><b>See also </b><a href="#loadImage-method">loadImage()</a>.</p>
<!-- @@@isImageError -->
<br/>
<!-- $$$isImageLoaded -->
<table class="qmlname"><tr valign="top" id="isImageLoaded-method"><td class="tblQmlFuncNode"><p><span class="name">isImageLoaded</span>(<span class="type">url</span><i> image</i>)</p></td></tr></table><p>Returns true if the <i>image</i> is successfully loaded and ready to use.</p>
<p><b>See also </b><a href="#loadImage-method">loadImage()</a>.</p>
<!-- @@@isImageLoaded -->
<br/>
<!-- $$$isImageLoading -->
<table class="qmlname"><tr valign="top" id="isImageLoading-method"><td class="tblQmlFuncNode"><p><span class="name">isImageLoading</span>(<span class="type">url</span><i> image</i>)</p></td></tr></table><p>Returns true if the <i>image</i> is currently loading.</p>
<p><b>See also </b><a href="#loadImage-method">loadImage()</a>.</p>
<!-- @@@isImageLoading -->
<br/>
<!-- $$$loadImage -->
<table class="qmlname"><tr valign="top" id="loadImage-method"><td class="tblQmlFuncNode"><p><span class="name">loadImage</span>(<span class="type">url</span><i> image</i>)</p></td></tr></table><p>Loads the given <code>image</code> asynchronously.</p>
<p>When the image is ready, <a href="#imageLoaded-signal">imageLoaded</a> will be emitted. The loaded image can be unloaded by the <a href="#unloadImage-method">unloadImage()</a> method.</p>
<p>Note: Only loaded images can be painted on the Canvas item.</p>
<p><b>See also </b><a href="#unloadImage-method">unloadImage</a>, <a href="#imageLoaded-signal">imageLoaded</a>, <a href="#isImageLoaded-method">isImageLoaded()</a>, <a href="QtQuick.Context2D.md#createImageData-method">Context2D::createImageData()</a>, and <a href="QtQuick.Context2D.md#drawImage-method">Context2D::drawImage()</a>.</p>
<!-- @@@loadImage -->
<br/>
<!-- $$$markDirty -->
<table class="qmlname"><tr valign="top" id="markDirty-method"><td class="tblQmlFuncNode"><p><span class="name">markDirty</span>(<span class="type">rect</span><i> area</i>)</p></td></tr></table><p>Mark the given <i>area</i> as dirty, so that when this area is visible the canvas renderer will redraw it. This will trigger the <code>paint</code> signal.</p>
<p><b>See also </b><a href="#paint-signal">paint</a> and <a href="#requestPaint-method">requestPaint()</a>.</p>
<!-- @@@markDirty -->
<br/>
<!-- $$$requestAnimationFrame -->
<table class="qmlname"><tr valign="top" id="requestAnimationFrame-method"><td class="tblQmlFuncNode"><p><span class="type">long</span> <span class="name">requestAnimationFrame</span>(<span class="type">callback</span>)</p></td></tr></table><p>This function schedules callback to be invoked before composing the Qt Quick scene.</p>
<!-- @@@requestAnimationFrame -->
<br/>
<!-- $$$requestPaint -->
<table class="qmlname"><tr valign="top" id="requestPaint-method"><td class="tblQmlFuncNode"><p><span class="name">requestPaint</span>()</p></td></tr></table><p>Request the entire visible region be re-drawn.</p>
<p><b>See also </b><a href="#markDirty-method">markDirty()</a>.</p>
<!-- @@@requestPaint -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">save</span>(<span class="type">string</span><i> filename</i>)</p></td></tr></table><p>Save the current canvas content into an image file <i>filename</i>. The saved image format is automatically decided by the <i>filename</i>'s suffix.</p>
<p>Note: calling this method will force painting the whole canvas, not just the current canvas visible window.</p>
<p><b>See also </b><a href="#canvasWindow-prop">canvasWindow</a>, <a href="#canvasSize-prop">canvasSize</a>, and <a href="#toDataURL-method">toDataURL()</a>.</p>
<!-- @@@save -->
<br/>
<!-- $$$toDataURL -->
<table class="qmlname"><tr valign="top" id="toDataURL-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toDataURL</span>(<span class="type">string</span><i> mimeType</i>)</p></td></tr></table><p>Returns a data URL for the image in the canvas.</p>
<p>The default <i>mimeType</i> is &quot;image/png&quot;.</p>
<p><b>See also </b><a href="#save-method">save()</a>.</p>
<!-- @@@toDataURL -->
<br/>
<!-- $$$unloadImage -->
<table class="qmlname"><tr valign="top" id="unloadImage-method"><td class="tblQmlFuncNode"><p><span class="name">unloadImage</span>(<span class="type">url</span><i> image</i>)</p></td></tr></table><p>Unloads the <code>image</code>.</p>
<p>Once an image is unloaded it cannot be painted by the canvas context unless it is loaded again.</p>
<p><b>See also </b><a href="#loadImage-method">loadImage()</a>, <a href="#imageLoaded-signal">imageLoaded</a>, <a href="#isImageLoaded-method">isImageLoaded()</a>, <a href="QtQuick.Context2D.md#createImageData-method">Context2D::createImageData()</a>, and <a href="QtQuick.Context2D.md#drawImage-method">Context2D::drawImage</a>.</p>
<!-- @@@unloadImage -->
<br/>
