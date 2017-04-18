---
Title: QtLocation.MapCircle
---

# QtLocation.MapCircle

<span class="subtitle"></span>
<!-- $$$MapCircle-brief -->
<p>The MapCircle type displays a geographic circle on a Map. More...</p>
<!-- @@@MapCircle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#border-prop">border</a></b></b><ul>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#border.width-prop">border.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#border.color-prop">border.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#center-prop">center</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="..//QtLocation.MapCircle.md#radius-prop">radius</a></b></b> : real</li>
</ul>
<!-- $$$MapCircle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.MapCircle.md">MapCircle</a> type displays a geographic circle on a Map, which consists of all points that are within a set distance from one central point. Depending on map projection, a geographic circle may not always be a perfect circle on the screen: for instance, in the Mercator projection, circles become ovoid in shape as they near the poles. To display a perfect screen circle around a point, use a <a href="..//QtLocation.MapQuickItem.md">MapQuickItem</a> containing a relevant Qt Quick type instead.</p>
<p>By default, the circle is displayed as a 1 pixel black border with no fill. To change its appearance, use the color, border.color and border.width properties.</p>
<p>Internally, a <a href="..//QtLocation.MapCircle.md">MapCircle</a> is implemented as a many-sided polygon. To calculate the radius points it uses a spherical model of the Earth, similar to the atDistanceAndAzimuth method of the coordinate type. These two things can occasionally have implications for the accuracy of the circle's shape, depending on position and map projection.</p>
<p><b>Note: </b>Dragging a <a href="..//QtLocation.MapCircle.md">MapCircle</a> (through the use of MouseArea) causes new points to be generated at the same distance (in meters) from the center. This is in contrast to other map items which store their dimensions in terms of latitude and longitude differences between vertices.</p>
<h3 >Performance</h3>
<p><a href="..//QtLocation.MapCircle.md">MapCircle</a> performance is almost equivalent to that of a <a href="..//QtLocation.MapPolygon.md">MapPolygon</a> with 125 vertices. There is a small amount of additional overhead with respect to calculating the vertices first.</p>
<p>Like the other map objects, <a href="..//QtLocation.MapCircle.md">MapCircle</a> is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the graphics hardware in use.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a map containing a <a href="..//QtLocation.MapCircle.md">MapCircle</a>, centered at the coordinate (-27, 153) with a radius of 5km. The circle is filled in green, with a 3 pixel black border.</p>
<pre class="cpp">Map {
MapCircle {
center {
latitude: <span class="operator">-</span><span class="number">27.5</span>
longitude: <span class="number">153.0</span>
}
radius: <span class="number">5000.0</span>
color: <span class="char">'green'</span>
border<span class="operator">.</span>width: <span class="number">3</span>
}
}</pre>
<p class="centerAlign"><img src="../../../../media/api-mapcircle.png" alt="" /></p><!-- @@@MapCircle -->
<h2>Property Documentation</h2>
<!-- $$$border -->
<table class="qmlname"><tr valign="top" id="border-prop"><th class="centerAlign"><p><b>border group</b></p></th></tr><tr valign="top" id="border.width-prop"><td class="tblQmlPropNode"><p><span class="name">border.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="border.color-prop"><td class="tblQmlPropNode"><p><span class="name">border.color</span> : <span class="type">color</span></p></td></tr></table><p>This property is part of the border group property. The border property holds the width and color used to draw the border of the circle. The width is in pixels and is independent of the zoom level of the map.</p>
<p>The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.</p>
<!-- @@@border -->
<br/>
<!-- $$$center -->
<table class="qmlname"><tr valign="top" id="center-prop"><td class="tblQmlPropNode"><p><span class="name">center</span> : <span class="type">coordinate</span></p></td></tr></table><p>This property holds the central point about which the circle is defined.</p>
<p><b>See also </b><a href="..//QtLocation.MapCircle.md#radius-prop">radius</a>.</p>
<!-- @@@center -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the fill color of the circle when drawn. For no fill, use a transparent color.</p>
<!-- @@@color -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top" id="opacity-prop"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the opacity of the item. Opacity is specified as a number between 0 (fully transparent) and 1 (fully opaque). The default is 1.</p>
<p>An item with 0 opacity will still receive mouse events. To stop mouse events, set the visible property of the item to false.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$radius -->
<table class="qmlname"><tr valign="top" id="radius-prop"><td class="tblQmlPropNode"><p><span class="name">radius</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the radius of the circle, in meters on the ground.</p>
<p><b>See also </b><a href="..//QtLocation.MapCircle.md#center-prop">center</a>.</p>
<!-- @@@radius -->
<br/>
