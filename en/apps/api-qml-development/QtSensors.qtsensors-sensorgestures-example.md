---
Title: QtSensors.qtsensors-sensorgestures-example
---

# QtSensors.qtsensors-sensorgestures-example

<span class="subtitle"></span>
<!-- $$$sensorgestures-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/94c78a49-e4a3-4681-98c3-8ecd2e68b530-../qtsensors-sensorgestures-example/images/sensorgesturecpp.png" alt="" /></p><p>QSensorGestures class defines one predefined signal, <code>void detected(const QString &amp;)</code></p>
<p>As well, Sensor Gesture Recognizers may implement any number of their own custom signals.</p>
<p>Our shake recognizer defines one custom signal, <code>void shake()</code>, as well as the predefined detected signal.</p>
<h2 id="sensorgestures-class-implementation">SensorGestures Class Implementation</h2>
<p>In order to know about custom signals that may be available, we need to ask the QSensorGestureManager about them,</p>
<p>Using the QSensorGesture::gestureIds() function, the manager will return a QStringList of known and valid gesture Ids.</p>
<pre class="cpp"><span class="type">QSensorGestureManager</span> manager;
Q_FOREACH (<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>gesture<span class="operator">,</span> manager<span class="operator">.</span>gestureIds()) {
<span class="type">QTreeWidgetItem</span> <span class="operator">*</span>gestureId <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QTreeWidgetItem</span>(ui<span class="operator">-</span><span class="operator">&gt;</span>treeWidget);
<span class="type">QStringList</span> recognizerSignals <span class="operator">=</span>  manager<span class="operator">.</span>recognizerSignals(gesture);
gestureId<span class="operator">-</span><span class="operator">&gt;</span>setText(<span class="number">0</span><span class="operator">,</span>gesture);
<span class="keyword">for</span> (<span class="type">int</span> i <span class="operator">=</span> <span class="number">0</span>; i <span class="operator">&lt;</span> recognizerSignals<span class="operator">.</span>count(); i<span class="operator">+</span><span class="operator">+</span>) {
<span class="type">QTreeWidgetItem</span> <span class="operator">*</span>oneSignal <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QTreeWidgetItem</span>(gestureId);
oneSignal<span class="operator">-</span><span class="operator">&gt;</span>setText(<span class="number">0</span><span class="operator">,</span>recognizerSignals<span class="operator">.</span>at(i));
}
ui<span class="operator">-</span><span class="operator">&gt;</span>treeWidget<span class="operator">-</span><span class="operator">&gt;</span>insertTopLevelItem(<span class="number">0</span><span class="operator">,</span>gestureId);
}</pre>
<p>We can then use this to create a QSensorGesture object that we can use to connect signals to, and start the detection process. A QSensorGesture object will take a list of one or more recognizer ids in it's constructor.</p>
<pre class="cpp"><span class="type">QSensorGestureManager</span> manager;
<span class="type">QSensorGesture</span> <span class="operator">*</span>thisGesture <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSensorGesture</span>(<span class="type">QStringList</span>() <span class="operator">&lt;</span><span class="operator">&lt;</span> currentRecognizer<span class="operator">,</span> <span class="keyword">this</span>);
<span class="keyword">if</span> (currentRecognizer<span class="operator">.</span>contains(<span class="string">&quot;QtSensors.shake&quot;</span>)) {
connect(thisGesture<span class="operator">,</span>SIGNAL(shake())<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span>SLOT(onShake()));
}
connect(thisGesture<span class="operator">,</span>SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span>SLOT(detectedShake(<span class="type">QString</span>)));
thisGesture<span class="operator">-</span><span class="operator">&gt;</span>startDetection();</pre>
<p>and later stop the detection process.</p>
<pre class="cpp">    recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">-</span><span class="operator">&gt;</span>stopDetection();
<span class="keyword">if</span> (currentRecognizer <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;QtSensors.shake&quot;</span>) {
disconnect(recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">,</span>SIGNAL(shake())<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span>SLOT(onShake()));
}
disconnect(recognizerMap<span class="operator">[</span>currentRecognizer<span class="operator">]</span><span class="operator">,</span>SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span>SLOT(detectedShake(<span class="type">QString</span>)));</pre>
<p>The QSensorGesture object will contain all the signals of the valid requested recognizers found on the system.</p>
<p>You can discover which of the requested recognizer ID's that were not found by using QSensorGesture::invalidIds();</p>
<p>By using QSensorGesture::gestureSignals(), you can get a QStringList of usable signals.</p>
<p>Files:</p>
<ul>
<li>sensorgestures/mainwindow.cpp</li>
<li>sensorgestures/mainwindow.h</li>
<li>sensorgestures/mainwindow.ui</li>
<li>sensorgestures/main.cpp</li>
<li>sensorgestures/sensorgestures.pro</li>
</ul>
<!-- @@@sensorgestures -->
