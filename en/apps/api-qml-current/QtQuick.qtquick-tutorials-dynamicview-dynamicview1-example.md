---
Title: QtQuick.qtquick-tutorials-dynamicview-dynamicview1-example
---

# QtQuick.qtquick-tutorials-dynamicview-dynamicview1-example

<span class="subtitle"></span>
<!-- $$$tutorials/dynamicview/dynamicview1-description -->
<p>We begin our application by defining a <a href="QtQuick.ListView.md">ListView</a>, a model which will provide data to the view, and a delegate which provides a template for constructing items in the view.</p>
<p>The code for the <a href="QtQuick.ListView.md">ListView</a> and delegate looks like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">dragDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">content</span>
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">column</span>.<span class="name">implicitHeight</span> <span class="operator">+</span> <span class="number">4</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">border</span>.color: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="name">radius</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Name: '</span> <span class="operator">+</span> <span class="name">name</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Type: '</span> <span class="operator">+</span> <span class="name">type</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Age: '</span> <span class="operator">+</span> <span class="name">age</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Size: '</span> <span class="operator">+</span> <span class="name">size</span> }
}
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">dragDelegate</span>
<span class="name">spacing</span>: <span class="number">4</span>
<span class="name">cacheBuffer</span>: <span class="number">50</span>
}
}</pre>
<p>The model is defined in a separate QML file which looks like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ListModel</span> {
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Polly&quot;</span>
<span class="name">type</span>: <span class="string">&quot;Parrot&quot;</span>
<span class="name">age</span>: <span class="number">12</span>
<span class="name">size</span>: <span class="string">&quot;Small&quot;</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Penny&quot;</span>
<span class="name">type</span>: <span class="string">&quot;Turtle&quot;</span>
<span class="name">age</span>: <span class="number">4</span>
<span class="name">size</span>: <span class="string">&quot;Small&quot;</span>
}
}</pre>
<h3 >Walkthrough</h3>
<p>The first item defined within the application's root Rectangle is the delegate Component. This is the template from which each item in the <a href="QtQuick.ListView.md">ListView</a> is constructed.</p>
<p>The <code>name</code>, <code>age</code>, <code>type</code>, and <code>size</code> variables referenced in the delegate are sourced from the model data. The names correspond to roles defined in the model.</p>
<pre class="qml">    <span class="type">Component</span> {
<span class="name">id</span>: <span class="name">dragDelegate</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">content</span>
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
<span class="name">height</span>: <span class="name">column</span>.<span class="name">implicitHeight</span> <span class="operator">+</span> <span class="number">4</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">border</span>.color: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="name">radius</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Name: '</span> <span class="operator">+</span> <span class="name">name</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Type: '</span> <span class="operator">+</span> <span class="name">type</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Age: '</span> <span class="operator">+</span> <span class="name">age</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Size: '</span> <span class="operator">+</span> <span class="name">size</span> }
}
}
}</pre>
<p>The second part of the application is the <a href="QtQuick.ListView.md">ListView</a> itself to which we bind the model and delegate.</p>
<pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">dragDelegate</span>
<span class="name">spacing</span>: <span class="number">4</span>
<span class="name">cacheBuffer</span>: <span class="number">50</span>
}</pre>
<p>Files:</p>
<ul>
<li>tutorials/dynamicview/dynamicview1/PetsModel.qml</li>
<li>tutorials/dynamicview/dynamicview1/dynamicview.qml</li>
<li>tutorials/dynamicview/dynamicview1/dynamicview1.qmlproject</li>
</ul>
<!-- @@@tutorials/dynamicview/dynamicview1 -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="QtQuick.qml-dynamicview-tutorial.md">QML Dynamic View Ordering Tutorial</a>
<a class="nextPage" href="QtQuick.qtquick-tutorials-dynamicview-dynamicview2-example.md">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a>
</p>
