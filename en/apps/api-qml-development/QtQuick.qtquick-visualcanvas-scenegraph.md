---
Title: QtQuick.qtquick-visualcanvas-scenegraph
---
        
Qt Quick Scene Graph
====================

<span class="subtitle"></span>
details
The Scene Graph in Qt Quick
---------------------------

Qt Quick 2 makes use of a dedicated scene graph based on OpenGL ES 2.0 or OpenGL 2.0 for its rendering. Using a scene graph for graphics rather than the traditional imperative painting systems (QPainter and similar), means the scene to be rendered can be retained between frames and the complete set of primitives to render is known before rendering starts. This opens up for a number of optimizations, such as batch rendering to minimize state changes and discarding obscured primitives.

For example, say a user-interface contains a list of ten items where each item has a background color, an icon and a text. Using the traditional drawing techniques, this would result in 30 draw calls and a similar amount of state changes. A scene graph, on the other hand, could reorganize the primitives to render such that all backgrounds are drawn in one call, then all icons, then all the text, reducing the total amount of draw calls to only 3. Batching and state change reduction like this can greatly improve performance on some hardware.

The scene graph is closely tied to Qt Quick 2.0 and can not be used stand-alone. The scene graph is managed and rendered by the QQuickWindow class and custom Item types can add their graphical primitives into the scene graph through a call to QQuickItem::updatePaintNode().

The scene graph is a graphical representation of the Item scene, an independent structure that contains enough information to render all the items. Once it has been set up, it can be manipulated and rendered independently of the state of the items. On many platforms, the scene graph will even be rendered on a dedicated render thread while the GUI thread is preparing the next frame's state.

<span id="qt-quick-scene-graph-structure"></span>
Qt Quick Scene Graph Structure
------------------------------

The scene graph is composed of a number of predefined node types, each serving a dedicated purpose. Although we refer to it as a scene graph, a more precise definition is node tree. The tree is built from QQuickItem types in the QML scene and internally the scene is then processed by a renderer which draws the scene. The nodes themselves do **not** contain any active drawing code nor virtual `paint()` function.

Even though the node tree is mostly built internally by the existing Qt Quick QML types, it is possible for users to also add complete subtrees with their own content, including subtrees that represent 3D models.

<span id="nodes"></span>
### Nodes

The most important node for users is the QSGGeometryNode. It is used to define custom graphics by defining its geometry and material. The geometry is defined using QSGGeometry and describes the shape or mesh of the graphical primitive. It can be a line, a rectangle, a polygon, many disconnected rectangles, or complex 3D mesh. The material defines how the pixels in this shape are filled.

A node can have any number of children and geometry nodes will be rendered so they appear in child-order with parents behind their children.

**Note:** This does not say anything about the actual rendering order in the renderer. Only the visual output is guaranteed.

The available nodes are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QSGClipNode</p></td>
<td><p>Implements the clipping functionality in the scene graph</p></td>
</tr>
<tr class="even">
<td><p>QSGGeometryNode</p></td>
<td><p>Used for all rendered content in the scene graph</p></td>
</tr>
<tr class="odd">
<td><p>QSGNode</p></td>
<td><p>The base class for all nodes in the scene graph</p></td>
</tr>
<tr class="even">
<td><p>QSGOpacityNode</p></td>
<td><p>Used to change opacity of nodes</p></td>
</tr>
<tr class="odd">
<td><p>QSGTransformNode</p></td>
<td><p>Implements transformations in the scene graph</p></td>
</tr>
</tbody>
</table>

Custom nodes are added to the scene graph by subclassing QQuickItem::updatePaintNode() and setting the QQuickItem::ItemHasContents flag.

**Warning:** It is crucial that OpenGL operations and interaction with the scene graph happens exclusively on the render thread, primarily during the updatePaintNode() call. The rule of thumb is to only use classes with the "QSG" prefix inside the QQuickItem::updatePaintNode() function.

For more details, see the [Scene Graph - Custom Geometry](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.scenegraph-customgeometry/).

<span id="preprocessing"></span>
#### Preprocessing

Nodes have a virtual QSGNode::preprocess() function, which will be called before the scene graph is rendered. Node subclasses can set the flag QSGNode::UsePreprocess and override the QSGNode::preprocess() function to do final preparation of their node. For example, dividing a bezier curve into the correct level of detail for the current scale factor or updating a section of a texture.

<span id="node-ownership"></span>
#### Node Ownership

Ownership of the nodes is either done explicitly by the creator or by the scene graph by setting the flag QSGNode::OwnedByParent. Assigning ownership to the scene graph is often preferable as it simplifies cleanup when the scene graph lives outside the GUI thread.

<span id="materials"></span>
### Materials

The material describes how the interior of a geometry in a QSGGeometryNode is filled. It encapsulates an OpenGL shader program and provides ample flexibility in what can be achieved, though most of the Qt Quick items themselves only use very basic materials, such as solid color and texture fills.

For users who just want to apply custom shading to a QML Item type, it is possible to do this directly in QML using the [ShaderEffect](../QtQuick.ShaderEffect.md) type.

