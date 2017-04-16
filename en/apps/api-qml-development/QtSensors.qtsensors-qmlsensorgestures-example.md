---
Title: QtSensors.qtsensors-qmlsensorgestures-example
---

# QtSensors.qtsensors-qmlsensorgestures-example

<span class="subtitle"></span>
<!-- $$$qmlsensorgestures-description -->
<h2 id="overview">Overview</h2>
<p>To write a QML application that will use the gesture plugin, following steps are needed:</p>
<p>Import the QtSensors 5.x module:</p>
<pre class="qml">import QtSensors 5.0</pre>
<p>Add the <a href="QtSensors.SensorGesture.md">SensorGesture</a> QML type into your qml file.</p>
<pre class="qml">    <span class="type"><a href="QtSensors.SensorGesture.md">SensorGesture</a></span> {
<span class="name">id</span>: <span class="name">sensorGesture</span>
<span class="name">enabled</span>: <span class="number">false</span>
<span class="name">onDetected</span>: {
<span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">!==</span> <span class="name">oldGesture</span>)
<span class="name">count</span> <span class="operator">=</span> <span class="number">0</span>;
<span class="name">valueText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span> <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">count</span>;
<span class="name">oldGesture</span> <span class="operator">=</span> <span class="name">gesture</span>;
count++;
}
<span class="name">onEnabledChanged</span>: {
<span class="name">valueText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
}
}</pre>
<p>Each <a href="QtSensors.SensorGesture.md">SensorGesture</a> QML type contains a property called gestures. This example uses an alias <code>gestureId</code> for this property.</p>
<pre class="qml">    property <span class="type">alias</span> <span class="name">gestureId</span>: <span class="name">sensorGesture</span>.<span class="name">gestures</span></pre>
<p>Then, the gesture or gestures to use can be specified using the alias:</p>
<pre class="qml">        <span class="name">onSelectedGestureChanged</span>: {
<span class="name">gesture</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="name">gesture</span>.<span class="name">gestureId</span> <span class="operator">=</span> <span class="name">gestureList</span>.<span class="name">selectedGesture</span>;
...
}</pre>
<p>A list of all available gestures is accessible through the <code>availableGestures</code> property:</p>
<pre class="qml">        <span class="type">ListView</span> {
<span class="name">id</span>: <span class="name">gestureList</span>
<span class="name">model</span>: <span class="name">gesture</span>.<span class="name">availableGestures</span>
...
}</pre>
<p>Files:</p>
<ul>
<li>qmlsensorgestures/Button.qml</li>
<li>qmlsensorgestures/GestureList.qml</li>
<li>qmlsensorgestures/GestureView.qml</li>
<li>qmlsensorgestures/GesturesView.qml</li>
<li>qmlsensorgestures/Makefile.qml</li>
<li>qmlsensorgestures/qmlsensorgestures.qml</li>
<li>qmlsensorgestures/plugin/qcountergestureplugin.cpp</li>
<li>qmlsensorgestures/plugin/qcountergestureplugin.h</li>
<li>qmlsensorgestures/plugin/qcounterrecognizer.cpp</li>
<li>qmlsensorgestures/plugin/qcounterrecognizer.h</li>
<li>qmlsensorgestures/main.cpp</li>
<li>qmlsensorgestures/qml.pro</li>
<li>qmlsensorgestures/qml.qrc</li>
<li>qmlsensorgestures/qmlsensorgestures.pro</li>
<li>qmlsensorgestures/plugin/plugin.pro</li>
</ul>
<p><b>See also </b>Qt Sensors - ShakeIt QML Example and Qt Sensor Gestures.</p>
<!-- @@@qmlsensorgestures -->
