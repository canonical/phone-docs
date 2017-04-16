---
Title: QtQuick.qtquick-imageelements-example
---

# QtQuick.qtquick-imageelements-example

<span class="subtitle"></span>
<!-- $$$imageelements-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d67e9217-a197-44df-aa0a-ccb2e8351a00-../qtquick-imageelements-example/images/qml-imageelements-example.png" alt="" /></p><p><i>Image Elements</i> is a collection of small QML examples relating to image types. For more information, visit Use Case - Visual Elements In QML.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="borderimage">BorderImage</h2>
<p><i>BorderImage</i> shows off the various scaling modes of the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#borderimage">BorderImage</a> type by setting its horizontalTileMode and verticalTileMode properties.</p>
<h2 id="image">Image</h2>
<p><i>Image</i> shows off the various fill modes of the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image">Image</a> type.</p>
<h2 id="shadows">Shadows</h2>
<p><i>Shadows</i> shows how to create a drop shadow effect for a rectangular item using a <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#borderimage">BorderImage</a>:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.BorderImage.md">BorderImage</a></span> {
<span class="name">anchors</span>.fill: <span class="name">rectangle</span>
<span class="type">anchors</span> { <span class="name">leftMargin</span>: -<span class="number">6</span>; <span class="name">topMargin</span>: -<span class="number">6</span>; <span class="name">rightMargin</span>: -<span class="number">8</span>; <span class="name">bottomMargin</span>: -<span class="number">8</span> }
<span class="type">border</span> { <span class="name">left</span>: <span class="number">10</span>; <span class="name">top</span>: <span class="number">10</span>; <span class="name">right</span>: <span class="number">10</span>; <span class="name">bottom</span>: <span class="number">10</span> }
<span class="name">source</span>: <span class="string">&quot;shadow.png&quot;</span>
}</pre>
<h2 id="animatedsprite">AnimatedSprite</h2>
<p><i>AnimatedSprite</i> shows how to display a simple animation using an <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a> object:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.AnimatedSprite.md">AnimatedSprite</a></span> {
<span class="name">id</span>: <span class="name">sprite</span>
<span class="name">width</span>: <span class="number">170</span>
<span class="name">height</span>: <span class="number">170</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;content/speaker.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">60</span>
<span class="name">frameSync</span>: <span class="number">true</span>
<span class="name">frameWidth</span>: <span class="number">170</span>
<span class="name">frameHeight</span>: <span class="number">170</span>
<span class="name">loops</span>: <span class="number">3</span>
}</pre>
<p>The sprite animation will loop three times.</p>
<h2 id="spritesequence">SpriteSequence</h2>
<p><i>SpriteSequence</i> demonstrates using a sprite sequence to draw an animated and interactive bear. The <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#spritesequence">SpriteSequence</a> object defines five different sprites. The bear is initially in a <i>still</i> state:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>{
<span class="name">name</span>: <span class="string">&quot;still&quot;</span>
<span class="name">source</span>: <span class="string">&quot;content/BearSheet.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">1</span>
<span class="name">frameWidth</span>: <span class="number">256</span>
<span class="name">frameHeight</span>: <span class="number">256</span>
<span class="name">frameDuration</span>: <span class="number">100</span>
<span class="name">to</span>: {&quot;still&quot;:<span class="number">1</span>, &quot;blink&quot;:<span class="number">0.1</span>, &quot;floating&quot;:<span class="number">0</span>}
}</pre>
<p>When the scene is clicked, an animation sets the sprite sequence to the <i>falling</i> states and animates the bear's y property.</p>
<pre class="qml">    <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="name">id</span>: <span class="name">anim</span>
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">image</span>.<span class="name">goalSprite</span> <span class="operator">=</span> <span class="string">&quot;falling&quot;</span>; }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">image</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="number">480</span>; <span class="name">duration</span>: <span class="number">12000</span>; }
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: {<span class="name">image</span>.<span class="name">goalSprite</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>; <span class="name">image</span>.<span class="name">jumpTo</span>(<span class="string">&quot;still&quot;</span>);} }
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">image</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">value</span>: <span class="number">0</span> }
}</pre>
<p>At the end of the animation the bear is set back to its initial state.</p>
<p>Files:</p>
<ul>
<li>imageelements/animatedsprite.qml</li>
<li>imageelements/borderimage.qml</li>
<li>imageelements/image.qml</li>
<li>imageelements/imageelements.qml</li>
<li>imageelements/shadows.qml</li>
<li>imageelements/spritesequence.qml</li>
<li>imageelements/content/BorderImageSelector.qml</li>
<li>imageelements/content/ImageCell.qml</li>
<li>imageelements/content/MyBorderImage.qml</li>
<li>imageelements/content/ShadowRectangle.qml</li>
<li>imageelements/main.cpp</li>
<li>imageelements/imageelements.pro</li>
<li>imageelements/imageelements.qmlproject</li>
<li>imageelements/imageelements.qrc</li>
</ul>
<!-- @@@imageelements -->