Below is a complete list of material classes:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QSGFlatColorMaterial</p></td>
<td><p>Convenient way of rendering solid colored geometry in the scene graph</p></td>
</tr>
<tr class="even">
<td><p>QSGMaterial</p></td>
<td><p>Encapsulates rendering state for a shader program</p></td>
</tr>
<tr class="odd">
<td><p>QSGMaterialShader</p></td>
<td><p>Represents an OpenGL shader program in the renderer</p></td>
</tr>
<tr class="even">
<td><p>QSGMaterialType</p></td>
<td><p>Used as a unique type token in combination with QSGMaterial</p></td>
</tr>
<tr class="odd">
<td><p>QSGOpaqueTextureMaterial</p></td>
<td><p>Convenient way of rendering textured geometry in the scene graph</p></td>
</tr>
<tr class="even">
<td><p>QSGSimpleMaterial</p></td>
<td><p>Template generated class used to store the state used with a QSGSimpleMateralShader</p></td>
</tr>
<tr class="odd">
<td><p>QSGSimpleMaterialShader</p></td>
<td><p>Convenient way of building custom materials for the scene graph</p></td>
</tr>
<tr class="even">
<td><p>QSGTextureMaterial</p></td>
<td><p>Convenient way of rendering textured geometry in the scene graph</p></td>
</tr>
<tr class="odd">
<td><p>QSGVertexColorMaterial</p></td>
<td><p>Convenient way of rendering per-vertex colored geometry in the scene graph</p></td>
</tr>
</tbody>
</table>

For more details, see the [Scene Graph - Simple Material](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.scenegraph-simplematerial/)

<span id="convenience-nodes"></span>
### Convenience Nodes

The scene graph API is very low-level and focuses on performance rather than convenience. Writing custom geometries and materials from scratch, even the most basic ones, requires a non-trivial amount of code. For this reason, the API includes a few convenience classes to make the most common custom nodes readily available.

-   QSGSimpleRectNode - a QSGGeometryNode subclass which defines a rectangular geometry with a solid color material.
-   QSGSimpleTextureNode - a QSGGeometryNode subclass which defines a rectangular geometry with a texture material.

<span id="scene-graph-and-rendering"></span>
Scene Graph and Rendering
-------------------------

The rendering of the scene graph happens internally in the QQuickWindow class, and there is no public API to access it. There are however, a few places in the rendering pipeline where the user can attach application code. This can be to add custom scene graph content or render raw OpenGL content. The integration points are defined by the render loop.

For detailed description of how the scene graph renderer works, see [Qt Quick Scene Graph Renderer](../QtQuick.qtquick-visualcanvas-scenegraph-renderer.md).

<span id="threaded-render-loop"></span>
### Threaded Render Loop

On many configurations, the scene graph rendering will happen on a dedicated render thread. This is done to increase parallelism of multi-core processors and make better use of stall times such as waiting for a blocking swap buffer call. This offers significant performance improvements, but imposes certain restrictions on where and when interaction with the scene graph can happen.

The following is a simple outline of how a frame gets composed with the threaded render loop.

