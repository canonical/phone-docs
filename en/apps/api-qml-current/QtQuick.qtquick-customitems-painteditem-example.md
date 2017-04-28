---
Title: QtQuick.qtquick-customitems-painteditem-example
---

# QtQuick.qtquick-customitems-painteditem-example

<span class="subtitle"></span>
<!-- $$$customitems/painteditem-description -->
<p>The Painted Item example shows how to use the QML Scene Graph framework to implement custom scenegraph items using QPainter.</p>
<p class="centerAlign"><img src="../../../media/declarative-textballoons_example.png" alt="" /></p><p>The QQuickPaintedItem class is a class derived from QQuickItem for implementing custom QML Scene Graph items using the QPainter interfaces.</p>
<p>The example consists of an item class, a plugin class and a QML file to use this plugin. The <code>TextBalloon</code> class represents the individual text balloons extending QQuickPaintedItem, the <code>TextBalloonPlugin</code> class represents the skeleton code for a Qt Quick plugin and the <code>textballoons.qml</code> file is used to load the plugin and display the text balloons.</p>
<p>We will focus on the <code>TextBalloon</code> class first and continue with the <code>textballoons.qml</code> file. For an example on how to implement a <a href="QtQuick.qtquick-index.md">Qt Quick</a> plugin please look at Writing an Extension Plugin</p>
<h2 id="textballoon-class-declaration">TextBalloon Class Declaration</h2>
<p>The <code>TextBalloon</code> class inherits from QQuickPaintedItem. QQuickPaintedItem is the base class for all QPainter based items in the QML Scene Graph framework.</p>
<pre class="cpp"><span class="keyword">class</span> TextBalloon : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_OBJECT
Q_PROPERTY(bool rightAligned READ isRightAligned WRITE setRightAligned NOTIFY rightAlignedChanged)
<span class="keyword">public</span>:
TextBalloon(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
<span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
bool isRightAligned();
<span class="type">void</span> setRightAligned(bool rightAligned);
<span class="keyword">private</span>:
bool rightAligned;
<span class="keyword">signals</span>:
<span class="type">void</span> rightAlignedChanged();
};</pre>
<p>To implement a QQuickPaintedItem you must implement QQuickPaintedIem's pure virtual function paint() which implements the painting of the type.</p>
<h2 id="textballoon-class-definition">TextBalloon Class Definition</h2>
<p>We have to be sure to initialize the rightAligned property for a TextBalloon item.</p>
<pre class="cpp">TextBalloon<span class="operator">::</span>TextBalloon(<span class="type">QQuickItem</span> <span class="operator">*</span>parent)
: <span class="type">QQuickPaintedItem</span>(parent)
<span class="operator">,</span> rightAligned(<span class="keyword">false</span>)
{
}</pre>
<p>Then we implement the <code>paint()</code> function which is automatically called by the Scene Graph framework to paint the contents of the item. The function paints the item in local coordinates.</p>
<pre class="cpp"><span class="type">void</span> TextBalloon<span class="operator">::</span>paint(<span class="type">QPainter</span> <span class="operator">*</span>painter)
{
<span class="type">QBrush</span> brush(<span class="type">QColor</span>(<span class="string">&quot;#007430&quot;</span>));
painter<span class="operator">-</span><span class="operator">&gt;</span>setBrush(brush);
painter<span class="operator">-</span><span class="operator">&gt;</span>setPen(<span class="type">Qt</span><span class="operator">::</span>NoPen);
painter<span class="operator">-</span><span class="operator">&gt;</span>setRenderHint(<span class="type">QPainter</span><span class="operator">::</span>Antialiasing);
painter<span class="operator">-</span><span class="operator">&gt;</span>drawRoundedRect(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>width()<span class="operator">,</span> boundingRect()<span class="operator">.</span>height() <span class="operator">-</span> <span class="number">10</span><span class="operator">,</span> <span class="number">10</span><span class="operator">,</span> <span class="number">10</span>);
<span class="keyword">if</span> (rightAligned)
{
<span class="keyword">const</span> <span class="type">QPointF</span> points<span class="operator">[</span><span class="number">3</span><span class="operator">]</span> <span class="operator">=</span> {
<span class="type">QPointF</span>(boundingRect()<span class="operator">.</span>width() <span class="operator">-</span> <span class="number">10.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height() <span class="operator">-</span> <span class="number">10.0</span>)<span class="operator">,</span>
<span class="type">QPointF</span>(boundingRect()<span class="operator">.</span>width() <span class="operator">-</span> <span class="number">20.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height())<span class="operator">,</span>
<span class="type">QPointF</span>(boundingRect()<span class="operator">.</span>width() <span class="operator">-</span> <span class="number">30.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height() <span class="operator">-</span> <span class="number">10.0</span>)<span class="operator">,</span>
};
painter<span class="operator">-</span><span class="operator">&gt;</span>drawConvexPolygon(points<span class="operator">,</span> <span class="number">3</span>);
}
<span class="keyword">else</span>
{
<span class="keyword">const</span> <span class="type">QPointF</span> points<span class="operator">[</span><span class="number">3</span><span class="operator">]</span> <span class="operator">=</span> {
<span class="type">QPointF</span>(<span class="number">10.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height() <span class="operator">-</span> <span class="number">10.0</span>)<span class="operator">,</span>
<span class="type">QPointF</span>(<span class="number">20.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height())<span class="operator">,</span>
<span class="type">QPointF</span>(<span class="number">30.0</span><span class="operator">,</span> boundingRect()<span class="operator">.</span>height() <span class="operator">-</span> <span class="number">10.0</span>)<span class="operator">,</span>
};
painter<span class="operator">-</span><span class="operator">&gt;</span>drawConvexPolygon(points<span class="operator">,</span> <span class="number">3</span>);
}
}</pre>
<p>We start with setting the pen and brush on the item to define the look of the item. After that we start drawing. Note that the contentsBoundingRect() item is called to draw depending on the size of the item. The rectangle returned by the contentsBoundingRect() function is the size of the item as defined in the QML file.</p>
<h2 id="textballoons-qml-file">Textballoons.qml File</h2>
<p>The Interface consists of two main parts. The scrollable area with the textballoons and the controls button to add new balloons.</p>
<h3 >BalloonView</h3>
<pre class="qml"><span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">balloonModel</span>
<span class="type">ListElement</span> {
<span class="name">balloonWidth</span>: <span class="number">200</span>
}
<span class="type">ListElement</span> {
<span class="name">balloonWidth</span>: <span class="number">120</span>
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.bottom: <span class="name">controls</span>.<span class="name">top</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">2</span>
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">id</span>: <span class="name">balloonView</span>
<span class="name">delegate</span>: <span class="name">TextBalloon</span> {
<span class="name">anchors</span>.right: <span class="name">index</span> <span class="operator">%</span> <span class="number">2</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="name">undefined</span> : <span class="name">parent</span>.<span class="name">right</span>
<span class="name">height</span>: <span class="number">60</span>
<span class="name">rightAligned</span>: <span class="name">index</span> <span class="operator">%</span> <span class="number">2</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="number">false</span> : <span class="number">true</span>
<span class="name">width</span>: <span class="name">balloonWidth</span>
}
<span class="name">model</span>: <span class="name">balloonModel</span>
<span class="name">spacing</span>: <span class="number">5</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
}</pre>
<p>The balloonModel contains two types at application start which will be displayed by the <a href="QtQuick.customitems-painteditem/#balloonview">balloonView</a>. The <a href="QtQuick.customitems-painteditem/#balloonview">balloonView</a> alernates the TextBalloon delegate items between left-aligned and right-aligned.</p>
<h3 >Controls</h3>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">controls</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.margins: <span class="number">1</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">border</span>.width: <span class="number">2</span>
<span class="name">color</span>: <span class="string">&quot;white&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">*</span> <span class="number">0.15</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Add another balloon&quot;</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">hoverEnabled</span>: <span class="number">true</span>
<span class="name">onClicked</span>: {
<span class="name">balloonModel</span>.<span class="name">append</span>({&quot;balloonWidth&quot;: <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">200</span> <span class="operator">+</span> <span class="number">100</span>)})
<span class="name">balloonView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">balloonView</span>.<span class="name">count</span> <span class="operator">-</span><span class="number">1</span>, <span class="name">ListView</span>.<span class="name">End</span>)
}
<span class="name">onEntered</span>: {
<span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;#8ac953&quot;</span>
}
<span class="name">onExited</span>: {
<span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;white&quot;</span>
}
}
}</pre>
<p>The controls part of the UI contains a rectangle with a <a href="QtQuick.MouseArea.md">MouseArea</a> which changes color when the mouse hovers over it. This control 'button' adds a new object to the end of the model with a random width.</p>
<p>Files:</p>
<ul>
<li>customitems/painteditem/textballoon.cpp</li>
<li>customitems/painteditem/textballoon.h</li>
<li>customitems/painteditem/textballoons.qml</li>
<li>customitems/painteditem/TextBalloonPlugin/plugin.h</li>
<li>customitems/painteditem/painteditem.pro</li>
<li>customitems/painteditem/painteditem.qrc</li>
<li>customitems/painteditem/TextBalloonPlugin/qmldir</li>
</ul>
<!-- @@@customitems/painteditem -->
