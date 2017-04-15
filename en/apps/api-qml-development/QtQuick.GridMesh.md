---
Title: QtQuick.GridMesh
---
        
GridMesh
========

<span class="subtitle"></span>
Defines a mesh with vertices arranged in a grid More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.0             |

<span id="properties"></span>
Properties
----------

-   ****[resolution](#resolution-prop)**** : size

<span id="details"></span>
Detailed Description
--------------------

GridMesh defines a rectangular mesh consisting of vertices arranged in an evenly spaced grid. It is used to generate geometry. The grid resolution is specified with the resolution property.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolution-prop"></span><span class="name">resolution</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the grid resolution. The resolution's width and height specify the number of cells or spacings between vertices horizontally and vertically respectively. The minimum and default is 1x1, which corresponds to four vertices in total, one in each corner. For non-linear vertex transformations, you probably want to set the resolution higher.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/a04577c6-58bf-4da6-9893-e7b8988c4929-api/apps/qml/sdk-15.04.6/QtQuick.GridMesh/images/declarative-gridmesh.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
ShaderEffect {
    width: 200
    height: 200
    mesh: GridMesh {
        resolution: Qt.size(20, 20)
    }
    property variant source: Image {
        source: &quot;qt-logo.png&quot;
        sourceSize { width: 200; height: 200 }
    }
    vertexShader: &quot;
        uniform highp mat4 qt_Matrix;
        attribute highp vec4 qt_Vertex;
        attribute highp vec2 qt_MultiTexCoord0;
        varying highp vec2 qt_TexCoord0;
        uniform highp float width;
        void main() {
            highp vec4 pos = qt_Vertex;
            highp float d = .5 * smoothstep(0., 1., qt_MultiTexCoord0.y);
            pos.x = width * mix(d, 1.0 - d, qt_MultiTexCoord0.x);
            gl_Position = qt_Matrix * pos;
            qt_TexCoord0 = qt_MultiTexCoord0;
        }&quot;
}</code></pre></td>
</tr>
</tbody>
</table>

