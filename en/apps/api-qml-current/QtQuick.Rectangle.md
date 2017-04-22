---
Title: QtQuick.Rectangle
---

# QtQuick.Rectangle

<span class="subtitle"></span>
<!-- $$$Rectangle-brief -->
<p>Paints a filled rectangle with an optional border More...</p>
<!-- @@@Rectangle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#antialiasing-prop">antialiasing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#border-prop">border</a></b></b><ul>
<li class="fn"><b><b><a href="#border.width-prop">border.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="#border.color-prop">border.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#gradient-prop">gradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#radius-prop">radius</a></b></b> : real</li>
</ul>
<!-- $$$Rectangle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Rectangle items are used to fill areas with solid color or gradients, and/or to provide a rectangular border.</p>
<h2 id="appearance">Appearance</h2>
<p>Each Rectangle item is painted using either a solid fill color, specified using the <a href="#color-prop">color</a> property, or a gradient, defined using a Gradient type and set using the <a href="#gradient-prop">gradient</a> property. If both a color and a gradient are specified, the gradient is used.</p>
<p>You can add an optional border to a rectangle with its own color and thickness by setting the <a href="#border.color-prop">border.color</a> and <a href="#border.width-prop">border.width</a> properties. Set the color to &quot;transparent&quot; to paint a border without a fill color.</p>
<p>You can also create rounded rectangles using the <a href="#radius-prop">radius</a> property. Since this introduces curved edges to the corners of a rectangle, it may be appropriate to set the <a href="QtQuick.Item.md#antialiasing-prop">Item::antialiasing</a> property to improve its appearance.</p>
<h2 id="example-usage">Example Usage</h2>
<p><img src="../../../../media/declarative-rect.png" alt="" /></p>
<p>The following example shows the effects of some of the common properties on a Rectangle item, which in this case is used to create a square:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
<span class="name">border</span>.width: <span class="number">5</span>
<span class="name">radius</span>: <span class="number">10</span>
}</pre>
<br style="clear: both" />
<h2 id="performance">Performance</h2>
<p>Using the <a href="QtQuick.Item.md#antialiasing-prop">Item::antialiasing</a> property improves the appearance of a rounded rectangle at the cost of rendering performance. You should consider unsetting this property for rectangles in motion, and only set it when they are stationary.</p>
<p><b>See also </b><a href="QtQuick.qtquick-imageelements-example.md/#image">Image</a>.</p>
<!-- @@@Rectangle -->
<h2>Property Documentation</h2>
<!-- $$$antialiasing -->
<table class="qmlname"><tr valign="top" id="antialiasing-prop"><td class="tblQmlPropNode"><p><span class="name">antialiasing</span> : <span class="type">bool</span></p></td></tr></table><p>Used to decide if the Rectangle should use antialiasing or not. <a href="QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#antialiasing">Antialiasing</a> provides information on the performance implications of this property.</p>
<p>The default is true for Rectangles with a radius, and false otherwise.</p>
<!-- @@@antialiasing -->
<br/>
<!-- $$$border -->
<table class="qmlname"><tr valign="top" id="border-prop"><th class="centerAlign"><p><b>border group</b></p></th></tr><tr valign="top" id="border.width-prop"><td class="tblQmlPropNode"><p><span class="name">border.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.color-prop"><td class="tblQmlPropNode"><p><span class="name">border.color</span> : <span class="type">color</span></p></td></tr></table><p>The width and color used to draw the border of the rectangle.</p>
<p>A width of 1 creates a thin line. For no line, use a width of 0 or a transparent color.</p>
<p><b>Note: </b>The width of the rectangle's border does not affect the geometry of the rectangle itself or its position relative to other items if anchors are used.</p><p>The border is rendered within the rectangle's boundaries.</p>
<!-- @@@border -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the color used to fill the rectangle.</p>
<p>The default color is white.</p>
<p><img src="../../../../media/rect-color.png" alt="" /></p>
<p>The following example shows rectangles with colors specified using hexadecimal and named color notation:</p>
<pre class="qml"><span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;#00B000&quot;</span>
<span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
}
<span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span>
<span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
}</pre>
<br style="clear: both" /><p>If both a gradient and a color are specified, the gradient will be used.</p>
<p><b>See also </b><a href="#gradient-prop">gradient</a>.</p>
<!-- @@@color -->
<br/>
<!-- $$$gradient -->
<table class="qmlname"><tr valign="top" id="gradient-prop"><td class="tblQmlPropNode"><p><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>The gradient to use to fill the rectangle.</p>
<p>This property allows for the construction of simple vertical gradients. Other gradients may by formed by adding rotation to the rectangle.</p>
<p><img src="../../../../media/declarative-rect_gradient.png" alt="" /></p>
<pre class="qml"><span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
}
<span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
}
<span class="type"><a href="index.html">Rectangle</a></span> {
<span class="name">y</span>: <span class="number">200</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
<span class="name">rotation</span>: <span class="number">90</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
}</pre>
<br style="clear: both" /><p>If both a gradient and a color are specified, the gradient will be used.</p>
<p><b>See also </b><a href="QtQuick.Gradient.md">Gradient</a> and <a href="#color-prop">color</a>.</p>
<!-- @@@gradient -->
<br/>
<!-- $$$radius -->
<table class="qmlname"><tr valign="top" id="radius-prop"><td class="tblQmlPropNode"><p><span class="name">radius</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the corner radius used to draw a rounded rectangle.</p>
<p>If radius is non-zero, the rectangle will be painted as a rounded rectangle, otherwise it will be painted as a normal rectangle. The same radius is used by all 4 corners; there is currently no way to specify different radii for different corners.</p>
<!-- @@@radius -->
<br/>
