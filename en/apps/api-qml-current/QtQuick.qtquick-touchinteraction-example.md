---
Title: QtQuick.qtquick-touchinteraction-example
---

# QtQuick.qtquick-touchinteraction-example

<span class="subtitle"></span>
<!-- $$$touchinteraction-description -->
<p class="centerAlign"><img src="../../../../media/qml-touchinteraction-example.png" alt="" /></p><p><i>Touch Interaction</i> is a collection of small QML examples relating to touch interaction methods. For more information, visit <a href="QtQuick.qtquick-input-topic.md">Important Concepts In Qt Quick - User Input</a>.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="multipoint-flames">Multipoint Flames</h2>
<p><i>Multipoint Flames</i> demonstrates distinguishing different fingers in a <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a>, by assigning a different colored flame to each touch point.</p>
<p>The MultipointTouchArea sets up multiple touch points:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">minimumTouchPoints</span>: <span class="number">1</span>
<span class="name">maximumTouchPoints</span>: <span class="number">5</span>
<span class="name">touchPoints</span>: [
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">touch1</span> },
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">touch2</span> },
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">touch11</span> },
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">touch21</span> },
<span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> { <span class="name">id</span>: <span class="name">touch31</span> }
]
}</pre>
<p>The flames are then simply bound to the coordinates of the touch point, and whether it is currently pressed, as follows:</p>
<pre class="qml"><span class="type">ParticleFlame</span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">emitterX</span>: <span class="name">touch1</span>.<span class="name">x</span>
<span class="name">emitterY</span>: <span class="name">touch1</span>.<span class="name">y</span>
<span class="name">emitting</span>: <span class="name">touch1</span>.<span class="name">pressed</span>
}</pre>
<h2 id="bear-whack">Bear-Whack</h2>
<p><i>Bear-Whack</i> demonstrates using <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> to add multiple finger support to a simple game. The interaction with the game is done through a <a href="QtQuick.Particles.SpriteGoal.md">SpriteGoal</a> that follows the <a href="QtQuick.TouchPoint.md">TouchPoint</a>. The TouchPoints added to the <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> are a component with the relevant logic embedded into it:</p>
<pre class="qml"><span class="type"><a href="QtQuick.TouchPoint.md">TouchPoint</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span> <span class="name">system</span>
<span class="name">onPressedChanged</span>: {
<span class="keyword">if</span> (<span class="name">pressed</span>) {
<span class="name">timer</span>.<span class="name">restart</span>();
<span class="name">child</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">true</span>;
<span class="name">system</span>.<span class="name">explode</span>(<span class="name">x</span>,<span class="name">y</span>);
}
}
property <span class="type">QtObject</span> <span class="name">obj</span>: <span class="name">Timer</span> {
<span class="name">id</span>: <span class="name">timer</span>
<span class="name">interval</span>: <span class="number">100</span>
<span class="name">running</span>: <span class="number">false</span>
<span class="name">repeat</span>: <span class="number">false</span>
<span class="name">onTriggered</span>: <span class="name">child</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">false</span>
}
property <span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">child</span>: <span class="name">SpriteGoal</span> {
<span class="name">enabled</span>: <span class="number">false</span>
<span class="name">x</span>: <span class="name">container</span>.<span class="name">area</span>.<span class="name">x</span> <span class="operator">-</span> <span class="number">16</span>
<span class="name">y</span>: <span class="name">container</span>.<span class="name">area</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">16</span>
<span class="name">width</span>: <span class="name">container</span>.<span class="name">area</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">32</span>
<span class="name">height</span>: <span class="name">container</span>.<span class="name">area</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">32</span> <span class="comment">//+32 so it doesn't have to hit the exact center</span>
<span class="name">system</span>: <span class="name">container</span>.<span class="name">system</span>
<span class="name">parent</span>: <span class="name">container</span>.<span class="name">system</span>
<span class="name">goalState</span>: <span class="string">&quot;falling&quot;</span>
}
}</pre>
<h2 id="flick-resize">Flick Resize</h2>
<p><i>Flick Resize</i> uses a <a href="QtQuick.PinchArea.md">PinchArea</a> to implement a <i>pinch-to-resize</i> behavior. This is easily achieved by listening to the <a href="QtQuick.PinchArea.md">PinchArea</a> signals and responding to user input.</p>
<pre class="qml"><span class="name">onPinchStarted</span>: {
<span class="name">initialWidth</span> <span class="operator">=</span> <span class="name">flick</span>.<span class="name">contentWidth</span>
<span class="name">initialHeight</span> <span class="operator">=</span> <span class="name">flick</span>.<span class="name">contentHeight</span>
}
<span class="name">onPinchUpdated</span>: {
<span class="comment">// adjust content pos due to drag</span>
<span class="name">flick</span>.<span class="name">contentX</span> <span class="operator">+=</span> <span class="name">pinch</span>.<span class="name">previousCenter</span>.<span class="name">x</span> <span class="operator">-</span> <span class="name">pinch</span>.<span class="name">center</span>.<span class="name">x</span>
<span class="name">flick</span>.<span class="name">contentY</span> <span class="operator">+=</span> <span class="name">pinch</span>.<span class="name">previousCenter</span>.<span class="name">y</span> <span class="operator">-</span> <span class="name">pinch</span>.<span class="name">center</span>.<span class="name">y</span>
<span class="comment">// resize content</span>
<span class="name">flick</span>.<span class="name">resizeContent</span>(<span class="name">initialWidth</span> <span class="operator">*</span> <span class="name">pinch</span>.<span class="name">scale</span>, <span class="name">initialHeight</span> <span class="operator">*</span> <span class="name">pinch</span>.<span class="name">scale</span>, <span class="name">pinch</span>.<span class="name">center</span>)
}
<span class="name">onPinchFinished</span>: {
<span class="comment">// Move its content within bounds.</span>
<span class="name">flick</span>.<span class="name">returnToBounds</span>()
}</pre>
<h2 id="flickable">Flickable</h2>
<p><i>Flickable</i> is a simple example demonstrating the <a href="QtQuick.qtquick-touchinteraction-example.md#flickable">Flickable</a> type.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">480</span>
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentWidth</span>: <span class="number">1200</span>
<span class="name">contentHeight</span>: <span class="number">1200</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">1000</span>
<span class="name">height</span>: <span class="number">1000</span></pre>
<h2 id="corkboards">Corkboards</h2>
<p><i>Corkboards</i> shows another use for <a href="QtQuick.qtquick-touchinteraction-example.md#flickable">Flickable</a>, with QML types within the flickable object that respond to mouse and keyboard interaction. This behavior does not require special code as the Qt Quick types already cooperate with the Flickable type for accepting touch events.</p>
<p>Files:</p>
<ul>
<li>touchinteraction/touchinteraction.qml</li>
<li>touchinteraction/flickable/basic-flickable.qml</li>
<li>touchinteraction/flickable/corkboards.qml</li>
<li>touchinteraction/flickable/content/Panel.qml</li>
<li>touchinteraction/multipointtouch/bearwhack.qml</li>
<li>touchinteraction/multipointtouch/multiflame.qml</li>
<li>touchinteraction/multipointtouch/content/AugmentedTouchPoint.qml</li>
<li>touchinteraction/multipointtouch/content/BearWhackParticleSystem.qml</li>
<li>touchinteraction/multipointtouch/content/ParticleFlame.qml</li>
<li>touchinteraction/pincharea/flickresize.qml</li>
<li>touchinteraction/main.cpp</li>
<li>touchinteraction/touchinteraction.pro</li>
<li>touchinteraction/touchinteraction.qmlproject</li>
<li>touchinteraction/touchinteraction.qrc</li>
</ul>
<!-- @@@touchinteraction -->
