---
Title: QtLocation.MapPolyline
---

# QtLocation.MapPolyline

<span class="subtitle"></span>
<!-- $$$MapPolyline-brief -->
<p>The MapPolyline type displays a polyline on a map. More...</p>
<!-- @@@MapPolyline -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#line-prop">line</a></b></b><ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#line.width-prop">line.width</a></b></b> : int</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#line.color-prop">line.color</a></b></b> : color</li>
</ul>
</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#path-prop">path</a></b></b> : list&lt;coordinate&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#addCoordinate-method">addCoordinate</a></b></b>(coordinate)</li>
<li class="fn"><b><b><a href="..//QtLocation.MapPolyline.md#removeCoordinate-method">removeCoordinate</a></b></b>(coordinate)</li>
</ul>
<!-- $$$MapPolyline-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.MapPolyline.md">MapPolyline</a> type displays a polyline on a map, specified in terms of an ordered list of coordinates. The coordinates on the path cannot be directly changed after being added to the Polyline. Instead, copy the <a href="..//QtLocation.MapPolyline.md#path-prop">path</a> into a var, modify the copy and reassign the copy back to the <a href="..//QtLocation.MapPolyline.md#path-prop">path</a>.</p>
<pre class="cpp">var path <span class="operator">=</span> mapPolyline<span class="operator">.</span>path;
path<span class="operator">[</span><span class="number">0</span><span class="operator">]</span><span class="operator">.</span>latitude <span class="operator">=</span> <span class="number">5</span>;
mapPolyline<span class="operator">.</span>path <span class="operator">=</span> path;</pre>
<p>Coordinates can also be added and removed at any time using the <a href="..//QtLocation.MapPolyline.md#addCoordinate-method">addCoordinate</a> and <a href="..//QtLocation.MapPolyline.md#removeCoordinate-method">removeCoordinate</a> methods.</p>
<p>By default, the polyline is displayed as a 1-pixel thick black line. This can be changed using the <a href="..//QtLocation.MapPolyline.md#line.width-prop">line.width</a> and <a href="..//QtLocation.MapPolyline.md#line.color-prop">line.color</a> properties.</p>
<h3 >Performance</h3>
<p>MapPolylines have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a polyline on the Map grows in direct proportion to the number of points in the polyline.</p>
<p>Like the other map objects, <a href="..//QtLocation.MapPolyline.md">MapPolyline</a> is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.</p>
<p><b>Note: </b>MapPolylines are implemented using the OpenGL GL_LINES primitive. There have been occasional reports of issues and rendering inconsistencies on some (particularly quite old) platforms. No workaround is yet available for these issues.</p>
<h3 >Example Usage</h3>
<p>The following snippet shows a <a href="..//QtLocation.MapPolyline.md">MapPolyline</a> with 4 points, making a shape like the top part of a &quot;question mark&quot; (?), near Brisbane, Australia. The line drawn is 3 pixels in width and green in color.</p>
<pre class="cpp">Map {
MapPolyline {
line<span class="operator">.</span>width: <span class="number">3</span>
line<span class="operator">.</span>color: <span class="char">'green'</span>
path: <span class="operator">[</span>
{ latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">153.0</span> }<span class="operator">,</span>
{ latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">154.1</span> }<span class="operator">,</span>
{ latitude: <span class="operator">-</span><span class="number">28</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }<span class="operator">,</span>
{ latitude: <span class="operator">-</span><span class="number">29</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }
<span class="operator">]</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/326be5b3-39db-447f-b29e-686b39f47fe5-api/apps/qml/sdk-15.04.1/QtLocation.MapPolyline/images/api-mappolyline.png" alt="" /></p><!-- @@@MapPolyline -->
<h2>Property Documentation</h2>
<!-- $$$line -->
<table class="qmlname"><tr valign="top" id="line-prop"><th class="centerAlign"><p><b>line group</b></p></th></tr><tr valign="top" id="line.width-prop"><td class="tblQmlPropNode"><p><span class="name">line.width</span> : <span class="type">int</span></p></td></tr><tr valign="top" id="line.color-prop"><td class="tblQmlPropNode"><p><span class="name">line.color</span> : <span class="type">color</span></p></td></tr></table><p>This property is part of the line property group. The line property group holds the width and color used to draw the line.</p>
<p>The width is in pixels and is independent of the zoom level of the map. The default values correspond to a black border with a width of 1 pixel.</p>
<p>For no line, use a width of 0 or a transparent color.</p>
<!-- @@@line -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">list</span>&lt;<span class="type">coordinate</span>&gt;</p></td></tr></table><p>This property holds the ordered list of coordinates which define the polyline.</p>
<!-- @@@path -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addCoordinate -->
<table class="qmlname"><tr valign="top" id="addCoordinate-method"><td class="tblQmlFuncNode"><p><span class="name">addCoordinate</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Adds a coordinate to the path.</p>
<p><b>See also </b><a href="..//QtLocation.MapPolyline.md#removeCoordinate-method">removeCoordinate</a> and <a href="..//QtLocation.MapPolyline.md#path-prop">path</a>.</p>
<!-- @@@addCoordinate -->
<br/>
<!-- $$$removeCoordinate -->
<table class="qmlname"><tr valign="top" id="removeCoordinate-method"><td class="tblQmlFuncNode"><p><span class="name">removeCoordinate</span>(<span class="type">coordinate</span>)</p></td></tr></table><p>Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.</p>
<p><b>See also </b><a href="..//QtLocation.MapPolyline.md#addCoordinate-method">addCoordinate</a> and <a href="..//QtLocation.MapPolyline.md#path-prop">path</a>.</p>
<!-- @@@removeCoordinate -->
<br/>
