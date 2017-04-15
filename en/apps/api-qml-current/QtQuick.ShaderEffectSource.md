---
Title: QtQuick.ShaderEffectSource
---
        
ShaderEffectSource
==================

<span class="subtitle"></span>
Renders a Qt Quick item into a texture and displays it More...

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

-   ****[format](#format-prop)**** : enumeration
-   ****[hideSource](#hideSource-prop)**** : bool
-   ****[live](#live-prop)**** : bool
-   ****[mipmap](#mipmap-prop)**** : bool
-   ****[recursive](#recursive-prop)**** : bool
-   ****[sourceItem](#sourceItem-prop)**** : Item
-   ****[sourceRect](#sourceRect-prop)**** : rect
-   ****[textureSize](#textureSize-prop)**** : size
-   ****[wrapMode](#wrapMode-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[scheduleUpdate](#scheduleUpdate-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ShaderEffectSource](index.html) type renders [sourceItem](#sourceItem-prop) into a texture and displays it in the scene. [sourceItem](#sourceItem-prop) is drawn into the texture as though it was a fully opaque root item. Thus [sourceItem](#sourceItem-prop) itself can be invisible, but still appear in the texture.

[ShaderEffectSource](index.html) can be used as:

-   a texture source in a [ShaderEffect](../QtQuick.ShaderEffect.md). This allows you to apply custom shader effects to any [Qt Quick](../QtQuick.qtquick-index.md) item.
-   a cache for a complex item. The complex item can be rendered once into the texture, which can then be animated freely without the need to render the complex item again every frame.
-   an opacity layer. [ShaderEffectSource](index.html) allows you to apply an opacity to items as a group rather than each item individually.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/156d38e6-460c-4729-bd3e-339f6cc4b4c2-api/apps/qml/sdk-15.04.5/QtQuick.ShaderEffectSource/images/declarative-shadereffectsource.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 200
    height: 100
    gradient: Gradient {
        GradientStop { position: 0; color: &quot;white&quot; }
        GradientStop { position: 1; color: &quot;black&quot; }
    }
    Row {
        opacity: 0.5
        Item {
            id: foo
            width: 100; height: 100
            Rectangle { x: 5; y: 5; width: 60; height: 60; color: &quot;red&quot; }
            Rectangle { x: 20; y: 20; width: 60; height: 60; color: &quot;orange&quot; }
            Rectangle { x: 35; y: 35; width: 60; height: 60; color: &quot;yellow&quot; }
        }
        ShaderEffectSource {
            width: 100; height: 100
            sourceItem: foo
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

The [ShaderEffectSource](index.html) type does not redirect any mouse or keyboard input to [sourceItem](#sourceItem-prop). If you hide the [sourceItem](#sourceItem-prop) by setting [visible](../QtQuick.Item.md#visible-prop) to false or [opacity](../QtQuick.Item.md#opacity-prop) to zero, it will no longer react to input. In cases where the [ShaderEffectSource](index.html) is meant to replace the [sourceItem](#sourceItem-prop), you typically want to hide the [sourceItem](#sourceItem-prop) while still handling input. For this, you can use the [hideSource](#hideSource-prop) property.

**Note:** If [sourceItem](#sourceItem-prop) is a [Rectangle](../QtQuick.Rectangle.md) with border, by default half the border width falls outside the texture. To get the whole border, you can extend the [sourceRect](#sourceRect-prop).

**Note:** The [ShaderEffectSource](index.html) relies on FBO multisampling support to antialias edges. If the underlying hardware does not support this, which is the case for most embedded graphics chips, edges rendered inside a [ShaderEffectSource](index.html) will not be antialiased. One way to remedy this is to double the size of the effect source and render it with `smooth: true` (this is the default value of smooth). This will be equivalent to 4x multisampling, at the cost of lower performance and higher memory use.

**Warning:** In most cases, using a [ShaderEffectSource](index.html) will decrease performance, and in all cases, it will increase video memory usage. Rendering through a [ShaderEffectSource](index.html) might also lead to lower quality since some OpenGL implementations support multisampled backbuffer, but not multisampled framebuffer objects.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="format-prop"></span><span class="name">format</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the item is used as a source texture of a [ShaderEffect](../QtQuick.ShaderEffect.md). Depending on the OpenGL implementation, this property might allow you to save some texture memory.

-   [ShaderEffectSource](index.html).Alpha - GL\_ALPHA
-   [ShaderEffectSource](index.html).RGB - GL\_RGB
-   [ShaderEffectSource](index.html).RGBA - GL\_RGBA

**Note:** Some OpenGL implementations do not support the GL\_ALPHA format.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hideSource-prop"></span><span class="name">hideSource</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the [sourceItem](#sourceItem-prop) is hidden, though it will still be rendered into the texture. As opposed to hiding the [sourceItem](#sourceItem-prop) by setting [visible](../QtQuick.Item.md#visible-prop) to false, setting this property to true will not prevent mouse or keyboard input from reaching [sourceItem](#sourceItem-prop). The property is useful when the [ShaderEffectSource](index.html) is anchored on top of, and meant to replace the [sourceItem](#sourceItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the texture is updated whenever the [sourceItem](#sourceItem-prop) updates. Otherwise, it will be a frozen image, even if [sourceItem](#sourceItem-prop) is assigned a new item. The property is true by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mipmap-prop"></span><span class="name">mipmap</span> : <span class="type">bool</span></p></td>
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
<td><p><span id="recursive-prop"></span><span class="name">recursive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set this property to true if the [ShaderEffectSource](index.html) has a dependency on itself. ShaderEffectSources form a dependency chain, where one [ShaderEffectSource](index.html) can be part of the [sourceItem](#sourceItem-prop) of another. If there is a loop in this chain, a [ShaderEffectSource](index.html) could end up trying to render into the same texture it is using as source, which is not allowed by OpenGL. When this property is set to true, an extra texture is allocated so that [ShaderEffectSource](index.html) can keep a copy of the texture from the previous frame. It can then render into one texture and use the texture from the previous frame as source.

Setting both this property and [live](#live-prop) to true will cause the scene graph to render continuously. Since the [ShaderEffectSource](index.html) depends on itself, updating it means that it immediately becomes dirty again.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceItem-prop"></span><span class="name">sourceItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the item to be rendered into the texture. Setting this to null while [live](#live-prop) is true, will release the texture resources.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceRect-prop"></span><span class="name">sourceRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property defines which rectangular area of the [sourceItem](#sourceItem-prop) to render into the texture. The source rectangle can be larger than [sourceItem](#sourceItem-prop) itself. If the rectangle is null, which is the default, the whole [sourceItem](#sourceItem-prop) is rendered to texture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textureSize-prop"></span><span class="name">textureSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested size of the texture. If it is empty, which is the default, the size of the source rectangle is used.

**Note:** Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wrapMode-prop"></span><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the item is used as a source texture of a [ShaderEffect](../QtQuick.ShaderEffect.md).

-   [ShaderEffectSource](index.html).ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-   [ShaderEffectSource](index.html).RepeatHorizontally - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-   [ShaderEffectSource](index.html).RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-   [ShaderEffectSource](index.html).Repeat - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT wrap mode with non-power-of-two textures.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scheduleUpdate-method"></span><span class="name">scheduleUpdate</span>()</p></td>
</tr>
</tbody>
</table>

Schedules a re-rendering of the texture for the next frame. Use this to update the texture when [live](#live-prop) is false.

