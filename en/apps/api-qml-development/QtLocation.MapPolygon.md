---
Title: QtLocation.MapPolygon
---

# QtLocation.MapPolygon

<span class="subtitle"></span>
<!-- $$$MapPolygon-brief -->
<p>The MapPolygon type displays a polygon on a Map More...</p>
<!-- @@@MapPolygon -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#border-prop">border</a></b></b><ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#border.width-prop">border.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#border.color-prop">border.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#path-prop">path</a></b></b> : list&lt;coordinate&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#addCoordinate-method">addCoordinate</a></b></b>(coordinate)</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolygon.md#removeCoordinate-method">removeCoordinate</a></b></b>(coordinate)</li>
</ul>
<!-- $$$MapPolygon-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> type displays a polygon on a Map, specified in terms of an ordered list of coordinates. For best appearance and results, polygons should be simple (not self-intersecting).</p>
<p>The coordinates on the path cannot be directly changed after being added to the Polygon. Instead, copy the <a href="..//QtLocation.MapPolygon.md#path-prop">path</a> into a var, modify the copy and reassign the copy back to the <a href="..//QtLocation.MapPolygon.md#path-prop">path</a>.</p>
<pre class="cpp">var path <span class="operator">=</span> mapPolygon<span class="operator">.</span>path;
path<span class="operator">[</span><span class="number">0</span><span class="operator">]</span><span class="operator">.</span>latitude <span class="operator">=</span> <span class="number">5</span>;
mapPolygon<span class="operator">.</span>path <span class="operator">=</span> path;</pre>
<p>Coordinates can also be added and removed at any time using the <a href="..//QtLocation.MapPolygon.md#addCoordinate-method">addCoordinate</a> and <a href="..//QtLocation.MapPolygon.md#removeCoordinate-method">removeCoordinate</a> methods.</p>
<p>For drawing rectangles with &quot;straight&quot; edges (same latitude across one edge, same latitude across the other), the <a href="..//QtLocation.MapRectangle.md">MapRectangle</a> type provides a simpler, two-point API.</p>
<p>By default, the polygon is displayed as a 1 pixel black border with no fill. To change its appearance, use the <a href="..//QtLocation.MapPolygon.md#color-prop">color</a>, <a href="..//QtLocation.MapPolygon.md#border.color-prop">border.color</a> and <a href="..//QtLocation.MapPolygon.md#border.width-prop">border.width</a> properties.</p>
<p><b>Note: </b>Since MapPolygons are geographic items, dragging a <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> (through the use of MouseArea) causes its vertices to be recalculated in the geographic coordinate space. The edges retain the same geographic lengths (latitude and longitude differences between the vertices), but they remain straight. Apparent stretching of the item occurs when dragged to a different latitude.</p>
<h3 >Performance</h3>
<p>MapPolygons have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a Polygon on the Map grows in direct proportion to the number of points on the Polygon. There is an additional triangulation cost (approximately O(n log n)) which is currently paid with each frame, but in future may be paid only upon adding or removing points.</p>
<p>Like the other map objects, <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> being used to display a triangle, with three vertices near Brisbane, Australia. The triangle is filled in green, with a 1 pixel black border.</p>
<pre class="cpp">Map {
MapPolygon {
color: <span class="char">'green'</span>
path: <span class="operator">[</span>
{ latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">153.0</span> }<span class="operator">,</span>
{ latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">154.1</span> }<span class="operator">,</span>
{ latitude: <span class="operator">-</span><span class="number">28</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }
<span class="operator">]</span>
}
}</pre>
<p class="centerAlign"><img src="../../../../media/api-mappolygon.png" alt="" /></p><!-- @@@MapPolygon -->
<h2>Property Documentation</h2>
<!-- $$$border -->
<table class="qmlname"><tr valign="top" id="border-prop"><th class="centerAlign"><p><b>border group</b></p></th></tr><tr valign="top" id="border.width-prop"><td class="tblQmlPropNode"><p><span class="name">border.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.color-prop"><td class="tblQmlPropNode"><p><span class="name">border.color</span> : <span class="type">color</span></p></td></tr></table><p>This property is part of the border property group. The border property group holds the width and color used to draw the border of the polygon.</p>
<p>The width is in pixels and is independent of the zoom level of the map.</p>
<p>The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.</p>
<!-- @@@border -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the color used to fill the polygon.</p>
<p>The default value is transparent.</p>
<!-- @@@color -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">list</span>&lt;<span class="type">coordinate</span>&gt;</p></td></tr></table><p>This property holds the ordered list of coordinates which define the polygon.</p>
<p><b>See also </b><a href="..//QtLocation.MapPolygon.md#addCoordinate-method">addCoordinate</a> and <a href="..//QtLocation.MapPolygon.md#removeCoordinate-method">removeCoordinate</a>.</p>
<!-- @@@path -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addCoordinate -->
<table class="qmlname"><tr valign="top" id="addCoordinate-method"><td class="tblQmlFuncNode"><p><span class="name">addCoordinate</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Adds a coordinate to the path.</p>
<p><b>See also </b><a href="..//QtLocation.MapPolygon.md#removeCoordinate-method">removeCoordinate</a> and <a href="..//QtLocation.MapPolygon.md#path-prop">path</a>.</p>
<!-- @@@addCoordinate -->
<br/>
<!-- $$$removeCoordinate -->
<table class="qmlname"><tr valign="top" id="removeCoordinate-method"><td class="tblQmlFuncNode"><p><span class="name">removeCoordinate</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.</p>
<p><b>See also </b><a href="..//QtLocation.MapPolygon.md#addCoordinate-method">addCoordinate</a> and <a href="..//QtLocation.MapPolygon.md#path-prop">path</a>.</p>
<!-- @@@removeCoordinate -->
<br/>
