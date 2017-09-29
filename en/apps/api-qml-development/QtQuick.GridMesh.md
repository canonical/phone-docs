---
Title: QtQuick.GridMesh
---

# QtQuick.GridMesh

<span class="subtitle"></span>
<!-- $$$GridMesh-brief -->
<p>Defines a mesh with vertices arranged in a grid More...</p>
<!-- @@@GridMesh -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#resolution-prop">resolution</a></b></b> : size</li>
</ul>
<!-- $$$GridMesh-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>GridMesh defines a rectangular mesh consisting of vertices arranged in an evenly spaced grid. It is used to generate geometry. The grid resolution is specified with the resolution property.</p>
<!-- @@@GridMesh -->
<h2>Property Documentation</h2>
<!-- $$$resolution -->
<table class="qmlname"><tr valign="top" id="resolution-prop"><td class="tblQmlPropNode"><p><span class="name">resolution</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the grid resolution. The resolution's width and height specify the number of cells or spacings between vertices horizontally and vertically respectively. The minimum and default is 1x1, which corresponds to four vertices in total, one in each corner. For non-linear vertex transformations, you probably want to set the resolution higher.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://assets.ubuntu.com/v1/37c9c1d5-declarative-gridmesh.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.ShaderEffect.md">ShaderEffect</a></span> {
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">200</span>
<span class="name">mesh</span>: <span class="name">GridMesh</span> {
<span class="name">resolution</span>: <span class="name">Qt</span>.<span class="name">size</span>(<span class="number">20</span>, <span class="number">20</span>)
}
property <span class="type">variant</span> <span class="name">source</span>: <span class="name">Image</span> {
<span class="name">source</span>: <span class="string">&quot;qt-logo.png&quot;</span>
<span class="type">sourceSize</span> { <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span> }
}
<span class="name">vertexShader</span>: <span class="string">&quot;
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
}&quot;</span>
}</pre>
</td></tr>
</table>
<!-- @@@resolution -->
<br/>
