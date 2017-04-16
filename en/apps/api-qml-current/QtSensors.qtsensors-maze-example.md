---
Title: QtSensors.qtsensors-maze-example
---

# QtSensors.qtsensors-maze-example

<span class="subtitle"></span>
<!-- $$$maze-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3761a3c8-c9f5-4f65-a8c9-c2eaebd228af-../qtsensors-maze-example/images/maze.png" alt="" /></p>
<h3 >Maze in QML</h3>
<p>To write a QML application that will use the <a href="QtSensors.TiltSensor.md">TiltSensor</a> QML sensors type you need to do the following steps:</p>
<p>Import the QtSensors 5.x declarative plugin:</p>
<pre class="qml">import QtSensors 5.0</pre>
<p>Add the Sensor QML types into your qml file.</p>
<p>In this example we use the <a href="QtSensors.TiltSensor.md">TiltSensor</a> with values based in degrees and an accuracy of 5 degree:</p>
<pre class="qml">    <span class="type"><a href="QtSensors.TiltSensor.md">TiltSensor</a></span> {
<span class="name">id</span>: <span class="name">tiltSensor</span>
<span class="name">active</span>: <span class="number">true</span>
}</pre>
<p>Starting the sensor can be done by setting the 'enabled' property to true:</p>
<pre class="qml">        <span class="name">onTriggered</span>: {
<span class="keyword">if</span> (!<span class="name">tiltSensor</span>.<span class="name">enabled</span>)
<span class="name">tiltSensor</span>.<span class="name">active</span> <span class="operator">=</span> <span class="number">true</span>;</pre>
<p>The mouse should move by a factor of the tilt value:</p>
<pre class="qml">                var <span class="name">xstep</span> = <span class="number">0</span>;
<span class="name">xstep</span> <span class="operator">=</span> <span class="name">tiltSensor</span>.<span class="name">reading</span>.<span class="name">yRotation</span> <span class="operator">*</span> <span class="number">0.1</span> <span class="comment">//acceleration</span>
var <span class="name">ystep</span> = <span class="number">0</span>;
<span class="name">ystep</span> <span class="operator">=</span> <span class="name">tiltSensor</span>.<span class="name">reading</span>.<span class="name">xRotation</span> <span class="operator">*</span> <span class="number">0.1</span> <span class="comment">//acceleration</span></pre>
<p>The walk direction of the mouse takes into account some collision detection:</p>
<pre class="qml">                <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">xstep</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">xstep</span> <span class="operator">=</span> <span class="number">0</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&gt;</span> -<span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="name">xstep</span> <span class="operator">=</span> <span class="number">0</span>
<span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">ystep</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">ystep</span> <span class="operator">=</span> <span class="number">0</span>;
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&gt;</span> -<span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="name">ystep</span> <span class="operator">=</span> <span class="number">0</span>;
<span class="keyword">if</span> ((<span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">&gt;</span> <span class="number">0</span>
<span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>,<span class="name">mouseCtrl</span>.<span class="name">y</span>))) {
<span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&gt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">&lt;</span> (<span class="name">Lib</span>.<span class="name">cellDimension</span> <span class="operator">*</span> (<span class="name">Lib</span>.<span class="name">dimension</span> <span class="operator">-</span> <span class="number">1</span>))
<span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>,<span class="name">mouseCtrl</span>.<span class="name">y</span>)) {
<span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>;
} <span class="keyword">else</span>
<span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span>;
<span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">&gt;</span> <span class="number">0</span>
<span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span>, <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>)) {
<span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>;
} <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&gt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> (<span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">&lt;</span> (<span class="name">Lib</span>.<span class="name">cellDimension</span> <span class="operator">*</span> (<span class="name">Lib</span>.<span class="name">dimension</span> <span class="operator">-</span> <span class="number">1</span>)))
<span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span>, <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>)) {
<span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>;
} <span class="keyword">else</span>
<span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span>
<span class="name">mouseCtrl</span>.<span class="name">move</span>(<span class="name">xval</span>, <span class="name">yval</span>);</pre>
<p>The rotation of the mouse image is determined according to the angle that the mouse is moving.</p>
<pre class="qml">        var <span class="name">a</span> = <span class="name">newy</span> <span class="operator">-</span> <span class="name">mouse</span>.<span class="name">y</span>
var <span class="name">b</span> = <span class="name">newx</span> <span class="operator">-</span> <span class="name">mouse</span>.<span class="name">x</span>
var <span class="name">c</span> = <span class="name">distance</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>, <span class="name">newx</span>, <span class="name">newy</span>)
var <span class="name">radians_to_degrees</span> = <span class="number">57.2957795</span>
<span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">b</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
<span class="keyword">else</span>
<span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">asin</span>(<span class="name">b</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
<span class="keyword">if</span> (<span class="name">b</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
<span class="keyword">else</span>
<span class="name">angle</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
<span class="keyword">if</span> (<span class="name">angle</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="name">angle</span> <span class="operator">=</span> <span class="number">360</span> <span class="operator">+</span> <span class="name">angle</span>
<span class="name">img</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="name">angle</span>
<span class="name">mouse</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">newx</span>;
<span class="name">mouse</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">newy</span>;</pre>
<p>Files:</p>
<ul>
<li>maze/Congratulation.qml</li>
<li>maze/LabyrinthSquare.qml</li>
<li>maze/Mouse.qml</li>
<li>maze/lib.js</li>
<li>maze/maze.qml</li>
<li>maze/android/AndroidManifest.xml</li>
<li>maze/components/ApplicationWindow.qml</li>
<li>maze/components/Button.qml</li>
<li>maze/main.cpp</li>
<li>maze/maze.pro</li>
<li>maze/maze.qrc</li>
</ul>
<!-- @@@maze -->
