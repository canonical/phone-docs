---
Title: QtQuick.qtquick-visualcanvas-topic
---

# QtQuick.qtquick-visualcanvas-topic

<span class="subtitle"></span>
<!-- $$$qtquick-visualcanvas-topic.html-description -->
<p>The visual canvas provided by the Qt Quick is a two dimensional canvas with z-ordering.</p>
<h2 id="coordinate-system">Coordinate System</h2>
<p>The top-left pixel in the Qt Quick coordinate system is the [0, 0] pixel. The coordinate system of a child item is relative to its visual parent item. See the documentation on the <a href="QtQuick.qtquick-visualcanvas-coordinates.md">Coordinate System</a> for in-depth information about the coordinate system utilized by Qt Quick.</p>
<h2 id="visual-parent">Visual Parent</h2>
<p>There are two separate kinds of parenting in a QML application which uses Qt Quick. The first kind is the ownership-parent (also known as the QObject parent) which determines object lifetime semantics. The second kind is the visual parent which determines where on the canvas an item is drawn, and also certain properties (for example, opacity applies to visual children).</p>
<p>In almost all cases, the visual parent is identical to the ownership-parent. See the documentation about the <a href="QtQuick.qtquick-visualcanvas-visualparent.md">Visual Parent</a> for more in-depth information on the topic.</p>
<h2 id="scene-graph">Scene Graph</h2>
<p>Modern computer systems and devices use OpenGL to draw graphics. Qt Quick requires OpenGL and it is used to display applications developed with Qt Quick in QML. In particular, Qt Quick defines a scene graph which is then rendered. See the documentation about the <a href="QtQuick.qtquick-visualcanvas-scenegraph.md">Scene Graph</a> for in-depth information about the concept of a scene graph and why it is beneficial, and about the scene graph implementation provided by Qt Quick.</p>
<!-- @@@qtquick-visualcanvas-topic.html -->
