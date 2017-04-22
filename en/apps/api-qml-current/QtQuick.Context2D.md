---
Title: QtQuick.Context2D
---

# QtQuick.Context2D

<span class="subtitle"></span>
<!-- $$$Context2D-brief -->
<p>Provides 2D context for shapes on a Canvas item More...</p>
<!-- @@@Context2D -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#canvas-prop">canvas</a></b></b> : QtQuick::Canvas</li>
<li class="fn"><b><b><a href="#fillRule-prop">fillRule</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#fillStyle-prop">fillStyle</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : string</li>
<li class="fn"><b><b><a href="#globalAlpha-prop">globalAlpha</a></b></b> : real</li>
<li class="fn"><b><b><a href="#globalCompositeOperation-prop">globalCompositeOperation</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lineCap-prop">lineCap</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lineJoin-prop">lineJoin</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lineWidth-prop">lineWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#miterLimit-prop">miterLimit</a></b></b> : real</li>
<li class="fn"><b><b><a href="#shadowBlur-prop">shadowBlur</a></b></b> : real</li>
<li class="fn"><b><b><a href="#shadowColor-prop">shadowColor</a></b></b> : string</li>
<li class="fn"><b><b><a href="#shadowOffsetX-prop">shadowOffsetX</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#shadowOffsetY-prop">shadowOffsetY</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#strokeStyle-prop">strokeStyle</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#textAlign-prop">textAlign</a></b></b> : string</li>
<li class="fn"><b><b><a href="#textBaseline-prop">textBaseline</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">object <b><b><a href="#arc-method">arc</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>radius</i>, real <i>startAngle</i>, real <i>endAngle</i>, bool <i>anticlockwise</i>)</li>
<li class="fn">object <b><b><a href="#arcTo-method">arcTo</a></b></b>(real <i>x1</i>, real <i>y1</i>, real <i>x2</i>, real <i>y2</i>, real <i>radius</i>)</li>
<li class="fn">object <b><b><a href="#beginPath-method">beginPath</a></b></b>()</li>
<li class="fn">object <b><b><a href="#bezierCurveTo-method">bezierCurveTo</a></b></b>(real <i>cp1x</i>, real <i>cp1y</i>, real <i>cp2x</i>, real <i>cp2y</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#clearRect-method">clearRect</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>)</li>
<li class="fn">object <b><b><a href="#clip-method">clip</a></b></b>()</li>
<li class="fn">object <b><b><a href="#closePath-method">closePath</a></b></b>()</li>
<li class="fn">object <b><b><a href="#createConicalGradient-method">createConicalGradient</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>angle</i>)</li>
<li class="fn">CanvasImageData <b><b><a href="#createImageData-method-3">createImageData</a></b></b>(Url <i>imageUrl</i>)</li>
<li class="fn">CanvasImageData <b><b><a href="#createImageData-method-2">createImageData</a></b></b>(CanvasImageData <i>imageData</i>)</li>
<li class="fn">CanvasImageData <b><b><a href="#createImageData-method">createImageData</a></b></b>(real <i>sw</i>, real <i>sh</i>)</li>
<li class="fn">object <b><b><a href="#createLinearGradient-method">createLinearGradient</a></b></b>(real <i>x0</i>, real <i>y0</i>, real <i>x1</i>, real <i>y1</i>)</li>
<li class="fn">variant <b><b><a href="#createPattern-method-2">createPattern</a></b></b>(Image <i>image</i>, string <i>repetition</i>)</li>
<li class="fn">variant <b><b><a href="#createPattern-method">createPattern</a></b></b>(color <i>color</i>, enumeration <i>patternMode</i>)</li>
<li class="fn">object <b><b><a href="#createRadialGradient-method">createRadialGradient</a></b></b>(real <i>x0</i>, real <i>y0</i>, real <i>r0</i>, real <i>x1</i>, real <i>y1</i>, real <i>r1</i>)</li>
<li class="fn"><b><b><a href="#drawImage-method-3">drawImage</a></b></b>(variant <i>image</i>, real <i>sx</i>, real <i>sy</i>, real <i>sw</i>, real <i>sh</i>, real <i>dx</i>, real <i>dy</i>, real <i>dw</i>, real <i>dh</i>)</li>
<li class="fn"><b><b><a href="#drawImage-method-2">drawImage</a></b></b>(variant <i>image</i>, real <i>dx</i>, real <i>dy</i>, real <i>dw</i>, real <i>dh</i>)</li>
<li class="fn"><b><b><a href="#drawImage-method">drawImage</a></b></b>(variant <i>image</i>, real <i>dx</i>, real <i>dy</i>)</li>
<li class="fn">object <b><b><a href="#ellipse-method">ellipse</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>)</li>
<li class="fn">object <b><b><a href="#fill-method">fill</a></b></b>()</li>
<li class="fn">object <b><b><a href="#fillRect-method">fillRect</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>)</li>
<li class="fn">object <b><b><a href="#fillText-method">fillText</a></b></b>(text, x, y)</li>
<li class="fn">CanvasImageData <b><b><a href="#getImageData-method">getImageData</a></b></b>(real <i>sx</i>, real <i>sy</i>, real <i>sw</i>, real <i>sh</i>)</li>
<li class="fn">object <b><b><a href="#isPointInPath-method">isPointInPath</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#lineTo-method">lineTo</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#measureText-method">measureText</a></b></b>(text)</li>
<li class="fn">object <b><b><a href="#moveTo-method">moveTo</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#putImageData-method">putImageData</a></b></b>(CanvasImageData <i>imageData</i>, real <i>dx</i>, real <i>dy</i>, real <i>dirtyX</i>, real <i>dirtyY</i>, real <i>dirtyWidth</i>, real <i>dirtyHeight</i>)</li>
<li class="fn">object <b><b><a href="#quadraticCurveTo-method">quadraticCurveTo</a></b></b>(real <i>cpx</i>, real <i>cpy</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#rect-method">rect</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>)</li>
<li class="fn">object <b><b><a href="#reset-method">reset</a></b></b>()</li>
<li class="fn">object <b><b><a href="#resetTransform-method">resetTransform</a></b></b>()</li>
<li class="fn">object <b><b><a href="#restore-method">restore</a></b></b>()</li>
<li class="fn">object <b><b><a href="#rotate-method">rotate</a></b></b>(real <i>angle</i>)</li>
<li class="fn">object <b><b><a href="#roundedRect-method">roundedRect</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>, real <i>xRadius</i>, real <i>yRadius</i>)</li>
<li class="fn">object <b><b><a href="#save-method">save</a></b></b>()</li>
<li class="fn">object <b><b><a href="#scale-method">scale</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#setTransform-method">setTransform</a></b></b>(real <i>a</i>, real <i>b</i>, real <i>c</i>, real <i>d</i>, real <i>e</i>, real <i>f</i>)</li>
<li class="fn">object <b><b><a href="#shear-method">shear</a></b></b>(real <i>sh</i>, real <i>sv</i>)</li>
<li class="fn">object <b><b><a href="#stroke-method">stroke</a></b></b>()</li>
<li class="fn">object <b><b><a href="#strokeRect-method">strokeRect</a></b></b>(real <i>x</i>, real <i>y</i>, real <i>w</i>, real <i>h</i>)</li>
<li class="fn">object <b><b><a href="#strokeText-method">strokeText</a></b></b>(text, x, y)</li>
<li class="fn">object <b><b><a href="#text-method">text</a></b></b>(string <i>text</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#transform-method">transform</a></b></b>(real <i>a</i>, real <i>b</i>, real <i>c</i>, real <i>d</i>, real <i>e</i>, real <i>f</i>)</li>
<li class="fn">object <b><b><a href="#translate-method">translate</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
</ul>
<!-- $$$Context2D-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">Context2D</a> object can be created by <code>Canvas</code> item's <code>getContext()</code> method:</p>
<pre class="cpp">Canvas {
id:canvas
onPaint:{
var ctx <span class="operator">=</span> canvas<span class="operator">.</span>getContext(<span class="char">'2d'</span>);
<span class="comment">//...</span>
}
}</pre>
<p>The <a href="index.html">Context2D</a> API implements the same <a href="http://www.w3.org/TR/2dcontext">W3C Canvas 2D Context API standard</a> with some enhanced features.</p>
<p>The <a href="index.html">Context2D</a> API provides the rendering <b>context</b> which defines the methods and attributes needed to draw on the <code>Canvas</code> item. The following assigns the canvas rendering context to a <code>context</code> variable:</p>
<pre class="cpp">var context <span class="operator">=</span> mycanvas<span class="operator">.</span>getContext(<span class="string">&quot;2d&quot;</span>)</pre>
<p>The <a href="index.html">Context2D</a> API renders the canvas as a coordinate system whose origin (0,0) is at the top left corner, as shown in the figure below. Coordinates increase along the <code>x</code> axis from left to right and along the <code>y</code> axis from top to bottom of the canvas.</p>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-context.gif" alt="" /></p><!-- @@@Context2D -->
<h2>Property Documentation</h2>
<!-- $$$canvas -->
<table class="qmlname"><tr valign="top" id="canvas-prop"><td class="tblQmlPropNode"><p><span class="name">canvas</span> : <span class="type"><a href="QtQuick.Canvas.md">QtQuick::Canvas</a></span></p></td></tr></table><p>Holds the canvas item that the context paints on.</p>
<p>This property is read only.</p>
<!-- @@@canvas -->
<br/>
<!-- $$$fillRule -->
<table class="qmlname"><tr valign="top" id="fillRule-prop"><td class="tblQmlPropNode"><p><span class="name">fillRule</span> : <span class="type">enumeration</span></p></td></tr></table><p>Holds the current fill rule used for filling shapes. The following fill rules supported:</p>
<ul>
<li>Qt.OddEvenFill</li>
<li>Qt.WindingFill</li>
</ul>
<p>Note: Unlike the QPainterPath, the Canvas API uses the winding fill as the default fill rule. The fillRule property is part of the context rendering state.</p>
<p><b>See also </b><a href="#fillStyle-prop">fillStyle</a>.</p>
<!-- @@@fillRule -->
<br/>
<!-- $$$fillStyle -->
<table class="qmlname"><tr valign="top" id="fillStyle-prop"><td class="tblQmlPropNode"><p><span class="name">fillStyle</span> : <span class="type">variant</span></p></td></tr></table><p>Holds the current style used for filling shapes. The style can be either a string containing a CSS color, a <a href="QtQuick.CanvasGradient.md">CanvasGradient</a> or CanvasPattern object. Invalid values are ignored. This property accepts several color syntaxes:</p>
<ul>
<li>'rgb(red, green, blue)' - for example: 'rgb(255, 100, 55)' or 'rgb(100%, 70%, 30%)'</li>
<li>'rgba(red, green, blue, alpha)' - for example: 'rgb(255, 100, 55, 1.0)' or 'rgb(100%, 70%, 30%, 0.5)'</li>
<li>'hsl(hue, saturation, lightness)'</li>
<li>'hsla(hue, saturation, lightness, alpha)'</li>
<li>'#RRGGBB' - for example: '#00FFCC'</li>
<li>Qt.rgba(red, green, blue, alpha) - for example: Qt.rgba(0.3, 0.7, 1, 1.0)</li>
</ul>
<p>If the <code>fillStyle</code> or <a href="#strokeStyle-prop">strokeStyle</a> is assigned many times in a loop, the last Qt.rgba() syntax should be chosen, as it has the best performance, because it's already a valid QColor value, does not need to be parsed everytime.</p>
<p>The default value is '#000000'.</p>
<p><b>See also </b><a href="#createLinearGradient-method">createLinearGradient()</a>, <a href="#createRadialGradient-method">createRadialGradient()</a>, <a href="#createPattern-method">createPattern()</a>, and <a href="#strokeStyle-prop">strokeStyle</a>.</p>
<!-- @@@fillStyle -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current font settings.</p>
<p>A subset of the <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-font">w3C 2d context standard for font</a> is supported:</p>
<ul>
<li>font-style (optional): normal | italic | oblique</li>
<li>font-variant (optional): normal | small-caps</li>
<li>font-weight (optional): normal | bold | 0 ..&#x2e; 99</li>
<li>font-size: Npx | Npt (where N is a positive number)</li>
<li>font-family: See <a href="http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family">http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family</a></li>
</ul>
<p><b>Note: </b>The font-size and font-family properties are mandatory and must be in the order they are shown in above. In addition, a font family with spaces in its name must be quoted.</p><p>The default font value is &quot;10px sans-serif&quot;.</p>
<!-- @@@font -->
<br/>
<!-- $$$globalAlpha -->
<table class="qmlname"><tr valign="top" id="globalAlpha-prop"><td class="tblQmlPropNode"><p><span class="name">globalAlpha</span> : <span class="type">real</span></p></td></tr></table><p>Holds the current alpha value applied to rendering operations. The value must be in the range from <code>0.0</code> (fully transparent) to <code>1.0</code> (fully opaque). The default value is <code>1.0</code>.</p>
<!-- @@@globalAlpha -->
<br/>
<!-- $$$globalCompositeOperation -->
<table class="qmlname"><tr valign="top" id="globalCompositeOperation-prop"><td class="tblQmlPropNode"><p><span class="name">globalCompositeOperation</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current the current composition operation, from the list below:</p>
<ul>
<li>source-atop - A atop B. Display the source image wherever both images are opaque. Display the destination image wherever the destination image is opaque but the source image is transparent. Display transparency elsewhere.</li>
<li>source-in - A in B. Display the source image wherever both the source image and destination image are opaque. Display transparency elsewhere.</li>
<li>source-out - A out B. Display the source image wherever the source image is opaque and the destination image is transparent. Display transparency elsewhere.</li>
<li>source-over - (default) A over B. Display the source image wherever the source image is opaque. Display the destination image elsewhere.</li>
<li>destination-atop - B atop A. Same as source-atop but using the destination image instead of the source image and vice versa.</li>
<li>destination-in - B in A. Same as source-in but using the destination image instead of the source image and vice versa.</li>
<li>destination-out - B out A. Same as source-out but using the destination image instead of the source image and vice versa.</li>
<li>destination-over - B over A. Same as source-over but using the destination image instead of the source image and vice versa.</li>
<li>lighter - A plus B. Display the sum of the source image and destination image, with color values approaching 255 (100%) as a limit.</li>
<li>copy - A (B is ignored). Display the source image instead of the destination image.</li>
<li>xor - A xor B. Exclusive OR of the source image and destination image.</li>
</ul>
<p>Additionally, this property also accepts the compositon modes listed in QPainter::CompositionMode. According to the W3C standard, these extension composition modes are provided as &quot;vendorName-operationName&quot; syntax, for example: QPainter::CompositionMode_Exclusion is provided as &quot;qt-exclusion&quot;.</p>
<!-- @@@globalCompositeOperation -->
<br/>
<!-- $$$lineCap -->
<table class="qmlname"><tr valign="top" id="lineCap-prop"><td class="tblQmlPropNode"><p><span class="name">lineCap</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current line cap style. The possible line cap styles are:</p>
<ul>
<li>butt - the end of each line has a flat edge perpendicular to the direction of the line, this is the default line cap value.</li>
<li>round - a semi-circle with the diameter equal to the width of the line must then be added on to the end of the line.</li>
<li>square - a rectangle with the length of the line width and the width of half the line width, placed flat against the edge perpendicular to the direction of the line.</li>
</ul>
<p>Other values are ignored.</p>
<!-- @@@lineCap -->
<br/>
<!-- $$$lineJoin -->
<table class="qmlname"><tr valign="top" id="lineJoin-prop"><td class="tblQmlPropNode"><p><span class="name">lineJoin</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current line join style. A join exists at any point in a subpath shared by two consecutive lines. When a subpath is closed, then a join also exists at its first point (equivalent to its last point) connecting the first and last lines in the subpath.</p>
<p>The possible line join styles are:</p>
<ul>
<li>bevel - this is all that is rendered at joins.</li>
<li>round - a filled arc connecting the two aforementioned corners of the join, abutting (and not overlapping) the aforementioned triangle, with the diameter equal to the line width and the origin at the point of the join, must be rendered at joins.</li>
<li>miter - a second filled triangle must (if it can given the miter length) be rendered at the join, this is the default line join style.</li>
</ul>
<p>Other values are ignored.</p>
<!-- @@@lineJoin -->
<br/>
<!-- $$$lineWidth -->
<table class="qmlname"><tr valign="top" id="lineWidth-prop"><td class="tblQmlPropNode"><p><span class="name">lineWidth</span> : <span class="type">real</span></p></td></tr></table><p>Holds the current line width. Values that are not finite values greater than zero are ignored.</p>
<!-- @@@lineWidth -->
<br/>
<!-- $$$miterLimit -->
<table class="qmlname"><tr valign="top" id="miterLimit-prop"><td class="tblQmlPropNode"><p><span class="name">miterLimit</span> : <span class="type">real</span></p></td></tr></table><p>Holds the current miter limit ratio. The default miter limit value is 10.0&#x2e;</p>
<!-- @@@miterLimit -->
<br/>
<!-- $$$shadowBlur -->
<table class="qmlname"><tr valign="top" id="shadowBlur-prop"><td class="tblQmlPropNode"><p><span class="name">shadowBlur</span> : <span class="type">real</span></p></td></tr></table><p>Holds the current level of blur applied to shadows</p>
<!-- @@@shadowBlur -->
<br/>
<!-- $$$shadowColor -->
<table class="qmlname"><tr valign="top" id="shadowColor-prop"><td class="tblQmlPropNode"><p><span class="name">shadowColor</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current shadow color.</p>
<!-- @@@shadowColor -->
<br/>
<!-- $$$shadowOffsetX -->
<table class="qmlname"><tr valign="top" id="shadowOffsetX-prop"><td class="tblQmlPropNode"><p><span class="name">shadowOffsetX</span> : <span class="type">qreal</span></p></td></tr></table><p>Holds the current shadow offset in the positive horizontal distance.</p>
<p><b>See also </b><a href="#shadowOffsetY-prop">shadowOffsetY</a>.</p>
<!-- @@@shadowOffsetX -->
<br/>
<!-- $$$shadowOffsetY -->
<table class="qmlname"><tr valign="top" id="shadowOffsetY-prop"><td class="tblQmlPropNode"><p><span class="name">shadowOffsetY</span> : <span class="type">qreal</span></p></td></tr></table><p>Holds the current shadow offset in the positive vertical distance.</p>
<p><b>See also </b><a href="#shadowOffsetX-prop">shadowOffsetX</a>.</p>
<!-- @@@shadowOffsetY -->
<br/>
<!-- $$$strokeStyle -->
<table class="qmlname"><tr valign="top" id="strokeStyle-prop"><td class="tblQmlPropNode"><p><span class="name">strokeStyle</span> : <span class="type">variant</span></p></td></tr></table><p>Holds the current color or style to use for the lines around shapes, The style can be either a string containing a CSS color, a <a href="QtQuick.CanvasGradient.md">CanvasGradient</a> or CanvasPattern object. Invalid values are ignored.</p>
<p>The default value is '#000000'.</p>
<p><b>See also </b><a href="#createLinearGradient-method">createLinearGradient()</a>, <a href="#createRadialGradient-method">createRadialGradient()</a>, <a href="#createPattern-method">createPattern()</a>, and <a href="#fillStyle-prop">fillStyle</a>.</p>
<!-- @@@strokeStyle -->
<br/>
<!-- $$$textAlign -->
<table class="qmlname"><tr valign="top" id="textAlign-prop"><td class="tblQmlPropNode"><p><span class="name">textAlign</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current text alignment settings. The possible values are:</p>
<ul>
<li>start</li>
<li>end</li>
<li>left</li>
<li>right</li>
<li>center</li>
</ul>
<p>Other values are ignored. The default value is &quot;start&quot;.</p>
<!-- @@@textAlign -->
<br/>
<!-- $$$textBaseline -->
<table class="qmlname"><tr valign="top" id="textBaseline-prop"><td class="tblQmlPropNode"><p><span class="name">textBaseline</span> : <span class="type">string</span></p></td></tr></table><p>Holds the current baseline alignment settings. The possible values are:</p>
<ul>
<li>top</li>
<li>hanging</li>
<li>middle</li>
<li>alphabetic</li>
<li>ideographic</li>
<li>bottom</li>
</ul>
<p>Other values are ignored. The default value is &quot;alphabetic&quot;.</p>
<!-- @@@textBaseline -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$arc -->
<table class="qmlname"><tr valign="top" id="arc-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">arc</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> radius</i>, <span class="type">real</span><i> startAngle</i>, <span class="type">real</span><i> endAngle</i>, <span class="type">bool</span><i> anticlockwise</i>)</p></td></tr></table><p>Adds an arc to the current subpath that lies on the circumference of the circle whose center is at the point (<i>x</i>, <i>y</i>) and whose radius is <i>radius</i>.</p>
<p>Both <code>startAngle</code> and <code>endAngle</code> are measured from the x-axis in radians.</p>
<p class="centerAlign"><font color="red">[Missing image qml-item-canvas-arc.png]</font></p><p class="centerAlign"><img src="../../../../media/qml-item-canvas-startAngle.png" alt="" /></p><p>The <i>anticlockwise</i> parameter is <code>true</code> for each arc in the figure above because they are all drawn in the anticlockwise direction.</p>
<p><b>See also </b><a href="#arcTo-method">arcTo</a> and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-arc">W3C's 2D Context Standard for arc()</a>.</p>
<!-- @@@arc -->
<br/>
<!-- $$$arcTo -->
<table class="qmlname"><tr valign="top" id="arcTo-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">arcTo</span>(<span class="type">real</span><i> x1</i>, <span class="type">real</span><i> y1</i>, <span class="type">real</span><i> x2</i>, <span class="type">real</span><i> y2</i>, <span class="type">real</span><i> radius</i>)</p></td></tr></table><p>Adds an arc with the given control points and radius to the current subpath, connected to the previous point by a straight line. To draw an arc, you begin with the same steps you followed to create a line:</p>
<ul>
<li>Call the <a href="#beginPath-method">beginPath()</a> method to set a new path.</li>
<li>Call the <a href="#moveTo-method">moveTo</a>(<code>x</code>, <code>y</code>) method to set your starting position on the canvas at the point (<code>x</code>, <code>y</code>).</li>
<li>To draw an arc or circle, call the arcTo(<i>x1</i>, <i>y1</i>, <i>x2</i>, <i>y2</i>, <i>radius</i>) method. This adds an arc with starting point (<i>x1</i>, <i>y1</i>), ending point (<i>x2</i>, <i>y2</i>), and <i>radius</i> to the current subpath and connects it to the previous subpath by a straight line.</li>
</ul>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-arcTo.png" alt="" /></p><p><b>See also </b><a href="#arc-method">arc</a> and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-arcto">W3C's 2D Context Standard for arcTo()</a>.</p>
<!-- @@@arcTo -->
<br/>
<!-- $$$beginPath -->
<table class="qmlname"><tr valign="top" id="beginPath-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">beginPath</span>()</p></td></tr></table><p>Resets the current path to a new path.</p>
<!-- @@@beginPath -->
<br/>
<!-- $$$bezierCurveTo -->
<table class="qmlname"><tr valign="top" id="bezierCurveTo-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">bezierCurveTo</span>(<span class="type">real</span><i> cp1x</i>, <span class="type">real</span><i> cp1y</i>, <span class="type">real</span><i> cp2x</i>, <span class="type">real</span><i> cp2y</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Adds a cubic bezier curve between the current position and the given endPoint using the control points specified by (<code>cp1x</code>, cp1y), and (<code>cp2x</code>, <code>cp2y</code>). After the curve is added, the current position is updated to be at the end point (<code>x</code>, <code>y</code>) of the curve. The following code produces the path shown below:</p>
<pre class="cpp">ctx<span class="operator">.</span>strokeStyle <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
ctx<span class="operator">.</span>lineWidth <span class="operator">=</span> <span class="number">1</span>;
ctx<span class="operator">.</span><a href="#beginPath-method">beginPath</a>();
ctx<span class="operator">.</span><a href="#moveTo-method">moveTo</a>(<span class="number">20</span><span class="operator">,</span> <span class="number">0</span>);<span class="comment">//start point</span>
ctx<span class="operator">.</span>bezierCurveTo(<span class="operator">-</span><span class="number">10</span><span class="operator">,</span> <span class="number">90</span><span class="operator">,</span> <span class="number">210</span><span class="operator">,</span> <span class="number">90</span><span class="operator">,</span> <span class="number">180</span><span class="operator">,</span> <span class="number">0</span>);
ctx<span class="operator">.</span><a href="#stroke-method">stroke</a>();</pre>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-bezierCurveTo.png" alt="" /></p><p><b>See also </b><a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-beziercurveto">W3C 2d context standard for bezierCurveTo</a> and <a href="http://jsbin.firejune.com/FlowerPower/4//">The beautiful flower demo by using bezierCurveTo</a>.</p>
<!-- @@@bezierCurveTo -->
<br/>
<!-- $$$clearRect -->
<table class="qmlname"><tr valign="top" id="clearRect-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">clearRect</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>)</p></td></tr></table><p>Clears all pixels on the canvas in the given rectangle to transparent black.</p>
<!-- @@@clearRect -->
<br/>
<!-- $$$clip -->
<table class="qmlname"><tr valign="top" id="clip-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">clip</span>()</p></td></tr></table><p>Creates the clipping region from the current path. Any parts of the shape outside the clipping path are not displayed. To create a complex shape using the <code>clip()</code> method:</p>
<ol class="1">
<li>Call the <code>context.beginPath()</code> method to set the clipping path.</li>
<li>Define the clipping path by calling any combination of the <code>lineTo</code>, <code>arcTo</code>, <code>arc</code>, <code>moveTo</code>, etc and <code>closePath</code> methods.</li>
<li>Call the <code>context.clip()</code> method.</li>
</ol>
<p>The new shape displays. The following shows how a clipping path can modify how an image displays:</p>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-clip-complex.png" alt="" /></p><p><b>See also </b><a href="#beginPath-method">beginPath()</a>, <a href="#closePath-method">closePath()</a>, <a href="#stroke-method">stroke()</a>, <a href="#fill-method">fill()</a>, and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-clip">W3C 2d context standard for clip</a>.</p>
<!-- @@@clip -->
<br/>
<!-- $$$closePath -->
<table class="qmlname"><tr valign="top" id="closePath-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">closePath</span>()</p></td></tr></table><p>Closes the current subpath by drawing a line to the beginning of the subpath, automatically starting a new path. The current point of the new path is the previous subpath's first point.</p>
<p><b>See also </b><a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-closepath">W3C 2d context standard for closePath</a>.</p>
<!-- @@@closePath -->
<br/>
<!-- $$$createConicalGradient -->
<table class="qmlname"><tr valign="top" id="createConicalGradient-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">createConicalGradient</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> angle</i>)</p></td></tr></table><p>Returns a <a href="QtQuick.CanvasGradient.md">CanvasGradient</a> object that represents a conical gradient that interpolate colors counter-clockwise around a center point (<code>x</code>, <code>y</code>) with start angle <code>angle</code> in units of radians.</p>
<p><b>See also </b><a href="QtQuick.CanvasGradient.md#addColorStop-method">CanvasGradient::addColorStop()</a>, <a href="#createLinearGradient-method">createLinearGradient()</a>, <a href="#createRadialGradient-method">createRadialGradient()</a>, <a href="#createPattern-method">createPattern()</a>, <a href="#fillStyle-prop">fillStyle</a>, and <a href="#strokeStyle-prop">strokeStyle</a>.</p>
<!-- @@@createConicalGradient -->
<br/>
<!-- $$$createImageData -->
<table class="qmlname"><tr valign="top" id="createImageData-method-3"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type">Url</span><i> imageUrl</i>)</p></td></tr></table><p>Creates a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object with the given image loaded from <i>imageUrl</i>.</p>
<p><b>Note: </b>The <i>imageUrl</i> must be already loaded before this function call, otherwise an empty <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> obect will be returned.</p><p><b>See also </b><a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a>, <a href="QtQuick.Canvas.md#unloadImage-method">QtQuick::Canvas::unloadImage()</a>, and <a href="QtQuick.Canvas.md#isImageLoaded-method">QtQuick::Canvas::isImageLoaded</a>.</p>
<!-- @@@createImageData -->
<br/>
<!-- $$$createImageData -->
<table class="qmlname"><tr valign="top" id="createImageData-method-2"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span><i> imageData</i>)</p></td></tr></table><p>Creates a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object with the same dimensions as the argument.</p>
<!-- @@@createImageData -->
<br/>
<!-- $$$createImageData -->
<table class="qmlname"><tr valign="top" id="createImageData-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">createImageData</span>(<span class="type">real</span><i> sw</i>, <span class="type">real</span><i> sh</i>)</p></td></tr></table><p>Creates a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object with the given dimensions(<i>sw</i>, <i>sh</i>).</p>
<!-- @@@createImageData -->
<br/>
<!-- $$$createLinearGradient -->
<table class="qmlname"><tr valign="top" id="createLinearGradient-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">createLinearGradient</span>(<span class="type">real</span><i> x0</i>, <span class="type">real</span><i> y0</i>, <span class="type">real</span><i> x1</i>, <span class="type">real</span><i> y1</i>)</p></td></tr></table><p>Returns a <a href="QtQuick.CanvasGradient.md">CanvasGradient</a> object that represents a linear gradient that transitions the color along a line between the start point (<i>x0</i>, <i>y0</i>) and the end point (<i>x1</i>, <i>y1</i>).</p>
<p>A gradient is a smooth transition between colors. There are two types of gradients: linear and radial. Gradients must have two or more color stops, representing color shifts positioned from 0 to 1 between to the gradient's starting and end points or circles.</p>
<p><b>See also </b><a href="QtQuick.CanvasGradient.md#addColorStop-method">CanvasGradient::addColorStop()</a>, <a href="#createRadialGradient-method">createRadialGradient()</a>, <a href="#createConicalGradient-method">createConicalGradient()</a>, <a href="#createPattern-method">createPattern()</a>, <a href="#fillStyle-prop">fillStyle</a>, and <a href="#strokeStyle-prop">strokeStyle</a>.</p>
<!-- @@@createLinearGradient -->
<br/>
<!-- $$$createPattern -->
<table class="qmlname"><tr valign="top" id="createPattern-method-2"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">createPattern</span>(<span class="type"><a href="QtQuick.Image.md">Image</a></span><i> image</i>, <span class="type">string</span><i> repetition</i>)</p></td></tr></table><p>Returns a CanvasPattern object that uses the given image and repeats in the direction(s) given by the repetition argument.</p>
<p>The <i>image</i> parameter must be a valid Image item, a valid <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object or loaded image url, if there is no image data, throws an INVALID_STATE_ERR exception.</p>
<p>The allowed values for <i>repetition</i> are:</p>
<ul>
<li>&quot;repeat&quot; - both directions</li>
<li>&quot;repeat-x - horizontal only</li>
<li>&quot;repeat-y&quot; - vertical only</li>
<li>&quot;no-repeat&quot; - neither</li>
</ul>
<p>If the repetition argument is empty or null, the value &quot;repeat&quot; is used.</p>
<p><b>See also </b><a href="#strokeStyle-prop">strokeStyle</a> and <a href="#fillStyle-prop">fillStyle</a>.</p>
<!-- @@@createPattern -->
<br/>
<!-- $$$createPattern -->
<table class="qmlname"><tr valign="top" id="createPattern-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">createPattern</span>(<span class="type">color</span><i> color</i>, <span class="type">enumeration</span><i> patternMode</i>)</p></td></tr></table><p>This is a overload function. Returns a CanvasPattern object that uses the given <i>color</i> and <i>patternMode</i>. The valid pattern modes are:</p>
<ul>
<li>Qt.SolidPattern</li>
<li>Qt.Dense1Pattern</li>
<li>Qt.Dense2Pattern</li>
<li>Qt.Dense3Pattern</li>
<li>Qt.Dense4Pattern</li>
<li>Qt.Dense5Pattern</li>
<li>Qt.Dense6Pattern</li>
<li>Qt.Dense7Pattern</li>
<li>Qt.HorPattern</li>
<li>Qt.VerPattern</li>
<li>Qt.CrossPattern</li>
<li>Qt.BDiagPattern</li>
<li>Qt.FDiagPattern</li>
<li>Qt.DiagCrossPattern</li>
</ul>
<p><b>See also </b>Qt::BrushStyle.</p>
<!-- @@@createPattern -->
<br/>
<!-- $$$createRadialGradient -->
<table class="qmlname"><tr valign="top" id="createRadialGradient-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">createRadialGradient</span>(<span class="type">real</span><i> x0</i>, <span class="type">real</span><i> y0</i>, <span class="type">real</span><i> r0</i>, <span class="type">real</span><i> x1</i>, <span class="type">real</span><i> y1</i>, <span class="type">real</span><i> r1</i>)</p></td></tr></table><p>Returns a <a href="QtQuick.CanvasGradient.md">CanvasGradient</a> object that represents a radial gradient that paints along the cone given by the start circle with origin (x0, y0) and radius r0, and the end circle with origin (x1, y1) and radius r1.</p>
<p><b>See also </b><a href="QtQuick.CanvasGradient.md#addColorStop-method">CanvasGradient::addColorStop()</a>, <a href="#createLinearGradient-method">createLinearGradient()</a>, <a href="#createConicalGradient-method">createConicalGradient()</a>, <a href="#createPattern-method">createPattern()</a>, <a href="#fillStyle-prop">fillStyle</a>, and <a href="#strokeStyle-prop">strokeStyle</a>.</p>
<!-- @@@createRadialGradient -->
<br/>
<!-- $$$drawImage -->
<table class="qmlname"><tr valign="top" id="drawImage-method-3"><td class="tblQmlFuncNode"><p><span class="name">drawImage</span>(<span class="type">variant</span><i> image</i>, <span class="type">real</span><i> sx</i>, <span class="type">real</span><i> sy</i>, <span class="type">real</span><i> sw</i>, <span class="type">real</span><i> sh</i>, <span class="type">real</span><i> dx</i>, <span class="type">real</span><i> dy</i>, <span class="type">real</span><i> dw</i>, <span class="type">real</span><i> dh</i>)</p></td></tr></table><p>This is an overloaded function. Draws the given item as <i>image</i> from source point (<i>sx</i>, <i>sy</i>) and source width <i>sw</i>, source height <i>sh</i> onto the canvas at point (<i>dx</i>, <i>dy</i>) and with width <i>dw</i>, height <i>dh</i>.</p>
<p>Note: The <i>image</i> type can be an Image or Canvas item, an image url or a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a> method first. This image been drawing is subject to the current context clip path, even the given <code>image</code> is a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object.</p>
<p><b>See also </b><a href="QtQuick.CanvasImageData.md">CanvasImageData</a>, <a href="QtQuick.qtquick-imageelements-example.md/#image">Image</a>, <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a>, <a href="QtQuick.Canvas.md#isImageLoaded-method">Canvas::isImageLoaded</a>, <a href="QtQuick.Canvas.md#imageLoaded-signal">Canvas::imageLoaded</a>, and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage">W3C 2d context standard for drawImage</a>.</p>
<!-- @@@drawImage -->
<br/>
<!-- $$$drawImage -->
<table class="qmlname"><tr valign="top" id="drawImage-method-2"><td class="tblQmlFuncNode"><p><span class="name">drawImage</span>(<span class="type">variant</span><i> image</i>, <span class="type">real</span><i> dx</i>, <span class="type">real</span><i> dy</i>, <span class="type">real</span><i> dw</i>, <span class="type">real</span><i> dh</i>)</p></td></tr></table><p>This is an overloaded function. Draws the given item as <i>image</i> onto the canvas at point (<i>dx</i>, <i>dy</i>) and with width <i>dw</i>, height <i>dh</i>.</p>
<p>Note: The <i>image</i> type can be an Image item, an image url or a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a> method first. This image been drawing is subject to the current context clip path, even the given <code>image</code> is a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object.</p>
<p><b>See also </b><a href="QtQuick.CanvasImageData.md">CanvasImageData</a>, <a href="QtQuick.qtquick-imageelements-example.md/#image">Image</a>, <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a>, <a href="QtQuick.Canvas.md#isImageLoaded-method">Canvas::isImageLoaded</a>, <a href="QtQuick.Canvas.md#imageLoaded-signal">Canvas::imageLoaded</a>, and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage">W3C 2d context standard for drawImage</a>.</p>
<!-- @@@drawImage -->
<br/>
<!-- $$$drawImage -->
<table class="qmlname"><tr valign="top" id="drawImage-method"><td class="tblQmlFuncNode"><p><span class="name">drawImage</span>(<span class="type">variant</span><i> image</i>, <span class="type">real</span><i> dx</i>, <span class="type">real</span><i> dy</i>)</p></td></tr></table><p>Draws the given <i>image</i> on the canvas at position (<i>dx</i>, <i>dy</i>). Note: The <i>image</i> type can be an Image item, an image url or a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object. When given as Image item, if the image isn't fully loaded, this method draws nothing. When given as url string, the image should be loaded by calling Canvas item's <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage()</a> method first. This image been drawing is subject to the current context clip path, even the given <code>image</code> is a <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object.</p>
<p><b>See also </b><a href="QtQuick.CanvasImageData.md">CanvasImageData</a>, <a href="QtQuick.qtquick-imageelements-example.md/#image">Image</a>, <a href="QtQuick.Canvas.md#loadImage-method">Canvas::loadImage</a>, <a href="QtQuick.Canvas.md#isImageLoaded-method">Canvas::isImageLoaded</a>, <a href="QtQuick.Canvas.md#imageLoaded-signal">Canvas::imageLoaded</a>, and <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage">W3C 2d context standard for drawImage</a>.</p>
<!-- @@@drawImage -->
<br/>
<!-- $$$ellipse -->
<table class="qmlname"><tr valign="top" id="ellipse-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">ellipse</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>)</p></td></tr></table><p>Creates an ellipse within the bounding rectangle defined by its top-left corner at (<i>x</i>, y), width <i>w</i> and height <i>h</i>, and adds it to the path as a closed subpath.</p>
<p>The ellipse is composed of a clockwise curve, starting and finishing at zero degrees (the 3 o'clock position).</p>
<!-- @@@ellipse -->
<br/>
<!-- $$$fill -->
<table class="qmlname"><tr valign="top" id="fill-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">fill</span>()</p></td></tr></table><p>Fills the subpaths with the current fill style.</p>
<p><b>See also </b><a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-fill">W3C 2d context standard for fill</a> and <a href="#fillStyle-prop">fillStyle</a>.</p>
<!-- @@@fill -->
<br/>
<!-- $$$fillRect -->
<table class="qmlname"><tr valign="top" id="fillRect-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">fillRect</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>)</p></td></tr></table><p>Paint the specified rectangular area using the <a href="#fillStyle-prop">fillStyle</a>.</p>
<p><b>See also </b><a href="#fillStyle-prop">fillStyle</a>.</p>
<!-- @@@fillRect -->
<br/>
<!-- $$$fillText -->
<table class="qmlname"><tr valign="top" id="fillText-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">fillText</span>(<span class="type"><a href="#text-method">text</a></span>, <span class="type">x</span>, <span class="type">y</span>)</p></td></tr></table><p>Fills the given text at the given position.</p>
<p><b>See also </b><a href="#font-prop">font</a>, <a href="#textAlign-prop">textAlign</a>, <a href="#textBaseline-prop">textBaseline</a>, and <a href="#strokeText-method">strokeText</a>.</p>
<!-- @@@fillText -->
<br/>
<!-- $$$getImageData -->
<table class="qmlname"><tr valign="top" id="getImageData-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span> <span class="name">getImageData</span>(<span class="type">real</span><i> sx</i>, <span class="type">real</span><i> sy</i>, <span class="type">real</span><i> sw</i>, <span class="type">real</span><i> sh</i>)</p></td></tr></table><p>Returns an <a href="QtQuick.CanvasImageData.md">CanvasImageData</a> object containing the image data for the given rectangle of the canvas.</p>
<!-- @@@getImageData -->
<br/>
<!-- $$$isPointInPath -->
<table class="qmlname"><tr valign="top" id="isPointInPath-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">isPointInPath</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Returns true if the given point is in the current path.</p>
<p><b>See also </b><a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-ispointinpath">W3C 2d context standard for isPointInPath</a>.</p>
<!-- @@@isPointInPath -->
<br/>
<!-- $$$lineTo -->
<table class="qmlname"><tr valign="top" id="lineTo-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">lineTo</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Draws a line from the current position to the point (x, y).</p>
<!-- @@@lineTo -->
<br/>
<!-- $$$measureText -->
<table class="qmlname"><tr valign="top" id="measureText-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">measureText</span>(<span class="type"><a href="#text-method">text</a></span>)</p></td></tr></table><p>Returns an object with a <code>width</code> property, whose value is equivalent to calling QFontMetrics::width() with the given <i>text</i> in the current font.</p>
<!-- @@@measureText -->
<br/>
<!-- $$$moveTo -->
<table class="qmlname"><tr valign="top" id="moveTo-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">moveTo</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Creates a new subpath with the given point.</p>
<!-- @@@moveTo -->
<br/>
<!-- $$$putImageData -->
<table class="qmlname"><tr valign="top" id="putImageData-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">putImageData</span>(<span class="type"><a href="QtQuick.CanvasImageData.md">CanvasImageData</a></span><i> imageData</i>, <span class="type">real</span><i> dx</i>, <span class="type">real</span><i> dy</i>, <span class="type">real</span><i> dirtyX</i>, <span class="type">real</span><i> dirtyY</i>, <span class="type">real</span><i> dirtyWidth</i>, <span class="type">real</span><i> dirtyHeight</i>)</p></td></tr></table><p>Paints the data from the given ImageData object onto the canvas. If a dirty rectangle (<i>dirtyX</i>, <i>dirtyY</i>, <i>dirtyWidth</i>, <i>dirtyHeight</i>) is provided, only the pixels from that rectangle are painted.</p>
<!-- @@@putImageData -->
<br/>
<!-- $$$quadraticCurveTo -->
<table class="qmlname"><tr valign="top" id="quadraticCurveTo-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">quadraticCurveTo</span>(<span class="type">real</span><i> cpx</i>, <span class="type">real</span><i> cpy</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Adds a quadratic bezier curve between the current point and the endpoint (<code>x</code>, <code>y</code>) with the control point specified by (<code>cpx</code>, <code>cpy</code>).</p>
<p>See <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-quadraticcurveto">W3C 2d context standard for quadraticCurveTo</a></p>
<!-- @@@quadraticCurveTo -->
<br/>
<!-- $$$rect -->
<table class="qmlname"><tr valign="top" id="rect-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">rect</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>)</p></td></tr></table><p>Adds a rectangle at position (<code>x</code>, <code>y</code>), with the given width <code>w</code> and height <code>h</code>, as a closed subpath.</p>
<!-- @@@rect -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">reset</span>()</p></td></tr></table><p>Resets the context state and properties to the default values.</p>
<!-- @@@reset -->
<br/>
<!-- $$$resetTransform -->
<table class="qmlname"><tr valign="top" id="resetTransform-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">resetTransform</span>()</p></td></tr></table><p>Reset the transformation matrix to the default value (equivalent to calling <a href="#setTransform-method">setTransform</a>(<code>1</code>, <code>0</code>, <code>0</code>, <code>1</code>, <code>0</code>, <code>0</code>)).</p>
<p><b>See also </b><a href="#transform-method">transform()</a>, <a href="#setTransform-method">setTransform()</a>, and <a href="#reset-method">reset()</a>.</p>
<!-- @@@resetTransform -->
<br/>
<!-- $$$restore -->
<table class="qmlname"><tr valign="top" id="restore-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">restore</span>()</p></td></tr></table><p>Pops the top state on the stack, restoring the context to that state.</p>
<p><b>See also </b><a href="#save-method">save()</a>.</p>
<!-- @@@restore -->
<br/>
<!-- $$$rotate -->
<table class="qmlname"><tr valign="top" id="rotate-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">rotate</span>(<span class="type">real</span><i> angle</i>)</p></td></tr></table><p>Rotate the canvas around the current origin by <i>angle</i> in radians and clockwise direction.</p>
<pre class="cpp">ctx<span class="operator">.</span>rotate(Math<span class="operator">.</span>PI<span class="operator">/</span><span class="number">2</span>);</pre>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-rotate.png" alt="" /></p><p>The rotation transformation matrix is as follows:</p>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-math-rotate.png" alt="" /></p><p>where the <i>angle</i> of rotation is in radians.</p>
<!-- @@@rotate -->
<br/>
<!-- $$$roundedRect -->
<table class="qmlname"><tr valign="top" id="roundedRect-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">roundedRect</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>, <span class="type">real</span><i> xRadius</i>, <span class="type">real</span><i> yRadius</i>)</p></td></tr></table><p>Adds the given rectangle rect with rounded corners to the path. The <code>xRadius</code> and <code>yRadius</code> arguments specify the radius of the ellipses defining the corners of the rounded rectangle.</p>
<!-- @@@roundedRect -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">save</span>()</p></td></tr></table><p>Pushes the current state onto the state stack.</p>
<p>Before changing any state attributes, you should save the current state for future reference. The context maintains a stack of drawing states. Each state consists of the current transformation matrix, clipping region, and values of the following attributes:</p>
<ul>
<li><a href="#strokeStyle-prop">strokeStyle</a></li>
<li><a href="#fillStyle-prop">fillStyle</a></li>
<li><a href="#fillRule-prop">fillRule</a></li>
<li><a href="#globalAlpha-prop">globalAlpha</a></li>
<li><a href="#lineWidth-prop">lineWidth</a></li>
<li><a href="#lineCap-prop">lineCap</a></li>
<li><a href="#lineJoin-prop">lineJoin</a></li>
<li><a href="#miterLimit-prop">miterLimit</a></li>
<li><a href="#shadowOffsetX-prop">shadowOffsetX</a></li>
<li><a href="#shadowOffsetY-prop">shadowOffsetY</a></li>
<li><a href="#shadowBlur-prop">shadowBlur</a></li>
<li><a href="#shadowColor-prop">shadowColor</a></li>
<li><a href="#globalCompositeOperation-prop">globalCompositeOperation</a></li>
<li><a href="#font-prop">font</a></li>
<li><a href="#textAlign-prop">textAlign</a></li>
<li><a href="#textBaseline-prop">textBaseline</a></li>
</ul>
<p>The current path is NOT part of the drawing state. The path can be reset by invoking the <a href="#beginPath-method">beginPath()</a> method.</p>
<!-- @@@save -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top" id="scale-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">scale</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Increases or decreases the size of each unit in the canvas grid by multiplying the scale factors to the current tranform matrix. <i>x</i> is the scale factor in the horizontal direction and <i>y</i> is the scale factor in the vertical direction.</p>
<p>The following code doubles the horizontal size of an object drawn on the canvas and halves its vertical size:</p>
<pre class="cpp">ctx<span class="operator">.</span>scale(<span class="number">2.0</span><span class="operator">,</span> <span class="number">0.5</span>);</pre>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-scale.png" alt="" /></p><!-- @@@scale -->
<br/>
<!-- $$$setTransform -->
<table class="qmlname"><tr valign="top" id="setTransform-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">setTransform</span>(<span class="type">real</span><i> a</i>, <span class="type">real</span><i> b</i>, <span class="type">real</span><i> c</i>, <span class="type">real</span><i> d</i>, <span class="type">real</span><i> e</i>, <span class="type">real</span><i> f</i>)</p></td></tr></table><p>Changes the transformation matrix to the matrix given by the arguments as described below.</p>
<p>Modifying the transformation matrix directly enables you to perform scaling, rotating, and translating transformations in a single step.</p>
<p>Each point on the canvas is multiplied by the matrix before anything is drawn. The <a href="http://www.w3.org/TR/2dcontext/#transformations">HTML Canvas 2D Context specification</a> defines the transformation matrix as:</p>
<p class="centerAlign"><img src="../../../../media/qml-item-canvas-math.png" alt="" /></p><p>where:</p>
<ul>
<li><code>a</code> is the scale factor in the horizontal (x) direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-scalex.png" alt="" /></p></li>
<li><code>c</code> is the skew factor in the x direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-skewx.png" alt="" /></p></li>
<li><code>e</code> is the translation in the x direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-translate.png" alt="" /></p></li>
<li><code>b</code> is the skew factor in the y (vertical) direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-skewy.png" alt="" /></p></li>
<li><code>d</code> is the scale factor in the y direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-scaley.png" alt="" /></p></li>
<li><code>f</code> is the translation in the y direction<p class="centerAlign"><img src="../../../../media/qml-item-canvas-translatey.png" alt="" /></p></li>
<li>the last row remains constant</li>
</ul>
<p>The scale factors and skew factors are multiples; <code>e</code> and <code>f</code> are coordinate space units, just like the units in the translate(x,y) method.</p>
<p><b>See also </b><a href="#transform-method">transform()</a>.</p>
<!-- @@@setTransform -->
<br/>
<!-- $$$shear -->
<table class="qmlname"><tr valign="top" id="shear-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">shear</span>(<span class="type">real</span><i> sh</i>, <span class="type">real</span><i> sv</i>)</p></td></tr></table><p>Shears the transformation matrix by <i>sh</i> in the horizontal direction and <i>sv</i> in the vertical direction.</p>
<!-- @@@shear -->
<br/>
<!-- $$$stroke -->
<table class="qmlname"><tr valign="top" id="stroke-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">stroke</span>()</p></td></tr></table><p>Strokes the subpaths with the current stroke style.</p>
<p>See <a href="http://www.w3.org/TR/2dcontext/#dom-context-2d-stroke">W3C 2d context standard for stroke</a></p>
<p><b>See also </b><a href="#strokeStyle-prop">strokeStyle</a>.</p>
<!-- @@@stroke -->
<br/>
<!-- $$$strokeRect -->
<table class="qmlname"><tr valign="top" id="strokeRect-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">strokeRect</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> w</i>, <span class="type">real</span><i> h</i>)</p></td></tr></table><p>Stroke the specified rectangle's path using the <a href="#strokeStyle-prop">strokeStyle</a>, <a href="#lineWidth-prop">lineWidth</a>, <a href="#lineJoin-prop">lineJoin</a>, and (if appropriate) <a href="#miterLimit-prop">miterLimit</a> attributes.</p>
<p><b>See also </b><a href="#strokeStyle-prop">strokeStyle</a>, <a href="#lineWidth-prop">lineWidth</a>, <a href="#lineJoin-prop">lineJoin</a>, and <a href="#miterLimit-prop">miterLimit</a>.</p>
<!-- @@@strokeRect -->
<br/>
<!-- $$$strokeText -->
<table class="qmlname"><tr valign="top" id="strokeText-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">strokeText</span>(<span class="type"><a href="#text-method">text</a></span>, <span class="type">x</span>, <span class="type">y</span>)</p></td></tr></table><p>Strokes the given text at the given position.</p>
<p><b>See also </b><a href="#font-prop">font</a>, <a href="#textAlign-prop">textAlign</a>, <a href="#textBaseline-prop">textBaseline</a>, and <a href="#fillText-method">fillText</a>.</p>
<!-- @@@strokeText -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">text</span>(<span class="type">string</span><i> text</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Adds the given <code>text</code> to the path as a set of closed subpaths created from the current context font supplied. The subpaths are positioned so that the left end of the text's baseline lies at the point specified by (<code>x</code>, <code>y</code>).</p>
<!-- @@@text -->
<br/>
<!-- $$$transform -->
<table class="qmlname"><tr valign="top" id="transform-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">transform</span>(<span class="type">real</span><i> a</i>, <span class="type">real</span><i> b</i>, <span class="type">real</span><i> c</i>, <span class="type">real</span><i> d</i>, <span class="type">real</span><i> e</i>, <span class="type">real</span><i> f</i>)</p></td></tr></table><p>This method is very similar to <a href="#setTransform-method">setTransform()</a>, but instead of replacing the old transform matrix, this method applies the given tranform matrix to the current matrix by multiplying to it.</p>
<p>The <a href="#setTransform-method">setTransform</a>(a, b, c, d, e, f) method actually resets the current transform to the identity matrix, and then invokes the transform(a, b, c, d, e, f) method with the same arguments.</p>
<p><b>See also </b><a href="#setTransform-method">setTransform()</a>.</p>
<!-- @@@transform -->
<br/>
<!-- $$$translate -->
<table class="qmlname"><tr valign="top" id="translate-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">translate</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Translates the origin of the canvas by a horizontal distance of <i>x</i>, and a vertical distance of <i>y</i>, in coordinate space units.</p>
<p>Translating the origin enables you to draw patterns of different objects on the canvas without having to measure the coordinates manually for each shape.</p>
<!-- @@@translate -->
<br/>
