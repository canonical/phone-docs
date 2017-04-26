---
Title: QtQuick.qtquick-tutorials-samegame-samegame1-example
---

# QtQuick.qtquick-tutorials-samegame-samegame1-example

<span class="subtitle"></span>
<!-- $$$tutorials/samegame/samegame1-description -->
<h3 >Creating the application screen</h3>
<p>The first step is to create the basic QML items in your application.</p>
<p>To begin with, we create our Same Game application with a main screen like this:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f48d42da-4e3f-4a40-b9cf-6859e7d80b31-../qtquick-tutorials-samegame-samegame1-example/images/declarative-adv-tutorial1.png" alt="" /></p><p>This is defined by the main application file, <code>samegame.qml</code>, which looks like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">screen</span>
<span class="name">width</span>: <span class="number">490</span>; <span class="name">height</span>: <span class="number">720</span>
<span class="type"><a href="QtQuick.SystemPalette.md">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">activePalette</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="type">anchors</span> { <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>; <span class="name">bottom</span>: <span class="name">toolBar</span>.<span class="name">top</span> }
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">background</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;../shared/pics/background.jpg&quot;</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
}
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">toolBar</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">window</span>
<span class="name">anchors</span>.bottom: <span class="name">screen</span>.<span class="name">bottom</span>
<span class="type">Button</span> {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This doesn't do anything yet...&quot;</span>)
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">score</span>
<span class="type">anchors</span> { <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;Score: Who knows?&quot;</span>
}
}
}</pre>
<p>This gives you a basic game window that includes the main canvas for the blocks, a &quot;New Game&quot; button and a score display.</p>
<p>One item you may not recognize here is the <a href="QtQuick.SystemPalette.md">SystemPalette</a> item. This provides access to the Qt system palette and is used to give the button a more native look-and-feel.</p>
<p>Notice the anchors for the <code>Item</code>, <code>Button</code> and <code>Text</code> types are set using group (dot) notation for readability.</p>
<h3 >Adding <code>Button</code> and <code>Block</code> components</h3>
<p>The <code>Button</code> item in the code above is defined in a separate component file named <code>Button.qml</code>. To create a functional button, we use the QML types <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> and <a href="QtQuick.MouseArea.md">MouseArea</a> inside a <a href="QtQuick.Rectangle.md">Rectangle</a>. Here is the <code>Button.qml</code> code:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">string</span> <span class="name">text</span>: <span class="string">&quot;Button&quot;</span>
signal <span class="type">clicked</span>
<span class="name">width</span>: <span class="name">buttonLabel</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>; <span class="name">height</span>: <span class="name">buttonLabel</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">5</span>
<span class="type">border</span> { <span class="name">width</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">darker</span>(<span class="name">activePalette</span>.<span class="name">button</span>) }
<span class="name">antialiasing</span>: <span class="number">true</span>
<span class="name">radius</span>: <span class="number">8</span>
<span class="comment">// color the button with a gradient</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> {
<span class="name">position</span>: <span class="number">0.0</span>
<span class="name">color</span>: {
<span class="keyword">if</span> (<span class="name">mouseArea</span>.<span class="name">pressed</span>)
<span class="keyword">return</span> <span class="name">activePalette</span>.<span class="name">dark</span>
<span class="keyword">else</span>
<span class="keyword">return</span> <span class="name">activePalette</span>.<span class="name">light</span>
}
}
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">button</span> }
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">container</span>.<span class="name">clicked</span>();
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">buttonLabel</span>
<span class="name">anchors</span>.centerIn: <span class="name">container</span>
<span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">buttonText</span>
<span class="name">text</span>: <span class="name">container</span>.<span class="name">text</span>
}
}</pre>
<p>This essentially defines a rectangle that contains text and can be clicked. The <a href="QtQuick.MouseArea.md">MouseArea</a> has an <code>onClicked()</code> handler that is implemented to emit the <code>clicked()</code> signal of the <code>container</code> when the area is clicked.</p>
<p>In Same Game, the screen is filled with small blocks when the game begins. Each block is just an item that contains an image. The block code is defined in a separate <code>Block.qml</code> file:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">block</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">img</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;../shared/pics/redStone.png&quot;</span>
}
}</pre>
<p>At the moment, the block doesn't do anything; it is just an image. As the tutorial progresses we will animate and give behaviors to the blocks. We have not added any code yet to create the blocks; we will do this in the next chapter.</p>
<p>We have set the image to be the size of its parent Item using <code>anchors.fill: parent</code>. This means that when we dynamically create and resize the block items later on in the tutorial, the image will be scaled automatically to the correct size.</p>
<p>Notice the relative path for the Image type's <code>source</code> property. This path is relative to the location of the file that contains the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image">Image</a> type. Alternatively, you could set the Image source to an absolute file path or a URL that contains an image.</p>
<p>You should be familiar with the code so far. We have just created some basic types to get started. Next, we will populate the game canvas with some blocks.</p>
<p>Files:</p>
<ul>
<li>tutorials/samegame/samegame1/Block.qml</li>
<li>tutorials/samegame/samegame1/Button.qml</li>
<li>tutorials/samegame/samegame1/samegame.qml</li>
<li>tutorials/samegame/samegame1/samegame1.qmlproject</li>
</ul>
<!-- @@@tutorials/samegame/samegame1 -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="QtQuick.qml-advtutorial.md">QML Advanced Tutorial</a>
<a class="nextPage" href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.tutorials-samegame-samegame2/">QML Advanced Tutorial 2 - Populating the Game Canvas</a>
</p>
