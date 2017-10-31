---
Title: QtQuick.qtquick-cppextensionpoints
---

# QtQuick.qtquick-cppextensionpoints

<span class="subtitle"></span>
<!-- $$$qtquick-cppextensionpoints.html-description -->
<p>All QML applications can be extended from C++ in order to use additional functionality implemented in C++ code or to provide a C++ based QML plugin. This topic of extending QML from C++ is covered in the Integrating QML and C++ documentation.</p>
<p>Additionally, the Qt Quick module provides several extension and integration points for C++ developers, specific to this module. In particular, it allows C++ developers to create and register custom QQuickItem-derived types which can be rendered by Qt Quick. It also provides several scene graph-related classes which allow developers to define their own rendering primitives.</p>
<h2 id="user-defined-qquickitem-derived-types">User-Defined QQuickItem-Derived Types</h2>
<p>While the Qt Quick module already provides a rich library of visual item types for use in a QML application, some developers may wish to define their own item-derived types in C++ and expose them to the QML type system. The easiest way to do this is to subclass QQuickItem, which is the base type for all visual types in the Qt Quick module. See the QQuickItem documentation for more details.</p>
<h2 id="scene-graph-related-classes">Scene Graph-Related Classes</h2>
<p>Qt Quick 2 makes use of a dedicated scene graph based on OpenGL ES 2.0 or OpenGL 2.0 for its rendering. Using a scene graph for graphics rather than the traditional imperative painting systems (QPainter and similar), means the scene to be rendered can be retained between frames and the complete set of primitives to render is known before rendering starts. This opens up for a number of optimizations, such as batching the OpenGL draw calls to minimize state changes or discarding obscured primitives.</p>
<p>The Qt Quick C++ API provides various classes to enable custom nodes to be created in C++.</p>
<p>See the <a href="QtQuick.qtquick-visualcanvas-scenegraph.md">Qt Quick Scene Graph</a> documentation for details.</p>
<h2 id="pixmap-and-threaded-image-support">Pixmap and Threaded Image Support</h2>
<p>While the QML engine allows QML application to load images from filesystem or network resources, some applications may require the additional option of loading images from C++ based processes. This can be implemented through the QQuickImageProvider class, which provides support for pixmap loading and threaded image requests for QML applications. Any QML application that requests an image through the special &quot;image:&quot; URL scheme will be directed to an appropriate image provider to load the image.</p>
<p>For more information, see the QQuickImageProvider documentation.</p>
<!-- @@@qtquick-cppextensionpoints.html -->
