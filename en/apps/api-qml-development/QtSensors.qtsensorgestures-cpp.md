---
Title: QtSensors.qtsensorgestures-cpp
---

# QtSensors.qtsensorgestures-cpp

<span class="subtitle"></span>
<!-- $$$qtsensorgestures-cpp.html-description -->
<h2 id="using-qtsensorgestures">Using QtSensorGestures</h2>
<p>With the Sensor Gestures classes, you are able to easily utilize device gesturing using sensors, such as the accelerometer and proximity.</p>
<p>A list of currently supported sensor gestures and their descriptions can be found here: Qt Sensor Gestures</p>
<p>Using <code>QtSensorGestures</code> is easy. There are two main classes you will need to use:</p>
<ul>
<li>QSensorGestureManager: can be used for determining which sensor gestures are available.</li>
<li>QSensorGesture : for connecting the sensor gesture signals.</li>
</ul>
<pre class="cpp"><span class="comment">// Create a QSensorGestureManager</span>
<span class="type">QSensorGestureManager</span> gestureManager;
<span class="comment">// Get a list of known recognizers</span>
<span class="type">QStringList</span> recognizersList <span class="operator">=</span> gestureManager<span class="operator">.</span>gestureIds();
<span class="comment">// Create a QSensorGeture object for each of those gesture recognizers</span>
<span class="type">QSensorGesture</span> <span class="operator">*</span>gesture <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSensorGesture</span>( gestureManager<span class="operator">.</span>gestureIds()<span class="operator">,</span> <span class="keyword">this</span>);
<span class="comment">// Connect the known signals up.</span>
connect(gesture<span class="operator">,</span> SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(gestureDetected(<span class="type">QString</span>)));</pre>
<p>More information about the sensor gesture recognizers can be found in QtSensorGestures Plugins.</p>
<h2 id="main-classes">Main Classes</h2>
<p>The primary classes that make up the QtSensorGestures API:</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QSensorGesture</p></td><td class="tblDescr"><p>Represents one or more sensor gesture recognizers</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QSensorGestureManager</p></td><td class="tblDescr"><p>Manages sensor gestures, registers and creates sensor gesture plugins</p></td></tr>
</table>
<p>The primary classes that make up the <code>QtSensorGesturesRecognizers</code> API:</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QSensorGesturePluginInterface</p></td><td class="tblDescr"><p>The pure virtual interface to sensor gesture plugins</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QSensorGestureRecognizer</p></td><td class="tblDescr"><p>The base class for a sensor gesture recognizer</p></td></tr>
</table>
<p>Details of the <code>QSensorGesturePlugins</code> available</p>
<!-- @@@qtsensorgestures-cpp.html -->
