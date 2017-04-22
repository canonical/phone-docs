---
Title: Ubuntu.Components.UbuntuShape
---

# Ubuntu.Components.UbuntuShape

<span class="subtitle"></span>
<!-- $$$UbuntuShape-brief -->
<p>Rounded rectangle containing a source image blended over a background color. More...</p>
<!-- @@@UbuntuShape -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#aspect-prop">aspect</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#backgroundColor-prop">backgroundColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#backgroundMode-prop">backgroundMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#radius-prop">radius</a></b></b> : string</li>
<li class="fn"><b><b><a href="#relativeRadius-prop">relativeRadius</a></b></b> : real</li>
<li class="fn"><b><b><a href="#secondaryBackgroundColor-prop">secondaryBackgroundColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#sourceFillMode-prop">sourceFillMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#sourceHorizontalAlignment-prop">sourceHorizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#sourceHorizontalWrapMode-prop">sourceHorizontalWrapMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#sourceOpacity-prop">sourceOpacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sourceScale-prop">sourceScale</a></b></b> : vector2d</li>
<li class="fn"><b><b><a href="#sourceTranslation-prop">sourceTranslation</a></b></b> : vector2d</li>
<li class="fn"><b><b><a href="#sourceVerticalAlignment-prop">sourceVerticalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#sourceVerticalWrapMode-prop">sourceVerticalWrapMode</a></b></b> : enumeration</li>
</ul>
<!-- $$$UbuntuShape-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">UbuntuShape</a> is a rounded rectangle (based on a <a href="https://en.wikipedia.org/wiki/Squircle">squircle</a>) containing an optional source image blended over a background color (solid or linear gradient). Different properties allow to change the look of the shape.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.2
<span class="type"><a href="index.html">UbuntuShape</a></span> {
<span class="name">backgroundColor</span>: <span class="string">&quot;green&quot;</span>
}</pre>
<pre class="qml">import Ubuntu.Components 1.2
<span class="type"><a href="index.html">UbuntuShape</a></span> {
<span class="name">source</span>: <span class="name">Image</span> {
<span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span>
}
}</pre>
<!-- @@@UbuntuShape -->
<h2>Property Documentation</h2>
<!-- $$$aspect -->
<table class="qmlname"><tr valign="top" id="aspect-prop"><td class="tblQmlPropNode"><p><span class="name">aspect</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the graphical style of the <a href="index.html">UbuntuShape</a>. The default value is <code>UbuntuShape.Inset</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated borderSource property. Use the UbuntuShapeOverlay item in order to provide the inset &quot;pressed&quot; aspect previously supported by that property.</p><ul>
<li><b>UbuntuShape.Flat</b> - no effects applied</li>
<li><b>UbuntuShape.Inset</b> - inner shadow slightly moved downwards and bevelled bottom</li>
</ul>
<!-- @@@aspect -->
<br/>
<!-- $$$backgroundColor -->
<table class="qmlname"><tr valign="top" id="backgroundColor-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundColor</span> : <span class="type">color</span></p></td></tr></table><p>This property defines the background color. The default value is transparent black.</p>
<p><b>Note: </b>Setting this disables support for the deprecated color and gradientColor properties.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@backgroundColor -->
<br/>
<!-- $$$backgroundMode -->
<table class="qmlname"><tr valign="top" id="backgroundMode-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the background rendering mode. The default value is <code>UbuntuShape.SolidColor</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated color and gradientColor properties.</p><ul>
<li><b>UbuntuShape.SolidColor</b> - the color is <a href="#backgroundColor-prop">backgroundColor</a></li>
<li><b>UbuntuShape.VerticalGradient</b> - the color is a vertical gradient from <a href="#backgroundColor-prop">backgroundColor</a> to <a href="#secondaryBackgroundColor-prop">secondaryBackgroundColor</a>.</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@backgroundMode -->
<br/>
<!-- $$$radius -->
<table class="qmlname"><tr valign="top" id="radius-prop"><td class="tblQmlPropNode"><p><span class="name">radius</span> : <span class="type">string</span></p></td></tr></table><p>This property defines the corner radius. Three fixed values are supported: <code>&quot;small&quot;</code>, <code>&quot;medium&quot;</code> and <code>&quot;large&quot;</code>. The default value is <code>&quot;small&quot;</code>.</p>
<p><b>Note: </b>Setting a non-zero <a href="#relativeRadius-prop">relativeRadius</a> value disables this property temporarily.</p><!-- @@@radius -->
<br/>
<!-- $$$relativeRadius -->
<table class="qmlname"><tr valign="top" id="relativeRadius-prop"><td class="tblQmlPropNode"><p><span class="name">relativeRadius</span> : <span class="type">real</span></p></td></tr></table><p>This property defines a radius relative to the size of the <a href="index.html">UbuntuShape</a>. It is specified as a number between 0.0 (0%) and 0.75 (75%) corresponding to the proportion of the radius with regards to the smallest side (divided by 2 since a side has 2 angles). The default value is 0.0&#x2e;</p>
<p><b>Note: </b>Setting a non-zero value takes over the <a href="#radius-prop">radius</a> property.</p><p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@relativeRadius -->
<br/>
<!-- $$$secondaryBackgroundColor -->
<table class="qmlname"><tr valign="top" id="secondaryBackgroundColor-prop"><td class="tblQmlPropNode"><p><span class="name">secondaryBackgroundColor</span> : <span class="type">color</span></p></td></tr></table><p>This property defines the secondary background color. It is used when <a href="#backgroundMode-prop">backgroundMode</a> is set to <code>UbuntuShape.VerticalGradient</code>. The default value is transparent black.</p>
<p><b>Note: </b>Setting this disables support for the deprecated color and gradientColor properties.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@secondaryBackgroundColor -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-variant.html">variant</a></span></p></td></tr></table><p>This property sets the source provider of a texture rendered in the <a href="index.html">UbuntuShape</a>. Supported types are <code>Image</code>, <code>AnimatedImage</code> (to render a GIF image for instance) and <code>ShaderEffectSource</code> (to embed a UI previously rendered with QML). It is blended over the background color. The default value is <code>null</code>.</p>
<p>It can be set either with an inlined <code>Image</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">UbuntuShape</a></span> {
<span class="name">source</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span> }
}
}</pre>
<p>or with an <code>Image</code> <code>id</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">img</span>
<span class="name">visible</span>: <span class="number">false</span>
<span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span>
}
<span class="type"><a href="index.html">UbuntuShape</a></span> {
<span class="name">source</span>: <span class="name">img</span>
}
}</pre>
<p>Note that in this case, the <code>Image</code> is stored in the scene tree as any other items. So setting it as not visible might be needed.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Texture_filtering">sampling filter</a> is set through the given Item's <code>smooth</code> property. Set it to <code>false</code> for nearest-neighbor filtering or to <code>true</code> for bilinear filtering.</p>
<p>The fill modes and alignments set on the <code>Image</code> and <code>AnimatedImage</code> are not monitored, use the appropriate <a href="index.html">UbuntuShape</a> properties instead (<a href="#sourceFillMode-prop">sourceFillMode</a>, <a href="#sourceHorizontalAlignment-prop">sourceHorizontalAlignment</a> and <a href="#sourceVerticalAlignment-prop">sourceVerticalAlignment</a>).</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceFillMode -->
<table class="qmlname"><tr valign="top" id="sourceFillMode-prop"><td class="tblQmlPropNode"><p><span class="name">sourceFillMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This properties defines how the <a href="#source-prop">source</a> texture fills the <a href="index.html">UbuntuShape</a>. The modes are the same as the ones used by <code>Image</code>, minus the tiling which is exposed through wrapping properties (<a href="#sourceHorizontalWrapMode-prop">sourceHorizontalWrapMode</a> and <a href="#sourceVerticalWrapMode-prop">sourceVerticalWrapMode</a>). The default value is <code>UbuntuShape.Stretch</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><ul>
<li><b>UbuntuShape.Stretch</b> - the source is scaled non-uniformly to fit</li>
<li><b>UbuntuShape.PreserveAspectFit</b> - the source is scaled uniformly to fit without cropping</li>
<li><b>UbuntuShape.PreserveAspectCrop</b> - the source is scaled uniformly to fit with cropping</li>
<li><b>UbuntuShape.Pad</b> - the source is not scaled</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceFillMode -->
<br/>
<!-- $$$sourceHorizontalAlignment -->
<table class="qmlname"><tr valign="top" id="sourceHorizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">sourceHorizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines how the <a href="#source-prop">source</a> texture is horizontally aligned inside the <a href="index.html">UbuntuShape</a> area. The default value is <code>UbuntuShape.AlignLeft</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><ul>
<li><b>UbuntuShape.AlignLeft</b> - the source is aligned to the left</li>
<li><b>UbuntuShape.AlignHCenter</b> - the source is aligned to the horizontal center</li>
<li><b>UbuntuShape.AlignRight</b> - the source is aligned to the right</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceHorizontalAlignment -->
<br/>
<!-- $$$sourceHorizontalWrapMode -->
<table class="qmlname"><tr valign="top" id="sourceHorizontalWrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">sourceHorizontalWrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>When the <a href="#sourceFillMode-prop">sourceFillMode</a> is set to <code>UbuntuShape.Pad</code> or <code>UbuntuShape.PreserveAspectFit</code> or when the <a href="#sourceScale-prop">sourceScale</a> and/or <a href="#sourceTranslation-prop">sourceTranslation</a> properties are changed, the <a href="#source-prop">source</a> texture might not cover the entire <a href="index.html">UbuntuShape</a> area. This property defines how the source texture wraps outside of its content area. The default value is <code>UbuntuShape.Transparent</code>.</p>
<p>Ensure <code>UbuntuShape.Repeat</code> is used only when necessary (in case of an <code>Image</code> or <code>AnimatedImage</code> source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a> renderer to batch the <a href="index.html">UbuntuShape</a> with others.</p>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support <code>UbuntuShape.Repeat</code> with non-power-of-two sized source textures.</p><p><b>Note: </b>Setting this disables support for the deprecated image property.</p><ul>
<li><b>UbuntuShape.Transparent</b> - the source is clamped to transparent</li>
<li><b>UbuntuShape.Repeat</b> - the source is repeated indefinitely</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceHorizontalWrapMode -->
<br/>
<!-- $$$sourceOpacity -->
<table class="qmlname"><tr valign="top" id="sourceOpacity-prop"><td class="tblQmlPropNode"><p><span class="name">sourceOpacity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the opacity of the <a href="#source-prop">source</a> texture. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0&#x2e;</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceOpacity -->
<br/>
<!-- $$$sourceScale -->
<table class="qmlname"><tr valign="top" id="sourceScale-prop"><td class="tblQmlPropNode"><p><span class="name">sourceScale</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-vector2d.html">vector2d</a></span></p></td></tr></table><p>This property defines the two-component vector used to scale the <a href="#source-prop">source</a> texture. The texture is scaled at the alignment point defined by <a href="#sourceHorizontalAlignment-prop">sourceHorizontalAlignment</a> and <a href="#sourceVerticalAlignment-prop">sourceVerticalAlignment</a>. The default value is <code>Qt.vector2d(1.0,1.0)</code>.</p>
<p>That can be used to change the size of the <a href="#source-prop">source</a> texture, to flip it horizontally and/or vertically, to achieve pulsing animations, etc.</p>
<p>Here is a code sample showing how to apply an horizontal flip:</p>
<pre class="qml"><span class="type"><a href="index.html">UbuntuShape</a></span> {
<span class="name">source</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span> }
<span class="name">sourceScale</span>: <span class="name">Qt</span>.<span class="name">vector2d</span>(-<span class="number">1.0</span>, <span class="number">1.0</span>)
}</pre>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceScale -->
<br/>
<!-- $$$sourceTranslation -->
<table class="qmlname"><tr valign="top" id="sourceTranslation-prop"><td class="tblQmlPropNode"><p><span class="name">sourceTranslation</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-vector2d.html">vector2d</a></span></p></td></tr></table><p>This property defines the two-component vector in normalized item coordinates used to translate the <a href="#source-prop">source</a> texture. The default value is <code>Qt.vector2d(0.0,0.0)</code>.</p>
<p>That can be used to put the <a href="#source-prop">source</a> texture at a precise position, to create infinite scrolling animations (using the <code>UbuntuShape.Repeat</code> wrap mode), etc.</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceTranslation -->
<br/>
<!-- $$$sourceVerticalAlignment -->
<table class="qmlname"><tr valign="top" id="sourceVerticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">sourceVerticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines how the <a href="#source-prop">source</a> texture is vertically aligned inside the <a href="index.html">UbuntuShape</a> area. The default value is <code>UbuntuShape.AlignTop</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated image property.</p><ul>
<li><b>UbuntuShape.AlignTop</b> - the source is aligned to the top</li>
<li><b>UbuntuShape.AlignVCenter</b> - the source is aligned to the vertical center</li>
<li><b>UbuntuShape.AlignBottom</b> - the source is aligned to the bottom</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceVerticalAlignment -->
<br/>
<!-- $$$sourceVerticalWrapMode -->
<table class="qmlname"><tr valign="top" id="sourceVerticalWrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">sourceVerticalWrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>When the <a href="#sourceFillMode-prop">sourceFillMode</a> is set to <code>UbuntuShape.Pad</code> or <code>UbuntuShape.PreserveAspectFit</code> or when the <a href="#sourceScale-prop">sourceScale</a> and/or <a href="#sourceTranslation-prop">sourceTranslation</a> properties are changed, the <a href="#source-prop">source</a> texture might not cover the entire <a href="index.html">UbuntuShape</a> area. This property defines how the source texture wraps outside of its content area. The default value is <code>UbuntuShape.Transparent</code>.</p>
<p>Ensure <code>UbuntuShape.Repeat</code> is used only when necessary (in case of an <code>Image</code> or <code>AnimatedImage</code> source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a> renderer to batch the <a href="index.html">UbuntuShape</a> with others.</p>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support <code>UbuntuShape.Repeat</code> with non-power-of-two sized source textures.</p><p><b>Note: </b>Setting this disables support for the deprecated image property.</p><ul>
<li><b>UbuntuShape.Transparent</b> - the source is clamped to transparent</li>
<li><b>UbuntuShape.Repeat</b> - the source is repeated indefinitely</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.2.</p>
<!-- @@@sourceVerticalWrapMode -->
<br/>
