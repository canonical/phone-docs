---
Title: QtLocation.MapQuickItem
---

# QtLocation.MapQuickItem

<span class="subtitle"></span>
<!-- $$$MapQuickItem-brief -->
<p>The MapQuickItem type displays an arbitrary Qt Quick object on a Map. More...</p>
<!-- @@@MapQuickItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#anchorPoint-prop">anchorPoint</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#coordinate-prop">coordinate</a></b></b> : coordinate</li>
<li class="fn"><b><b><a href="#sourceItem-prop">sourceItem</a></b></b> : object</li>
<li class="fn"><b><b><a href="#zoomLevel-prop">zoomLevel</a></b></b> : real</li>
</ul>
<!-- $$$MapQuickItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#">MapQuickItem</a> will follow the panning (and optionally, the zooming) of the Map as if it is on the Map surface.</p>
<p>The <a href="#sourceItem-prop">sourceItem</a> property contains the Qt Quick item to be drawn, which can be any kind of visible type.</p>
<h3 >Positioning and Sizing</h3>
<p>The positioning of the <a href="#coordinate-prop">coordinate</a> is set, it specifies a longitude/latitude coordinate for the item to be placed at. The set coordinate will line up with the top-left corner of the contained item when shown on the screen.</p>
<p>The <a href="#coordinate-prop">coordinate</a> when displayed.</p>
<p>In addition to being anchored to the map, the <a href="#zoomLevel-prop">zoomLevel</a> is not set is for the item to be drawn &quot;on the screen&quot; rather than &quot;on the map&quot;, so that its size remains the same regardless of the zoom level of the Map.</p>
<h3 >Performance</h3>
<p>Performance of a <a href="#">MapQuickItem</a> is normally in the same ballpark as the contained Qt Quick item alone. Overheads added amount to a translation and (possibly) scaling of the original item, as well as a transformation from longitude and latitude to screen position.</p>
<h3 >Limitations</h3>
<p><b>Note: </b>Due to an implementation detail, items placed inside a <a href="#">MapQuickItem</a> by its <code>id</code>, and avoid the use of <code>anchor</code> in the <code>sourceItem</code>.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a <a href="#">MapQuickItem</a> containing an Image object, to display a Marker on the Map. This strategy is used to show the map markers in the MapViewer example.</p>
<pre class="qml"><span class="type"><a href="#">MapQuickItem</a></span> {
<span class="name">id</span>: <span class="name">marker</span>
<span class="name">anchorPoint</span>.x: <span class="name">image</span>.<span class="name">width</span><span class="operator">/</span><span class="number">4</span>
<span class="name">anchorPoint</span>.y: <span class="name">image</span>.<span class="name">height</span>
<span class="name">sourceItem</span>: <span class="name">Image</span> {
<span class="name">id</span>: <span class="name">image</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/25dc5576-cab8-47b0-b5ad-283091110cc7-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem.png" alt="" /></p><!-- @@@MapQuickItem -->
<h2>Property Documentation</h2>
<!-- $$$anchorPoint -->
<table class="qmlname"><tr valign="top" id="anchorPoint-prop"><td class="tblQmlPropNode"><p><span class="name">anchorPoint</span> : <span class="type">QPointF</span></p></td></tr></table><p>This property determines which point on the sourceItem that will be lined up with the coordinate on the map.</p>
<!-- @@@anchorPoint -->
<br/>
<!-- $$$coordinate -->
<table class="qmlname"><tr valign="top" id="coordinate-prop"><td class="tblQmlPropNode"><p><span class="name">coordinate</span> : <span class="type"><a href="#anchorPoint-prop">anchorPoint</a> is kept aligned with this coordinate when drawn on the map.</p>
<p>In the image below, there are 3 MapQuickItems that are identical except for the value of their <a href="#anchorPoint-prop">anchorPoint</a> for each are written on top of the item.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem-anchor.png" alt="" /></p><!-- @@@coordinate -->
<br/>
<!-- $$$sourceItem -->
<table class="qmlname"><tr valign="top" id="sourceItem-prop"><td class="tblQmlPropNode"><p><span class="name">sourceItem</span> : <span class="type">object</span></p></td></tr></table><p>This property holds the source item that will be drawn on the map.</p>
<!-- @@@sourceItem -->
<br/>
<!-- $$$zoomLevel -->
<table class="qmlname"><tr valign="top" id="zoomLevel-prop"><td class="tblQmlPropNode"><p><span class="name">zoomLevel</span> : <span class="type">real</span></p></td></tr></table><p>This property controls the scaling behaviour of the contents of the <a href="#">MapQuickItem</a>. In particular, by setting this property it is possible to choose between objects that are drawn on the screen (and sized in screen pixels), and those drawn on the map surface (which change size with the zoom level of the map).</p>
<p>The default value for this property is 0.0, which corresponds to drawing the object on the screen surface. If set to another value, the object will be drawn on the map surface instead. The value (if not zero) specifies the zoomLevel at which the object will be visible at a scale of 1:1 (ie, where object pixels and screen pixels are the same). At zoom levels lower than this, the object will appear smaller, and at higher zoom levels, appear larger. This is in contrast to when this property is set to zero, where the object remains the same size on the screen at all zoom levels.</p>
<!-- @@@zoomLevel -->
<br/>
