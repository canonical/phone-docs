---
Title: QtQuick.ShaderEffect
---
        
ShaderEffect
============

<span class="subtitle"></span>
Applies custom shaders to a rectangle More...

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
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[blending](#blending-prop)**** : bool
-   ****[cullMode](#cullMode-prop)**** : enumeration
-   ****[fragmentShader](#fragmentShader-prop)**** : string
-   ****[log](#log-prop)**** : string
-   ****[mesh](#mesh-prop)**** : variant
-   ****[status](#status-prop)**** : enumeration
-   ****[supportsAtlasTextures](#supportsAtlasTextures-prop)**** : bool
-   ****[vertexShader](#vertexShader-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The [ShaderEffect](index.html) type applies a custom OpenGL [vertex](#vertexShader-prop) and [fragment](#fragmentShader-prop) shader to a rectangle. It allows you to write effects such as drop shadow, blur, colorize and page curl directly in QML.

There are two types of input to the [vertexShader](#vertexShader-prop): uniform variables and attributes. Some are predefined:

-   uniform mat4 qt\_Matrix - combined transformation matrix, the product of the matrices from the root item to this [ShaderEffect](index.html), and an orthogonal projection.
-   uniform float qt\_Opacity - combined opacity, the product of the opacities from the root item to this [ShaderEffect](index.html).
-   attribute vec4 qt\_Vertex - vertex position, the top-left vertex has position (0, 0), the bottom-right ([width](../QtQuick.Item.md#width-prop), [height](../QtQuick.Item.md#height-prop)).
-   attribute vec2 qt\_MultiTexCoord0 - texture coordinate, the top-left coordinate is (0, 0), the bottom-right (1, 1). If [supportsAtlasTextures](#supportsAtlasTextures-prop) is true, coordinates will be based on position in the atlas instead.

In addition, any property that can be mapped to an OpenGL Shading Language (GLSL) type is available as a uniform variable. The following list shows how properties are mapped to GLSL uniform variables:

-   bool, int, qreal -&gt; bool, int, float - If the type in the shader is not the same as in QML, the value is converted automatically.
-   QColor -&gt; vec4 - When colors are passed to the shader, they are first premultiplied. Thus Qt.rgba(0.2, 0.6, 1.0, 0.5) becomes vec4(0.1, 0.3, 0.5, 0.5) in the shader, for example.
-   QRect, QRectF -&gt; vec4 - Qt.rect(x, y, w, h) becomes vec4(x, y, w, h) in the shader.
-   QPoint, QPointF, QSize, QSizeF -&gt; vec2
-   QVector3D -&gt; vec3
-   QVector4D -&gt; vec4
-   QTransform -&gt; mat3
-   QMatrix4x4 -&gt; mat4
-   QQuaternion -&gt; vec4, scalar value is `w`.
-   [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image), [ShaderEffectSource](../QtQuick.ShaderEffectSource.md) -&gt; sampler2D - Origin is in the top-left corner, and the color values are premultiplied.

The QML scene graph back-end may choose to allocate textures in texture atlases. If a texture allocated in an atlas is passed to a [ShaderEffect](index.html), it is by default copied from the texture atlas into a stand-alone texture so that the texture coordinates span from 0 to 1, and you get the expected wrap modes. However, this will increase the memory usage. To avoid the texture copy, set [supportsAtlasTextures](#supportsAtlasTextures-prop) for simple shaders using qt\_MultiTexCoord0, or for each "uniform sampler2D &lt;name&gt;" declare a "uniform vec4 qt\_SubRect\_&lt;name&gt;" which will be assigned the texture's normalized source rectangle. For stand-alone textures, the source rectangle is \[0, 1\]x\[0, 1\]. For textures in an atlas, the source rectangle corresponds to the part of the texture atlas where the texture is stored. The correct way to calculate the texture coordinate for a texture called "source" within a texture atlas is "qt\_SubRect\_source.xy + qt\_SubRect\_source.zw \* qt\_MultiTexCoord0".

The output from the [fragmentShader](#fragmentShader-prop) should be premultiplied. If [blending](#blending-prop) is enabled, source-over blending is used. However, additive blending can be achieved by outputting zero in the alpha channel.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/1fdb7815-5e84-464f-903e-703e4d074528-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/declarative-shadereffectitem.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 200; height: 100
    Row {
        Image { id: img; sourceSize { width: 100; height: 100 } source: &quot;qt-logo.png&quot; }
        ShaderEffect {
            width: 100; height: 100
            property variant src: img
            vertexShader: &quot;
                uniform highp mat4 qt_Matrix;
                attribute highp vec4 qt_Vertex;
                attribute highp vec2 qt_MultiTexCoord0;
                varying highp vec2 coord;
                void main() {
                    coord = qt_MultiTexCoord0;
                    gl_Position = qt_Matrix * qt_Vertex;
                }&quot;
            fragmentShader: &quot;
                varying highp vec2 coord;
                uniform sampler2D src;
                uniform lowp float qt_Opacity;
                void main() {
                    lowp vec4 tex = texture2D(src, coord);
                    gl_FragColor = vec4(vec3(dot(tex.rgb, vec3(0.344, 0.5, 0.156))), tex.a) * qt_Opacity;
                }&quot;
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

By default, the [ShaderEffect](index.html) consists of four vertices, one for each corner. For non-linear vertex transformations, like page curl, you can specify a fine grid of vertices by specifying a [mesh](#mesh-prop) resolution.

<span id="shadereffect-and-item-layers"></span>
ShaderEffect and Item Layers
----------------------------

The [ShaderEffect](index.html) type can be combined with [layered items](../QtQuick.Item.md#item-layers).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Layer with effect disabled</strong> <img src="https://developer.ubuntu.com/static/devportal_uploaded/9e8c3230-a23b-4011-b953-a86ec8bf67b7-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/qml-shadereffect-nolayereffect.png" /></td>
<td><strong>Layer with effect enabled</strong> <img src="https://developer.ubuntu.com/static/devportal_uploaded/4d21b47f-6cbe-40dd-87ca-65ece9c51116-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/qml-shadereffect-layereffect.png" /></td>
<td><pre class="qml"><code>Item {
    id: layerRoot
    layer.enabled: true
    layer.effect: ShaderEffect {
        fragmentShader: &quot;
            uniform lowp sampler2D source; // this item
            uniform lowp float qt_Opacity; // inherited opacity of this item
            varying highp vec2 qt_TexCoord0;
            void main() {
                lowp vec4 p = texture2D(source, qt_TexCoord0);
                lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));
                gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;
            }&quot;
    }</code></pre></td>
</tr>
</tbody>
</table>

It is also possible to combine multiple layered items:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/5ea71bde-63e6-4907-8b82-fd77631ee36b-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/qml-shadereffect-opacitymask.png" /></td>
<td><pre class="qml"><code>    Rectangle {
        id: gradientRect;
        width: 10
        height: 10
        gradient: Gradient {
            GradientStop { position: 0; color: &quot;white&quot; }
            GradientStop { position: 1; color: &quot;steelblue&quot; }
        }
        visible: false; // should not be visible on screen.
        layer.enabled: true;
        layer.smooth: true
    }
    Text {
        id: textItem
        font.pixelSize: 48
        text: &quot;Gradient Text&quot;
        anchors.centerIn: parent
        layer.enabled: true
        // This item should be used as the &#39;mask&#39;
        layer.samplerName: &quot;maskSource&quot;
        layer.effect: ShaderEffect {
            property var colorSource: gradientRect;
            fragmentShader: &quot;
                uniform lowp sampler2D colorSource;
                uniform lowp sampler2D maskSource;
                uniform lowp float qt_Opacity;
                varying highp vec2 qt_TexCoord0;
                void main() {
                    gl_FragColor =
                        texture2D(colorSource, qt_TexCoord0)
                        * texture2D(maskSource, qt_TexCoord0).a
                        * qt_Opacity;
                }
            &quot;
        }
    }</code></pre></td>
</tr>
</tbody>
</table>

The Qt Graphical Effects module contains several ready-made effects for using with Qt Quick applications.

**Note:** Scene Graph textures have origin in the top-left corner rather than bottom-left which is common in OpenGL.

For information about the GLSL version being used, see [QtQuick::OpenGLInfo](../QtQuick.OpenGLInfo.md).

**See also** [Item Layers](../QtQuick.Item.md#item-layers).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blending-prop"></span><span class="name">blending</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the output from the [fragmentShader](#fragmentShader-prop) is blended with the background using source-over blend mode. If false, the background is disregarded. Blending decreases the performance, so you should set this property to false when blending is not needed. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cullMode-prop"></span><span class="name">cullMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines which sides of the item should be visible.

-   [ShaderEffect](index.html).NoCulling - Both sides are visible
-   [ShaderEffect](index.html).BackFaceCulling - only front side is visible
-   [ShaderEffect](index.html).FrontFaceCulling - only back side is visible

The default is NoCulling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fragmentShader-prop"></span><span class="name">fragmentShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the fragment shader's GLSL source code. The default shader passes the texture coordinate along to the fragment shader as "varying highp vec2 qt\_TexCoord0".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="log-prop"></span><span class="name">log</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a log of warnings and errors from the latest attempt at compiling and linking the OpenGL shader program. It is updated at the same time [status](#status-prop) is set to Compiled or Error.

**See also** [status](#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mesh-prop"></span><span class="name">mesh</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property defines the mesh used to draw the [ShaderEffect](index.html). It can hold any [GridMesh](../QtQuick.GridMesh.md) object. If a size value is assigned to this property, the [ShaderEffect](index.html) implicitly uses a [GridMesh](../QtQuick.GridMesh.md) with the value as [mesh resolution](../QtQuick.GridMesh.md#resolution-prop). By default, this property is the size 1x1.

**See also** [GridMesh](../QtQuick.GridMesh.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property tells the current status of the OpenGL shader program.

-   [ShaderEffect](index.html).Compiled - the shader program was successfully compiled and linked.
-   [ShaderEffect](index.html).Uncompiled - the shader program has not yet been compiled.
-   [ShaderEffect](index.html).Error - the shader program failed to compile or link.

When setting the fragment or vertex shader source code, the status will become Uncompiled. The first time the [ShaderEffect](index.html) is rendered with new shader source code, the shaders are compiled and linked, and the status is updated to Compiled or Error.

**See also** [log](#log-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsAtlasTextures-prop"></span><span class="name">supportsAtlasTextures</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set this property true to indicate that the [ShaderEffect](index.html) is able to use the default source texture without first removing it from an atlas. In this case the range of qt\_MultiTexCoord0 will based on the position of the texture within the atlas, rather than (0,0) to (1,1).

Setting this to true may enable some optimizations.

The default value is false.

This QML property was introduced in QtQuick 2.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vertexShader-prop"></span><span class="name">vertexShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the vertex shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as "varying highp vec2 qt\_TexCoord0", and it samples from a sampler2D named "source".

