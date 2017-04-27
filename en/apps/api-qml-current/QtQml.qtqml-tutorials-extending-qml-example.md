---
Title: QtQml.qtqml-tutorials-extending-qml-example
---

# QtQml.qtqml-tutorials-extending-qml-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending-qml-description -->
<p>The <a href="QtQml.qtqml-index.md">Qt QML</a> module provides a set of APIs for extending QML through C++ extensions. You can write extensions to add your own QML types, extend existing Qt types, or call C/C++ functions that are not accessible from ordinary QML code.</p>
<p>This tutorial shows how to write a QML extension using C++ that includes core QML features, including properties, signals and bindings. It also shows how extensions can be deployed through plugins.</p>
<p>Many of the topics covered in this tutorial are documented in further detail in <a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a> and its documentation sub-topics. In particular, you may be interested in the sub-topics <a href="QtQml.qtqml-cppintegration-exposecppattributes.md">Exposing Attributes of C++ Classes to QML</a> and <a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a>.</p>
<h2 id="running-the-tutorial-examples">Running the Tutorial Examples</h2>
<p>The code in this tutorial is available as an example project with subprojects associated with each tutorial chapter. In Qt Creator, open the <b>Welcome</b> mode and select the tutorial from <b>Examples</b>. In <b>Edit</b> mode, expand the <i>extending-qml</i> project, right-click on the subproject (chapter) you want to run and select <b>Run</b>.</p>
<h2 id="chapter-1-creating-a-new-type">Chapter 1: Creating a New Type</h2>
<p><code>extending-qml/chapter1-basics</code></p>
<p>A common task when extending QML is to provide a new QML type that supports some custom functionality beyond what is provided by the built-in Qt Quick types. For example, this could be done to implement particular data models, or provide types with custom painting and drawing capabilities, or access system features like network programming that are not accessible through built-in QML features.</p>
<p>In this tutorial, we will show how to use the C++ classes in the Qt Quick module to extend QML. The end result will be a simple Pie Chart display implemented by several custom QML types connected together through QML features like bindings and signals, and made available to the QML runtime through a plugin.</p>
<p>To begin with, let's create a new QML type called &quot;PieChart&quot; that has two properties: a name and a color. We will make it available in an importable type namespace called &quot;Charts&quot;, with a version of 1.0&#x2e;</p>
<p>We want this <code>PieChart</code> type to be usable from QML like this:</p>
<pre class="cpp">import Charts 1.0
PieChart {
width: 100; height: 100
name: &quot;A simple pie chart&quot;
color: &quot;red&quot;
}</pre>
<p>To do this, we need a C++ class that encapsulates this <code>PieChart</code> type and its two properties. Since QML makes extensive use of Qt's meta object system, this new class must:</p>
<ul>
<li>Inherit from QObject</li>
<li>Declare its properties using the Q_PROPERTY macro</li>
</ul>
<p>Here is our <code>PieChart</code> class, defined in <code>piechart.h</code>:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QtQuick/QQuickPaintedItem&gt;</span>
<span class="preprocessor">#include &lt;QColor&gt;</span>
<span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
<span class="keyword">public</span>:
PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
<span class="type">QString</span> name() <span class="keyword">const</span>;
<span class="type">void</span> setName(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>name);
<span class="type">QColor</span> color() <span class="keyword">const</span>;
<span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
<span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
<span class="keyword">private</span>:
<span class="type">QString</span> m_name;
<span class="type">QColor</span> m_color;
};</pre>
<p>The class inherits from QQuickPaintedItem because we want to override QQuickPaintedItem::paint() in perform drawing operations with the QPainter API. If the class just represented some data type and was not an item that actually needed to be displayed, it could simply inherit from QObject. Or, if we want to extend the functionality of an existing QObject-based class, it could inherit from that class instead. Alternatively, if we want to create a visual item that doesn't need to perform drawing operations with the QPainter API, we can just subclass QQuickItem.</p>
<p>The <code>PieChart</code> class defines the two properties, <code>name</code> and <code>color</code>, with the Q_PROPERTY macro, and overrides QQuickPaintedItem::paint(). The class implementation in <code>piechart.cpp</code> simply sets and returns the <code>m_name</code> and <code>m_color</code> values as appropriate, and implements <code>paint()</code> to draw a simple pie chart. It also turns off the QGraphicsItem::ItemHasNoContents flag to enable painting:</p>
<pre class="cpp">PieChart<span class="operator">::</span>PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent)
: <span class="type">QQuickPaintedItem</span>(parent)
{
}
...
<span class="type">void</span> PieChart<span class="operator">::</span>paint(<span class="type">QPainter</span> <span class="operator">*</span>painter)
{
<span class="type">QPen</span> pen(m_color<span class="operator">,</span> <span class="number">2</span>);
painter<span class="operator">-</span><span class="operator">&gt;</span>setPen(pen);
painter<span class="operator">-</span><span class="operator">&gt;</span>setRenderHints(<span class="type">QPainter</span><span class="operator">::</span>Antialiasing<span class="operator">,</span> <span class="keyword">true</span>);
painter<span class="operator">-</span><span class="operator">&gt;</span>drawPie(boundingRect()<span class="operator">.</span>adjusted(<span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span>)<span class="operator">,</span> <span class="number">90</span> <span class="operator">*</span> <span class="number">16</span><span class="operator">,</span> <span class="number">290</span> <span class="operator">*</span> <span class="number">16</span>);
}</pre>
<p>Now that we have defined the <code>PieChart</code> type, we will use it from QML. The <code>app.qml</code> file creates a <code>PieChart</code> item and display the pie chart's details using a standard QML Text item:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">aPieChart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">name</span>: <span class="string">&quot;A simple pie chart&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="name">aPieChart</span>.<span class="name">name</span>
}
}</pre>
<p>Notice that although the color is specified as a string in QML, it is automatically converted to a QColor object for the PieChart <code>color</code> property. Automatic conversions are provided for various other <a href="QtQml.qtqml-typesystem-basictypes.md">basic types</a>; for example, a string like &quot;640x480&quot; can be automatically converted to a QSize value.</p>
<p>We'll also create a C++ application that uses a QQuickView to run and display <code>app.qml</code>. The application must register the <code>PieChart</code> type using the qmlRegisterType() function, to allow it to be used from QML. If you don't register the type, <code>app.qml</code> won't be able to create a <code>PieChart</code>.</p>
<p>Here is the application <code>main.cpp</code>:</p>
<pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
<span class="preprocessor">#include &lt;QtQuick/QQuickView&gt;</span>
<span class="preprocessor">#include &lt;QGuiApplication&gt;</span>
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///app.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p>This call to qmlRegisterType() registers the <code>PieChart</code> type as a type called &quot;PieChart&quot;, in a type namespace called &quot;Charts&quot;, with a version of 1.0&#x2e;</p>
<p>Lastly, we write a <code>.pro</code> project file that includes the files and the <code>declarative</code> library:</p>
<pre class="cpp">QT += qml quick
HEADERS += piechart.h
SOURCES += piechart.cpp \
main.cpp
RESOURCES += chapter1-basics.qrc
DESTPATH = $$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending-qml/chapter1-basics
target.path = $$DESTPATH
qml.files = *.qml
qml.path = $$DESTPATH
INSTALLS += target qml</pre>
<p>Now we can build and run the application:</p>
<p class="centerAlign"><img src="../../../media/extending-tutorial-chapter1.png" alt="" /></p><p><b>Note: </b>You may see a warning <i>Expression ..&#x2e; depends on non-NOTIFYable properties: PieChart::name</i>. This happens because we add a binding to the writable <code>name</code> property, but haven't yet defined a notify signal for it. The QML engine therefore cannot update the binding if the <code>name</code> value changes. This is addressed in the following chapters.</p>
<h2 id="chapter-2-connecting-to-c-methods-and-signals">Chapter 2: Connecting to C++ Methods and Signals</h2>
<p><code>extending-qml/chapter2-methods</code></p>
<p>Suppose we want <code>PieChart</code> to have a &quot;clearChart()&quot; method that erases the chart and then emits a &quot;chartCleared&quot; signal. Our <code>app.qml</code> would be able to call <code>clearChart()</code> and receive <code>chartCleared()</code> signals like this:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">aPieChart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">onChartCleared</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The chart has been cleared&quot;</span>)
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">aPieChart</span>.<span class="name">clearChart</span>()
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="string">&quot;Click anywhere to clear the chart&quot;</span>
}
}</pre>
<p class="centerAlign"><img src="../../../media/extending-tutorial-chapter2.png" alt="" /></p><p>To do this, we add a <code>clearChart()</code> method and a <code>chartCleared()</code> signal to our C++ class:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
...
<span class="keyword">public</span>:
...
Q_INVOKABLE <span class="type">void</span> clearChart();
<span class="keyword">signals</span>:
<span class="type">void</span> chartCleared();
...
};</pre>
<p>The use of Q_INVOKABLE makes the <code>clearChart()</code> method available to the Qt Meta-Object system, and in turn, to QML. Note that it could have been declared as a Qt slot instead of using Q_INVOKABLE, as slots are also callable from QML. Both of these approaches are valid.</p>
<p>The <code>clearChart()</code> method simply changes the color to Qt::transparent, repaints the chart, then emits the <code>chartCleared()</code> signal:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>clearChart()
{
setColor(<span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>transparent));
update();
<span class="keyword">emit</span> chartCleared();
}</pre>
<p>Now when we run the application and click the window, the pie chart disappears, and the application outputs:</p>
<pre class="cpp">qml: The chart has been cleared</pre>
<h2 id="chapter-3-adding-property-bindings">Chapter 3: Adding Property Bindings</h2>
<p><code>extending-qml/chapter3-bindings</code></p>
<p>Property binding is a powerful feature of QML that allows values of different types to be synchronized automatically. It uses signals to notify and update other types' values when property values are changed.</p>
<p>Let's enable property bindings for the <code>color</code> property. That means if we have code like this:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Row</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="number">20</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chartA</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chartB</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">chartA</span>.<span class="name">color</span>
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: { <span class="name">chartA</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;blue&quot;</span> }
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="string">&quot;Click anywhere to change the chart color&quot;</span>
}
}</pre>
<p class="centerAlign"><img src="../../../media/extending-tutorial-chapter3.png" alt="" /></p><p>The &quot;color: chartA.color&quot; statement binds the <code>color</code> value of <code>chartB</code> to the <code>color</code> of <code>chartA</code>. Whenever <code>chartA</code>'s <code>color</code> value changes, <code>chartB</code>'s <code>color</code> value updates to the same value. When the window is clicked, the <code>onClicked</code> handler in the MouseArea changes the color of <code>chartA</code>, thereby changing both charts to the color blue.</p>
<p>It's easy to enable property binding for the <code>color</code> property. We add a NOTIFY feature to its Q_PROPERTY() declaration to indicate that a &quot;colorChanged&quot; signal is emitted whenever the value changes.</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
...
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor NOTIFY colorChanged)
<span class="keyword">public</span>:
...
<span class="keyword">signals</span>:
<span class="type">void</span> colorChanged();
...
};</pre>
<p>Then, we emit this signal in <code>setPieSlice()</code>:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color)
{
<span class="keyword">if</span> (color <span class="operator">!</span><span class="operator">=</span> m_color) {
m_color <span class="operator">=</span> color;
update();   <span class="comment">// repaint with the new color</span>
<span class="keyword">emit</span> colorChanged();
}
}</pre>
<p>It's important for <code>setColor()</code> to check that the color value has actually changed before emitting <code>colorChanged()</code>. This ensures the signal is not emitted unnecessarily and also prevents loops when other types respond to the value change.</p>
<p>The use of bindings is essential to QML. You should always add NOTIFY signals for properties if they are able to be implemented, so that your properties can be used in bindings. Properties that cannot be bound cannot be automatically updated and cannot be used as flexibly in QML. Also, since bindings are invoked so often and relied upon in QML usage, users of your custom QML types may see unexpected behavior if bindings are not implemented.</p>
<h2 id="chapter-4-using-custom-property-types">Chapter 4: Using Custom Property Types</h2>
<p><code>extending-qml/chapter4-customPropertyTypes</code></p>
<p>The <code>PieChart</code> type currently has a string-type property and a color-type property. It could have many other types of properties. For example, it could have an int-type property to store an identifier for each chart:</p>
<pre class="cpp"><span class="comment">// C++</span>
<span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_PROPERTY(<span class="type">int</span> chartId READ chartId WRITE setChartId NOTIFY chartIdChanged)
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="keyword">public</span>:
<span class="type">void</span> setChartId(<span class="type">int</span> chartId);
<span class="type">int</span> chartId() <span class="keyword">const</span>;
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="keyword">signals</span>:
<span class="type">void</span> chartIdChanged();
};
<span class="comment">// QML</span>
PieChart {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
chartId: <span class="number">100</span>
}</pre>
<p>Aside from <code>int</code>, we could use various other property types. Many of the Qt data types such as QColor, QSize and QRect are automatically supported from QML. (See <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a> documentation for a full list.)</p>
<p>If we want to create a property whose type is not supported by QML by default, we need to register the type with the QML engine.</p>
<p>For example, let's replace the use of the <code>property</code> with a type called &quot;PieSlice&quot; that has a <code>color</code> property. Instead of assigning a color, we assign an <code>PieSlice</code> value which itself contains a <code>color</code>:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">pieSlice</span>: <span class="name">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
}
<span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The pie is colored &quot;</span> <span class="operator">+</span> <span class="name">chart</span>.<span class="name">pieSlice</span>.<span class="name">color</span>)
}</pre>
<p>Like <code>PieChart</code>, this new <code>PieSlice</code> type inherits from QQuickPaintedItem and declares its properties with Q_PROPERTY():</p>
<pre class="cpp"><span class="keyword">class</span> PieSlice : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
<span class="keyword">public</span>:
PieSlice(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
<span class="type">QColor</span> color() <span class="keyword">const</span>;
<span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
<span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
<span class="keyword">private</span>:
<span class="type">QColor</span> m_color;
};</pre>
<p>To use it in <code>PieChart</code>, we modify the <code>color</code> property declaration and associated method signatures:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
{
Q_OBJECT
Q_PROPERTY(PieSlice<span class="operator">*</span> pieSlice READ pieSlice WRITE setPieSlice)
...
<span class="keyword">public</span>:
...
PieSlice <span class="operator">*</span>pieSlice() <span class="keyword">const</span>;
<span class="type">void</span> setPieSlice(PieSlice <span class="operator">*</span>pieSlice);
...
};</pre>
<p>There is one thing to be aware of when implementing <code>setPieSlice()</code>. The <code>PieSlice</code> is a visual item, so it must be set as a child of the <code>PieChart</code> using QQuickItem::setParentItem() so that the <code>PieChart</code> knows to paint this child item when its contents are drawn:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setPieSlice(PieSlice <span class="operator">*</span>pieSlice)
{
m_pieSlice <span class="operator">=</span> pieSlice;
pieSlice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(<span class="keyword">this</span>);
}</pre>
<p>Like the <code>PieChart</code> type, the <code>PieSlice</code> type has to be registered using qmlRegisterType() to be used from QML. As with <code>PieChart</code>, we'll add the type to the &quot;Charts&quot; type namespace, version 1.0:</p>
<pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
...
qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
...
}</pre>
<h2 id="chapter-5-using-list-property-types">Chapter 5: Using List Property Types</h2>
<p><code>extending-qml/chapter5-listproperties</code></p>
<p>Right now, a <code>PieChart</code> can only have one <code>PieSlice</code>. Ideally a chart would have multiple slices, with different colors and sizes. To do this, we could have a <code>slices</code> property that accepts a list of <code>PieSlice</code> items:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">slices</span>: [
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">fromAngle</span>: <span class="number">0</span>; <span class="name">angleSpan</span>: <span class="number">110</span>
},
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="name">fromAngle</span>: <span class="number">110</span>; <span class="name">angleSpan</span>: <span class="number">50</span>
},
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">fromAngle</span>: <span class="number">160</span>; <span class="name">angleSpan</span>: <span class="number">100</span>
}
]
}
}</pre>
<p class="centerAlign"><img src="../../../media/extending-tutorial-chapter5.png" alt="" /></p><p>To do this, we replace the <code>pieSlice</code> property in <code>PieChart</code> with a <code>slices</code> property, declared as a QQmlListProperty type. The QQmlListProperty class enables the creation of list properties in QML extensions. We replace the <code>pieSlice()</code> function with a <code>slices()</code> function that returns a list of slices, and add an internal <code>append_slice()</code> function (discussed below). We also use a QList to store the internal list of slices as <code>m_slices</code>:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices READ slices)
...
<span class="keyword">public</span>:
...
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices();
<span class="keyword">private</span>:
<span class="keyword">static</span> <span class="type">void</span> append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice);
<span class="type">QString</span> m_name;
<span class="type">QList</span><span class="operator">&lt;</span>PieSlice <span class="operator">*</span><span class="operator">&gt;</span> m_slices;
};</pre>
<p>Although the <code>slices</code> property does not have an associated <code>WRITE</code> function, it is still modifiable because of the way QQmlListProperty works. In the <code>PieChart</code> implementation, we implement <code>PieChart::slices()</code> to return a QQmlListProperty value and indicate that the internal <code>PieChart::append_slice()</code> function is to be called whenever a request is made from QML to add items to the list:</p>
<pre class="cpp"><span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> PieChart<span class="operator">::</span>slices()
{
<span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="operator">&amp;</span>PieChart<span class="operator">::</span>append_slice<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span>);
}
<span class="type">void</span> PieChart<span class="operator">::</span>append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice)
{
PieChart <span class="operator">*</span>chart <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>PieChart <span class="operator">*</span><span class="operator">&gt;</span>(list<span class="operator">-</span><span class="operator">&gt;</span>object);
<span class="keyword">if</span> (chart) {
slice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(chart);
chart<span class="operator">-</span><span class="operator">&gt;</span>m_slices<span class="operator">.</span>append(slice);
}
}</pre>
<p>The <code>append_slice()</code> function simply sets the parent item as before, and adds the new item to the <code>m_slices</code> list. As you can see, the append function for a QQmlListProperty is called with two arguments: the list property, and the item that is to be appended.</p>
<p>The <code>PieSlice</code> class has also been modified to include <code>fromAngle</code> and <code>angleSpan</code> properties and to draw the slice according to these values. This is a straightforward modification if you have read the previous pages in this tutorial, so the code is not shown here.</p>
<h2 id="chapter-6-writing-an-extension-plugin">Chapter 6: Writing an Extension Plugin</h2>
<p><code>extending-qml/chapter6-plugins</code></p>
<p>Currently the <code>PieChart</code> and <code>PieSlice</code> types are used by <code>app.qml</code>, which is displayed using a QQuickView in a C++ application. An alternative way to use our QML extension is to create a plugin library to make it available to the QML engine as a new QML import module. This allows the <code>PieChart</code> and <code>PieSlice</code> types to be registered into a type namespace which can be imported by any QML application, instead of restricting these types to be only used by the one application.</p>
<p>The steps for creating a plugin are described in Creating C++ Plugins for QML. To start with, we create a plugin class named <code>ChartsPlugin</code>. It subclasses QQmlExtensionPlugin and registers our QML types in the inherited registerTypes() method.</p>
<p>Here is the <code>ChartsPlugin</code> definition in <code>chartsplugin.h</code>:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QQmlExtensionPlugin&gt;</span>
<span class="keyword">class</span> ChartsPlugin : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
{
Q_OBJECT
Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.Qt.QQmlExtensionInterface&quot;</span>)
<span class="keyword">public</span>:
<span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri);
};</pre>
<p>And its implementation in <code>chartsplugin.cpp</code>:</p>
<pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
<span class="preprocessor">#include &quot;pieslice.h&quot;</span>
<span class="preprocessor">#include &lt;qqml.h&gt;</span>
<span class="type">void</span> ChartsPlugin<span class="operator">::</span>registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
{
qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
}</pre>
<p>Then, we write a <code>.pro</code> project file that defines the project as a plugin library and specifies with DESTDIR that library files should be built into a <code>../Charts</code> directory.</p>
<pre class="cpp">TEMPLATE = lib
CONFIG += plugin
QT += qml quick
DESTDIR = ../Charts
TARGET = $$qtLibraryTarget(chartsplugin)
HEADERS += piechart.h \
pieslice.h \
chartsplugin.h
SOURCES += piechart.cpp \
pieslice.cpp \
chartsplugin.cpp
DESTPATH=$$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending-qml/chapter6-plugins/Charts
target.path=$$DESTPATH
qmldir.files=$$PWD/qmldir
qmldir.path=$$DESTPATH
INSTALLS += target qmldir
OTHER_FILES += qmldir
# Copy the qmldir file to the same folder as the plugin binary
QMAKE_POST_LINK += $$QMAKE_COPY $$replace($$list($$quote($$PWD/qmldir) $$DESTDIR), /, $$QMAKE_DIR_SEP)</pre>
<p>In this example, the <code>Charts</code> directory is located at the same level as the application that uses our new import module. This way, the QML engine will find our module as the default search path for QML imports includes the directory of the application executable. Alternatively, we could control what directories the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">QML import path</a> contains, useful if there are multiple QML applications using the same QML imports.</p>
<p>The <code>.pro</code> file also contains additional magic to ensure that the <a href="QtQml.qtqml-modules-qmldir.md">module definition qmldir file</a> is always copied to the same location as the plugin binary.</p>
<p>The <code>qmldir</code> file declares the module name and the plugin that is made available by the module:</p>
<pre class="cpp">module Charts
plugin chartsplugin</pre>
<p>Now we have a QML module that can be imported to any application, provided that the QML engine knows where to find it. The example contains an executable that loads <code>app.qml</code>, which uses the <code>import Charts 1.0</code> statement. Alternatively, you can load the QML file using the qmlscene tool, setting the import path to the current directory so that it finds the <code>qmldir</code> file:</p>
<pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> app<span class="operator">.</span>qml</pre>
<p>The module &quot;Charts&quot; will be loaded by the QML engine, and the types provided by that module will be available for use in any QML document which imports it.</p>
<h2 id="chapter-7-summary">Chapter 7: Summary</h2>
<p>In this tutorial, we've shown the basic steps for creating a QML extension:</p>
<ul>
<li>Define new QML types by subclassing QObject and registering them with qmlRegisterType()</li>
<li>Add callable methods using Q_INVOKABLE or Qt slots, and connect to Qt signals with an <code>onSignal</code> syntax</li>
<li>Add property bindings by defining NOTIFY signals</li>
<li>Define custom property types if the built-in types are not sufficient</li>
<li>Define list property types using QQmlListProperty</li>
<li>Create a plugin library by defining a Qt plugin and writing a <a href="QtQml.qtqml-modules-qmldir.md">qmldir</a> file</li>
</ul>
<p>The <a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a> documentation shows other useful features that can be added to QML extensions. For example, we could use <a href="QtQml.qtqml-syntax-objectattributes.md#default-properties">default properties</a> to allow slices to be added without using the <code>slices</code> property:</p>
<pre class="cpp">PieChart {
PieSlice { ..&#x2e; }
PieSlice { ..&#x2e; }
PieSlice { ..&#x2e; }
}</pre>
<p>Or randomly add and remove slices from time to time using <a href="QtQml.qtqml-cppintegration-definetypes.md#property-value-sources">property value sources</a>:</p>
<pre class="cpp">PieChart {
PieSliceRandomizer on slices {}
}</pre>
<p>Files:</p>
<ul>
<li>tutorials/extending-qml/chapter1-basics/app.qml</li>
<li>tutorials/extending-qml/chapter1-basics/piechart.cpp</li>
<li>tutorials/extending-qml/chapter1-basics/piechart.h</li>
<li>tutorials/extending-qml/chapter2-methods/app.qml</li>
<li>tutorials/extending-qml/chapter2-methods/piechart.cpp</li>
<li>tutorials/extending-qml/chapter2-methods/piechart.h</li>
<li>tutorials/extending-qml/chapter3-bindings/app.qml</li>
<li>tutorials/extending-qml/chapter3-bindings/piechart.cpp</li>
<li>tutorials/extending-qml/chapter3-bindings/piechart.h</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/app.qml</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/piechart.cpp</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/piechart.h</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/pieslice.cpp</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/pieslice.h</li>
<li>tutorials/extending-qml/chapter5-listproperties/app.qml</li>
<li>tutorials/extending-qml/chapter5-listproperties/piechart.cpp</li>
<li>tutorials/extending-qml/chapter5-listproperties/piechart.h</li>
<li>tutorials/extending-qml/chapter5-listproperties/pieslice.cpp</li>
<li>tutorials/extending-qml/chapter5-listproperties/pieslice.h</li>
<li>tutorials/extending-qml/chapter6-plugins/app.qml</li>
<li>tutorials/extending-qml/chapter6-plugins/import/chartsplugin.cpp</li>
<li>tutorials/extending-qml/chapter6-plugins/import/chartsplugin.h</li>
<li>tutorials/extending-qml/chapter6-plugins/import/piechart.cpp</li>
<li>tutorials/extending-qml/chapter6-plugins/import/piechart.h</li>
<li>tutorials/extending-qml/chapter6-plugins/import/pieslice.cpp</li>
<li>tutorials/extending-qml/chapter6-plugins/import/pieslice.h</li>
<li>tutorials/extending-qml/chapter1-basics/main.cpp</li>
<li>tutorials/extending-qml/extending-qml.pro</li>
<li>tutorials/extending-qml/chapter1-basics/chapter1-basics.pro</li>
<li>tutorials/extending-qml/chapter1-basics/chapter1-basics.qrc</li>
<li>tutorials/extending-qml/chapter2-methods/chapter2-methods.pro</li>
<li>tutorials/extending-qml/chapter2-methods/chapter2-methods.qrc</li>
<li>tutorials/extending-qml/chapter3-bindings/chapter3-binding.qrc</li>
<li>tutorials/extending-qml/chapter3-bindings/chapter3-bindings.pro</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/chapter4-customPropertyTypes.pro</li>
<li>tutorials/extending-qml/chapter4-customPropertyTypes/chapter4-customPropertyTypes.qrc</li>
<li>tutorials/extending-qml/chapter5-listproperties/chapter5-listproperties.pro</li>
<li>tutorials/extending-qml/chapter5-listproperties/chapter5-listproperties.qrc</li>
<li>tutorials/extending-qml/chapter6-plugins/app.pro</li>
<li>tutorials/extending-qml/chapter6-plugins/app.qrc</li>
<li>tutorials/extending-qml/chapter6-plugins/chapter6-plugins.pro</li>
<li>tutorials/extending-qml/chapter6-plugins/import/import.pro</li>
<li>tutorials/extending-qml/chapter6-plugins/import/qmldir</li>
</ul>
<p><b>See also </b><a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a>.</p>
<!-- @@@tutorials/extending-qml -->
