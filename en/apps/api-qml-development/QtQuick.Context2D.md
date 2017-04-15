---
Title: QtQuick.Context2D
---
        
Context2D
=========

<span class="subtitle"></span>
Provides 2D context for shapes on a Canvas item More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.0             |

<span id="properties"></span>
Properties
----------

-   ****[canvas](#canvas-prop)**** : QtQuick::Canvas
-   ****[fillRule](#fillRule-prop)**** : enumeration
-   ****[fillStyle](#fillStyle-prop)**** : variant
-   ****[font](#font-prop)**** : string
-   ****[globalAlpha](#globalAlpha-prop)**** : real
-   ****[globalCompositeOperation](#globalCompositeOperation-prop)**** : string
-   ****[lineCap](#lineCap-prop)**** : string
-   ****[lineJoin](#lineJoin-prop)**** : string
-   ****[lineWidth](#lineWidth-prop)**** : real
-   ****[miterLimit](#miterLimit-prop)**** : real
-   ****[shadowBlur](#shadowBlur-prop)**** : real
-   ****[shadowColor](#shadowColor-prop)**** : string
-   ****[shadowOffsetX](#shadowOffsetX-prop)**** : qreal
-   ****[shadowOffsetY](#shadowOffsetY-prop)**** : qreal
-   ****[strokeStyle](#strokeStyle-prop)**** : variant
-   ****[textAlign](#textAlign-prop)**** : string
-   ****[textBaseline](#textBaseline-prop)**** : string

<span id="methods"></span>
Methods
-------

-   object ****[arc](#arc-method)****(real *x*, real *y*, real *radius*, real *startAngle*, real *endAngle*, bool *anticlockwise*)
-   object ****[arcTo](#arcTo-method)****(real *x1*, real *y1*, real *x2*, real *y2*, real *radius*)
-   object ****[beginPath](#beginPath-method)****()
-   object ****[bezierCurveTo](#bezierCurveTo-method)****(real *cp1x*, real *cp1y*, real *cp2x*, real *cp2y*, real *x*, real *y*)
-   object ****[clearRect](#clearRect-method)****(real *x*, real *y*, real *w*, real *h*)
-   object ****[clip](#clip-method)****()
-   object ****[closePath](#closePath-method)****()
-   object ****[createConicalGradient](#createConicalGradient-method)****(real *x*, real *y*, real *angle*)
-   CanvasImageData ****[createImageData](#createImageData-method-3)****(Url *imageUrl*)
-   CanvasImageData ****[createImageData](#createImageData-method-2)****(CanvasImageData *imageData*)
-   CanvasImageData ****[createImageData](#createImageData-method)****(real *sw*, real *sh*)
-   object ****[createLinearGradient](#createLinearGradient-method)****(real *x0*, real *y0*, real *x1*, real *y1*)
-   variant ****[createPattern](#createPattern-method-2)****(Image *image*, string *repetition*)
-   variant ****[createPattern](#createPattern-method)****(color *color*, enumeration *patternMode*)
-   object ****[createRadialGradient](#createRadialGradient-method)****(real *x0*, real *y0*, real *r0*, real *x1*, real *y1*, real *r1*)
-   ****[drawImage](#drawImage-method-3)****(variant *image*, real *sx*, real *sy*, real *sw*, real *sh*, real *dx*, real *dy*, real *dw*, real *dh*)
-   ****[drawImage](#drawImage-method-2)****(variant *image*, real *dx*, real *dy*, real *dw*, real *dh*)
-   ****[drawImage](#drawImage-method)****(variant *image*, real *dx*, real *dy*)
-   object ****[ellipse](#ellipse-method)****(real *x*, real *y*, real *w*, real *h*)
-   object ****[fill](#fill-method)****()
-   object ****[fillRect](#fillRect-method)****(real *x*, real *y*, real *w*, real *h*)
-   object ****[fillText](#fillText-method)****(text, x, y)
-   CanvasImageData ****[getImageData](#getImageData-method)****(real *sx*, real *sy*, real *sw*, real *sh*)
-   object ****[isPointInPath](#isPointInPath-method)****(real *x*, real *y*)
-   object ****[lineTo](#lineTo-method)****(real *x*, real *y*)
-   object ****[measureText](#measureText-method)****(text)
-   object ****[moveTo](#moveTo-method)****(real *x*, real *y*)
-   object ****[putImageData](#putImageData-method)****(CanvasImageData *imageData*, real *dx*, real *dy*, real *dirtyX*, real *dirtyY*, real *dirtyWidth*, real *dirtyHeight*)
-   object ****[quadraticCurveTo](#quadraticCurveTo-method)****(real *cpx*, real *cpy*, real *x*, real *y*)
-   object ****[rect](#rect-method)****(real *x*, real *y*, real *w*, real *h*)
-   object ****[reset](#reset-method)****()
-   object ****[resetTransform](#resetTransform-method)****()
-   object ****[restore](#restore-method)****()
-   object ****[rotate](#rotate-method)****(real *angle*)
-   object ****[roundedRect](#roundedRect-method)****(real *x*, real *y*, real *w*, real *h*, real *xRadius*, real *yRadius*)
-   object ****[save](#save-method)****()
-   object ****[scale](#scale-method)****(real *x*, real *y*)
-   object ****[setTransform](#setTransform-method)****(real *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-   object ****[shear](#shear-method)****(real *sh*, real *sv*)
-   object ****[stroke](#stroke-method)****()
-   object ****[strokeRect](#strokeRect-method)****(real *x*, real *y*, real *w*, real *h*)
-   object ****[strokeText](#strokeText-method)****(text, x, y)
-   object ****[text](#text-method)****(string *text*, real *x*, real *y*)
-   object ****[transform](#transform-method)****(real *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-   object ****[translate](#translate-method)****(real *x*, real *y*)

<span id="details"></span>
Detailed Description
--------------------

The [Context2D](index.html) object can be created by `Canvas` item's `getContext()` method:

``` cpp
Canvas {
  id:canvas
  onPaint:{
     var ctx = canvas.getContext('2d');
     //...
  }
}
```

The [Context2D](index.html) API implements the same [W3C Canvas 2D Context API standard](http://www.w3.org/TR/2dcontext) with some enhanced features.

The [Context2D](index.html) API provides the rendering **context** which defines the methods and attributes needed to draw on the `Canvas` item. The following assigns the canvas rendering context to a `context` variable:

``` cpp
var context = mycanvas.getContext("2d")
```

The [Context2D](index.html) API renders the canvas as a coordinate system whose origin (0,0) is at the top left corner, as shown in the figure below. Coordinates increase along the `x` axis from left to right and along the `y` axis from top to bottom of the canvas.

![](https://developer.ubuntu.com/static/devportal_uploaded/6efb18d5-44b3-4efa-98b3-ee73e770aa59-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-context.gif)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canvas-prop"></span><span class="name">canvas</span> : <span class="type"><a href="QtQuick.Canvas.md">QtQuick::Canvas</a></span></p></td>
</tr>
</tbody>
</table>

Holds the canvas item that the context paints on.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillRule-prop"></span><span class="name">fillRule</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Holds the current fill rule used for filling shapes. The following fill rules supported:

-   Qt.OddEvenFill
-   Qt.WindingFill

Note: Unlike the QPainterPath, the Canvas API uses the winding fill as the default fill rule. The fillRule property is part of the context rendering state.

**See also** [fillStyle](#fillStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillStyle-prop"></span><span class="name">fillStyle</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

Holds the current style used for filling shapes. The style can be either a string containing a CSS color, a [CanvasGradient](../QtQuick.CanvasGradient.md) or CanvasPattern object. Invalid values are ignored. This property accepts several color syntaxes:

-   'rgb(red, green, blue)' - for example: 'rgb(255, 100, 55)' or 'rgb(100%, 70%, 30%)'
-   'rgba(red, green, blue, alpha)' - for example: 'rgb(255, 100, 55, 1.0)' or 'rgb(100%, 70%, 30%, 0.5)'
-   'hsl(hue, saturation, lightness)'
-   'hsla(hue, saturation, lightness, alpha)'
-   '\#RRGGBB' - for example: '\#00FFCC'
-   Qt.rgba(red, green, blue, alpha) - for example: Qt.rgba(0.3, 0.7, 1, 1.0)

If the `fillStyle` or [strokeStyle](#strokeStyle-prop) is assigned many times in a loop, the last Qt.rgba() syntax should be chosen, as it has the best performance, because it's already a valid QColor value, does not need to be parsed everytime.

The default value is '\#000000'.

**See also** [createLinearGradient()](#createLinearGradient-method), [createRadialGradient()](#createRadialGradient-method), [createPattern()](#createPattern-method), and [strokeStyle](#strokeStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-prop"></span><span class="name">font</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current font settings.

A subset of the [w3C 2d context standard for font](http://www.w3.org/TR/2dcontext/#dom-context-2d-font) is supported:

-   font-style (optional): normal | italic | oblique
-   font-variant (optional): normal | small-caps
-   font-weight (optional): normal | bold | 0 ... 99
-   font-size: Npx | Npt (where N is a positive number)
-   font-family: See <http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family>

**Note:** The font-size and font-family properties are mandatory and must be in the order they are shown in above. In addition, a font family with spaces in its name must be quoted.

The default font value is "10px sans-serif".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalAlpha-prop"></span><span class="name">globalAlpha</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Holds the current alpha value applied to rendering operations. The value must be in the range from `0.0` (fully transparent) to `1.0` (fully opaque). The default value is `1.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalCompositeOperation-prop"></span><span class="name">globalCompositeOperation</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current the current composition operation, from the list below:

-   source-atop - A atop B. Display the source image wherever both images are opaque. Display the destination image wherever the destination image is opaque but the source image is transparent. Display transparency elsewhere.
-   source-in - A in B. Display the source image wherever both the source image and destination image are opaque. Display transparency elsewhere.
-   source-out - A out B. Display the source image wherever the source image is opaque and the destination image is transparent. Display transparency elsewhere.
-   source-over - (default) A over B. Display the source image wherever the source image is opaque. Display the destination image elsewhere.
-   destination-atop - B atop A. Same as source-atop but using the destination image instead of the source image and vice versa.
-   destination-in - B in A. Same as source-in but using the destination image instead of the source image and vice versa.
-   destination-out - B out A. Same as source-out but using the destination image instead of the source image and vice versa.
-   destination-over - B over A. Same as source-over but using the destination image instead of the source image and vice versa.
-   lighter - A plus B. Display the sum of the source image and destination image, with color values approaching 255 (100%) as a limit.
-   copy - A (B is ignored). Display the source image instead of the destination image.
-   xor - A xor B. Exclusive OR of the source image and destination image.

Additionally, this property also accepts the compositon modes listed in QPainter::CompositionMode. According to the W3C standard, these extension composition modes are provided as "vendorName-operationName" syntax, for example: QPainter::CompositionMode\_Exclusion is provided as "qt-exclusion".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineCap-prop"></span><span class="name">lineCap</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current line cap style. The possible line cap styles are:

-   butt - the end of each line has a flat edge perpendicular to the direction of the line, this is the default line cap value.
-   round - a semi-circle with the diameter equal to the width of the line must then be added on to the end of the line.
-   square - a rectangle with the length of the line width and the width of half the line width, placed flat against the edge perpendicular to the direction of the line.

Other values are ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineJoin-prop"></span><span class="name">lineJoin</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current line join style. A join exists at any point in a subpath shared by two consecutive lines. When a subpath is closed, then a join also exists at its first point (equivalent to its last point) connecting the first and last lines in the subpath.

The possible line join styles are:

-   bevel - this is all that is rendered at joins.
-   round - a filled arc connecting the two aforementioned corners of the join, abutting (and not overlapping) the aforementioned triangle, with the diameter equal to the line width and the origin at the point of the join, must be rendered at joins.
-   miter - a second filled triangle must (if it can given the miter length) be rendered at the join, this is the default line join style.

Other values are ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineWidth-prop"></span><span class="name">lineWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Holds the current line width. Values that are not finite values greater than zero are ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="miterLimit-prop"></span><span class="name">miterLimit</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Holds the current miter limit ratio. The default miter limit value is 10.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadowBlur-prop"></span><span class="name">shadowBlur</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Holds the current level of blur applied to shadows

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadowColor-prop"></span><span class="name">shadowColor</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current shadow color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadowOffsetX-prop"></span><span class="name">shadowOffsetX</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Holds the current shadow offset in the positive horizontal distance.

**See also** [shadowOffsetY](#shadowOffsetY-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadowOffsetY-prop"></span><span class="name">shadowOffsetY</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Holds the current shadow offset in the positive vertical distance.

**See also** [shadowOffsetX](#shadowOffsetX-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strokeStyle-prop"></span><span class="name">strokeStyle</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

Holds the current color or style to use for the lines around shapes, The style can be either a string containing a CSS color, a [CanvasGradient](../QtQuick.CanvasGradient.md) or CanvasPattern object. Invalid values are ignored.

The default value is '\#000000'.

**See also** [createLinearGradient()](#createLinearGradient-method), [createRadialGradient()](#createRadialGradient-method), [createPattern()](#createPattern-method), and [fillStyle](#fillStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textAlign-prop"></span><span class="name">textAlign</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current text alignment settings. The possible values are:

-   start
-   end
-   left
-   right
-   center

Other values are ignored. The default value is "start".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textBaseline-prop"></span><span class="name">textBaseline</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the current baseline alignment settings. The possible values are:

-   top
-   hanging
-   middle
-   alphabetic
-   ideographic
-   bottom

Other values are ignored. The default value is "alphabetic".

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="arc-method"></span><span class="type">object</span> <span class="name">arc</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>radius</em>, <span class="type">real</span> <em>startAngle</em>, <span class="type">real</span> <em>endAngle</em>, <span class="type">bool</span> <em>anticlockwise</em>)</p></td>
</tr>
</tbody>
</table>

Adds an arc to the current subpath that lies on the circumference of the circle whose center is at the point (*x*, *y*) and whose radius is *radius*.

Both `startAngle` and `endAngle` are measured from the x-axis in radians.

\[Missing image qml-item-canvas-arc.png\]

![](https://developer.ubuntu.com/static/devportal_uploaded/f79f7795-3171-4896-b404-0a2cd1bb5391-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-startAngle.png)

The *anticlockwise* parameter is `true` for each arc in the figure above because they are all drawn in the anticlockwise direction.

**See also** [arcTo](#arcTo-method) and [W3C's 2D Context Standard for arc()](http://www.w3.org/TR/2dcontext/#dom-context-2d-arc).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="arcTo-method"></span><span class="type">object</span> <span class="name">arcTo</span>(<span class="type">real</span> <em>x1</em>, <span class="type">real</span> <em>y1</em>, <span class="type">real</span> <em>x2</em>, <span class="type">real</span> <em>y2</em>, <span class="type">real</span> <em>radius</em>)</p></td>
</tr>
</tbody>
</table>

Adds an arc with the given control points and radius to the current subpath, connected to the previous point by a straight line. To draw an arc, you begin with the same steps you followed to create a line:

-   Call the [beginPath()](#beginPath-method) method to set a new path.
-   Call the [moveTo](#moveTo-method)(`x`, `y`) method to set your starting position on the canvas at the point (`x`, `y`).
-   To draw an arc or circle, call the arcTo(*x1*, *y1*, *x2*, *y2*, *radius*) method. This adds an arc with starting point (*x1*, *y1*), ending point (*x2*, *y2*), and *radius* to the current subpath and connects it to the previous subpath by a straight line.

![](https://developer.ubuntu.com/static/devportal_uploaded/a01abd24-99a1-4213-a6d0-2058e44d4dca-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-arcTo.png)

**See also** [arc](#arc-method) and [W3C's 2D Context Standard for arcTo()](http://www.w3.org/TR/2dcontext/#dom-context-2d-arcto).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="beginPath-method"></span><span class="type">object</span> <span class="name">beginPath</span>()</p></td>
</tr>
</tbody>
</table>

Resets the current path to a new path.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bezierCurveTo-method"></span><span class="type">object</span> <span class="name">bezierCurveTo</span>(<span class="type">real</span> <em>cp1x</em>, <span class="type">real</span> <em>cp1y</em>, <span class="type">real</span> <em>cp2x</em>, <span class="type">real</span> <em>cp2y</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Adds a cubic bezier curve between the current position and the given endPoint using the control points specified by (`cp1x`, cp1y), and (`cp2x`, `cp2y`). After the curve is added, the current position is updated to be at the end point (`x`, `y`) of the curve. The following code produces the path shown below:

``` cpp
ctx.strokeStyle = Qt.rgba(0, 0, 0, 1);
ctx.lineWidth = 1;
ctx.beginPath();
ctx.moveTo(20, 0);//start point
ctx.bezierCurveTo(-10, 90, 210, 90, 180, 0);
ctx.stroke();
```

![](https://developer.ubuntu.com/static/devportal_uploaded/ea8adca7-d21e-4783-ba50-663e95514c60-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-bezierCurveTo.png)

**See also** [W3C 2d context standard for bezierCurveTo](http://www.w3.org/TR/2dcontext/#dom-context-2d-beziercurveto) and [The beautiful flower demo by using bezierCurveTo](http://www.openrise.com/lab/FlowerPower/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearRect-method"></span><span class="type">object</span> <span class="name">clearRect</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>)</p></td>
</tr>
</tbody>
</table>

Clears all pixels on the canvas in the given rectangle to transparent black.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clip-method"></span><span class="type">object</span> <span class="name">clip</span>()</p></td>
</tr>
</tbody>
</table>

Creates the clipping region from the current path. Any parts of the shape outside the clipping path are not displayed. To create a complex shape using the `clip()` method:

1.  Call the `context.beginPath()` method to set the clipping path.
2.  Define the clipping path by calling any combination of the `lineTo`, `arcTo`, `arc`, `moveTo`, etc and `closePath` methods.
3.  Call the `context.clip()` method.

The new shape displays. The following shows how a clipping path can modify how an image displays:

![](https://developer.ubuntu.com/static/devportal_uploaded/3e52baa6-04aa-48ea-94dd-86fc16e98e42-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-clip-complex.png)

**See also** [beginPath()](#beginPath-method), [closePath()](#closePath-method), [stroke()](#stroke-method), [fill()](#fill-method), and [W3C 2d context standard for clip](http://www.w3.org/TR/2dcontext/#dom-context-2d-clip).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="closePath-method"></span><span class="type">object</span> <span class="name">closePath</span>()</p></td>
</tr>
</tbody>
</table>

Closes the current subpath by drawing a line to the beginning of the subpath, automatically starting a new path. The current point of the new path is the previous subpath's first point.

**See also** [W3C 2d context standard for closePath](http://www.w3.org/TR/2dcontext/#dom-context-2d-closepath).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createConicalGradient-method"></span><span class="type">object</span> <span class="name">createConicalGradient</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>angle</em>)</p></td>
</tr>
</tbody>
</table>

Returns a [CanvasGradient](../QtQuick.CanvasGradient.md) object that represents a conical gradient that interpolate colors counter-clockwise around a center point (`x`, `y`) with start angle `angle` in units of radians.

**See also** [CanvasGradient::addColorStop()](../QtQuick.CanvasGradient.md#addColorStop-method), [createLinearGradient()](#createLinearGradient-method), [createRadialGradient()](#createRadialGradient-method), [createPattern()](#createPattern-method), [fillStyle](#fillStyle-prop), and [strokeStyle](#strokeStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createImageData-method-3"></span><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type">Url</span> <em>imageUrl</em>)</p></td>
</tr>
</tbody>
</table>

Creates a [CanvasImageData](../QtQuick.CanvasImageData.md) object with the given image loaded from *imageUrl*.

**Note:** The *imageUrl* must be already loaded before this function call, otherwise an empty [CanvasImageData](../QtQuick.CanvasImageData.md) obect will be returned.

**See also** [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method), [QtQuick::Canvas::unloadImage()](../QtQuick.Canvas.md#unloadImage-method), and [QtQuick::Canvas::isImageLoaded](../QtQuick.Canvas.md#isImageLoaded-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createImageData-method-2"></span><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <em>imageData</em>)</p></td>
</tr>
</tbody>
</table>

Creates a [CanvasImageData](../QtQuick.CanvasImageData.md) object with the same dimensions as the argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createImageData-method"></span><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type">real</span> <em>sw</em>, <span class="type">real</span> <em>sh</em>)</p></td>
</tr>
</tbody>
</table>

Creates a [CanvasImageData](../QtQuick.CanvasImageData.md) object with the given dimensions(*sw*, *sh*).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createLinearGradient-method"></span><span class="type">object</span> <span class="name">createLinearGradient</span>(<span class="type">real</span> <em>x0</em>, <span class="type">real</span> <em>y0</em>, <span class="type">real</span> <em>x1</em>, <span class="type">real</span> <em>y1</em>)</p></td>
</tr>
</tbody>
</table>

Returns a [CanvasGradient](../QtQuick.CanvasGradient.md) object that represents a linear gradient that transitions the color along a line between the start point (*x0*, *y0*) and the end point (*x1*, *y1*).

A gradient is a smooth transition between colors. There are two types of gradients: linear and radial. Gradients must have two or more color stops, representing color shifts positioned from 0 to 1 between to the gradient's starting and end points or circles.

**See also** [CanvasGradient::addColorStop()](../QtQuick.CanvasGradient.md#addColorStop-method), [createRadialGradient()](#createRadialGradient-method), [createConicalGradient()](#createConicalGradient-method), [createPattern()](#createPattern-method), [fillStyle](#fillStyle-prop), and [strokeStyle](#strokeStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createPattern-method-2"></span><span class="type">variant</span> <span class="name">createPattern</span>(<span class="type"><a href="QtQuick.Image.md">Image</a></span> <em>image</em>, <span class="type">string</span> <em>repetition</em>)</p></td>
</tr>
</tbody>
</table>

Returns a CanvasPattern object that uses the given image and repeats in the direction(s) given by the repetition argument.

The *image* parameter must be a valid Image item, a valid [CanvasImageData](../QtQuick.CanvasImageData.md) object or loaded image url, if there is no image data, throws an INVALID\_STATE\_ERR exception.

The allowed values for *repetition* are:

-   "repeat" - both directions
-   "repeat-x - horizontal only
-   "repeat-y" - vertical only
-   "no-repeat" - neither

If the repetition argument is empty or null, the value "repeat" is used.

**See also** [strokeStyle](#strokeStyle-prop) and [fillStyle](#fillStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createPattern-method"></span><span class="type">variant</span> <span class="name">createPattern</span>(<span class="type">color</span> <em>color</em>, <span class="type">enumeration</span> <em>patternMode</em>)</p></td>
</tr>
</tbody>
</table>

This is a overload function. Returns a CanvasPattern object that uses the given *color* and *patternMode*. The valid pattern modes are:

-   Qt.SolidPattern
-   Qt.Dense1Pattern
-   Qt.Dense2Pattern
-   Qt.Dense3Pattern
-   Qt.Dense4Pattern
-   Qt.Dense5Pattern
-   Qt.Dense6Pattern
-   Qt.Dense7Pattern
-   Qt.HorPattern
-   Qt.VerPattern
-   Qt.CrossPattern
-   Qt.BDiagPattern
-   Qt.FDiagPattern
-   Qt.DiagCrossPattern

**See also** Qt::BrushStyle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createRadialGradient-method"></span><span class="type">object</span> <span class="name">createRadialGradient</span>(<span class="type">real</span> <em>x0</em>, <span class="type">real</span> <em>y0</em>, <span class="type">real</span> <em>r0</em>, <span class="type">real</span> <em>x1</em>, <span class="type">real</span> <em>y1</em>, <span class="type">real</span> <em>r1</em>)</p></td>
</tr>
</tbody>
</table>

Returns a [CanvasGradient](../QtQuick.CanvasGradient.md) object that represents a radial gradient that paints along the cone given by the start circle with origin (x0, y0) and radius r0, and the end circle with origin (x1, y1) and radius r1.

**See also** [CanvasGradient::addColorStop()](../QtQuick.CanvasGradient.md#addColorStop-method), [createLinearGradient()](#createLinearGradient-method), [createConicalGradient()](#createConicalGradient-method), [createPattern()](#createPattern-method), [fillStyle](#fillStyle-prop), and [strokeStyle](#strokeStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drawImage-method-3"></span><span class="name">drawImage</span>(<span class="type">variant</span> <em>image</em>, <span class="type">real</span> <em>sx</em>, <span class="type">real</span> <em>sy</em>, <span class="type">real</span> <em>sw</em>, <span class="type">real</span> <em>sh</em>, <span class="type">real</span> <em>dx</em>, <span class="type">real</span> <em>dy</em>, <span class="type">real</span> <em>dw</em>, <span class="type">real</span> <em>dh</em>)</p></td>
</tr>
</tbody>
</table>

This is an overloaded function. Draws the given item as *image* from source point (*sx*, *sy*) and source width *sw*, source height *sh* onto the canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image or Canvas item, an image url or a [CanvasImageData](../QtQuick.CanvasImageData.md) object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method) method first. This image been drawing is subject to the current context clip path, even the given `image` is a [CanvasImageData](../QtQuick.CanvasImageData.md) object.

**See also** [CanvasImageData](../QtQuick.CanvasImageData.md), [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image), [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method), [Canvas::isImageLoaded](../QtQuick.Canvas.md#isImageLoaded-method), [Canvas::imageLoaded](../QtQuick.Canvas.md#imageLoaded-signal), and [W3C 2d context standard for drawImage](http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drawImage-method-2"></span><span class="name">drawImage</span>(<span class="type">variant</span> <em>image</em>, <span class="type">real</span> <em>dx</em>, <span class="type">real</span> <em>dy</em>, <span class="type">real</span> <em>dw</em>, <span class="type">real</span> <em>dh</em>)</p></td>
</tr>
</tbody>
</table>

This is an overloaded function. Draws the given item as *image* onto the canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image item, an image url or a [CanvasImageData](../QtQuick.CanvasImageData.md) object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method) method first. This image been drawing is subject to the current context clip path, even the given `image` is a [CanvasImageData](../QtQuick.CanvasImageData.md) object.

**See also** [CanvasImageData](../QtQuick.CanvasImageData.md), [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image), [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method), [Canvas::isImageLoaded](../QtQuick.Canvas.md#isImageLoaded-method), [Canvas::imageLoaded](../QtQuick.Canvas.md#imageLoaded-signal), and [W3C 2d context standard for drawImage](http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drawImage-method"></span><span class="name">drawImage</span>(<span class="type">variant</span> <em>image</em>, <span class="type">real</span> <em>dx</em>, <span class="type">real</span> <em>dy</em>)</p></td>
</tr>
</tbody>
</table>

Draws the given *image* on the canvas at position (*dx*, *dy*). Note: The *image* type can be an Image item, an image url or a [CanvasImageData](../QtQuick.CanvasImageData.md) object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's [Canvas::loadImage()](../QtQuick.Canvas.md#loadImage-method) method first. This image been drawing is subject to the current context clip path, even the given `image` is a [CanvasImageData](../QtQuick.CanvasImageData.md) object.

**See also** [CanvasImageData](../QtQuick.CanvasImageData.md), [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image), [Canvas::loadImage](../QtQuick.Canvas.md#loadImage-method), [Canvas::isImageLoaded](../QtQuick.Canvas.md#isImageLoaded-method), [Canvas::imageLoaded](../QtQuick.Canvas.md#imageLoaded-signal), and [W3C 2d context standard for drawImage](http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ellipse-method"></span><span class="type">object</span> <span class="name">ellipse</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>)</p></td>
</tr>
</tbody>
</table>

Creates an ellipse within the bounding rectangle defined by its top-left corner at (*x*, y), width *w* and height *h*, and adds it to the path as a closed subpath.

The ellipse is composed of a clockwise curve, starting and finishing at zero degrees (the 3 o'clock position).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fill-method"></span><span class="type">object</span> <span class="name">fill</span>()</p></td>
</tr>
</tbody>
</table>

Fills the subpaths with the current fill style.

**See also** [W3C 2d context standard for fill](http://www.w3.org/TR/2dcontext/#dom-context-2d-fill) and [fillStyle](#fillStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillRect-method"></span><span class="type">object</span> <span class="name">fillRect</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>)</p></td>
</tr>
</tbody>
</table>

Paint the specified rectangular area using the [fillStyle](#fillStyle-prop).

**See also** [fillStyle](#fillStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillText-method"></span><span class="type">object</span> <span class="name">fillText</span>(<span class="type"><a href="#text-method">text</a></span>, <span class="type">x</span>, <span class="type">y</span>)</p></td>
</tr>
</tbody>
</table>

Fills the given text at the given position.

**See also** [font](#font-prop), [textAlign](#textAlign-prop), [textBaseline](#textBaseline-prop), and [strokeText](#strokeText-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getImageData-method"></span><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">getImageData</span>(<span class="type">real</span> <em>sx</em>, <span class="type">real</span> <em>sy</em>, <span class="type">real</span> <em>sw</em>, <span class="type">real</span> <em>sh</em>)</p></td>
</tr>
</tbody>
</table>

Returns an [CanvasImageData](../QtQuick.CanvasImageData.md) object containing the image data for the given rectangle of the canvas.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPointInPath-method"></span><span class="type">object</span> <span class="name">isPointInPath</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the given point is in the current path.

**See also** [W3C 2d context standard for isPointInPath](http://www.w3.org/TR/2dcontext/#dom-context-2d-ispointinpath).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineTo-method"></span><span class="type">object</span> <span class="name">lineTo</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Draws a line from the current position to the point (x, y).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="measureText-method"></span><span class="type">object</span> <span class="name">measureText</span>(<span class="type"><a href="#text-method">text</a></span>)</p></td>
</tr>
</tbody>
</table>

Returns an object with a `width` property, whose value is equivalent to calling QFontMetrics::width() with the given *text* in the current font.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveTo-method"></span><span class="type">object</span> <span class="name">moveTo</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Creates a new subpath with the given point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="putImageData-method"></span><span class="type">object</span> <span class="name">putImageData</span>(<span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <em>imageData</em>, <span class="type">real</span> <em>dx</em>, <span class="type">real</span> <em>dy</em>, <span class="type">real</span> <em>dirtyX</em>, <span class="type">real</span> <em>dirtyY</em>, <span class="type">real</span> <em>dirtyWidth</em>, <span class="type">real</span> <em>dirtyHeight</em>)</p></td>
</tr>
</tbody>
</table>

Paints the data from the given ImageData object onto the canvas. If a dirty rectangle (*dirtyX*, *dirtyY*, *dirtyWidth*, *dirtyHeight*) is provided, only the pixels from that rectangle are painted.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="quadraticCurveTo-method"></span><span class="type">object</span> <span class="name">quadraticCurveTo</span>(<span class="type">real</span> <em>cpx</em>, <span class="type">real</span> <em>cpy</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Adds a quadratic bezier curve between the current point and the endpoint (`x`, `y`) with the control point specified by (`cpx`, `cpy`).

See [W3C 2d context standard for quadraticCurveTo](http://www.w3.org/TR/2dcontext/#dom-context-2d-quadraticcurveto)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rect-method"></span><span class="type">object</span> <span class="name">rect</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>)</p></td>
</tr>
</tbody>
</table>

Adds a rectangle at position (`x`, `y`), with the given width `w` and height `h`, as a closed subpath.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="type">object</span> <span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Resets the context state and properties to the default values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resetTransform-method"></span><span class="type">object</span> <span class="name">resetTransform</span>()</p></td>
</tr>
</tbody>
</table>

Reset the transformation matrix to the default value (equivalent to calling [setTransform](#setTransform-method)(`1`, `0`, `0`, `1`, `0`, `0`)).

**See also** [transform()](#transform-method), [setTransform()](#setTransform-method), and [reset()](#reset-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restore-method"></span><span class="type">object</span> <span class="name">restore</span>()</p></td>
</tr>
</tbody>
</table>

Pops the top state on the stack, restoring the context to that state.

**See also** [save()](#save-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotate-method"></span><span class="type">object</span> <span class="name">rotate</span>(<span class="type">real</span> <em>angle</em>)</p></td>
</tr>
</tbody>
</table>

Rotate the canvas around the current origin by *angle* in radians and clockwise direction.

``` cpp
ctx.rotate(Math.PI/2);
```

![](https://developer.ubuntu.com/static/devportal_uploaded/a3b540fe-ecd9-42d5-bfbe-ca86ec057de5-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-rotate.png)

The rotation transformation matrix is as follows:

![](https://developer.ubuntu.com/static/devportal_uploaded/414e0372-092d-454e-815d-b40fc3b74d5f-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-math-rotate.png)

where the *angle* of rotation is in radians.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="roundedRect-method"></span><span class="type">object</span> <span class="name">roundedRect</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>, <span class="type">real</span> <em>xRadius</em>, <span class="type">real</span> <em>yRadius</em>)</p></td>
</tr>
</tbody>
</table>

Adds the given rectangle rect with rounded corners to the path. The `xRadius` and `yRadius` arguments specify the radius of the ellipses defining the corners of the rounded rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">object</span> <span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

Pushes the current state onto the state stack.

Before changing any state attributes, you should save the current state for future reference. The context maintains a stack of drawing states. Each state consists of the current transformation matrix, clipping region, and values of the following attributes:

-   [strokeStyle](#strokeStyle-prop)
-   [fillStyle](#fillStyle-prop)
-   [fillRule](#fillRule-prop)
-   [globalAlpha](#globalAlpha-prop)
-   [lineWidth](#lineWidth-prop)
-   [lineCap](#lineCap-prop)
-   [lineJoin](#lineJoin-prop)
-   [miterLimit](#miterLimit-prop)
-   [shadowOffsetX](#shadowOffsetX-prop)
-   [shadowOffsetY](#shadowOffsetY-prop)
-   [shadowBlur](#shadowBlur-prop)
-   [shadowColor](#shadowColor-prop)
-   [globalCompositeOperation](#globalCompositeOperation-prop)
-   [font](#font-prop)
-   [textAlign](#textAlign-prop)
-   [textBaseline](#textBaseline-prop)

The current path is NOT part of the drawing state. The path can be reset by invoking the [beginPath()](#beginPath-method) method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-method"></span><span class="type">object</span> <span class="name">scale</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Increases or decreases the size of each unit in the canvas grid by multiplying the scale factors to the current tranform matrix. *x* is the scale factor in the horizontal direction and *y* is the scale factor in the vertical direction.

The following code doubles the horizontal size of an object drawn on the canvas and halves its vertical size:

``` cpp
ctx.scale(2.0, 0.5);
```

![](https://developer.ubuntu.com/static/devportal_uploaded/95378f68-e4c4-4eca-bbfa-5aff16ac9f08-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scale.png)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setTransform-method"></span><span class="type">object</span> <span class="name">setTransform</span>(<span class="type">real</span> <em>a</em>, <span class="type">real</span> <em>b</em>, <span class="type">real</span> <em>c</em>, <span class="type">real</span> <em>d</em>, <span class="type">real</span> <em>e</em>, <span class="type">real</span> <em>f</em>)</p></td>
</tr>
</tbody>
</table>

Changes the transformation matrix to the matrix given by the arguments as described below.

Modifying the transformation matrix directly enables you to perform scaling, rotating, and translating transformations in a single step.

Each point on the canvas is multiplied by the matrix before anything is drawn. The [HTML Canvas 2D Context specification](http://www.w3.org/TR/2dcontext/#transformations) defines the transformation matrix as:

![](https://developer.ubuntu.com/static/devportal_uploaded/221aebe2-25d2-4cf0-bd4b-c2abd4d1d69b-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-math.png)

where:

-   `a` is the scale factor in the horizontal (x) direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/4ef4f937-e2ed-4743-8cd1-dfffdb5a8a4c-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scalex.png)

-   `c` is the skew factor in the x direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/76c1f570-f303-43d7-a1b9-8594abd2d1ec-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-skewx.png)

-   `e` is the translation in the x direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/1527d9e1-b0ef-43c0-8a9c-1bd3a1a3d030-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-translate.png)

-   `b` is the skew factor in the y (vertical) direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/ae4ff57d-4a49-444b-a887-795bfc5fb284-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-skewy.png)

-   `d` is the scale factor in the y direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/fe1f9a22-186a-4a31-a130-ee31327fd7f7-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scaley.png)

-   `f` is the translation in the y direction

    ![](https://developer.ubuntu.com/static/devportal_uploaded/0d20688a-f035-4e34-8c98-c2305ba5765f-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-translatey.png)

-   the last row remains constant

The scale factors and skew factors are multiples; `e` and `f` are coordinate space units, just like the units in the translate(x,y) method.

**See also** [transform()](#transform-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shear-method"></span><span class="type">object</span> <span class="name">shear</span>(<span class="type">real</span> <em>sh</em>, <span class="type">real</span> <em>sv</em>)</p></td>
</tr>
</tbody>
</table>

Shears the transformation matrix by *sh* in the horizontal direction and *sv* in the vertical direction.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stroke-method"></span><span class="type">object</span> <span class="name">stroke</span>()</p></td>
</tr>
</tbody>
</table>

Strokes the subpaths with the current stroke style.

See [W3C 2d context standard for stroke](http://www.w3.org/TR/2dcontext/#dom-context-2d-stroke)

**See also** [strokeStyle](#strokeStyle-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strokeRect-method"></span><span class="type">object</span> <span class="name">strokeRect</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>w</em>, <span class="type">real</span> <em>h</em>)</p></td>
</tr>
</tbody>
</table>

Stroke the specified rectangle's path using the [strokeStyle](#strokeStyle-prop), [lineWidth](#lineWidth-prop), [lineJoin](#lineJoin-prop), and (if appropriate) [miterLimit](#miterLimit-prop) attributes.

**See also** [strokeStyle](#strokeStyle-prop), [lineWidth](#lineWidth-prop), [lineJoin](#lineJoin-prop), and [miterLimit](#miterLimit-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strokeText-method"></span><span class="type">object</span> <span class="name">strokeText</span>(<span class="type"><a href="#text-method">text</a></span>, <span class="type">x</span>, <span class="type">y</span>)</p></td>
</tr>
</tbody>
</table>

Strokes the given text at the given position.

**See also** [font](#font-prop), [textAlign](#textAlign-prop), [textBaseline](#textBaseline-prop), and [fillText](#fillText-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-method"></span><span class="type">object</span> <span class="name">text</span>(<span class="type">string</span> <em>text</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Adds the given `text` to the path as a set of closed subpaths created from the current context font supplied. The subpaths are positioned so that the left end of the text's baseline lies at the point specified by (`x`, `y`).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transform-method"></span><span class="type">object</span> <span class="name">transform</span>(<span class="type">real</span> <em>a</em>, <span class="type">real</span> <em>b</em>, <span class="type">real</span> <em>c</em>, <span class="type">real</span> <em>d</em>, <span class="type">real</span> <em>e</em>, <span class="type">real</span> <em>f</em>)</p></td>
</tr>
</tbody>
</table>

This method is very similar to [setTransform()](#setTransform-method), but instead of replacing the old transform matrix, this method applies the given tranform matrix to the current matrix by multiplying to it.

The [setTransform](#setTransform-method)(a, b, c, d, e, f) method actually resets the current transform to the identity matrix, and then invokes the transform(a, b, c, d, e, f) method with the same arguments.

**See also** [setTransform()](#setTransform-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="translate-method"></span><span class="type">object</span> <span class="name">translate</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Translates the origin of the canvas by a horizontal distance of *x*, and a vertical distance of *y*, in coordinate space units.

Translating the origin enables you to draw patterns of different objects on the canvas without having to measure the coordinates manually for each shape.