![](https://developer.ubuntu.com/static/devportal_uploaded/b4447e54-ec17-480b-b41b-796bc4e7fe30-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph/images/sg-renderloop-threaded.jpg)

1.  A change occurs in the QML scene, causing `QQuickItem::update()` to be called. This can be the result of for instance an animation or user input. An event is posted to the render thread to initiate a new frame.
2.  The render thread prepares to draw a new frame and makes the OpenGL context current and initiates a blocks on the GUI thread.
3.  While the render thread is preparing the new frame, the GUI thread calls QQuickItem::updatePolish() to do final touch-up of items before they are rendered.
4.  GUI thread is blocked.
5.  The QQuickWindow::beforeSynchronizing() signal is emitted. Applications can make direct connections (using Qt::DirectConnection) to this signal to do any preparation required before calls to QQuickItem::updatePaintNode().
6.  Synchronization of the QML state into the scene graph. This is done by calling the QQuickItem::updatePaintNode() function on all items that have changed since the previous frame. This is the only time the QML items and the nodes in the scene graph interact.
7.  GUI thread block is released.
8.  The scene graph is rendered:
    1.  The QQuickWindow::beforeRendering() signal is emitted. Applications can make direct connections (using Qt::DirectConnection) to this signal to use custom OpenGL calls which will then stack visually beneath the QML scene.
    2.  Items that have specified QSGNode::UsePreprocess, will have their QSGNode::preprocess() function invoked.
    3.  The renderer processes the nodes and calls OpenGL functions.
    4.  The QQuickWindow::afterRendering() signal is emitted. Applications can make direct connections (using Qt::DirectConnection) to this signal to use custom OpenGL calls which will then stack visually over the QML scene.
    5.  The rendered frame is swapped and QQuickWindow::frameSwapped() is emitted.
9.  While the render thread is rendering, the GUI is free to advance animations, process events, etc.

The threaded renderer is currently used by default on Linux with non-Mesa based drivers, OS X and EGLFS based QPA platforms, but this is subject to change. It is possible to force use of the threaded renderer by setting `QSG_RENDER_LOOP=threaded` in the environment.

<span id="non-threaded-render-loop"></span>
### Non-threaded Render Loop

The non-threaded render loop is currently used by default on Windows and non-EGLFS based embedded platforms. This is mostly a precautionary measure, as not all combinations of OpenGL drivers and windowing systems have been tested.

Even when using the non-threaded render loop, you should write your code as if you are using the threaded renderer, as failing to do so will make the code non-portable.

The following is a simplified illustration of the frame rendering sequence in the non-threaded renderer.

![](https://developer.ubuntu.com/static/devportal_uploaded/d5f5d145-05d6-4ff8-8657-a1d2a8a0cf75-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph/images/sg-renderloop-singlethreaded.jpg)

<span id="custom-control-over-rendering-with-qquickrendercontrol"></span>
### Custom control over rendering with QQuickRenderControl

When using QQuickRenderControl, the responsibility for driving the rendering loop is transferred to the application. In this case no built-in render loop is used. Instead, it is up to the application to invoke the polish, synchronize and rendering steps at the appropriate time. It is possible to implement either a threaded or non-threaded behavior similar to the ones shown above.

<span id="mixing-scene-graph-and-opengl"></span>
### Mixing Scene Graph and OpenGL

The scene graph offers two methods for integrating OpenGL content: by calling OpenGL commands directly and by creating a textured node in the scene graph.

By connecting to the QQuickWindow::beforeRendering() and QQuickWindow::afterRendering() signals, applications can make OpenGL calls directly into the same context as the scene graph is rendering to. As the signal names indicate, the user can then render OpenGL content either under a Qt Quick scene or over it. The benefit of integrating in this manner is that no extra framebuffer nor memory is needed to perform the rendering. The downside is that Qt Quick decides when to call the signals and this is the only time the OpenGL application is allowed to draw.

The [Scene Graph - OpenGL Under QML](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.scenegraph-openglunderqml/) example gives an example on how to use these signals.

The other alternative is to create a QQuickFramebufferObject, render into it, and let it be displayed in the scene graph as a texture. The Scene Graph - Rendering FBOs example shows how this can be done. It is also possible to combine multiple rendering contexts and multiple threads to create content to be displayed in the scene graph. The Scene Graph - Rendering FBOs in a thread examples show how this can be done.

**Warning:** When mixing OpenGL content with scene graph rendering, it is important the application does not leave the OpenGL context in a state with buffers bound, attributes enabled, special values in the z-buffer or stencil-buffer or similar. Doing so can result in unpredictable behavior.

**Warning:** The OpenGL rendering code must be thread aware, as the rendering might be happening outside the GUI thread.

<span id="custom-items-using-qpainter"></span>
### Custom Items using QPainter

The QQuickItem provides a subclass, QQuickPaintedItem, which allows the users to render content using QPainter.

**Warning:** Using QQuickPaintedItem uses an indirect 2D surface to render its content, either using software rasterization or using an OpenGL framebuffer object (FBO), so the rendering is a two-step operation. First rasterize the surface, then draw the surface. Using scene graph API directly is always significantly faster.

<span id="logging-support"></span>
Logging Support
---------------

The scene graph has support for a number of logging categories. These can be useful in tracking down both performance issues and bugs in addition to being helpful to Qt contributors.

-   `qt.scenegraph.time.texture` - logs the time spent doing texture uploads
-   `qt.scenegraph.time.compilation` - logs the time spent doing shader compilation
-   `qt.scenegraph.time.renderer` - logs the time spent in the various steps of the renderer
-   `qt.scenegraph.time.renderloop` - logs the time spent in the various steps of the render loop
-   `qt.scenegraph.time.glyph` - logs the time spent preparing distance field glyphs
-   `qt.scenegraph.info` - logs general information about various parts of the scene graph and the graphics stack
-   `qt.scenegraph.renderloop` - creates a detailed log of the various stages involved in rendering. This log mode is primarily useful for developers working on Qt.

<span id="scene-graph-backend"></span>
Scene Graph Backend
-------------------

In addition to the public API, the scene graph has an adaptation layer which opens up the implementation to do hardware specific adaptations. This is an undocumented, internal and private plugin API, which lets hardware adaptation teams make the most of their hardware. It includes:

-   Custom textures; specifically the implementation of QQuickWindow::createTextureFromImage and the internal representation of the texture used by Image and BorderImage types.
-   Custom renderer; the adaptation layer lets the plugin decide how the scene graph is traversed and rendered, making it possible to optimize the rendering algorithm for a specific hardware or to make use of extensions which improve performance.
-   Custom scene graph implementation of many of the default QML types, including its text and font rendering.
-   Custom animation driver; allows the animation system to hook into the low-level display vertical refresh to get smooth rendering.
-   Custom render loop; allows better control over how QML deals with multiple windows.

