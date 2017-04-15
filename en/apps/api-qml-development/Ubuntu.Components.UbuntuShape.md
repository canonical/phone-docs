---
Title: Ubuntu.Components.UbuntuShape
---
        
UbuntuShape
===========

<span class="subtitle"></span>
Rounded rectangle containing a source image blended over a background color. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[aspect](#aspect-prop)**** : enumeration
-   ****[backgroundColor](#backgroundColor-prop)**** : color
-   ****[backgroundMode](#backgroundMode-prop)**** : enumeration
-   ****[radius](#radius-prop)**** : string
-   ****[relativeRadius](#relativeRadius-prop)**** : real
-   ****[secondaryBackgroundColor](#secondaryBackgroundColor-prop)**** : color
-   ****[source](#source-prop)**** : variant
-   ****[sourceFillMode](#sourceFillMode-prop)**** : enumeration
-   ****[sourceHorizontalAlignment](#sourceHorizontalAlignment-prop)**** : enumeration
-   ****[sourceHorizontalWrapMode](#sourceHorizontalWrapMode-prop)**** : enumeration
-   ****[sourceOpacity](#sourceOpacity-prop)**** : real
-   ****[sourceScale](#sourceScale-prop)**** : vector2d
-   ****[sourceTranslation](#sourceTranslation-prop)**** : vector2d
-   ****[sourceVerticalAlignment](#sourceVerticalAlignment-prop)**** : enumeration
-   ****[sourceVerticalWrapMode](#sourceVerticalWrapMode-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The [UbuntuShape](index.html) is a rounded rectangle (based on a [squircle](https://en.wikipedia.org/wiki/Squircle)) containing an optional source image blended over a background color (solid or linear gradient). Different properties allow to change the look of the shape.

Examples:

``` qml
import Ubuntu.Components 1.2
UbuntuShape {
    backgroundColor: "green"
}
```

``` qml
import Ubuntu.Components 1.2
UbuntuShape {
    source: Image {
        source: "ubuntu.png"
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="aspect-prop"></span><span class="name">aspect</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the graphical style of the [UbuntuShape](index.html). The default value is `UbuntuShape.Inset`.

**Note:** Setting this disables support for the deprecated borderSource property. Use the UbuntuShapeOverlay item in order to provide the inset "pressed" aspect previously supported by that property.

-   **UbuntuShape.Flat** - no effects applied
-   **UbuntuShape.Inset** - inner shadow slightly moved downwards and bevelled bottom

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundColor-prop"></span><span class="name">backgroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property defines the background color. The default value is transparent black.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundMode-prop"></span><span class="name">backgroundMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the background rendering mode. The default value is `UbuntuShape.SolidColor`.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

-   **UbuntuShape.SolidColor** - the color is [backgroundColor](#backgroundColor-prop)
-   **UbuntuShape.VerticalGradient** - the color is a vertical gradient from [backgroundColor](#backgroundColor-prop) to [secondaryBackgroundColor](#secondaryBackgroundColor-prop).

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the corner radius. Three fixed values are supported: `"small"`, `"medium"` and `"large"`. The default value is `"small"`.

**Note:** Setting a non-zero [relativeRadius](#relativeRadius-prop) value disables this property temporarily.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeRadius-prop"></span><span class="name">relativeRadius</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property defines a radius relative to the size of the [UbuntuShape](index.html). It is specified as a number between 0.0 (0%) and 0.75 (75%) corresponding to the proportion of the radius with regards to the smallest side (divided by 2 since a side has 2 angles). The default value is 0.0.

**Note:** Setting a non-zero value takes over the [radius](#radius-prop) property.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secondaryBackgroundColor-prop"></span><span class="name">secondaryBackgroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property defines the secondary background color. It is used when [backgroundMode](#backgroundMode-prop) is set to `UbuntuShape.VerticalGradient`. The default value is transparent black.

**Note:** Setting this disables support for the deprecated color and gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-variant.html">variant</a></span></p></td>
</tr>
</tbody>
</table>

This property sets the source provider of a texture rendered in the [UbuntuShape](index.html). Supported types are `Image`, `AnimatedImage` (to render a GIF image for instance) and `ShaderEffectSource` (to embed a UI previously rendered with QML). It is blended over the background color. The default value is `null`.

It can be set either with an inlined `Image`:

``` qml
Item {
    UbuntuShape {
        source: Image { source: "ubuntu.png" }
    }
}
```

or with an `Image` `id`:

``` qml
Item {
    Image {
        id: img
        visible: false
        source: "ubuntu.png"
    }
    UbuntuShape {
        source: img
    }
}
```

Note that in this case, the `Image` is stored in the scene tree as any other items. So setting it as not visible might be needed.

The [sampling filter](https://en.wikipedia.org/wiki/Texture_filtering) is set through the given Item's `smooth` property. Set it to `false` for nearest-neighbor filtering or to `true` for bilinear filtering.

The fill modes and alignments set on the `Image` and `AnimatedImage` are not monitored, use the appropriate [UbuntuShape](index.html) properties instead ([sourceFillMode](#sourceFillMode-prop), [sourceHorizontalAlignment](#sourceHorizontalAlignment-prop) and [sourceVerticalAlignment](#sourceVerticalAlignment-prop)).

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceFillMode-prop"></span><span class="name">sourceFillMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This properties defines how the [source](#source-prop) texture fills the [UbuntuShape](index.html). The modes are the same as the ones used by `Image`, minus the tiling which is exposed through wrapping properties ([sourceHorizontalWrapMode](#sourceHorizontalWrapMode-prop) and [sourceVerticalWrapMode](#sourceVerticalWrapMode-prop)). The default value is `UbuntuShape.Stretch`.

**Note:** Setting this disables support for the deprecated image property.

-   **UbuntuShape.Stretch** - the source is scaled non-uniformly to fit
-   **UbuntuShape.PreserveAspectFit** - the source is scaled uniformly to fit without cropping
-   **UbuntuShape.PreserveAspectCrop** - the source is scaled uniformly to fit with cropping
-   **UbuntuShape.Pad** - the source is not scaled

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceHorizontalAlignment-prop"></span><span class="name">sourceHorizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines how the [source](#source-prop) texture is horizontally aligned inside the [UbuntuShape](index.html) area. The default value is `UbuntuShape.AlignLeft`.

**Note:** Setting this disables support for the deprecated image property.

-   **UbuntuShape.AlignLeft** - the source is aligned to the left
-   **UbuntuShape.AlignHCenter** - the source is aligned to the horizontal center
-   **UbuntuShape.AlignRight** - the source is aligned to the right

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceHorizontalWrapMode-prop"></span><span class="name">sourceHorizontalWrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

When the [sourceFillMode](#sourceFillMode-prop) is set to `UbuntuShape.Pad` or `UbuntuShape.PreserveAspectFit` or when the [sourceScale](#sourceScale-prop) and/or [sourceTranslation](#sourceTranslation-prop) properties are changed, the [source](#source-prop) texture might not cover the entire [UbuntuShape](index.html) area. This property defines how the source texture wraps outside of its content area. The default value is `UbuntuShape.Transparent`.

Ensure `UbuntuShape.Repeat` is used only when necessary (in case of an `Image` or `AnimatedImage` source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html) renderer to batch the [UbuntuShape](index.html) with others.

**Note:** Some OpenGL ES 2 implementations do not support `UbuntuShape.Repeat` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image property.

-   **UbuntuShape.Transparent** - the source is clamped to transparent
-   **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceOpacity-prop"></span><span class="name">sourceOpacity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the opacity of the [source](#source-prop) texture. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0.

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceScale-prop"></span><span class="name">sourceScale</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-vector2d.html">vector2d</a></span></p></td>
</tr>
</tbody>
</table>

This property defines the two-component vector used to scale the [source](#source-prop) texture. The texture is scaled at the alignment point defined by [sourceHorizontalAlignment](#sourceHorizontalAlignment-prop) and [sourceVerticalAlignment](#sourceVerticalAlignment-prop). The default value is `Qt.vector2d(1.0,1.0)`.

That can be used to change the size of the [source](#source-prop) texture, to flip it horizontally and/or vertically, to achieve pulsing animations, etc.

Here is a code sample showing how to apply an horizontal flip:

``` qml
UbuntuShape {
    source: Image { source: "ubuntu.png" }
    sourceScale: Qt.vector2d(-1.0, 1.0)
}
```

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceTranslation-prop"></span><span class="name">sourceTranslation</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-vector2d.html">vector2d</a></span></p></td>
</tr>
</tbody>
</table>

This property defines the two-component vector in normalized item coordinates used to translate the [source](#source-prop) texture. The default value is `Qt.vector2d(0.0,0.0)`.

That can be used to put the [source](#source-prop) texture at a precise position, to create infinite scrolling animations (using the `UbuntuShape.Repeat` wrap mode), etc.

**Note:** Setting this disables support for the deprecated image property.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceVerticalAlignment-prop"></span><span class="name">sourceVerticalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines how the [source](#source-prop) texture is vertically aligned inside the [UbuntuShape](index.html) area. The default value is `UbuntuShape.AlignTop`.

**Note:** Setting this disables support for the deprecated image property.

-   **UbuntuShape.AlignTop** - the source is aligned to the top
-   **UbuntuShape.AlignVCenter** - the source is aligned to the vertical center
-   **UbuntuShape.AlignBottom** - the source is aligned to the bottom

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceVerticalWrapMode-prop"></span><span class="name">sourceVerticalWrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

When the [sourceFillMode](#sourceFillMode-prop) is set to `UbuntuShape.Pad` or `UbuntuShape.PreserveAspectFit` or when the [sourceScale](#sourceScale-prop) and/or [sourceTranslation](#sourceTranslation-prop) properties are changed, the [source](#source-prop) texture might not cover the entire [UbuntuShape](index.html) area. This property defines how the source texture wraps outside of its content area. The default value is `UbuntuShape.Transparent`.

Ensure `UbuntuShape.Repeat` is used only when necessary (in case of an `Image` or `AnimatedImage` source) as it requires the underlying texture to be extracted from its atlas. That slows down the rendering speed since it prevents the [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html) renderer to batch the [UbuntuShape](index.html) with others.

**Note:** Some OpenGL ES 2 implementations do not support `UbuntuShape.Repeat` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image property.

-   **UbuntuShape.Transparent** - the source is clamped to transparent
-   **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

