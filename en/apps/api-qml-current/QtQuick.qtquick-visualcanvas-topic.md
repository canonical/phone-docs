---
Title: QtQuick.qtquick-visualcanvas-topic
---
        
Important Concepts In Qt Quick - The Visual Canvas
==================================================

<span class="subtitle"></span>
<span id="details"></span>
The visual canvas provided by the Qt Quick is a two dimensional canvas with z-ordering.

<span id="coordinate-system"></span>
Coordinate System
-----------------

The top-left pixel in the Qt Quick coordinate system is the \[0, 0\] pixel. The coordinate system of a child item is relative to its visual parent item. See the documentation on the [Coordinate System](../QtQuick.qtquick-visualcanvas-coordinates.md) for in-depth information about the coordinate system utilized by Qt Quick.

<span id="visual-parent"></span>
Visual Parent
-------------

There are two separate kinds of parenting in a QML application which uses Qt Quick. The first kind is the ownership-parent (also known as the QObject parent) which determines object lifetime semantics. The second kind is the visual parent which determines where on the canvas an item is drawn, and also certain properties (for example, opacity applies to visual children).

In almost all cases, the visual parent is identical to the ownership-parent. See the documentation about the [Visual Parent](../QtQuick.qtquick-visualcanvas-visualparent.md) for more in-depth information on the topic.

<span id="scene-graph"></span>
Scene Graph
-----------

Modern computer systems and devices use OpenGL to draw graphics. Qt Quick requires OpenGL and it is used to display applications developed with Qt Quick in QML. In particular, Qt Quick defines a scene graph which is then rendered. See the documentation about the [Scene Graph](../QtQuick.qtquick-visualcanvas-scenegraph.md) for in-depth information about the concept of a scene graph and why it is beneficial, and about the scene graph implementation provided by Qt Quick.

