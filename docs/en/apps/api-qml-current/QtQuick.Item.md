---
Title: QtQuick.Item
---

# QtQuick.Item

<span class="subtitle"></span>
<!-- $$$Item-brief -->
<p>A basic visual QML type More...</p>
<!-- @@@Item -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> QQuickItem</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p>AnimatedSprite, BorderImage, Canvas, Column, Flickable, Flipable, Flow, FocusScope, Grid, Image, Loader, MouseArea, MultiPointTouchArea, ParticlePainter, PathView, PinchArea, Rectangle, Repeater, Row, ShaderEffect, ShaderEffectSource, SignalSpy, SpriteSequence, TestCase, Text, TextEdit, and <a href="QtQuick.TextInput.md">TextInput.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocus-prop">activeFocus</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#activeFocusOnTab-prop">activeFocusOnTab</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#anchors-prop">anchors</a></b></b><ul>
<li class="fn"><b><b><a href="#anchors.top-prop">anchors.top</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.bottom-prop">anchors.bottom</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.left-prop">anchors.left</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.right-prop">anchors.right</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.horizontalCenter-prop">anchors.horizontalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.verticalCenter-prop">anchors.verticalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.baseline-prop">anchors.baseline</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.fill-prop">anchors.fill</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#anchors.centerIn-prop">anchors.centerIn</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#anchors.margins-prop">anchors.margins</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.topMargin-prop">anchors.topMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.bottomMargin-prop">anchors.bottomMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.leftMargin-prop">anchors.leftMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.rightMargin-prop">anchors.rightMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.horizontalCenterOffset-prop">anchors.horizontalCenterOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.verticalCenterOffset-prop">anchors.verticalCenterOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.baselineOffset-prop">anchors.baselineOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.alignWhenCentered-prop">anchors.alignWhenCentered</a></b></b> : bool</li>
</ul>
</li>
<li class="fn"><b><b><a href="#antialiasing-prop">antialiasing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#baselineOffset-prop">baselineOffset</a></b></b> : int</li>
<li class="fn"><b><b><a href="#children-prop">children</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#childrenRect-prop">childrenRect</a></b></b><ul>
<li class="fn"><b><b><a href="#childrenRect.x-prop">childrenRect.x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.y-prop">childrenRect.y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.width-prop">childrenRect.width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.height-prop">childrenRect.height</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#clip-prop">clip</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#focus-prop">focus</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#implicitHeight-prop">implicitHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#implicitWidth-prop">implicitWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#layer.effect-prop">layer.effect</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#layer.enabled-prop">layer.enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.format-prop">layer.format</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#layer.mipmap-prop">layer.mipmap</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.samplerName-prop">layer.samplerName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#layer.smooth-prop">layer.smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.sourceRect-prop">layer.sourceRect</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#layer.textureSize-prop">layer.textureSize</a></b></b> : size</li>
<li class="fn"><b><b><a href="#layer.wrapMode-prop">layer.wrapMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#parent-prop">parent</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#resources-prop">resources</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#scale-prop">scale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#smooth-prop">smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : string</li>
<li class="fn"><b><b><a href="#states-prop">states</a></b></b> : list&lt;State&gt;</li>
<li class="fn"><b><b><a href="#transform-prop">transform</a></b></b> : list&lt;Transform&gt;</li>
<li class="fn"><b><b><a href="#transformOrigin-prop">transformOrigin</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#transitions-prop">transitions</a></b></b> : list&lt;Transition&gt;</li>
<li class="fn"><b><b><a href="#visible-prop">visible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#visibleChildren-prop">visibleChildren</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#z-prop">z</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#childAt-method">childAt</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#contains-method">contains</a></b></b>(point <i>point</i>)</li>
<li class="fn"><b><b><a href="#forceActiveFocus-method-2">forceActiveFocus</a></b></b>(Qt::FocusReason <i>reason</i>)</li>
<li class="fn"><b><b><a href="#forceActiveFocus-method">forceActiveFocus</a></b></b>()</li>
<li class="fn">bool <b><b><a href="#grabToImage-method">grabToImage</a></b></b>(callback, targetSize)</li>
<li class="fn">object <b><b><a href="#mapFromItem-method-2">mapFromItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>, real <i>width</i>, real <i>height</i>)</li>
<li class="fn">object <b><b><a href="#mapFromItem-method">mapFromItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#mapToItem-method-2">mapToItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>, real <i>width</i>, real <i>height</i>)</li>
<li class="fn">object <b><b><a href="#mapToItem-method">mapToItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn"><b><b><a href="#nextItemInFocusChain-method">nextItemInFocusChain</a></b></b>(bool <i>forward</i>)</li>
</ul>
<!-- $$$Item-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Item type is the base type for all visual items in Qt Quick.</p>
<p>All visual items in Qt Quick inherit from Item. Although an Item object has no visual appearance, it defines all the attributes that are common across visual items, such as x and y position, width and height, <a href="QtQuick.qtquick-positioning-anchors.md">anchoring</a> and key handling support.</p>
<p>The Item type can be useful for grouping several items under a single root visual item. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">x</span>: <span class="number">80</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">x</span>: <span class="number">190</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">Tile</span>
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
}</pre>
<h3 >Key Handling</h3>
<p>Key handling is available to all Item-based visual types via the <a href="QtQuick.Keys.md">Keys</a> attached property. The <i>Keys</i> attached property provides basic signals such as <a href="QtQuick.Keys.md#pressed-signal">pressed</a> and <a href="QtQuick.Keys.md#released-signal">released</a>, as well as signals for specific keys, such as <a href="QtQuick.Keys.md#spacePressed-signal">spacePressed</a>. The example below assigns <a href="QtQuick.qtquick-input-focus.md">keyboard focus</a> to the item and handles the left key via the general <code>onPressed</code> handler and the return key via the <code>onReturnPressed</code> handler:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
<span class="name">Keys</span>.onReturnPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Pressed return&quot;</span>);
}</pre>
<p>See the <a href="QtQuick.Keys.md">Keys</a> attached property for detailed documentation.</p>
<h3 >Layout Mirroring</h3>
<p>Item layouts can be mirrored using the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property. This causes <a href="#anchors.top-prop">anchors</a> to be horizontally reversed, and also causes items that lay out or position their children (such as <a href="QtQuick.ListView.md">ListView</a> or <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>) to horizontally reverse the direction of their layouts.</p>
<p>See <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> for more details.</p>
<h2 id="item-layers">Item Layers</h2>
<p>An Item will normally be rendered directly into the window it belongs to. However, by setting <a href="#layer.enabled-prop">layer.enabled</a>, it is possible to delegate the item and its entire subtree into an offscreen surface. Only the offscreen surface, a texture, will be then drawn into the window.</p>
<p>If it is desired to have a texture size different from that of the item, this is possible using <a href="#layer.textureSize-prop">layer.textureSize</a>. To render only a section of the item into the texture, use <a href="#layer.sourceRect-prop">layer.sourceRect</a>. It is also possible to specify <a href="#layer.sourceRect-prop">layer.sourceRect</a> so it extends beyond the bounds of the item. In this case, the exterior will be padded with transparent pixels.</p>
<p>The item will use linear interpolation for scaling if <a href="#layer.smooth-prop">layer.smooth</a> is set to <code>true</code> and will use mipmap for downsampling if <a href="#layer.mipmap-prop">layer.mipmap</a> is set to <code>true</code>. Mipmapping may improve visual quality of downscaled items. For mipmapping of single Image items, prefer <a href="QtQuick.Image.md#mipmap-prop">Image::mipmap</a>.</p>
<h3 >Layer Opacity vs Item Opacity</h3>
<p>When applying <a href="QtQuick.qtquick-effects-topic.md#opacity">opacity</a> to an item hierarchy the opacity is applied to each item individually. This can lead to undesired visual results when the opacity is applied to a subtree. Consider the following example:</p>
<table class="generic">
<tr valign="top"><td ><img src="https://assets.ubuntu.com/v1/b5c5555f-qml-blending-nonlayered.png" alt="" /></td><td ><b>Non-layered Opacity</b><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="name">id</span>: <span class="name">nonLayered</span>
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">border</span>.width: <span class="number">1</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">20</span>; <span class="name">y</span>: <span class="number">20</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">border</span>.width: <span class="number">1</span> }
}</pre>
</td></tr>
</table>
<p>A layer is rendered with the root item's opacity being 1, and then the root item's opacity is applied to the texture when it is drawn. This means that fading in a large item hierarchy from transparent to opaque, or vice versa, can be done without the overlap artifacts that the normal item by item alpha blending has. Here is the same example with layer enabled:</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/fad24e3b-qml-blending-layered.png" alt="" /></p></td><td ><b>Layered Opacity</b><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="name">id</span>: <span class="name">layered</span>
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="name">layer</span>.enabled: <span class="number">true</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">border</span>.width: <span class="number">1</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">20</span>; <span class="name">y</span>: <span class="number">20</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">border</span>.width: <span class="number">1</span> }
}</pre>
</td></tr>
</table>
<h3 >Combined with ShaderEffects</h3>
<p>Setting layer.enabled to true will turn the item into a texture provider, making it possible to use the item directly as a texture, for instance in combination with the ShaderEffect type.</p>
<p>It is possible to apply an effect on a layer at runtime using layer.effect:</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="name">id</span>: <span class="name">layerRoot</span>
<span class="name">layer</span>.enabled: <span class="number">true</span>
<span class="name">layer</span>.effect: <span class="name">ShaderEffect</span> {
<span class="name">fragmentShader</span>: <span class="string">&quot;
uniform lowp sampler2D source; // this item
uniform lowp float qt_Opacity; // inherited opacity of this item
varying highp vec2 qt_TexCoord0;
void main() {
lowp vec4 p = texture2D(source, qt_TexCoord0);
lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));
gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;
}&quot;</span>
}</pre>
<p>In this example, we implement the shader effect manually. The Qt Graphical Effects module contains a suite of ready-made effects for use with Qt Quick.</p>
<p>See <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> for more information about using effects.</p>
<p><b>Note: </b><a href="#layer.enabled-prop">layer.enabled</a> is actually just a more convenient way of using <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.</p>
<h3 >Memory and Performance</h3>
<p>When an item's layer is enabled, the scene graph will allocate memory in the GPU equal to <code>width x height x 4</code>. In memory constrained configurations, large layers should be used with care.</p>
<p>In the QPainter / QWidget world, it is some times favorable to cache complex content in a pixmap, image or texture. In Qt Quick, because of the techniques already applied by the <a href="QtQuick.qtquick-visualcanvas-scenegraph-renderer.md">scene graph renderer</a>, this will in most cases not be the case. Excessive draw calls are already reduced because of batching and a cache will in most cases end up blending more pixels than the original content. The overhead of rendering to an offscreen and the blending involved with drawing the resulting texture is therefore often more costly than simply letting the item and its children be drawn normally.</p>
<p>Also, an item using a layer can not be <a href="QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#batching">batched</a> during rendering. This means that a scene with many layered items may have performance problems.</p>
<p>Layering can be convenient and useful for visual effects, but should in most cases be enabled for the duration of the effect and disabled afterwards.</p>
<!-- @@@Item -->
<h2>Property Documentation</h2>
<!-- $$$activeFocus -->
<table class="qmlname"><tr valign="top" id="activeFocus-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocus</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property indicates whether the item has active focus.</p>
<p>If activeFocus is true, either this item is the one that currently receives keyboard input, or it is a <a href="QtQuick.FocusScope.md">FocusScope</a> ancestor of the item that currently receives keyboard input.</p>
<p>Usually, activeFocus is gained by setting <a href="#focus-prop">focus</a> on an item and its enclosing <a href="QtQuick.FocusScope.md">FocusScope</a> objects. In the following example, the <code>input</code> and <code>focusScope</code> objects will have active focus, while the root rectangle object will not.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="name">id</span>: <span class="name">focusScope</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}
}</pre>
<p><b>See also </b><a href="#focus-prop">focus</a> and <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a>.</p>
<!-- @@@activeFocus -->
<br/>
<!-- $$$activeFocusOnTab -->
<table class="qmlname"><tr valign="top" id="activeFocusOnTab-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnTab</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item wants to be in tab focus chain. By default this is set to false.</p>
<p>The tab focus chain traverses elements by visiting first the parent, and then its children in the order they occur in the children property. Pressing the tab key on an item in the tab focus chain will move keyboard focus to the next item in the chain. Pressing BackTab (normally Shift+Tab) will move focus to the previous item.</p>
<p>To set up a manual tab focus chain, see <a href="QtQuick.KeyNavigation.md">KeyNavigation</a>. Tab key events used by Keys or <a href="QtQuick.KeyNavigation.md">KeyNavigation</a> have precedence over focus chain behavior, ignore the events in other key handlers to allow it to propagate.</p>
<!-- @@@activeFocusOnTab -->
<br/>
<!-- $$$anchors -->
<table class="qmlname"><tr valign="top" id="anchors-prop"><th class="centerAlign"><p><b>anchors group</b></p></th></tr><tr valign="top" id="anchors.top-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.bottom-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.left-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.right-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.horizontalCenter-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.verticalCenter-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.baseline-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.fill-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.fill</span> : <span class="type"><a href="index.html">Item</a></span></p></td></tr><tr valign="top" id="anchors.centerIn-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.centerIn</span> : <span class="type"><a href="index.html">Item</a></span></p></td></tr><tr valign="top" id="anchors.margins-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.margins</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.topMargin-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.topMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.bottomMargin-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.bottomMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.leftMargin-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.leftMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.rightMargin-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.rightMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.horizontalCenterOffset-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.horizontalCenterOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.verticalCenterOffset-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.verticalCenterOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.baselineOffset-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.baselineOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="anchors.alignWhenCentered-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.alignWhenCentered</span> : <span class="type">bool</span></p></td></tr></table><p>Anchors provide a way to position an item by specifying its relationship with other items.</p>
<p>Margins apply to top, bottom, left, right, and fill anchors. The <a href="#anchors.margins-prop">anchors.margins</a> property can be used to set all of the various margins at once, to the same value. It will not override a specific margin that has been previously set; to clear an explicit margin set its value to <code>undefined</code>. Note that margins are anchor-specific and are not applied if an item does not use anchors.</p>
<p>Offsets apply for horizontal center, vertical center, and baseline anchors.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/a1b20cf4-declarative-anchors_example.png" alt="" /></p></td><td >Text anchored to Image, horizontally centered and vertically below, with a margin.<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">pic</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">pic</span>.<span class="name">horizontalCenter</span>
<span class="name">anchors</span>.top: <span class="name">pic</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.topMargin: <span class="number">5</span>
<span class="comment">// ...</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/402fb520-declarative-anchors_example2.png" alt="" /></p></td><td >Left of Text anchored to right of Image, with a margin. The y property of both defaults to 0.<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">pic</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.left: <span class="name">pic</span>.<span class="name">right</span>
<span class="name">anchors</span>.leftMargin: <span class="number">5</span>
<span class="comment">// ...</span>
}
}</pre>
</td></tr>
</table>
<p><a href="#anchors.fill-prop">anchors.fill</a> provides a convenient way for one item to have the same geometry as another item, and is equivalent to connecting all four directional anchors.</p>
<p>To clear an anchor value, set it to <code>undefined</code>.</p>
<p><a href="#anchors.alignWhenCentered-prop">anchors.alignWhenCentered</a> (default <code>true</code>) forces centered anchors to align to a whole pixel; if the item being centered has an odd <a href="#width-prop">width</a> or <a href="#height-prop">height</a>, the item will be positioned on a whole pixel rather than being placed on a half-pixel. This ensures the item is painted crisply. There are cases where this is not desirable, for example when rotating the item jitters may be apparent as the center is rounded.</p>
<p><b>Note: </b>You can only anchor an item to siblings or a parent.</p><p>For more information see <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Anchor Layouts</a>.</p>
<!-- @@@anchors -->
<br/>
<!-- $$$antialiasing -->
<table class="qmlname"><tr valign="top" id="antialiasing-prop"><td class="tblQmlPropNode"><p><span class="name">antialiasing</span> : <span class="type">bool</span></p></td></tr></table><p>Used by visual elements to decide if the item should use antialiasing or not. In some cases items with antialiasing require more memory and are potentially slower to render (see <a href="QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#antialiasing">Antialiasing</a> for more details).</p>
<p>The default is false, but may be overridden by derived elements.</p>
<!-- @@@antialiasing -->
<br/>
<!-- $$$baselineOffset -->
<table class="qmlname"><tr valign="top" id="baselineOffset-prop"><td class="tblQmlPropNode"><p><span class="name">baselineOffset</span> : <span class="type">int</span></p></td></tr></table><p>Specifies the position of the item's baseline in local coordinates.</p>
<p>The baseline of a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> item is the imaginary line on which the text sits. Controls containing text usually set their baseline to the baseline of their text.</p>
<p>For non-text items, a default baseline offset of 0 is used.</p>
<!-- @@@baselineOffset -->
<br/>
<!-- $$$children -->
<table class="qmlname"><tr valign="top" id="children-prop"><td class="tblQmlPropNode"><p><span class="name">children</span> : <span class="type">list</span>&lt;<span class="type"><a href="index.html">Item</a></span>&gt;</p></td></tr></table><p>The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.</p>
<p>It is not generally necessary to refer to these properties when adding child items or resources, as the default <a href="#data-prop">data</a> property will automatically assign child objects to the <code>children</code> and <code>resources</code> properties as appropriate. See the <a href="#data-prop">data</a> documentation for details.</p>
<!-- @@@children -->
<br/>
<!-- $$$childrenRect -->
<table class="qmlname"><tr valign="top" id="childrenRect-prop"><th class="centerAlign"><p><b>childrenRect group</b></p></th></tr><tr valign="top" id="childrenRect.x-prop"><td class="tblQmlPropNode"><p><span class="name">childrenRect.x</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="childrenRect.y-prop"><td class="tblQmlPropNode"><p><span class="name">childrenRect.y</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="childrenRect.width-prop"><td class="tblQmlPropNode"><p><span class="name">childrenRect.width</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="childrenRect.height-prop"><td class="tblQmlPropNode"><p><span class="name">childrenRect.height</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the collective position and size of the item's children.</p>
<p>This property is useful if you need to access the collective geometry of an item's children in order to correctly size the item.</p>
<!-- @@@childrenRect -->
<br/>
<!-- $$$clip -->
<table class="qmlname"><tr valign="top" id="clip-prop"><td class="tblQmlPropNode"><p><span class="name">clip</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether clipping is enabled. The default clip value is <code>false</code>.</p>
<p>If clipping is enabled, an item will clip its own painting, as well as the painting of its children, to its bounding rectangle.</p>
<!-- @@@clip -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The data property allows you to freely mix visual children and resources in an item. If you assign a visual item to the data list it becomes a child and if you assign any other object type, it is added as a resource.</p>
<p>So you can write:</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {}
<span class="type">Timer</span> {}
}</pre>
<p>instead of:</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="name">children</span>: [
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {},
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {}
]
<span class="name">resources</span>: [
<span class="type">Timer</span> {}
]
}</pre>
<p>It should not generally be necessary to refer to the <code>data</code> property, as it is the default property for Item and thus all child items are automatically assigned to this property.</p>
<!-- @@@data -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item receives mouse and keyboard events. By default this is true.</p>
<p>Setting this property directly affects the <code>enabled</code> value of child items. When set to <code>false</code>, the <code>enabled</code> values of all child items also become <code>false</code>. When set to <code>true</code>, the <code>enabled</code> values of child items are returned to <code>true</code>, unless they have explicitly been set to <code>false</code>.</p>
<p>Setting this property to <code>false</code> automatically causes <a href="#activeFocus-prop">activeFocus</a> to be set to <code>false</code>, and this item will longer receive keyboard events.</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$focus -->
<table class="qmlname"><tr valign="top" id="focus-prop"><td class="tblQmlPropNode"><p><span class="name">focus</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item has focus within the enclosing <a href="QtQuick.FocusScope.md">FocusScope</a>. If true, this item will gain active focus when the enclosing <a href="QtQuick.FocusScope.md">FocusScope</a> gains active focus.</p>
<p>In the following example, <code>input</code> will be given active focus when <code>scope</code> gains active focus:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="name">id</span>: <span class="name">scope</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}
}</pre>
<p>For the purposes of this property, the scene as a whole is assumed to act like a focus scope. On a practical level, that means the following QML will give active focus to <code>input</code> on startup.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}</pre>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a> and <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a>.</p>
<!-- @@@focus -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top" id="height-prop"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@height -->
<br/>
<!-- $$$implicitHeight -->
<table class="qmlname"><tr valign="top" id="implicitHeight-prop"><td class="tblQmlPropNode"><p><span class="name">implicitHeight</span> : <span class="type">real</span></p></td></tr></table><p>Defines the natural width or height of the Item if no <a href="#width-prop">width</a> or <a href="#height-prop">height</a> is specified.</p>
<p>The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g&#x2e; Image, Text.</p>
<p>Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:</p>
<pre class="qml"><span class="comment">// Label.qml</span>
import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
property <span class="type">alias</span> <span class="name">icon</span>: <span class="name">image</span>.<span class="name">source</span>
property <span class="type">alias</span> <span class="name">label</span>: <span class="name">text</span>.<span class="name">text</span>
<span class="name">implicitWidth</span>: <span class="name">text</span>.<span class="name">implicitWidth</span> <span class="operator">+</span> <span class="name">image</span>.<span class="name">implicitWidth</span>
<span class="name">implicitHeight</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">text</span>.<span class="name">implicitHeight</span>, <span class="name">image</span>.<span class="name">implicitHeight</span>)
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">text</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">Wrap</span>
<span class="name">anchors</span>.left: <span class="name">image</span>.<span class="name">right</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
}</pre>
<p><b>Note</b>: using <a href="#implicitWidth-prop">implicitWidth</a> of Text or <a href="QtQuick.TextEdit.md">TextEdit</a> and setting the width explicitly incurs a performance penalty as the text must be laid out twice.</p>
<!-- @@@implicitHeight -->
<br/>
<!-- $$$implicitWidth -->
<table class="qmlname"><tr valign="top" id="implicitWidth-prop"><td class="tblQmlPropNode"><p><span class="name">implicitWidth</span> : <span class="type">real</span></p></td></tr></table><p>Defines the natural width or height of the Item if no <a href="#width-prop">width</a> or <a href="#height-prop">height</a> is specified.</p>
<p>The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g&#x2e; Image, Text.</p>
<p>Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:</p>
<pre class="qml"><span class="comment">// Label.qml</span>
import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
property <span class="type">alias</span> <span class="name">icon</span>: <span class="name">image</span>.<span class="name">source</span>
property <span class="type">alias</span> <span class="name">label</span>: <span class="name">text</span>.<span class="name">text</span>
<span class="name">implicitWidth</span>: <span class="name">text</span>.<span class="name">implicitWidth</span> <span class="operator">+</span> <span class="name">image</span>.<span class="name">implicitWidth</span>
<span class="name">implicitHeight</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">text</span>.<span class="name">implicitHeight</span>, <span class="name">image</span>.<span class="name">implicitHeight</span>)
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">text</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">Wrap</span>
<span class="name">anchors</span>.left: <span class="name">image</span>.<span class="name">right</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
}</pre>
<p><b>Note</b>: using implicitWidth of Text or <a href="QtQuick.TextEdit.md">TextEdit</a> and setting the width explicitly incurs a performance penalty as the text must be laid out twice.</p>
<!-- @@@implicitWidth -->
<br/>
<!-- $$$layer.effect -->
<table class="qmlname"><tr valign="top" id="layer.effect-prop"><td class="tblQmlPropNode"><p><span class="name">layer.effect</span> : <span class="type">Component</span></p></td></tr></table><p>Holds the effect that is applied to this layer.</p>
<p>The effect is typically a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> component, although any <a href="index.html">Item</a> component can be assigned. The effect should have a source texture property with a name matching <a href="#layer.samplerName-prop">layer.samplerName</a>.</p>
<p><b>See also </b><a href="#layer.samplerName-prop">layer.samplerName</a>.</p>
<!-- @@@layer.effect -->
<br/>
<!-- $$$layer.enabled -->
<table class="qmlname"><tr valign="top" id="layer.enabled-prop"><td class="tblQmlPropNode"><p><span class="name">layer.enabled</span> : <span class="type">bool</span></p></td></tr></table><p>Holds whether the item is layered or not. Layering is disabled by default.</p>
<p>A layered item is rendered into an offscreen surface and cached until it is changed. Enabling layering for complex QML item hierarchies can sometimes be an optimization.</p>
<p>None of the other layer properties have any effect when the layer is disabled.</p>
<!-- @@@layer.enabled -->
<br/>
<!-- $$$layer.format -->
<table class="qmlname"><tr valign="top" id="layer.format-prop"><td class="tblQmlPropNode"><p><span class="name">layer.format</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the <i>layer.effect</i> is also specified. Depending on the OpenGL implementation, this property might allow you to save some texture memory.</p>
<ul>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.Alpha - GL_ALPHA;</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RGB - GL_RGB</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RGBA - GL_RGBA</li>
</ul>
<p><b>Note: </b><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RGB and <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.Alpha should be used with caution, as support for these formats in the underlying hardare and driver is often not present.</p><!-- @@@layer.format -->
<br/>
<!-- $$$layer.mipmap -->
<table class="qmlname"><tr valign="top" id="layer.mipmap-prop"><td class="tblQmlPropNode"><p><span class="name">layer.mipmap</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, mipmaps are generated for the texture.</p>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.</p><!-- @@@layer.mipmap -->
<br/>
<!-- $$$layer.samplerName -->
<table class="qmlname"><tr valign="top" id="layer.samplerName-prop"><td class="tblQmlPropNode"><p><span class="name">layer.samplerName</span> : <span class="type">string</span></p></td></tr></table><p>Holds the name of the effect's source texture property.</p>
<p>This value must match the name of the effect's source texture property so that the Item can pass the layer's offscreen surface to the effect correctly.</p>
<p><b>See also </b><a href="#layer.effect-prop">layer.effect</a> and <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>.</p>
<!-- @@@layer.samplerName -->
<br/>
<!-- $$$layer.smooth -->
<table class="qmlname"><tr valign="top" id="layer.smooth-prop"><td class="tblQmlPropNode"><p><span class="name">layer.smooth</span> : <span class="type">bool</span></p></td></tr></table><p>Holds whether the layer is smoothly transformed.</p>
<!-- @@@layer.smooth -->
<br/>
<!-- $$$layer.sourceRect -->
<table class="qmlname"><tr valign="top" id="layer.sourceRect-prop"><td class="tblQmlPropNode"><p><span class="name">layer.sourceRect</span> : <span class="type">rect</span></p></td></tr></table><p>This property defines the rectangular area of the item that should be rendered into the texture. The source rectangle can be larger than the item itself. If the rectangle is null, which is the default, then the whole item is rendered to the texture.</p>
<!-- @@@layer.sourceRect -->
<br/>
<!-- $$$layer.textureSize -->
<table class="qmlname"><tr valign="top" id="layer.textureSize-prop"><td class="tblQmlPropNode"><p><span class="name">layer.textureSize</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the requested pixel size of the layers texture. If it is empty, which is the default, the size of the item is used.</p>
<p><b>Note: </b>Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.</p><!-- @@@layer.textureSize -->
<br/>
<!-- $$$layer.wrapMode -->
<table class="qmlname"><tr valign="top" id="layer.wrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">layer.wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the <i>layer.effect</i> is specified.</p>
<ul>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.ClampToEdge - GL_CLAMP_TO_EDGE both horizontally and vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RepeatHorizontally - GL_REPEAT horizontally, GL_CLAMP_TO_EDGE vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RepeatVertically - GL_CLAMP_TO_EDGE horizontally, GL_REPEAT vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.Repeat - GL_REPEAT both horizontally and vertically</li>
</ul>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support the GL_REPEAT wrap mode with non-power-of-two textures.</p><!-- @@@layer.wrapMode -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top" id="opacity-prop"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the opacity of the item. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0&#x2e;</p>
<p>When this property is set, the specified opacity is also applied individually to child items. This may have an unintended effect in some circumstances. For example in the second set of rectangles below, the red rectangle has specified an opacity of 0.5, which affects the opacity of its blue child rectangle even though the child has not specified an opacity.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/c643406e-1.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/eb44aed5-declarative-item_opacity2.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
</table>
<p>Changing an item's opacity does not affect whether the item receives user input events. (In contrast, setting <a href="#visible-prop">visible</a> property to <code>false</code> stops mouse events, and setting the <a href="#enabled-prop">enabled</a> property to <code>false</code> stops mouse and keyboard events, and also removes active focus from the item.)</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$parent -->
<table class="qmlname"><tr valign="top" id="parent-prop"><td class="tblQmlPropNode"><p><span class="name">parent</span> : <span class="type"><a href="index.html">Item</a></span></p></td></tr></table><p>This property holds the visual parent of the item.</p>
<p><b>Note: </b>The concept of the <i>visual parent</i> differs from that of the <i>QObject parent</i>. An item's visual parent may not necessarily be the same as its object parent. See <a href="QtQuick.qtquick-visualcanvas-visualparent.md">Concepts - Visual Parent in Qt Quick</a> for more details.</p><!-- @@@parent -->
<br/>
<!-- $$$resources -->
<table class="qmlname"><tr valign="top" id="resources-prop"><td class="tblQmlPropNode"><p><span class="name">resources</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.</p>
<p>It is not generally necessary to refer to these properties when adding child items or resources, as the default <a href="#data-prop">data</a> property will automatically assign child objects to the <code>children</code> and <code>resources</code> properties as appropriate. See the <a href="#data-prop">data</a> documentation for details.</p>
<!-- @@@resources -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top" id="rotation-prop"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rotation of the item in degrees clockwise around its <a href="#transformOrigin-prop">transformOrigin</a>.</p>
<p>The default value is 0 degrees (that is, no rotation).</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/f29d2d64-declarative-rotation.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">x</span>: <span class="number">25</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">rotation</span>: <span class="number">30</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#transform-prop">transform</a> and <a href="QtQuick.Rotation.md">Rotation</a>.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top" id="scale-prop"><td class="tblQmlPropNode"><p><span class="name">scale</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the scale factor for this item.</p>
<p>A scale of less than 1.0 causes the item to be rendered at a smaller size, and a scale greater than 1.0 renders the item at a larger size. A negative scale causes the item to be mirrored when rendered.</p>
<p>The default value is 1.0&#x2e;</p>
<p>Scaling is applied from the <a href="#transformOrigin-prop">transformOrigin</a>.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/912efbec-declarative-scale.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="number">25</span>; <span class="name">height</span>: <span class="number">25</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">x</span>: <span class="number">25</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">scale</span>: <span class="number">1.4</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#transform-prop">transform</a> and <a href="QtQuick.Scale.md">Scale</a>.</p>
<!-- @@@scale -->
<br/>
<!-- $$$smooth -->
<table class="qmlname"><tr valign="top" id="smooth-prop"><td class="tblQmlPropNode"><p><span class="name">smooth</span> : <span class="type">bool</span></p></td></tr></table><p>Primarily used in image based items to decide if the item should use smooth sampling or not. Smooth sampling is performed using linear interpolation, while non-smooth is performed using nearest neighbor.</p>
<p>In Qt Quick 2.0, this property has minimal impact on performance.</p>
<p>By default is true.</p>
<!-- @@@smooth -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the current state of the item.</p>
<p>If the item is in its default state, that is, no explicit state has been set, then this property holds an empty string. Likewise, you can return an item to its default state by setting this property to an empty string.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>.</p>
<!-- @@@state -->
<br/>
<!-- $$$states -->
<table class="qmlname"><tr valign="top" id="states-prop"><td class="tblQmlPropNode"><p><span class="name">states</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.State.md">State</a></span>&gt;</p></td></tr></table><p>This property holds the list of possible states for this item. To change the state of this item, set the <a href="#state-prop">state</a> property to one of these states, or set the <a href="#state-prop">state</a> property to an empty string to revert the item to its default state.</p>
<p>This property is specified as a list of <a href="QtQuick.State.md">State</a> objects. For example, below is an item with &quot;red_color&quot; and &quot;blue_color&quot; states:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;red_color&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">root</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;blue_color&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">root</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
]
}</pre>
<p>See <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> for more details on using states and transitions.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-topic.md#transitions">transitions</a>.</p>
<!-- @@@states -->
<br/>
<!-- $$$transform -->
<table class="qmlname"><tr valign="top" id="transform-prop"><td class="tblQmlPropNode"><p><span class="name">transform</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transform.md">Transform</a></span>&gt;</p></td></tr></table><p>This property holds the list of transformations to apply.</p>
<p>For more information see <a href="QtQuick.Transform.md">Transform</a>.</p>
<!-- @@@transform -->
<br/>
<!-- $$$transformOrigin -->
<table class="qmlname"><tr valign="top" id="transformOrigin-prop"><td class="tblQmlPropNode"><p><span class="name">transformOrigin</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the origin point around which scale and rotation transform.</p>
<p>Nine transform origins are available, as shown in the image below. The default transform origin is <code>Item.Center</code>.</p>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/009f4e0d-declarative-transformorigin.png" alt="" /></p><p>This example rotates an image around its bottom-right corner.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;myimage.png&quot;</span>
<span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">BottomRight</span>
<span class="name">rotation</span>: <span class="number">45</span>
}</pre>
<p>To set an arbitrary transform origin point use the <a href="QtQuick.Scale.md">Scale</a> or <a href="QtQuick.Rotation.md">Rotation</a> transform types with <a href="#transform-prop">transform</a>.</p>
<!-- @@@transformOrigin -->
<br/>
<!-- $$$transitions -->
<table class="qmlname"><tr valign="top" id="transitions-prop"><td class="tblQmlPropNode"><p><span class="name">transitions</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transition.md">Transition</a></span>&gt;</p></td></tr></table><p>This property holds the list of transitions for this item. These define the transitions to be applied to the item whenever it changes its <a href="#state-prop">state</a>.</p>
<p>This property is specified as a list of <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> objects. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
<span class="name">transitions</span>: [
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">//...</span>
},
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">//...</span>
}
]
}</pre>
<p>See <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> for more details on using states and transitions.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-topic.md#states">states</a>.</p>
<!-- @@@transitions -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top" id="visible-prop"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item is visible. By default this is true.</p>
<p>Setting this property directly affects the <code>visible</code> value of child items. When set to <code>false</code>, the <code>visible</code> values of all child items also become <code>false</code>. When set to <code>true</code>, the <code>visible</code> values of child items are returned to <code>true</code>, unless they have explicitly been set to <code>false</code>.</p>
<p>(Because of this flow-on behavior, using the <code>visible</code> property may not have the intended effect if a property binding should only respond to explicit property changes. In such cases it may be better to use the <a href="QtQuick.qtquick-effects-topic.md#opacity">opacity</a> property instead.)</p>
<p>If this property is set to <code>false</code>, the item will no longer receive mouse events, but will continue to receive key events and will retain the keyboard <a href="#focus-prop">focus</a> if it has been set. (In contrast, setting the <a href="#enabled-prop">enabled</a> property to <code>false</code> stops both mouse and keyboard events, and also removes focus from the item.)</p>
<p><b>Note: </b>This property's value is only affected by changes to this property or the parent's <code>visible</code> property. It does not change, for example, if this item moves off-screen, or if the <a href="QtQuick.qtquick-effects-topic.md#opacity">opacity</a> changes to 0.</p><p><b>See also </b><a href="QtQuick.qtquick-effects-topic.md#opacity">opacity</a> and <a href="#enabled-prop">enabled</a>.</p>
<!-- @@@visible -->
<br/>
<!-- $$$visibleChildren -->
<table class="qmlname"><tr valign="top" id="visibleChildren-prop"><td class="tblQmlPropNode"><p><span class="name">visibleChildren</span> : <span class="type">list</span>&lt;<span class="type"><a href="index.html">Item</a></span>&gt;</p></td></tr></table><p>This read-only property lists all of the item's children that are currently visible. Note that a child's visibility may have changed explicitly, or because the visibility of this (it's parent) item or another grandparent changed.</p>
<!-- @@@visibleChildren -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top" id="width-prop"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@width -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@y -->
<br/>
<!-- $$$z -->
<table class="qmlname"><tr valign="top" id="z-prop"><td class="tblQmlPropNode"><p><span class="name">z</span> : <span class="type">real</span></p></td></tr></table><p>Sets the stacking order of sibling items. By default the stacking order is 0.</p>
<p>Items with a higher stacking value are drawn on top of siblings with a lower stacking order. Items with the same stacking value are drawn bottom up in the order they appear. Items with a negative stacking value are drawn under their parent's content.</p>
<p>The following example shows the various effects of stacking order.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/c643406e-1.png" alt="" /></p></td><td >Same <code>z</code> - later children above earlier children:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/5b75b1e8-declarative-item_stacking2.png" alt="" /></p></td><td >Higher <code>z</code> on top:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">z</span>: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/0e0590d0-declarative-item_stacking3.png" alt="" /></p></td><td >Same <code>z</code> - children above parents:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/8352b07c-declarative-item_stacking4.png" alt="" /></p></td><td >Lower <code>z</code> below:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">z</span>: -<span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
</table>
<!-- @@@z -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$childAt -->
<table class="qmlname"><tr valign="top" id="childAt-method"><td class="tblQmlFuncNode"><p><span class="name">childAt</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Returns the first visible child item found at point (<i>x</i>, <i>y</i>) within the coordinate system of this item.</p>
<p>Returns <code>null</code> if there is no such item.</p>
<!-- @@@childAt -->
<br/>
<!-- $$$contains -->
<table class="qmlname"><tr valign="top" id="contains-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">contains</span>(<span class="type">point</span><i> point</i>)</p></td></tr></table><p>Returns true if this item contains <i>point</i>, which is in local coordinates; returns false otherwise.</p>
<!-- @@@contains -->
<br/>
<!-- $$$forceActiveFocus -->
<table class="qmlname"><tr valign="top" id="forceActiveFocus-method-2"><td class="tblQmlFuncNode"><p><span class="name">forceActiveFocus</span>(<span class="type">Qt::FocusReason</span><i> reason</i>)</p></td></tr></table><p>Forces active focus on the item with the given <i>reason</i>.</p>
<p>This method sets focus on the item and ensures that all ancestor <a href="QtQuick.FocusScope.md">FocusScope</a> objects in the object hierarchy are also given <a href="#focus-prop">focus</a>.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a> and Qt::FocusReason.</p>
<!-- @@@forceActiveFocus -->
<br/>
<!-- $$$forceActiveFocus -->
<table class="qmlname"><tr valign="top" id="forceActiveFocus-method"><td class="tblQmlFuncNode"><p><span class="name">forceActiveFocus</span>()</p></td></tr></table><p>This is an overloaded function.</p>
<p>Forces active focus on the item.</p>
<p>This method sets focus on the item and ensures that all ancestor <a href="QtQuick.FocusScope.md">FocusScope</a> objects in the object hierarchy are also given <a href="#focus-prop">focus</a>.</p>
<p>The reason for the focus change will be <i>Qt::OtherFocusReason</i>. Use the overloaded method to specify the focus reason to enable better handling of the focus change.</p>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a>.</p>
<!-- @@@forceActiveFocus -->
<br/>
<!-- $$$grabToImage -->
<table class="qmlname"><tr valign="top" id="grabToImage-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">grabToImage</span>(<span class="type">callback</span>, <span class="type">targetSize</span>)</p></td></tr></table><p>Grabs the item into an in-memory image.</p>
<p>The grab happens asynchronously and the JavaScript function <i>callback</i> is invoked when the grab is completed.</p>
<p>Use <i>targetSize</i> to specify the size of the target image. By default, the result will have the same size as the item.</p>
<p>If the grab could not be initiated, the function returns <code>false</code>.</p>
<p>The following snippet shows how to grab an item and store the results to a file.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">source</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0</span>; <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span> }
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span> }
}
}
<span class="comment">// ...</span>
<span class="name">source</span>.<span class="name">grabToImage</span>(<span class="keyword">function</span>(<span class="name">result</span>) {
<span class="name">result</span>.<span class="name">saveToFile</span>(<span class="string">&quot;something.png&quot;</span>);
});</pre>
<p>The following snippet shows how to grab an item and use the results in another image element.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">image</span>
}
<span class="comment">// ...</span>
<span class="name">source</span>.<span class="name">grabToImage</span>(<span class="keyword">function</span>(<span class="name">result</span>) {
<span class="name">image</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">result</span>.<span class="name">url</span>;
},
<span class="name">Qt</span>.<span class="name">size</span>(<span class="number">50</span>, <span class="number">50</span>));</pre>
<p><b>Note: </b>This function will render the item to an offscreen surface and copy that surface from the GPU's memory into the CPU's memory, which can be quite costly. For &quot;live&quot; preview, use <a href="#layer.enabled-prop">layers</a> or <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.</p><!-- @@@grabToImage -->
<br/>
<!-- $$$mapFromItem -->
<table class="qmlname"><tr valign="top" id="mapFromItem-method-2"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type"><a href="index.html">Item</a></span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> width</i>, <span class="type">real</span><i> height</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in <i>item</i>'s coordinate system, to this item's coordinate system, and returns an object with <code>x</code> and <code>y</code> (and optionally <code>width</code> and <code>height</code>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <code>null</code> value, this maps the point or rect from the coordinate system of the root QML view.</p>
<!-- @@@mapFromItem -->
<br/>
<!-- $$$mapFromItem -->
<table class="qmlname"><tr valign="top" id="mapFromItem-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type"><a href="index.html">Item</a></span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in <i>item</i>'s coordinate system, to this item's coordinate system, and returns an object with <code>x</code> and <code>y</code> (and optionally <code>width</code> and <code>height</code>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <code>null</code> value, this maps the point or rect from the coordinate system of the root QML view.</p>
<!-- @@@mapFromItem -->
<br/>
<!-- $$$mapToItem -->
<table class="qmlname"><tr valign="top" id="mapToItem-method-2"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type"><a href="index.html">Item</a></span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> width</i>, <span class="type">real</span><i> height</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in this item's coordinate system, to <i>item</i>'s coordinate system, and returns an object with <code>x</code> and <code>y</code> (and optionally <code>width</code> and <code>height</code>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <code>null</code> value, this maps the point or rect to the coordinate system of the root QML view.</p>
<!-- @@@mapToItem -->
<br/>
<!-- $$$mapToItem -->
<table class="qmlname"><tr valign="top" id="mapToItem-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type"><a href="index.html">Item</a></span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in this item's coordinate system, to <i>item</i>'s coordinate system, and returns an object with <code>x</code> and <code>y</code> (and optionally <code>width</code> and <code>height</code>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <code>null</code> value, this maps the point or rect to the coordinate system of the root QML view.</p>
<!-- @@@mapToItem -->
<br/>
<!-- $$$nextItemInFocusChain -->
<table class="qmlname"><tr valign="top" id="nextItemInFocusChain-method"><td class="tblQmlFuncNode"><p><span class="name">nextItemInFocusChain</span>(<span class="type">bool</span><i> forward</i>)</p></td></tr></table><p>Returns the item in the focus chain which is next to this item. If <i>forward</i> is <code>true</code>, or not supplied, it is the next item in the forwards direction. If <i>forward</i> is <code>false</code>, it is the next item in the backwards direction.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@nextItemInFocusChain -->
<br/>
