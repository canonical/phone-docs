---
Title: QtSensors.qtsensors-shakeit-example
---

# QtSensors.qtsensors-shakeit-example

<span class="subtitle"></span>
<!-- $$$shakeit-description -->
<p class="centerAlign"><img src="../../../../media/shakeit.png" alt="" /></p>
<h3 >ShakeIt in QML</h3>
<p>Writing a QML application that uses the Shake QML sensorgestures type requires the following steps:</p>
<p>Import the Sensors Declarative module.</p>
<pre class="qml">import QtSensors 5.0</pre>
<p>Add a <a href="QtSensors.SensorGesture.md">SensorGesture</a> QML type.</p>
<pre class="qml"><span class="type"><a href="QtSensors.SensorGesture.md">SensorGesture</a></span> {</pre>
<p>In the <a href="QtSensors.SensorGesture.md">SensorGesture</a> type, specify which gesture to be used. Note that this can be a comma separated list. Here we are only interested in one gesture recognizer.</p>
<pre class="qml"><span class="name">gestures</span> : [<span class="string">&quot;QtSensors.shake&quot;</span>, <span class="string">&quot;QtSensors.whip&quot;</span>, <span class="string">&quot;QtSensors.twist&quot;</span>, <span class="string">&quot;QtSensors.cover&quot;</span>,
<span class="string">&quot;QtSensors.hover&quot;</span>, <span class="string">&quot;QtSensors.turnover&quot;</span>, <span class="string">&quot;QtSensors.pickup&quot;</span>, <span class="string">&quot;QtSensors.slam&quot;</span> , <span class="string">&quot;QtSensors.doubletap&quot;</span>]</pre>
<p>Use the 'enabled' property to start the sensor gesture.</p>
<pre class="qml"><span class="name">enabled</span>: <span class="number">true</span></pre>
<p>Use the onDetected signal to do stuff.</p>
<pre class="qml"><span class="name">onDetected</span>:{
<span class="name">console</span>.<span class="name">debug</span>(<span class="name">gesture</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span>
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;shake&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;rotated&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;whip&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;whipped&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;whipped&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;twistRight&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;twistedR&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;twistedR&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;twistLeft&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;twistedL&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;twistedL&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;cover&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;covered&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;covered&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;hover&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;hovered&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;hovered&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;turnover&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
<span class="name">loopy2a_mono</span>.<span class="name">play</span>();
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;pickup&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
<span class="name">phone</span>.<span class="name">play</span>()
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;slam&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;slammed&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;slammed&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;doubletap&quot;</span>) {
<span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;doubletapped&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;doubletapped&quot;</span>
<span class="name">timer</span>.<span class="name">start</span>()
}
}</pre>
<p>There are additional gestures to shake which are supported: whip, twistRight, hover, cover, turnover and pickup.</p>
<p>Files:</p>
<ul>
<li>shakeit/shakeit.qml</li>
<li>shakeit/main.cpp</li>
<li>shakeit/shakeit.pro</li>
<li>shakeit/shakeit.qrc</li>
</ul>
<!-- @@@shakeit -->
