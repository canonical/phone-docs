---
Title: Ubuntu.Components.InverseMouseArea
---

# Ubuntu.Components.InverseMouseArea

<span class="subtitle"></span>
<!-- $$$InverseMouseArea-brief -->
<p>The InverseMouseArea captures mouse events happening outside of a given area. More...</p>
<!-- @@@InverseMouseArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#sensingArea-prop">sensingArea</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#topmostItem-prop">topmostItem</a></b></b> : bool</li>
</ul>
<!-- $$$InverseMouseArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A typical use case is hiding of a popup or tooltip when the user presses or taps outside of the popup or tooltip area. The following example illustrates the use of <a href="index.html">InverseMouseArea</a> in a Popup.</p>
<p>Popup.qml</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">color</span>: <span class="string">&quot;darkgray&quot;</span>
<span class="name">radius</span>: <span class="number">10</span>
<span class="type"><a href="index.html">InverseMouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span>
<span class="name">onPressed</span>: <span class="name">parent</span>.<span class="name">destroy</span>()
}
}</pre>
<p>In the Popup above the mouse presses happening outside the area will cause closing and destroying the popup.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">480</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">onClicked</span>: {
var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Popup.qml&quot;</span>);
var <span class="name">obj</span> = <span class="name">component</span>.<span class="name">create</span>(<span class="name">parent</span>);
<span class="name">obj</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}</pre>
<p>By default the <a href="index.html">InverseMouseArea</a> sensing area (the area from which the mouse clicks will be taken) is the application's root component, or the Window in which the topmost parent component of the mouse area resides. This area can be however altered to a different area by setting the <a href="#sensingArea-prop">sensingArea</a> property to a component which is either a parent of the mouse area or a sibling of it.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on the root component&quot;</span>)
}
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">blueRect</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">51</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="index.html">InverseMouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">sensingArea</span>: <span class="name">blueRect</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on the blue rect&quot;</span>)
}
}
}
}</pre>
<p>In this example the inverse mouse area will get mouse presses only when those happen on the blue rectangle area. When clicked outside of the blue rectangle or inside the red rectangle, the mouse area covering the root item will get click signals.</p>
<p><a href="index.html">InverseMouseArea</a>, being derived from <a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a> respects the stacking and z-order of the components. This should be taken into account when combining it with MouseAreas within the same level of the component hierarchy or when combined with <a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a> siblings. In these cases it is recommended to have the <a href="index.html">InverseMouseArea</a> declared as last component, having it in this way as last one oin the component stack.</p>
<pre class="qml"> <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="type">anchors</span> {
<span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">z</span>: <span class="number">1</span>
<span class="name">onPressed</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;red band&quot;</span>)
}
}
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">label</span>.<span class="name">bottom</span>
<span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;I'm a button, I do nothing.&quot;</span>
}
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;green band&quot;</span>)
}
<span class="type"><a href="index.html">InverseMouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">button</span>
<span class="name">onPressed</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;all over except button&quot;</span>)
}
}
}</pre>
<p>When this is not enough, and you want to grab all the mouse events that have been sent to the <a href="#sensingArea-prop">sensingArea</a>, you can use <a href="#topmostItem-prop">topmostItem</a> to place the mouse area above all the components that were instantiated under the sensing area. Beware that setting this property will no longer consider neither the z-order nor the component stack order anymore, as it will steal all the mouse events from the component set as <a href="#sensingArea-prop">sensingArea</a>.</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">firstRect</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
<span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
<span class="name">height</span>: <span class="name">width</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="type"><a href="index.html">InverseMouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">objectName</span>: <span class="string">&quot;IMA&quot;</span>
<span class="name">topmostItem</span>: <span class="number">true</span>
<span class="name">onPressed</span>: <span class="name">print</span>(<span class="string">&quot;IMA&quot;</span>)
}
}
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">firstRect</span>.<span class="name">right</span>
<span class="name">top</span>: <span class="name">firstRect</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
<span class="name">height</span>: <span class="name">width</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">objectName</span>: <span class="string">&quot;MA&quot;</span>
<span class="name">onPressed</span>: <span class="name">print</span>(<span class="string">&quot;MA&quot;</span>)
}
}
}</pre>
<!-- @@@InverseMouseArea -->
<h2>Property Documentation</h2>
<!-- $$$sensingArea -->
<table class="qmlname"><tr valign="top" id="sensingArea-prop"><td class="tblQmlPropNode"><p><span class="name">sensingArea</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the sensing area of the inverse mouse area. By default it is the root item but it can be set to any other area. The area can be reset to the root item by setting null to the property.</p>
<!-- @@@sensingArea -->
<br/>
<!-- $$$topmostItem -->
<table class="qmlname"><tr valign="top" id="topmostItem-prop"><td class="tblQmlPropNode"><p><span class="name">topmostItem</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies whether the <a href="index.html">InverseMouseArea</a> should be above all components taking all mouse, wheel and hover events from the application's or from the area specified by the <a href="#sensingArea-prop">sensingArea</a> (true), or only from the siblings (false). The default value is false.</p>
<!-- @@@topmostItem -->
<br/>
