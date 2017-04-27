---
Title: QtLocation.MapRectangle
---

# QtLocation.MapRectangle

<span class="subtitle"></span>
<!-- $$$MapRectangle-brief -->
<p>The MapRectangle type displays a rectangle on a Map. More...</p>
<!-- @@@MapRectangle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#border-prop">border</a></b></b><ul>
<li class="fn"><b><b><a href="#border.width-prop">border.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="#border.color-prop">border.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="#bottomRight-prop">bottomRight</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#topLeft-prop">topLeft</a></b></b> : coordinate</li>
</ul>
<!-- $$$MapRectangle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#">MapRectangle</a> type displays a rectangle on a Map. Rectangles are a special case of Polygon with exactly 4 vertices and 4 &quot;straight&quot; edges. In this case, &quot;straight&quot; means that the top-left point has the same latitude as the top-right point (the top edge), and the bottom-left point has the same latitude as the bottom-right point (the bottom edge). Similarly, the points on the left side have the same longitude, and the points on the right side have the same longitude.</p>
<p>To specify the rectangle, it requires a <a href="#bottomRight-prop">bottomRight</a> point, both given by a coordinate.</p>
<p>By default, the rectangle is displayed with transparent fill and a 1-pixel thick black border. This can be changed using the <a href="#border.width-prop">border.width</a> properties.</p>
<p><b>Note: </b>Similar to the <a href="#">MapRectangle</a> causes its vertices to be recalculated in the geographic coordinate space. Apparent stretching of the item occurs when dragged to the a different latitude, however, its edges remain straight.</p>
<h3 >Performance</h3>
<p>MapRectangles have a rendering cost identical to a <a href="QtLocation.MapPolygon.md">MapPolygon</a> with 4 vertices.</p>
<p>Like the other map objects, <a href="#opacity-prop">opacity</a> property will force the object to be blended, which decreases performance considerably depending on the hardware in use.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a map containing a <a href="#">MapRectangle</a>, spanning from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is filled in green, with a 2 pixel black border.</p>
<pre class="cpp">Map {
MapRectangle {
color: <span class="char">'green'</span>
border<span class="operator">.</span>width: <span class="number">2</span>
topLeft {
latitude: <span class="operator">-</span><span class="number">27</span>
longitude: <span class="number">153</span>
}
bottomRight {
latitude: <span class="operator">-</span><span class="number">28</span>
longitude: <span class="number">153.5</span>
}
}
}</pre>
<p class="centerAlign"><img src="../../../media/api-maprectangle.png" alt="" /></p><!-- @@@MapRectangle -->
<h2>Property Documentation</h2>
<!-- $$$border -->
<table class="qmlname"><tr valign="top" id="border-prop"><th class="centerAlign"><p><b>border group</b></p></th></tr><tr valign="top" id="border.width-prop"><td class="tblQmlPropNode"><p><span class="name">border.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.color-prop"><td class="tblQmlPropNode"><p><span class="name">border.color</span> : <span class="type">color</span></p></td></tr></table><p>This property is part of the border property group. The border property group holds the width and color used to draw the border of the rectangle. The width is in pixels and is independent of the zoom level of the map.</p>
<p>The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.</p>
<!-- @@@border -->
<br/>
<!-- $$$bottomRight -->
<table class="qmlname"><tr valign="top" id="bottomRight-prop"><td class="tblQmlPropNode"><p><span class="name">bottomRight</span> : <span class="type">coordinate</span></p></td></tr></table><p>This property holds the bottom-right coordinate of the <a href="#">MapRectangle</a> which can be used to retrieve its longitude, latitude and altitude.</p>
<!-- @@@bottomRight -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the fill color of the rectangle. For no fill, use a transparent color.</p>
<!-- @@@color -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top" id="opacity-prop"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the opacity of the item. Opacity is specified as a number between 0 (fully transparent) and 1 (fully opaque). The default is 1.</p>
<p>An item with 0 opacity will still receive mouse events. To stop mouse events, set the visible property of the item to false.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$topLeft -->
<table class="qmlname"><tr valign="top" id="topLeft-prop"><td class="tblQmlPropNode"><p><span class="name">topLeft</span> : <span class="type">coordinate</span></p></td></tr></table><p>This property holds the top-left coordinate of the <a href="#">MapRectangle</a> which can be used to retrieve its longitude, latitude and altitude.</p>
<!-- @@@topLeft -->
<br/>
