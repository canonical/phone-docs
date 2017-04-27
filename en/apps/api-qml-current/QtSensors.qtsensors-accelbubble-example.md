---
Title: QtSensors.qtsensors-accelbubble-example
---

# QtSensors.qtsensors-accelbubble-example

<span class="subtitle"></span>
<!-- $$$accelbubble-description -->
<p class="centerAlign"><img src="../../../media/accelbubble.png" alt="" /></p>
<h2 id="overview">Overview</h2>
<p>Writing a QML application that uses the Accelerometer QML sensors type requires the following steps:</p>
<p>Import the Sensors Declarative module.</p>
<pre class="qml">import QtSensors 5.0</pre>
<p>Add an Accelerometer QML type.</p>
<pre class="qml">    <span class="type"><a href="QtSensors.Accelerometer.md">Accelerometer</a></span> {
<span class="name">id</span>: <span class="name">accel</span>
<span class="name">dataRate</span>: <span class="number">100</span></pre>
<p>Use the 'active' property to start the sensor</p>
<pre class="qml">        <span class="name">active</span>:<span class="number">true</span></pre>
<p>Move the bubble according to a factor of the accelerator sensor</p>
<pre class="qml">        <span class="name">onReadingChanged</span>: {
var <span class="name">newX</span> = (<span class="name">bubble</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">calcRoll</span>(<span class="name">accel</span>.<span class="name">reading</span>.<span class="name">x</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">y</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">z</span>) <span class="operator">*</span> <span class="number">.1</span>)
var <span class="name">newY</span> = (<span class="name">bubble</span>.<span class="name">y</span> <span class="operator">-</span> <span class="name">calcPitch</span>(<span class="name">accel</span>.<span class="name">reading</span>.<span class="name">x</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">y</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">z</span>) <span class="operator">*</span> <span class="number">.1</span>)
<span class="keyword">if</span> (<span class="name">isNaN</span>(<span class="name">newX</span>) <span class="operator">||</span> <span class="name">isNaN</span>(<span class="name">newY</span>))
<span class="keyword">return</span>;
<span class="keyword">if</span> (<span class="name">newX</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="name">newX</span> <span class="operator">=</span> <span class="number">0</span>
<span class="keyword">if</span> (<span class="name">newX</span> <span class="operator">&gt;</span> <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">width</span>)
<span class="name">newX</span> <span class="operator">=</span> <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">width</span>
<span class="keyword">if</span> (<span class="name">newY</span> <span class="operator">&lt;</span> <span class="number">18</span>)
<span class="name">newY</span> <span class="operator">=</span> <span class="number">18</span>
<span class="keyword">if</span> (<span class="name">newY</span> <span class="operator">&gt;</span> <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">height</span>)
<span class="name">newY</span> <span class="operator">=</span> <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">height</span>
<span class="name">bubble</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">newX</span>
<span class="name">bubble</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">newY</span>
}</pre>
<p>Files:</p>
<ul>
<li>accelbubble/accelbubble.qml</li>
<li>accelbubble/android/AndroidManifest.xml</li>
<li>accelbubble/content/Bluebubble.svg</li>
<li>accelbubble/main.cpp</li>
<li>accelbubble/accelbubble.pro</li>
<li>accelbubble/accelbubble.qrc</li>
</ul>
<!-- @@@accelbubble -->
