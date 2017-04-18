---
Title: QtQuick.qtquick-positioning-topic
---

# QtQuick.qtquick-positioning-topic

<span class="subtitle"></span>
<!-- $$$qtquick-positioning-topic.html-description -->
<p>Visual items in QML can be positioned in a variety of ways. The most important positioning-related concept is that of anchoring, a form of relative positioning where items can be anchored (or attached) to each other at certain boundaries. Other positioning concepts include absolute positioning, positioning with coordinate bindings, positioners, and layouts.</p>
<h2 id="manual-positioning">Manual Positioning</h2>
<p>Items can be positioned manually. If the user-interface is going to be static, manual positioning provides the most efficient form of positioning.</p>
<p>In any user-interface, the visual types exist at a particular location in the screen coordinates at any instant in time. While fluidly animated and dynamic user-interfaces are a major focus of Qt Quick, statically-positioned user interfaces are still a viable option. What's more, if the position of those types does not change, it can often be more performant to specify the position manually than to use the more dynamic positioning methods documented in proceeding sections.</p>
<p>In Qt Quick, every visual object is positioned within the <a href="QtQuick.qtquick-visualcanvas-coordinates.md">coordinate system</a> provided by the Qt Quick visual canvas. As described in that document, the x and y coordinates of a visual object are relative to those of its visual parent, with the top-left corner having the coordinate (0, 0).</p>
<p>Thus, the following example will display two rectangles positioned manually:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Example Code</th><th >Resultant Layout</th></tr></thead>
<tr valign="top"><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">x</span>: <span class="number">50</span>
<span class="name">y</span>: <span class="number">50</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">x</span>: <span class="number">100</span>
<span class="name">y</span>: <span class="number">100</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
}
}</pre>
</td><td ><p class="centerAlign"><img src="../../../../media/manual-layout.png" alt="" /></p></td></tr>
</table>
<h2 id="positioning-with-bindings">Positioning With Bindings</h2>
<p>Items may also be positioned by assigning binding expressions to the properties associated with their location in the visual canvas. This type of positioning is the most highly dynamic, however some performance cost is associated with positioning items in this manner.</p>
<p>The position and dimensions of a visual object can also be set through property bindings. This has the advantage that the values will automatically be updated as the dependencies of the bindings change. For example, the width of one Rectangle might depend on the width of the Rectangle next to it.</p>
<p>While bindings provide a very flexible and intuitive way of creating dynamic layouts, it should be noted that there is some performance cost associated with them, and where possible, pristine Anchor layouts should be preferred.</p>
<h2 id="anchors">Anchors</h2>
<p>Anchors allows an item to be placed either adjacent to or inside of another, by attaching one or more of the item's anchor-points (boundaries) to an anchor-point of the other. These anchors will remain even if the dimensions or location of one of the items changes, allowing for highly dynamic user-interfaces.</p>
<p>A visual object can be thought of as having various anchor-points (or more correctly, anchor-lines). Other items can be anchored to those points, which means that as any object changes, the other objects which are anchored to it will adjust automatically to maintain the anchoring.</p>
<p>Qt Quick provides anchors as a top-level concept. See the documentation about <a href="QtQuick.qtquick-positioning-anchors.md">positioning with anchors</a> for in-depth information on the topic.</p>
<p>It is important to note that anchor-based layouts are generally far more performant than binding-based layouts, if pristine. A &quot;pristine&quot; anchor layout is one which uses only anchors (with object nesting) to determine the positioning, whereas a &quot;contaminated&quot; anchor layout is one which uses both anchoring and bindings (either on position-related [x,y] properties or on dimension-related [width,height] properties) to determine the position.</p>
<h2 id="positioners">Positioners</h2>
<p>Qt Quick also provides some built-in positioner items. For many use cases, the best positioner to use is a simple grid, row, or column, and Qt Quick provides items which will position children in these formations in the most efficient manner possible. See the documentation on <a href="QtQuick.qtquick-positioning-layouts.md">item positioners types</a> for more information about utilizing pre-defined positioners.</p>
<h2 id="layouts">Layouts</h2>
<p>From Qt 5.1, the module Qt Quick Layouts can also be used to arrange Qt Quick items in a user interface. Unlike positioners, the types in Qt Quick Layouts manage both the positions and sizes of items in a declarative interface. They are well suited for resizable user interfaces.</p>
<h2 id="right-to-left-support">Right-To-Left Support</h2>
<p>The directionality of the written form of a language often has a great impact on how the visual types of a user-interface should be positioned. Qt Quick supports right-to-left positioning of types through the predefined-layouts as well as right-to-left text layouts.</p>
<p>Please see the documentation about <a href="QtQuick.qtquick-positioning-righttoleft.md">right-to-left support in Qt Quick</a> for in-depth information on the topic.</p>
<!-- @@@qtquick-positioning-topic.html -->
