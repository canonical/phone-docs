---
Title: QtQuick.Item
---
        
Item
====

<span class="subtitle"></span>
A basic visual QML type More...

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
<td>Instantiates:</td>
<td>QQuickItem</td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p>AnimatedSprite, BorderImage, Canvas, Column, Flickable, Flipable, Flow, FocusScope, Grid, Image, Loader, MouseArea, MultiPointTouchArea, ParticlePainter, PathView, PinchArea, Rectangle, Repeater, Row, ShaderEffect, ShaderEffectSource, SignalSpy, SpriteSequence, TestCase, Text, TextEdit, and TextInput.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocus](#activeFocus-prop)**** : bool
-   ****[activeFocusOnTab](#activeFocusOnTab-prop)**** : bool
-   ****[anchors](#anchors-prop)****
    -   ****[anchors.top](#anchors.top-prop)**** : AnchorLine
    -   ****[anchors.bottom](#anchors.bottom-prop)**** : AnchorLine
    -   ****[anchors.left](#anchors.left-prop)**** : AnchorLine
    -   ****[anchors.right](#anchors.right-prop)**** : AnchorLine
    -   ****[anchors.horizontalCenter](#anchors.horizontalCenter-prop)**** : AnchorLine
    -   ****[anchors.verticalCenter](#anchors.verticalCenter-prop)**** : AnchorLine
    -   ****[anchors.baseline](#anchors.baseline-prop)**** : AnchorLine
    -   ****[anchors.fill](#anchors.fill-prop)**** : Item
    -   ****[anchors.centerIn](#anchors.centerIn-prop)**** : Item
    -   ****[anchors.margins](#anchors.margins-prop)**** : real
    -   ****[anchors.topMargin](#anchors.topMargin-prop)**** : real
    -   ****[anchors.bottomMargin](#anchors.bottomMargin-prop)**** : real
    -   ****[anchors.leftMargin](#anchors.leftMargin-prop)**** : real
    -   ****[anchors.rightMargin](#anchors.rightMargin-prop)**** : real
    -   ****[anchors.horizontalCenterOffset](#anchors.horizontalCenterOffset-prop)**** : real
    -   ****[anchors.verticalCenterOffset](#anchors.verticalCenterOffset-prop)**** : real
    -   ****[anchors.baselineOffset](#anchors.baselineOffset-prop)**** : real
    -   ****[anchors.alignWhenCentered](#anchors.alignWhenCentered-prop)**** : bool
-   ****[antialiasing](#antialiasing-prop)**** : bool
-   ****[baselineOffset](#baselineOffset-prop)**** : int
-   ****[children](#children-prop)**** : list&lt;Item&gt;
-   ****[childrenRect](#childrenRect-prop)****
    -   ****[childrenRect.x](#childrenRect.x-prop)**** : real
    -   ****[childrenRect.y](#childrenRect.y-prop)**** : real
    -   ****[childrenRect.width](#childrenRect.width-prop)**** : real
    -   ****[childrenRect.height](#childrenRect.height-prop)**** : real
-   ****[clip](#clip-prop)**** : bool
-   ****[data](#data-prop)**** : list&lt;Object&gt;
-   ****[enabled](#enabled-prop)**** : bool
-   ****[focus](#focus-prop)**** : bool
-   ****[height](#height-prop)**** : real
-   ****[implicitHeight](#implicitHeight-prop)**** : real
-   ****[implicitWidth](#implicitWidth-prop)**** : real
-   ****[layer.effect](#layer.effect-prop)**** : Component
-   ****[layer.enabled](#layer.enabled-prop)**** : bool
-   ****[layer.format](#layer.format-prop)**** : enumeration
-   ****[layer.mipmap](#layer.mipmap-prop)**** : bool
-   ****[layer.samplerName](#layer.samplerName-prop)**** : string
-   ****[layer.smooth](#layer.smooth-prop)**** : bool
-   ****[layer.sourceRect](#layer.sourceRect-prop)**** : rect
-   ****[layer.textureSize](#layer.textureSize-prop)**** : size
-   ****[layer.wrapMode](#layer.wrapMode-prop)**** : enumeration
-   ****[opacity](#opacity-prop)**** : real
-   ****[parent](#parent-prop)**** : Item
-   ****[resources](#resources-prop)**** : list&lt;Object&gt;
-   ****[rotation](#rotation-prop)**** : real
-   ****[scale](#scale-prop)**** : real
-   ****[smooth](#smooth-prop)**** : bool
-   ****[state](#state-prop)**** : string
-   ****[states](#states-prop)**** : list&lt;State&gt;
-   ****[transform](#transform-prop)**** : list&lt;Transform&gt;
-   ****[transformOrigin](#transformOrigin-prop)**** : enumeration
-   ****[transitions](#transitions-prop)**** : list&lt;Transition&gt;
-   ****[visible](#visible-prop)**** : bool
-   ****[visibleChildren](#visibleChildren-prop)**** : list&lt;Item&gt;
-   ****[width](#width-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real
-   ****[z](#z-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[childAt](#childAt-method)****(real *x*, real *y*)
-   object ****[contains](#contains-method)****(point *point*)
-   ****[forceActiveFocus](#forceActiveFocus-method-2)****(Qt::FocusReason *reason*)
-   ****[forceActiveFocus](#forceActiveFocus-method)****()
-   bool ****[grabToImage](#grabToImage-method)****(callback, targetSize)
-   object ****[mapFromItem](#mapFromItem-method-2)****(Item *item*, real *x*, real *y*, real *width*, real *height*)
-   object ****[mapFromItem](#mapFromItem-method)****(Item *item*, real *x*, real *y*)
-   object ****[mapToItem](#mapToItem-method-2)****(Item *item*, real *x*, real *y*, real *width*, real *height*)
-   object ****[mapToItem](#mapToItem-method)****(Item *item*, real *x*, real *y*)
-   ****[nextItemInFocusChain](#nextItemInFocusChain-method)****(bool *forward*)

<span id="details"></span>
Detailed Description
--------------------

The Item type is the base type for all visual items in Qt Quick.

All visual items in Qt Quick inherit from Item. Although an Item object has no visual appearance, it defines all the attributes that are common across visual items, such as x and y position, width and height, [anchoring](../QtQuick.qtquick-positioning-anchors.md) and key handling support.

The Item type can be useful for grouping several items under a single root visual item. For example:

``` qml
import QtQuick 2.0
Item {
    Image {
        source: "tile.png"
    }
    Image {
        x: 80
        width: 100
        height: 100
        source: "tile.png"
    }
    Image {
        x: 190
        width: 100
        height: 100
        fillMode: Image.Tile
        source: "tile.png"
    }
}
```

<span id="key-handling"></span>
### Key Handling

Key handling is available to all Item-based visual types via the [Keys](../QtQuick.Keys.md) attached property. The *Keys* attached property provides basic signals such as [pressed](../QtQuick.Keys.md#pressed-signal) and [released](../QtQuick.Keys.md#released-signal), as well as signals for specific keys, such as [spacePressed](../QtQuick.Keys.md#spacePressed-signal). The example below assigns [keyboard focus](../QtQuick.qtquick-input-focus.md) to the item and handles the left key via the general `onPressed` handler and the return key via the `onReturnPressed` handler:

``` qml
import QtQuick 2.0
Item {
    focus: true
    Keys.onPressed: {
        if (event.key == Qt.Key_Left) {
            console.log("move left");
            event.accepted = true;
        }
    }
    Keys.onReturnPressed: console.log("Pressed return");
}
```

See the [Keys](../QtQuick.Keys.md) attached property for detailed documentation.

<span id="layout-mirroring"></span>
### Layout Mirroring

Item layouts can be mirrored using the [LayoutMirroring](../QtQuick.LayoutMirroring.md) attached property. This causes [anchors](#anchors.top-prop) to be horizontally reversed, and also causes items that lay out or position their children (such as [ListView](../QtQuick.ListView.md) or [Row](../QtQuick.qtquick-positioning-layouts.md#row)) to horizontally reverse the direction of their layouts.

See [LayoutMirroring](../QtQuick.LayoutMirroring.md) for more details.

<span id="item-layers"></span>
Item Layers
-----------

An Item will normally be rendered directly into the window it belongs to. However, by setting [layer.enabled](#layer.enabled-prop), it is possible to delegate the item and its entire subtree into an offscreen surface. Only the offscreen surface, a texture, will be then drawn into the window.

If it is desired to have a texture size different from that of the item, this is possible using [layer.textureSize](#layer.textureSize-prop). To render only a section of the item into the texture, use [layer.sourceRect](#layer.sourceRect-prop). It is also possible to specify [layer.sourceRect](#layer.sourceRect-prop) so it extends beyond the bounds of the item. In this case, the exterior will be padded with transparent pixels.

The item will use linear interpolation for scaling if [layer.smooth](#layer.smooth-prop) is set to `true` and will use mipmap for downsampling if [layer.mipmap](#layer.mipmap-prop) is set to `true`. Mipmapping may improve visual quality of downscaled items. For mipmapping of single Image items, prefer [Image::mipmap](../QtQuick.Image.md#mipmap-prop).

<span id="layer-opacity-vs-item-opacity"></span>
### Layer Opacity vs Item Opacity

When applying [opacity](../QtQuick.qtquick-effects-topic.md#opacity) to an item hierarchy the opacity is applied to each item individually. This can lead to undesired visual results when the opacity is applied to a subtree. Consider the following example:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/71a95caa-a18d-4b1a-a38a-3d687cabc34d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/qml-blending-nonlayered.png" /></td>
<td><strong>Non-layered Opacity</strong>
<pre class="qml"><code>Item {
    id: nonLayered
    opacity: 0.5
    width: 100
    height: 100
    Rectangle { width: 80; height: 80; border.width: 1 }
    Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }
}</code></pre></td>
</tr>
</tbody>
</table>

A layer is rendered with the root item's opacity being 1, and then the root item's opacity is applied to the texture when it is drawn. This means that fading in a large item hierarchy from transparent to opaque, or vice versa, can be done without the overlap artifacts that the normal item by item alpha blending has. Here is the same example with layer enabled:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/9806ff37-592f-4a71-93c2-416f5f357866-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/qml-blending-layered.png" /></p></td>
<td><strong>Layered Opacity</strong>
<pre class="qml"><code>Item {
    id: layered
    opacity: 0.5
    layer.enabled: true
    width: 100
    height: 100
    Rectangle { width: 80; height: 80; border.width: 1 }
    Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }
}</code></pre></td>
</tr>
</tbody>
</table>

<span id="combined-with-shadereffects"></span>
### Combined with ShaderEffects

Setting layer.enabled to true will turn the item into a texture provider, making it possible to use the item directly as a texture, for instance in combination with the ShaderEffect type.

It is possible to apply an effect on a layer at runtime using layer.effect:

``` qml
Item {
    id: layerRoot
    layer.enabled: true
    layer.effect: ShaderEffect {
        fragmentShader: "
            uniform lowp sampler2D source; // this item
            uniform lowp float qt_Opacity; // inherited opacity of this item
            varying highp vec2 qt_TexCoord0;
            void main() {
                lowp vec4 p = texture2D(source, qt_TexCoord0);
                lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));
                gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;
            }"
    }
```

In this example, we implement the shader effect manually. The Qt Graphical Effects module contains a suite of ready-made effects for use with Qt Quick.

See [ShaderEffect](../QtQuick.ShaderEffect.md) for more information about using effects.

**Note:** [layer.enabled](#layer.enabled-prop) is actually just a more convenient way of using [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).

<span id="memory-and-performance"></span>
### Memory and Performance

When an item's layer is enabled, the scene graph will allocate memory in the GPU equal to `width x height x 4`. In memory constrained configurations, large layers should be used with care.

In the QPainter / QWidget world, it is some times favorable to cache complex content in a pixmap, image or texture. In Qt Quick, because of the techniques already applied by the [scene graph renderer](../QtQuick.qtquick-visualcanvas-scenegraph-renderer.md), this will in most cases not be the case. Excessive draw calls are already reduced because of batching and a cache will in most cases end up blending more pixels than the original content. The overhead of rendering to an offscreen and the blending involved with drawing the resulting texture is therefore often more costly than simply letting the item and its children be drawn normally.

Also, an item using a layer can not be [batched](../QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#batching) during rendering. This means that a scene with many layered items may have performance problems.

Layering can be convenient and useful for visual effects, but should in most cases be enabled for the duration of the effect and disabled afterwards.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocus-prop"></span><span class="name">activeFocus</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property indicates whether the item has active focus.

If activeFocus is true, either this item is the one that currently receives keyboard input, or it is a [FocusScope](../QtQuick.FocusScope.md) ancestor of the item that currently receives keyboard input.

Usually, activeFocus is gained by setting [focus](#focus-prop) on an item and its enclosing [FocusScope](../QtQuick.FocusScope.md) objects. In the following example, the `input` and `focusScope` objects will have active focus, while the root rectangle object will not.

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    FocusScope {
        id: focusScope
        focus: true
        TextInput {
            id: input
            focus: true
        }
    }
}
```

**See also** [focus](#focus-prop) and [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnTab-prop"></span><span class="name">activeFocusOnTab</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item wants to be in tab focus chain. By default this is set to false.

The tab focus chain traverses elements by visiting first the parent, and then its children in the order they occur in the children property. Pressing the tab key on an item in the tab focus chain will move keyboard focus to the next item in the chain. Pressing BackTab (normally Shift+Tab) will move focus to the previous item.

To set up a manual tab focus chain, see [KeyNavigation](../QtQuick.KeyNavigation.md). Tab key events used by Keys or [KeyNavigation](../QtQuick.KeyNavigation.md) have precedence over focus chain behavior, ignore the events in other key handlers to allow it to propagate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="anchors-prop"></span><strong>anchors group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="anchors.top-prop"></span><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.bottom-prop"></span><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.left-prop"></span><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.right-prop"></span><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.horizontalCenter-prop"></span><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.verticalCenter-prop"></span><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.baseline-prop"></span><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.fill-prop"></span><span class="name">anchors.fill</span> : <span class="type"><a href="index.html">Item</a></span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.centerIn-prop"></span><span class="name">anchors.centerIn</span> : <span class="type"><a href="index.html">Item</a></span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.margins-prop"></span><span class="name">anchors.margins</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.topMargin-prop"></span><span class="name">anchors.topMargin</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.bottomMargin-prop"></span><span class="name">anchors.bottomMargin</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.leftMargin-prop"></span><span class="name">anchors.leftMargin</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.rightMargin-prop"></span><span class="name">anchors.rightMargin</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.horizontalCenterOffset-prop"></span><span class="name">anchors.horizontalCenterOffset</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.verticalCenterOffset-prop"></span><span class="name">anchors.verticalCenterOffset</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.baselineOffset-prop"></span><span class="name">anchors.baselineOffset</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.alignWhenCentered-prop"></span><span class="name">anchors.alignWhenCentered</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Anchors provide a way to position an item by specifying its relationship with other items.

Margins apply to top, bottom, left, right, and fill anchors. The [anchors.margins](#anchors.margins-prop) property can be used to set all of the various margins at once, to the same value. It will not override a specific margin that has been previously set; to clear an explicit margin set its value to `undefined`. Note that margins are anchor-specific and are not applied if an item does not use anchors.

Offsets apply for horizontal center, vertical center, and baseline anchors.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/2633fadb-a69c-4e55-b6b7-53d273664a80-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-anchors_example.png" /></p></td>
<td>Text anchored to Image, horizontally centered and vertically below, with a margin.
<pre class="qml"><code>Item {
    Image {
        id: pic
        // ...
    }
    Text {
        id: label
        anchors.horizontalCenter: pic.horizontalCenter
        anchors.top: pic.bottom
        anchors.topMargin: 5
        // ...
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/ffe513fb-0111-4e68-a1f7-2de05b0d3495-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-anchors_example2.png" /></p></td>
<td>Left of Text anchored to right of Image, with a margin. The y property of both defaults to 0.
<pre class="qml"><code>Item {
    Image {
        id: pic
        // ...
    }
    Text {
        id: label
        anchors.left: pic.right
        anchors.leftMargin: 5
        // ...
    }
}</code></pre></td>
</tr>
</tbody>
</table>

[anchors.fill](#anchors.fill-prop) provides a convenient way for one item to have the same geometry as another item, and is equivalent to connecting all four directional anchors.

To clear an anchor value, set it to `undefined`.

[anchors.alignWhenCentered](#anchors.alignWhenCentered-prop) (default `true`) forces centered anchors to align to a whole pixel; if the item being centered has an odd [width](#width-prop) or [height](#height-prop), the item will be positioned on a whole pixel rather than being placed on a half-pixel. This ensures the item is painted crisply. There are cases where this is not desirable, for example when rotating the item jitters may be apparent as the center is rounded.

**Note:** You can only anchor an item to siblings or a parent.

For more information see [Anchor Layouts](../QtQuick.qtquick-positioning-anchors.md#anchor-layout).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="antialiasing-prop"></span><span class="name">antialiasing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Used by visual elements to decide if the item should use antialiasing or not. In some cases items with antialiasing require more memory and are potentially slower to render (see [Antialiasing](../QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#antialiasing) for more details).

The default is false, but may be overridden by derived elements.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="baselineOffset-prop"></span><span class="name">baselineOffset</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Specifies the position of the item's baseline in local coordinates.

The baseline of a [Text](../QtQuick.qtquick-releasenotes.md#text) item is the imaginary line on which the text sits. Controls containing text usually set their baseline to the baseline of their text.

For non-text items, a default baseline offset of 0 is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="children-prop"></span><span class="name">children</span> : <span class="type">list</span>&lt;<span class="type"><a href="index.html">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.

It is not generally necessary to refer to these properties when adding child items or resources, as the default [data](#data-prop) property will automatically assign child objects to the `children` and `resources` properties as appropriate. See the [data](#data-prop) documentation for details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="childrenRect-prop"></span><strong>childrenRect group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="childrenRect.x-prop"></span><span class="name">childrenRect.x</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="childrenRect.y-prop"></span><span class="name">childrenRect.y</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="childrenRect.width-prop"></span><span class="name">childrenRect.width</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="childrenRect.height-prop"></span><span class="name">childrenRect.height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the collective position and size of the item's children.

This property is useful if you need to access the collective geometry of an item's children in order to correctly size the item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clip-prop"></span><span class="name">clip</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether clipping is enabled. The default clip value is `false`.

If clipping is enabled, an item will clip its own painting, as well as the painting of its children, to its bounding rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

The data property allows you to freely mix visual children and resources in an item. If you assign a visual item to the data list it becomes a child and if you assign any other object type, it is added as a resource.

So you can write:

``` qml
Item {
    Text {}
    Rectangle {}
    Timer {}
}
```

instead of:

``` qml
Item {
    children: [
        Text {},
        Rectangle {}
    ]
    resources: [
        Timer {}
    ]
}
```

It should not generally be necessary to refer to the `data` property, as it is the default property for Item and thus all child items are automatically assigned to this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item receives mouse and keyboard events. By default this is true.

Setting this property directly affects the `enabled` value of child items. When set to `false`, the `enabled` values of all child items also become `false`. When set to `true`, the `enabled` values of child items are returned to `true`, unless they have explicitly been set to `false`.

Setting this property to `false` automatically causes [activeFocus](#activeFocus-prop) to be set to `false`, and this item will longer receive keyboard events.

**See also** [visible](#visible-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focus-prop"></span><span class="name">focus</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item has focus within the enclosing [FocusScope](../QtQuick.FocusScope.md). If true, this item will gain active focus when the enclosing [FocusScope](../QtQuick.FocusScope.md) gains active focus.

In the following example, `input` will be given active focus when `scope` gains active focus:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    FocusScope {
        id: scope
        TextInput {
            id: input
            focus: true
        }
    }
}
```

For the purposes of this property, the scene as a whole is assumed to act like a focus scope. On a practical level, that means the following QML will give active focus to `input` on startup.

``` qml
Rectangle {
    width: 100; height: 100
    TextInput {
          id: input
          focus: true
    }
}
```

**See also** [activeFocus](#activeFocus-prop) and [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the item's position and size.

The (x,y) position is relative to the [parent](#parent-prop).

``` qml
Item { x: 100; y: 100; width: 100; height: 100 }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="implicitHeight-prop"></span><span class="name">implicitHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the natural width or height of the Item if no [width](#width-prop) or [height](#height-prop) is specified.

The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:

``` qml
// Label.qml
import QtQuick 2.0
Item {
    property alias icon: image.source
    property alias label: text.text
    implicitWidth: text.implicitWidth + image.implicitWidth
    implicitHeight: Math.max(text.implicitHeight, image.implicitHeight)
    Image { id: image }
    Text {
        id: text
        wrapMode: Text.Wrap
        anchors.left: image.right; anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
```

**Note**: using [implicitWidth](#implicitWidth-prop) of Text or [TextEdit](../QtQuick.TextEdit.md) and setting the width explicitly incurs a performance penalty as the text must be laid out twice.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="implicitWidth-prop"></span><span class="name">implicitWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the natural width or height of the Item if no [width](#width-prop) or [height](#height-prop) is specified.

The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:

``` qml
// Label.qml
import QtQuick 2.0
Item {
    property alias icon: image.source
    property alias label: text.text
    implicitWidth: text.implicitWidth + image.implicitWidth
    implicitHeight: Math.max(text.implicitHeight, image.implicitHeight)
    Image { id: image }
    Text {
        id: text
        wrapMode: Text.Wrap
        anchors.left: image.right; anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
```

**Note**: using implicitWidth of Text or [TextEdit](../QtQuick.TextEdit.md) and setting the width explicitly incurs a performance penalty as the text must be laid out twice.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.effect-prop"></span><span class="name">layer.effect</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

Holds the effect that is applied to this layer.

The effect is typically a [ShaderEffect](../QtQuick.ShaderEffect.md) component, although any [Item](index.html) component can be assigned. The effect should have a source texture property with a name matching [layer.samplerName](#layer.samplerName-prop).

**See also** [layer.samplerName](#layer.samplerName-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.enabled-prop"></span><span class="name">layer.enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Holds whether the item is layered or not. Layering is disabled by default.

A layered item is rendered into an offscreen surface and cached until it is changed. Enabling layering for complex QML item hierarchies can sometimes be an optimization.

None of the other layer properties have any effect when the layer is disabled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.format-prop"></span><span class="name">layer.format</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the *layer.effect* is also specified. Depending on the OpenGL implementation, this property might allow you to save some texture memory.

-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).Alpha - GL\_ALPHA;
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).RGB - GL\_RGB
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).RGBA - GL\_RGBA

**Note:** [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).RGB and [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).Alpha should be used with caution, as support for these formats in the underlying hardare and driver is often not present.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.mipmap-prop"></span><span class="name">layer.mipmap</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.samplerName-prop"></span><span class="name">layer.samplerName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the name of the effect's source texture property.

This value must match the name of the effect's source texture property so that the Item can pass the layer's offscreen surface to the effect correctly.

**See also** [layer.effect](#layer.effect-prop) and [ShaderEffect](../QtQuick.ShaderEffect.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.smooth-prop"></span><span class="name">layer.smooth</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Holds whether the layer is smoothly transformed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.sourceRect-prop"></span><span class="name">layer.sourceRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property defines the rectangular area of the item that should be rendered into the texture. The source rectangle can be larger than the item itself. If the rectangle is null, which is the default, then the whole item is rendered to the texture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.textureSize-prop"></span><span class="name">layer.textureSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested pixel size of the layers texture. If it is empty, which is the default, the size of the item is used.

**Note:** Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layer.wrapMode-prop"></span><span class="name">layer.wrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the *layer.effect* is specified.

-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).RepeatHorizontally - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).Repeat - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT wrap mode with non-power-of-two textures.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opacity-prop"></span><span class="name">opacity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the opacity of the item. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0.

When this property is set, the specified opacity is also applied individually to child items. This may have an unintended effect in some circumstances. For example in the second set of rectangles below, the red rectangle has specified an opacity of 0.5, which affects the opacity of its blue child rectangle even though the child has not specified an opacity.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/c9a6d891-cdbf-4b67-bd69-55871bfd566d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_opacity1.png" /></p></td>
<td><pre class="qml"><code>Item {
    Rectangle {
        color: &quot;red&quot;
        width: 100; height: 100
        Rectangle {
            color: &quot;blue&quot;
            x: 50; y: 50; width: 100; height: 100
        }
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/bfcb8902-272d-4d94-8471-a4ed7daf8d57-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_opacity2.png" /></p></td>
<td><pre class="qml"><code>Item {
    Rectangle {
        opacity: 0.5
        color: &quot;red&quot;
        width: 100; height: 100
        Rectangle {
            color: &quot;blue&quot;
            x: 50; y: 50; width: 100; height: 100
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

Changing an item's opacity does not affect whether the item receives user input events. (In contrast, setting [visible](#visible-prop) property to `false` stops mouse events, and setting the [enabled](#enabled-prop) property to `false` stops mouse and keyboard events, and also removes active focus from the item.)

**See also** [visible](#visible-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parent-prop"></span><span class="name">parent</span> : <span class="type"><a href="index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the visual parent of the item.

**Note:** The concept of the *visual parent* differs from that of the *QObject parent*. An item's visual parent may not necessarily be the same as its object parent. See [Concepts - Visual Parent in Qt Quick](../QtQuick.qtquick-visualcanvas-visualparent.md) for more details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resources-prop"></span><span class="name">resources</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.

It is not generally necessary to refer to these properties when adding child items or resources, as the default [data](#data-prop) property will automatically assign child objects to the `children` and `resources` properties as appropriate. See the [data](#data-prop) documentation for details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rotation of the item in degrees clockwise around its [transformOrigin](#transformOrigin-prop).

The default value is 0 degrees (that is, no rotation).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/97de1343-4075-4415-880f-06b3a84a8fba-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-rotation.png" /></p></td>
<td><pre class="qml"><code>Rectangle {
    color: &quot;blue&quot;
    width: 100; height: 100
    Rectangle {
        color: &quot;red&quot;
        x: 25; y: 25; width: 50; height: 50
        rotation: 30
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [transform](#transform-prop) and [Rotation](../QtQuick.Rotation.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-prop"></span><span class="name">scale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the scale factor for this item.

A scale of less than 1.0 causes the item to be rendered at a smaller size, and a scale greater than 1.0 renders the item at a larger size. A negative scale causes the item to be mirrored when rendered.

The default value is 1.0.

Scaling is applied from the [transformOrigin](#transformOrigin-prop).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/d3328606-be73-4d86-9d0f-301be558d42c-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-scale.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    color: &quot;blue&quot;
    width: 100; height: 100
    Rectangle {
        color: &quot;green&quot;
        width: 25; height: 25
    }
    Rectangle {
        color: &quot;red&quot;
        x: 25; y: 25; width: 50; height: 50
        scale: 1.4
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [transform](#transform-prop) and [Scale](../QtQuick.Scale.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="smooth-prop"></span><span class="name">smooth</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Primarily used in image based items to decide if the item should use smooth sampling or not. Smooth sampling is performed using linear interpolation, while non-smooth is performed using nearest neighbor.

In Qt Quick 2.0, this property has minimal impact on performance.

By default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the current state of the item.

If the item is in its default state, that is, no explicit state has been set, then this property holds an empty string. Likewise, you can return an item to its default state by setting this property to an empty string.

**See also** [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="states-prop"></span><span class="name">states</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.State.md">State</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of possible states for this item. To change the state of this item, set the [state](#state-prop) property to one of these states, or set the [state](#state-prop) property to an empty string to revert the item to its default state.

This property is specified as a list of [State](../QtQuick.State.md) objects. For example, below is an item with "red\_color" and "blue\_color" states:

``` qml
import QtQuick 2.0
Rectangle {
    id: root
    width: 100; height: 100
    states: [
        State {
            name: "red_color"
            PropertyChanges { target: root; color: "red" }
        },
        State {
            name: "blue_color"
            PropertyChanges { target: root; color: "blue" }
        }
    ]
}
```

See [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) for more details on using states and transitions.

**See also** [transitions](../QtQuick.qtquick-statesanimations-topic.md#transitions).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transform-prop"></span><span class="name">transform</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transform.md">Transform</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of transformations to apply.

For more information see [Transform](../QtQuick.Transform.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transformOrigin-prop"></span><span class="name">transformOrigin</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the origin point around which scale and rotation transform.

Nine transform origins are available, as shown in the image below. The default transform origin is `Item.Center`.

![](https://developer.ubuntu.com/static/devportal_uploaded/a1bd45f2-351f-46eb-8474-21c3c4546116-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-transformorigin.png)

This example rotates an image around its bottom-right corner.

``` qml
Image {
    source: "myimage.png"
    transformOrigin: Item.BottomRight
    rotation: 45
}
```

To set an arbitrary transform origin point use the [Scale](../QtQuick.Scale.md) or [Rotation](../QtQuick.Rotation.md) transform types with [transform](#transform-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transitions-prop"></span><span class="name">transitions</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transition.md">Transition</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of transitions for this item. These define the transitions to be applied to the item whenever it changes its [state](#state-prop).

This property is specified as a list of [Transition](../QtQuick.qmlexampletoggleswitch.md#transition) objects. For example:

``` qml
import QtQuick 2.0
Item {
    transitions: [
        Transition {
            //...
        },
        Transition {
            //...
        }
    ]
}
```

See [Qt Quick States](../QtQuick.qtquick-statesanimations-states.md) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) for more details on using states and transitions.

**See also** [states](../QtQuick.qtquick-statesanimations-topic.md#states).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visible-prop"></span><span class="name">visible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item is visible. By default this is true.

Setting this property directly affects the `visible` value of child items. When set to `false`, the `visible` values of all child items also become `false`. When set to `true`, the `visible` values of child items are returned to `true`, unless they have explicitly been set to `false`.

(Because of this flow-on behavior, using the `visible` property may not have the intended effect if a property binding should only respond to explicit property changes. In such cases it may be better to use the [opacity](../QtQuick.qtquick-effects-topic.md#opacity) property instead.)

If this property is set to `false`, the item will no longer receive mouse events, but will continue to receive key events and will retain the keyboard [focus](#focus-prop) if it has been set. (In contrast, setting the [enabled](#enabled-prop) property to `false` stops both mouse and keyboard events, and also removes focus from the item.)

**Note:** This property's value is only affected by changes to this property or the parent's `visible` property. It does not change, for example, if this item moves off-screen, or if the [opacity](../QtQuick.qtquick-effects-topic.md#opacity) changes to 0.

**See also** [opacity](../QtQuick.qtquick-effects-topic.md#opacity) and [enabled](#enabled-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibleChildren-prop"></span><span class="name">visibleChildren</span> : <span class="type">list</span>&lt;<span class="type"><a href="index.html">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This read-only property lists all of the item's children that are currently visible. Note that a child's visibility may have changed explicitly, or because the visibility of this (it's parent) item or another grandparent changed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the item's position and size.

The (x,y) position is relative to the [parent](#parent-prop).

``` qml
Item { x: 100; y: 100; width: 100; height: 100 }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the item's position and size.

The (x,y) position is relative to the [parent](#parent-prop).

``` qml
Item { x: 100; y: 100; width: 100; height: 100 }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the item's position and size.

The (x,y) position is relative to the [parent](#parent-prop).

``` qml
Item { x: 100; y: 100; width: 100; height: 100 }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="z-prop"></span><span class="name">z</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the stacking order of sibling items. By default the stacking order is 0.

Items with a higher stacking value are drawn on top of siblings with a lower stacking order. Items with the same stacking value are drawn bottom up in the order they appear. Items with a negative stacking value are drawn under their parent's content.

The following example shows the various effects of stacking order.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/38444563-aea0-40d2-a450-5dd4172b8a26-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking1.png" /></p></td>
<td>Same <code>z</code> - later children above earlier children:
<pre class="qml"><code>Item {
    Rectangle {
        color: &quot;red&quot;
        width: 100; height: 100
    }
    Rectangle {
        color: &quot;blue&quot;
        x: 50; y: 50; width: 100; height: 100
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/8930d137-c77f-4d57-92a9-f9087f300c0d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking2.png" /></p></td>
<td>Higher <code>z</code> on top:
<pre class="qml"><code>Item {
    Rectangle {
        z: 1
        color: &quot;red&quot;
        width: 100; height: 100
    }
    Rectangle {
        color: &quot;blue&quot;
        x: 50; y: 50; width: 100; height: 100
    }
}</code></pre></td>
</tr>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/75c82ac3-b997-42c9-9a17-d4dfb13c21d8-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking3.png" /></p></td>
<td>Same <code>z</code> - children above parents:
<pre class="qml"><code>Item {
    Rectangle {
        color: &quot;red&quot;
        width: 100; height: 100
        Rectangle {
            color: &quot;blue&quot;
            x: 50; y: 50; width: 100; height: 100
        }
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/85a72893-ea82-4b33-a1d8-e59e7764b6c9-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking4.png" /></p></td>
<td>Lower <code>z</code> below:
<pre class="qml"><code>Item {
    Rectangle {
        color: &quot;red&quot;
        width: 100; height: 100
        Rectangle {
            z: -1
            color: &quot;blue&quot;
            x: 50; y: 50; width: 100; height: 100
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="childAt-method"></span><span class="name">childAt</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the first visible child item found at point (*x*, *y*) within the coordinate system of this item.

Returns `null` if there is no such item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contains-method"></span><span class="type">object</span> <span class="name">contains</span>(<span class="type">point</span> <em>point</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if this item contains *point*, which is in local coordinates; returns false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forceActiveFocus-method-2"></span><span class="name">forceActiveFocus</span>(<span class="type">Qt::FocusReason</span> <em>reason</em>)</p></td>
</tr>
</tbody>
</table>

Forces active focus on the item with the given *reason*.

This method sets focus on the item and ensures that all ancestor [FocusScope](../QtQuick.FocusScope.md) objects in the object hierarchy are also given [focus](#focus-prop).

This QML method was introduced in Qt 5.1.

**See also** [activeFocus](#activeFocus-prop) and Qt::FocusReason.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forceActiveFocus-method"></span><span class="name">forceActiveFocus</span>()</p></td>
</tr>
</tbody>
</table>

This is an overloaded function.

Forces active focus on the item.

This method sets focus on the item and ensures that all ancestor [FocusScope](../QtQuick.FocusScope.md) objects in the object hierarchy are also given [focus](#focus-prop).

The reason for the focus change will be *Qt::OtherFocusReason*. Use the overloaded method to specify the focus reason to enable better handling of the focus change.

**See also** [activeFocus](#activeFocus-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="grabToImage-method"></span><span class="type">bool</span> <span class="name">grabToImage</span>(<span class="type">callback</span>, <span class="type">targetSize</span>)</p></td>
</tr>
</tbody>
</table>

Grabs the item into an in-memory image.

The grab happens asynchronously and the JavaScript function *callback* is invoked when the grab is completed.

Use *targetSize* to specify the size of the target image. By default, the result will have the same size as the item.

If the grab could not be initiated, the function returns `false`.

The following snippet shows how to grab an item and store the results to a file.

``` qml
Rectangle {
    id: source
    width: 100
    height: 100
    gradient: Gradient {
        GradientStop { position: 0; color: "steelblue" }
        GradientStop { position: 1; color: "black" }
    }
}
    // ...
    source.grabToImage(function(result) {
                           result.saveToFile("something.png");
                       });
```

The following snippet shows how to grab an item and use the results in another image element.

``` qml
Image {
    id: image
}
    // ...
    source.grabToImage(function(result) {
                           image.source = result.url;
                       },
                       Qt.size(50, 50));
```

**Note:** This function will render the item to an offscreen surface and copy that surface from the GPU's memory into the CPU's memory, which can be quite costly. For "live" preview, use [layers](#layer.enabled-prop) or [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapFromItem-method-2"></span><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type"><a href="index.html">Item</a></span> <em>item</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>width</em>, <span class="type">real</span> <em>height</em>)</p></td>
</tr>
</tbody>
</table>

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in *item*'s coordinate system, to this item's coordinate system, and returns an object with `x` and `y` (and optionally `width` and `height`) properties matching the mapped coordinate.

If *item* is a `null` value, this maps the point or rect from the coordinate system of the root QML view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapFromItem-method"></span><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type"><a href="index.html">Item</a></span> <em>item</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in *item*'s coordinate system, to this item's coordinate system, and returns an object with `x` and `y` (and optionally `width` and `height`) properties matching the mapped coordinate.

If *item* is a `null` value, this maps the point or rect from the coordinate system of the root QML view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapToItem-method-2"></span><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type"><a href="index.html">Item</a></span> <em>item</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>width</em>, <span class="type">real</span> <em>height</em>)</p></td>
</tr>
</tbody>
</table>

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in this item's coordinate system, to *item*'s coordinate system, and returns an object with `x` and `y` (and optionally `width` and `height`) properties matching the mapped coordinate.

If *item* is a `null` value, this maps the point or rect to the coordinate system of the root QML view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapToItem-method"></span><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type"><a href="index.html">Item</a></span> <em>item</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in this item's coordinate system, to *item*'s coordinate system, and returns an object with `x` and `y` (and optionally `width` and `height`) properties matching the mapped coordinate.

If *item* is a `null` value, this maps the point or rect to the coordinate system of the root QML view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextItemInFocusChain-method"></span><span class="name">nextItemInFocusChain</span>(<span class="type">bool</span> <em>forward</em>)</p></td>
</tr>
</tbody>
</table>

Returns the item in the focus chain which is next to this item. If *forward* is `true`, or not supplied, it is the next item in the forwards direction. If *forward* is `false`, it is the next item in the backwards direction.

This QML method was introduced in Qt 5.1.

