---
Title: QtQuick.qtquick-visualcanvas-coordinates
---

# QtQuick.qtquick-visualcanvas-coordinates

<span class="subtitle"></span>
<!-- $$$qtquick-visualcanvas-coordinates.html-description -->
<h2 id="item-coordinates">Item Coordinates</h2>
<p>The default system of visual coordinates used in Qt Quick is item coordinates. This is a cartesian coordinate system with (0,0) at the top left corner of the item. The x-axis grows to the right and the y-axis grows downwards, so that the bottom right corner of the item is at coordinates (width, height).</p>
<p>An individual item's position is specified in terms of its parent's coordinate system. This means that reading x,y values from non-sibling items may require conversion to convert them into the same coordinate system. Scene coordinates are often used as the intermediate coordinate system when this occurs.</p>
<h2 id="scene-coordinates">Scene Coordinates</h2>
<p>Scene coordinates are the coordinates where (0,0) corresponds to the top left corner of the window the scene is currently being rendered. Scene coordinates are usually the same as the item coordinates of the root item in the window.</p>
<p>You can convert from item to scene coordinates using the functions on the item whose coordinate system you are interested in. See <a href="QtQuick.Item.md#mapFromItem-method">Item::mapFromItem</a> and <a href="QtQuick.Item.md#mapToItem-method">Item::mapToItem</a> for converting to scene coordinates, or another item's coordinates.</p>
<h2 id="worked-example">Worked Example</h2>
<p>The below QML code creates an arrangment of squares, with dots added for identification of points:</p>
<pre class="cpp">Rectangle {
width: <span class="number">200</span>
height: <span class="number">200</span>
color: <span class="string">&quot;red&quot;</span>
Rectangle {
x: <span class="number">100</span>
y: <span class="number">100</span>
width: <span class="number">100</span>
height: <span class="number">100</span>
color: <span class="string">&quot;blue&quot;</span>
Rectangle {
width: <span class="number">50</span>
height: <span class="number">50</span>
color: <span class="string">&quot;green&quot;</span>
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/349ff979-f5f3-411d-b978-1c7a81d85f6c-../qtquick-visualcanvas-coordinates/images/visual-coordinates-example.png" alt="" /></p><p>In this image the black dot is positioned at (0,0) within the item coordinates of the red rectangle. If the red rectangle was the root item of the scene, then the black dot would also be positioned at (0,0) in scene coordinates.</p>
<p>The blue rectangle is positioned at the white dot, (100,100), relative to the red rectangle's top left corner.</p>
<p>The green rectangle has no x,y specified, so its position defaults to (0,0). Because it is at (0,0) in the coordinates of its parent, the blue rectangle, it is positioned at the top left corner of that rectangle. This is the same point as the white dot at (100,100) in the coordinates of the red rectangle.</p>
<!-- @@@qtquick-visualcanvas-coordinates.html -->
