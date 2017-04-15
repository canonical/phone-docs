---
Title: QtQuick.Canvas
---
        
Canvas
======

<span class="subtitle"></span>
Provides a 2D canvas item enabling drawing via JavaScript More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 5.0</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[available](#available-prop)**** : bool
-   ****[canvasSize](#canvasSize-prop)**** : size
-   ****[canvasWindow](#canvasWindow-prop)**** : rect
-   ****[context](#context-prop)**** : object
-   ****[contextType](#contextType-prop)**** : string
-   ****[renderStrategy](#renderStrategy-prop)**** : enumeration
-   ****[renderTarget](#renderTarget-prop)**** : enumeration
-   ****[tileSize](#tileSize-prop)**** : size

<span id="signals"></span>
Signals
-------

-   ****[imageLoaded](#imageLoaded-signal)****()
-   ****[paint](#paint-signal)****(rect *region*)
-   ****[painted](#painted-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelRequestAnimationFrame](#cancelRequestAnimationFrame-method)****(long *handle*)
-   object ****[getContext](#getContext-method)****(string *contextId*, ... *args*)
-   ****[isImageError](#isImageError-method)****(url *image*)
-   ****[isImageLoaded](#isImageLoaded-method)****(url *image*)
-   ****[isImageLoading](#isImageLoading-method)****(url *image*)
-   ****[loadImage](#loadImage-method)****(url *image*)
-   ****[markDirty](#markDirty-method)****(rect *area*)
-   long ****[requestAnimationFrame](#requestAnimationFrame-method)****(callback)
-   ****[requestPaint](#requestPaint-method)****()
-   bool ****[save](#save-method)****(string *filename*)
-   string ****[toDataURL](#toDataURL-method)****(string *mimeType*)
-   ****[unloadImage](#unloadImage-method)****(url *image*)

<span id="details"></span>
Detailed Description
--------------------

The Canvas item allows drawing of straight and curved lines, simple and complex shapes, graphs, and referenced graphic images. It can also add text, colors, shadows, gradients, and patterns, and do low level pixel operations. The Canvas output may be saved as an image file or serialized to a URL.

To define a drawing area in the Canvas item set the `width` and `height` properties. For example, the following code creates a Canvas item which has a drawing area with a height of 100 pixels and width of 200 pixels:

``` qml
import QtQuick 2.0
Canvas {
    id: mycanvas
    width: 100
    height: 200
}
```

Currently the Canvas item only supports the two-dimensional rendering context.

<span id="threaded-rendering-and-render-target"></span>
Threaded Rendering and Render Target
------------------------------------

The Canvas item supports two render targets: `Canvas.Image` and `Canvas.FramebufferObject`.

The `Canvas.Image` render target is a *QImage* object. This render target supports background thread rendering, allowing complex or long running painting to be executed without blocking the UI.

The Canvas.FramebufferObject render target utilizes OpenGL hardware acceleration rather than rendering into system memory, which in many cases results in faster rendering. Canvas.FramebufferObject relies on the OpenGL extensions `GL_EXT_framebuffer_multisample` and `GL_EXT_framebuffer_blit` for antialiasing. It will also use more graphics memory when rendering strategy is anything other than Canvas.Cooperative.

The default render target is Canvas.Image and the default [renderStrategy](#renderStrategy-prop) is Canvas.Immediate.

<span id="tiled-canvas"></span>
Tiled Canvas
------------

The Canvas item supports tiled rendering by setting [canvasSize](#canvasSize-prop), [tileSize](#tileSize-prop) and [canvasWindow](#canvasWindow-prop) properties.

Tiling allows efficient display of a very large virtual canvas via a smaller canvas window. The actual memory consumption is in relation to the canvas window size. The painting code can draw within the virtual canvas without handling coordinate system transformations.

The tiles overlapping with the canvas window may be cached eliminating the need to redraw, which can lead to significantly improved performance in some situations.

<span id="pixel-operations"></span>
Pixel Operations
----------------

All HTML5 2D context pixel operations are supported. In order to ensure improved pixel reading/writing performance the *Canvas.Image* render target should be chosen. The *Canvas.FramebufferObject* render target requires the pixel data to be exchanged between the system memory and the graphic card, which is significantly more expensive. Rendering may also be synchronized with the V-sync signal (to avoid [screen tearing](http://en.wikipedia.org/wiki/Screen_tearing)) which will further impact pixel operations with `Canvas.FrambufferObject` render target.

<span id="tips-for-porting-existing-html5-canvas-applications"></span>
Tips for Porting Existing HTML5 Canvas Applications
---------------------------------------------------

Although the Canvas item is provides a HTML5 like API, HTML5 canvas applications need to be modified to run in the Canvas item:

-   Replace all DOM API calls with QML property bindings or Canvas item methods.
-   Replace all HTML event handlers with the [MouseArea](../QtQuick.MouseArea.md) item.
-   Change setInterval/setTimeout function calls with the Timer item or the use of [requestAnimationFrame()](#requestAnimationFrame-method).
-   Place painting code into the `onPaint` handler and trigger painting by calling the [markDirty()](#markDirty-method) or [requestPaint()](#requestPaint-method) methods.
-   To draw images, load them by calling the Canvas's [loadImage()](#loadImage-method) method and then request to paint them in the `onImageLoaded` handler.

Starting Qt 5.4, the Canvas is a texture provider and can be used directly in ShaderEffects and other classes that consume texture providers.

**See also** [Context2D](../QtQuick.Context2D.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="available-prop"></span><span class="name">available</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Indicates when Canvas is able to provide a drawing context to operate on.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canvasSize-prop"></span><span class="name">canvasSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

Holds the logical canvas size that the context paints on.

By default, the canvas size is the same size as the current canvas item size.

By setting the canvasSize, [tileSize](#tileSize-prop) and [canvasWindow](#canvasWindow-prop), the Canvas item can act as a large virtual canvas with many separately rendered tile rectangles. Only those tiles within the current canvas window are painted by the Canvas render engine.

**See also** [tileSize](#tileSize-prop) and [canvasWindow](#canvasWindow-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canvasWindow-prop"></span><span class="name">canvasWindow</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

Holds the current canvas visible window.

By default the canvasWindow size is the same as the Canvas item size with the top-left point as (0, 0).

If the [canvasSize](#canvasSize-prop) is different to the Canvas item size, the Canvas item can display different visible areas by changing the canvas windowSize and/or position.

**See also** [canvasSize](#canvasSize-prop) and [tileSize](#tileSize-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context-prop"></span><span class="name">context</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

Holds the active drawing context.

If the canvas is ready and there has been a successful call to [getContext()](#getContext-method) or the [contextType](#contextType-prop) property has been set with a supported context type, this property will contain the current drawing context, otherwise null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contextType-prop"></span><span class="name">contextType</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The type of drawing context to use.

This property is set to the name of the active context type.

If set explicitly the canvas will attempt to create a context of the named type after becoming available.

The type name is the same as used in the [getContext()](#getContext-method) call, for the 2d canvas the value will be "2d".

**See also** [getContext()](#getContext-method) and [available](#available-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="renderStrategy-prop"></span><span class="name">renderStrategy</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Holds the current canvas rendering strategy.

-   Canvas.Immediate - context will perform graphics commands immediately in the main UI thread.
-   Canvas.Threaded - context will defer graphics commands to a private rendering thread.
-   Canvas.Cooperative - context will defer graphics commands to the applications global render thread.

This hint is supplied along with [renderTarget](#renderTarget-prop) to the graphics context to determine the method of rendering. A renderStrategy, [renderTarget](#renderTarget-prop) or a combination may not be supported by a graphics context, in which case the context will choose appropriate options and Canvas will signal the change to the properties.

Configuration or runtime tests may cause the QML Scene Graph to render in the GUI thread. Selecting `Canvas.Cooperative`, does not guarantee rendering will occur on a thread separate from the GUI thread.

The default value is `Canvas.Immediate`.

**See also** [renderTarget](#renderTarget-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="renderTarget-prop"></span><span class="name">renderTarget</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Holds the current canvas render target.

-   Canvas.Image - render to an in memory image buffer.
-   Canvas.FramebufferObject - render to an OpenGL frame buffer

This hint is supplied along with [renderStrategy](#renderStrategy-prop) to the graphics context to determine the method of rendering. A [renderStrategy](#renderStrategy-prop), renderTarget or a combination may not be supported by a graphics context, in which case the context will choose appropriate options and Canvas will signal the change to the properties.

The default render target is `Canvas.Image`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tileSize-prop"></span><span class="name">tileSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

Holds the canvas rendering tile size.

The Canvas item enters tiled mode by setting [canvasSize](#canvasSize-prop), tileSize and the [canvasWindow](#canvasWindow-prop). This can improve rendering performance by rendering and caching tiles instead of rendering the whole canvas every time.

Memory will be consumed only by those tiles within the current visible region.

By default the tileSize is the same as the [canvasSize](#canvasSize-prop).

**See also** [canvasSize](#canvasSize-prop) and [canvasWindow](#canvasWindow-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageLoaded-signal"></span><span class="name">imageLoaded</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an image has been loaded.

The corresponding handler is `onImageLoaded`.

**See also** [loadImage()](#loadImage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paint-signal"></span><span class="name">paint</span>(<span class="type">rect</span> <em>region</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the *region* needs to be rendered. If a context is active it can be referenced from the context property.

This signal can be triggered by markdirty(), [requestPaint()](#requestPaint-method) or by changing the current canvas window.

The corresponding handler is `onPaint`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="painted-signal"></span><span class="name">painted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted after all context painting commands are executed and the Canvas has been rendered.

The corresponding handler is `onPainted`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelRequestAnimationFrame-method"></span><span class="name">cancelRequestAnimationFrame</span>(<span class="type">long</span> <em>handle</em>)</p></td>
</tr>
</tbody>
</table>

This function will cancel the animation callback referenced by *handle*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getContext-method"></span><span class="type">object</span> <span class="name">getContext</span>(<span class="type">string</span> <em>contextId</em>, ... <em>args</em>)</p></td>
</tr>
</tbody>
</table>

Returns a drawing context, or `null` if no context is available.

The *contextId* parameter names the required context. The Canvas item will return a context that implements the required drawing mode. After the first call to getContext, any subsequent call to getContext with the same contextId will return the same context object.

If the context type is not supported or the canvas has previously been requested to provide a different and incompatible context type, `null` will be returned.

Canvas only supports a 2d context.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isImageError-method"></span><span class="name">isImageError</span>(<span class="type">url</span> <em>image</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the *image* failed to load.

**See also** [loadImage()](#loadImage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isImageLoaded-method"></span><span class="name">isImageLoaded</span>(<span class="type">url</span> <em>image</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the *image* is successfully loaded and ready to use.

**See also** [loadImage()](#loadImage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isImageLoading-method"></span><span class="name">isImageLoading</span>(<span class="type">url</span> <em>image</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the *image* is currently loading.

**See also** [loadImage()](#loadImage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadImage-method"></span><span class="name">loadImage</span>(<span class="type">url</span> <em>image</em>)</p></td>
</tr>
</tbody>
</table>

Loads the given `image` asynchronously.

When the image is ready, [imageLoaded](#imageLoaded-signal) will be emitted. The loaded image can be unloaded by the [unloadImage()](#unloadImage-method) method.

Note: Only loaded images can be painted on the Canvas item.

**See also** [unloadImage](#unloadImage-method), [imageLoaded](#imageLoaded-signal), [isImageLoaded()](#isImageLoaded-method), [Context2D::createImageData()](../QtQuick.Context2D.md#createImageData-method), and [Context2D::drawImage()](../QtQuick.Context2D.md#drawImage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="markDirty-method"></span><span class="name">markDirty</span>(<span class="type">rect</span> <em>area</em>)</p></td>
</tr>
</tbody>
</table>

Mark the given *area* as dirty, so that when this area is visible the canvas renderer will redraw it. This will trigger the `paint` signal.

**See also** [paint](#paint-signal) and [requestPaint()](#requestPaint-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="requestAnimationFrame-method"></span><span class="type">long</span> <span class="name">requestAnimationFrame</span>(<span class="type">callback</span>)</p></td>
</tr>
</tbody>
</table>

This function schedules callback to be invoked before composing the Qt Quick scene.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="requestPaint-method"></span><span class="name">requestPaint</span>()</p></td>
</tr>
</tbody>
</table>

Request the entire visible region be re-drawn.

**See also** [markDirty()](#markDirty-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">bool</span> <span class="name">save</span>(<span class="type">string</span> <em>filename</em>)</p></td>
</tr>
</tbody>
</table>

Save the current canvas content into an image file *filename*. The saved image format is automatically decided by the *filename*'s suffix.

Note: calling this method will force painting the whole canvas, not just the current canvas visible window.

**See also** [canvasWindow](#canvasWindow-prop), [canvasSize](#canvasSize-prop), and [toDataURL()](#toDataURL-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toDataURL-method"></span><span class="type">string</span> <span class="name">toDataURL</span>(<span class="type">string</span> <em>mimeType</em>)</p></td>
</tr>
</tbody>
</table>

Returns a data URL for the image in the canvas.

The default *mimeType* is "image/png".

**See also** [save()](#save-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="unloadImage-method"></span><span class="name">unloadImage</span>(<span class="type">url</span> <em>image</em>)</p></td>
</tr>
</tbody>
</table>

Unloads the `image`.

Once an image is unloaded it cannot be painted by the canvas context unless it is loaded again.

**See also** [loadImage()](#loadImage-method), [imageLoaded](#imageLoaded-signal), [isImageLoaded()](#isImageLoaded-method), [Context2D::createImageData()](../QtQuick.Context2D.md#createImageData-method), and [Context2D::drawImage](../QtQuick.Context2D.md#drawImage-method).

