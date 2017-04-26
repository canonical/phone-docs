---
Title: QtQuick.Gradient
---

# QtQuick.Gradient

<span class="subtitle"></span>
<!-- $$$Gradient-brief -->
<p>Defines a gradient fill More...</p>
<!-- @@@Gradient -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#stops-prop">stops</a></b></b> : list&lt;GradientStop&gt;</li>
</ul>
<!-- $$$Gradient-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A gradient is defined by two or more colors, which will be blended seamlessly.</p>
<p>The colors are specified as a set of <a href="QtQuick.GradientStop.md">GradientStop</a> child items, each of which defines a position on the gradient from 0.0 to 1.0 and a color. The position of each <a href="QtQuick.GradientStop.md">GradientStop</a> is defined by setting its <a href="QtQuick.GradientStop.md#position-prop">position</a> property; its color is defined using its <a href="QtQuick.GradientStop.md#color-prop">color</a> property.</p>
<p>A gradient without any gradient stops is rendered as a solid white fill.</p>
<p>Note that this item is not a visual representation of a gradient. To display a gradient, use a visual item (like <a href="QtQuick.Rectangle.md">Rectangle</a>) which supports the use of gradients.</p>
<h2 id="example-usage">Example Usage</h2>
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/90557112-73b4-4042-bdcc-6ed1dfb726f0-../QtQuick.Gradient/images/qml-gradient.png" alt="" /></p>
<p>The following example declares a <a href="QtQuick.Rectangle.md">Rectangle</a> item with a gradient starting with red, blending to yellow at one third of the height of the rectangle, and ending with green:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.33</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
}
}</pre>
<br style="clear: both" />
<h2 id="performance-and-limitations">Performance and Limitations</h2>
<p>Calculating gradients can be computationally expensive compared to the use of solid color fills or images. Consider using gradients for static items in a user interface.</p>
<p>In Qt 5.0, only vertical, linear gradients can be applied to items. If you need to apply different orientations of gradients, a combination of rotation and clipping will need to be applied to the relevant items. This can introduce additional performance requirements for your application.</p>
<p>The use of animations involving gradient stops may not give the desired result. An alternative way to animate gradients is to use pre-generated images or SVG drawings containing gradients.</p>
<p><b>See also </b><a href="QtQuick.GradientStop.md">GradientStop</a>.</p>
<!-- @@@Gradient -->
<h2>Property Documentation</h2>
<!-- $$$stops -->
<table class="qmlname"><tr valign="top" id="stops-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">stops</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span>&gt;</p></td></tr></table><p>This property holds the gradient stops describing the gradient.</p>
<p>By default, this property contains an empty list.</p>
<p>To set the gradient stops, define them as children of the Gradient.</p>
<!-- @@@stops -->
<br/>
