---
Title: QtQuick.qml-tutorial1
---

# QtQuick.qml-tutorial1

<span class="subtitle"></span>
<!-- $$$qml-tutorial1.html-description -->
<p>This first program is a very simple &quot;Hello world&quot; example that introduces some basic QML concepts. The picture below is a screenshot of this program.</p>
<p class="centerAlign"><img src="../../../media/declarative-tutorial1.png" alt="" /></p><p>Here is the QML code for the application:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">480</span>
<span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">helloText</span>
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
<span class="name">y</span>: <span class="number">30</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">page</span>.<span class="name">horizontalCenter</span>
<span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">font</span>.bold: <span class="number">true</span>
}
}</pre>
<h2 id="walkthrough">Walkthrough</h2>
<h3 >Import</h3>
<p>First, we need to import the types that we need for this example. Most QML files will import the built-in QML types (like <a href="QtQuick.Rectangle.md">Rectangle</a>, <a href="QtQuick.imageelements/#image">Image</a>, ..&#x2e;) that come with Qt, using:</p>
<pre class="qml">import QtQuick 2.0</pre>
<h3 >Rectangle Type</h3>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">480</span>
<span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span></pre>
<p>We declare a root object of type <a href="QtQuick.Rectangle.md">Rectangle</a>. It is one of the basic building blocks you can use to create an application in QML. We give it an <code>id</code> to be able to refer to it later. In this case, we call it &quot;page&quot;. We also set the <code>width</code>, <code>height</code> and <code>color</code> properties. The <a href="QtQuick.Rectangle.md">Rectangle</a> type contains many other properties (such as <code>x</code> and <code>y</code>), but these are left at their default values.</p>
<h3 >Text Type</h3>
<pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">helloText</span>
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
<span class="name">y</span>: <span class="number">30</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">page</span>.<span class="name">horizontalCenter</span>
<span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">font</span>.bold: <span class="number">true</span>
}</pre>
<p>We add a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type as a child of the root Rectangle type that displays the text 'Hello world!'.</p>
<p>The <code>y</code> property is used to position the text vertically at 30 pixels from the top of its parent.</p>
<p>The <code>anchors.horizontalCenter</code> property refers to the horizontal center of an type. In this case, we specify that our text type should be horizontally centered in the <i>page</i> element (see <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Anchor-Based Layout</a>).</p>
<p>The <code>font.pointSize</code> and <code>font.bold</code> properties are related to fonts and use the dot notation.</p>
<h3 >Viewing the example</h3>
<p>To view what you have created, run the qmlscene tool (located in the <code>bin</code> directory) with your filename as the first argument. For example, to run the provided completed Tutorial 1 example from the install location, you would type:</p>
<pre class="cpp">qmlscene tutorials<span class="operator">/</span>helloworld<span class="operator">/</span>tutorial1<span class="operator">.</span>qml</pre>
<!-- @@@qml-tutorial1.html -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="QtQuick.qml-tutorial.md">QML Tutorial</a>
<a class="nextPage" href="QtQuick.qml-tutorial2.md">QML Tutorial 2 - QML Components</a>
</p>
