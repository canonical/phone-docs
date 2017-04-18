---
Title: QtQuick.ShaderEffectSource
---

# QtQuick.ShaderEffectSource

<span class="subtitle"></span>
<!-- $$$ShaderEffectSource-brief -->
<p>Renders a Qt Quick item into a texture and displays it More...</p>
<!-- @@@ShaderEffectSource -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#format-prop">format</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#hideSource-prop">hideSource</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#live-prop">live</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#mipmap-prop">mipmap</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#recursive-prop">recursive</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#sourceItem-prop">sourceItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#sourceRect-prop">sourceRect</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#textureSize-prop">textureSize</a></b></b> : size</li>
<li class="fn"><b><b><a href="#wrapMode-prop">wrapMode</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#scheduleUpdate-method">scheduleUpdate</a></b></b>()</li>
</ul>
<!-- $$$ShaderEffectSource-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">ShaderEffectSource</a> type renders <a href="#sourceItem-prop">sourceItem</a> into a texture and displays it in the scene. <a href="#sourceItem-prop">sourceItem</a> is drawn into the texture as though it was a fully opaque root item. Thus <a href="#sourceItem-prop">sourceItem</a> itself can be invisible, but still appear in the texture.</p>
<p><a href="index.html">ShaderEffectSource</a> can be used as:</p>
<ul>
<li>a texture source in a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>. This allows you to apply custom shader effects to any <a href="QtQuick.qtquick-index.md">Qt Quick</a> item.</li>
<li>a cache for a complex item. The complex item can be rendered once into the texture, which can then be animated freely without the need to render the complex item again every frame.</li>
<li>an opacity layer. <a href="index.html">ShaderEffectSource</a> allows you to apply an opacity to items as a group rather than each item individually.</li>
</ul>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="../../../../media/declarative-shadereffectsource.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span> }
}
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">foo</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">5</span>; <span class="name">y</span>: <span class="number">5</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">20</span>; <span class="name">y</span>: <span class="number">20</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;orange&quot;</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">35</span>; <span class="name">y</span>: <span class="number">35</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
}
<span class="type"><a href="index.html">ShaderEffectSource</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">sourceItem</span>: <span class="name">foo</span>
}
}
}</pre>
</td></tr>
</table>
<p>The <a href="index.html">ShaderEffectSource</a> type does not redirect any mouse or keyboard input to <a href="#sourceItem-prop">sourceItem</a>. If you hide the <a href="#sourceItem-prop">sourceItem</a> by setting <a href="QtQuick.Item.md#visible-prop">visible</a> to false or <a href="QtQuick.Item.md#opacity-prop">opacity</a> to zero, it will no longer react to input. In cases where the <a href="index.html">ShaderEffectSource</a> is meant to replace the <a href="#sourceItem-prop">sourceItem</a>, you typically want to hide the <a href="#sourceItem-prop">sourceItem</a> while still handling input. For this, you can use the <a href="#hideSource-prop">hideSource</a> property.</p>
<p><b>Note: </b>If <a href="#sourceItem-prop">sourceItem</a> is a <a href="QtQuick.Rectangle.md">Rectangle</a> with border, by default half the border width falls outside the texture. To get the whole border, you can extend the <a href="#sourceRect-prop">sourceRect</a>.</p><p><b>Note: </b>The <a href="index.html">ShaderEffectSource</a> relies on FBO multisampling support to antialias edges. If the underlying hardware does not support this, which is the case for most embedded graphics chips, edges rendered inside a <a href="index.html">ShaderEffectSource</a> will not be antialiased. One way to remedy this is to double the size of the effect source and render it with <code>smooth: true</code> (this is the default value of smooth). This will be equivalent to 4x multisampling, at the cost of lower performance and higher memory use.</p><p><b>Warning:</b> In most cases, using a <a href="index.html">ShaderEffectSource</a> will decrease performance, and in all cases, it will increase video memory usage. Rendering through a <a href="index.html">ShaderEffectSource</a> might also lead to lower quality since some OpenGL implementations support multisampled backbuffer, but not multisampled framebuffer objects.</p>
<!-- @@@ShaderEffectSource -->
<h2>Property Documentation</h2>
<!-- $$$format -->
<table class="qmlname"><tr valign="top" id="format-prop"><td class="tblQmlPropNode"><p><span class="name">format</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the item is used as a source texture of a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>. Depending on the OpenGL implementation, this property might allow you to save some texture memory.</p>
<ul>
<li><a href="index.html">ShaderEffectSource</a>.Alpha - GL_ALPHA</li>
<li><a href="index.html">ShaderEffectSource</a>.RGB - GL_RGB</li>
<li><a href="index.html">ShaderEffectSource</a>.RGBA - GL_RGBA</li>
</ul>
<p><b>Note: </b>Some OpenGL implementations do not support the GL_ALPHA format.</p><!-- @@@format -->
<br/>
<!-- $$$hideSource -->
<table class="qmlname"><tr valign="top" id="hideSource-prop"><td class="tblQmlPropNode"><p><span class="name">hideSource</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, the <a href="#sourceItem-prop">sourceItem</a> is hidden, though it will still be rendered into the texture. As opposed to hiding the <a href="#sourceItem-prop">sourceItem</a> by setting <a href="QtQuick.Item.md#visible-prop">visible</a> to false, setting this property to true will not prevent mouse or keyboard input from reaching <a href="#sourceItem-prop">sourceItem</a>. The property is useful when the <a href="index.html">ShaderEffectSource</a> is anchored on top of, and meant to replace the <a href="#sourceItem-prop">sourceItem</a>.</p>
<!-- @@@hideSource -->
<br/>
<!-- $$$live -->
<table class="qmlname"><tr valign="top" id="live-prop"><td class="tblQmlPropNode"><p><span class="name">live</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, the texture is updated whenever the <a href="#sourceItem-prop">sourceItem</a> updates. Otherwise, it will be a frozen image, even if <a href="#sourceItem-prop">sourceItem</a> is assigned a new item. The property is true by default.</p>
<!-- @@@live -->
<br/>
<!-- $$$mipmap -->
<table class="qmlname"><tr valign="top" id="mipmap-prop"><td class="tblQmlPropNode"><p><span class="name">mipmap</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, mipmaps are generated for the texture.</p>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.</p><!-- @@@mipmap -->
<br/>
<!-- $$$recursive -->
<table class="qmlname"><tr valign="top" id="recursive-prop"><td class="tblQmlPropNode"><p><span class="name">recursive</span> : <span class="type">bool</span></p></td></tr></table><p>Set this property to true if the <a href="index.html">ShaderEffectSource</a> has a dependency on itself. ShaderEffectSources form a dependency chain, where one <a href="index.html">ShaderEffectSource</a> can be part of the <a href="#sourceItem-prop">sourceItem</a> of another. If there is a loop in this chain, a <a href="index.html">ShaderEffectSource</a> could end up trying to render into the same texture it is using as source, which is not allowed by OpenGL. When this property is set to true, an extra texture is allocated so that <a href="index.html">ShaderEffectSource</a> can keep a copy of the texture from the previous frame. It can then render into one texture and use the texture from the previous frame as source.</p>
<p>Setting both this property and <a href="#live-prop">live</a> to true will cause the scene graph to render continuously. Since the <a href="index.html">ShaderEffectSource</a> depends on itself, updating it means that it immediately becomes dirty again.</p>
<!-- @@@recursive -->
<br/>
<!-- $$$sourceItem -->
<table class="qmlname"><tr valign="top" id="sourceItem-prop"><td class="tblQmlPropNode"><p><span class="name">sourceItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the item to be rendered into the texture. Setting this to null while <a href="#live-prop">live</a> is true, will release the texture resources.</p>
<!-- @@@sourceItem -->
<br/>
<!-- $$$sourceRect -->
<table class="qmlname"><tr valign="top" id="sourceRect-prop"><td class="tblQmlPropNode"><p><span class="name">sourceRect</span> : <span class="type">rect</span></p></td></tr></table><p>This property defines which rectangular area of the <a href="#sourceItem-prop">sourceItem</a> to render into the texture. The source rectangle can be larger than <a href="#sourceItem-prop">sourceItem</a> itself. If the rectangle is null, which is the default, the whole <a href="#sourceItem-prop">sourceItem</a> is rendered to texture.</p>
<!-- @@@sourceRect -->
<br/>
<!-- $$$textureSize -->
<table class="qmlname"><tr valign="top" id="textureSize-prop"><td class="tblQmlPropNode"><p><span class="name">textureSize</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the requested size of the texture. If it is empty, which is the default, the size of the source rectangle is used.</p>
<p><b>Note: </b>Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.</p><!-- @@@textureSize -->
<br/>
<!-- $$$wrapMode -->
<table class="qmlname"><tr valign="top" id="wrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the item is used as a source texture of a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>.</p>
<ul>
<li><a href="index.html">ShaderEffectSource</a>.ClampToEdge - GL_CLAMP_TO_EDGE both horizontally and vertically</li>
<li><a href="index.html">ShaderEffectSource</a>.RepeatHorizontally - GL_REPEAT horizontally, GL_CLAMP_TO_EDGE vertically</li>
<li><a href="index.html">ShaderEffectSource</a>.RepeatVertically - GL_CLAMP_TO_EDGE horizontally, GL_REPEAT vertically</li>
<li><a href="index.html">ShaderEffectSource</a>.Repeat - GL_REPEAT both horizontally and vertically</li>
</ul>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support the GL_REPEAT wrap mode with non-power-of-two textures.</p><!-- @@@wrapMode -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$scheduleUpdate -->
<table class="qmlname"><tr valign="top" id="scheduleUpdate-method"><td class="tblQmlFuncNode"><p><span class="name">scheduleUpdate</span>()</p></td></tr></table><p>Schedules a re-rendering of the texture for the next frame. Use this to update the texture when <a href="#live-prop">live</a> is false.</p>
<!-- @@@scheduleUpdate -->
<br/>
