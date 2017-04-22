---
Title: QtSensors.SensorGesture
---

# QtSensors.SensorGesture

<span class="subtitle"></span>
<!-- $$$SensorGesture-brief -->
<p>Provides notifications when sensor-based gestures are detected. More...</p>
<!-- @@@SensorGesture -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#availableGestures-prop">availableGestures</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#gestures-prop">gestures</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#invalidGestures-prop">invalidGestures</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#validGestures-prop">validGestures</a></b></b> : stringlist</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#detected-signal">detected</a></b></b>(string <i>gesture</i>)</li>
</ul>
<!-- $$$SensorGesture-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type provides notification when sensor gestures are triggered.</p>
<p>The following QML code creates a &quot;shake&quot; and &quot;SecondCounter&quot; <a href="index.html">SensorGesture</a> QML type, and displays the detected gesture in a text type.</p>
<p>QtSensors.shake gesture is available with the Qt Sensors API, but the QtSensors.SecondCounter sensor gesture is provided as example code for the Qt Sensors - SensorGesture QML Type example</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type"><a href="index.html">SensorGesture</a></span> {
<span class="name">id</span>: <span class="name">sensorGesture</span>
<span class="name">enabled</span>: <span class="number">false</span>
<span class="name">gestures</span> : [<span class="string">&quot;QtSensors.shake&quot;</span>, <span class="string">&quot;QtSensors.SecondCounter&quot;</span>]
<span class="name">onDetected</span>:{
<span class="name">detectedText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span>
}
}
<span class="type">Text</span> {
<span class="name">id</span>: <span class="name">detectedText</span>
<span class="name">x</span>:<span class="number">5</span>
<span class="name">y</span>:<span class="number">160</span>
}
}</pre>
<p>Qt Sensor Gestures contains a list of currently supported sensor gestures and their descriptions.</p>
<!-- @@@SensorGesture -->
<h2>Property Documentation</h2>
<!-- $$$availableGestures -->
<table class="qmlname"><tr valign="top" id="availableGestures-prop"><td class="tblQmlPropNode"><p><span class="name">availableGestures</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property can be used to determine all available gestures on the system.</p>
<!-- @@@availableGestures -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property can be used to activate or deactivate the sensor gesture. Default value is false;</p>
<p><b>See also </b><a href="#detected-signal">SensorGesture::detected</a> and <a href="#detected-signal">detected</a>.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$gestures -->
<table class="qmlname"><tr valign="top" id="gestures-prop"><td class="tblQmlPropNode"><p><span class="name">gestures</span> : <span class="type">stringlist</span></p></td></tr></table><p>Set this property to a list of the gestures that the application is interested in detecting. This property cannot be changed while the type is enabled.</p>
<p>The properties <a href="#validGestures-prop">validGestures</a> and <a href="#invalidGestures-prop">invalidGestures</a> will be set as appropriate immediately. To determine all available getures on the system please use the <a href="#availableGestures-prop">availableGestures</a> property.</p>
<p><b>See also </b>QtSensorGestures Plugins.</p>
<!-- @@@gestures -->
<br/>
<!-- $$$invalidGestures -->
<table class="qmlname"><tr valign="top" id="invalidGestures-prop"><td class="tblQmlPropNode"><p><span class="name">invalidGestures</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds the requested gestures that were not found on the system.</p>
<!-- @@@invalidGestures -->
<br/>
<!-- $$$validGestures -->
<table class="qmlname"><tr valign="top" id="validGestures-prop"><td class="tblQmlPropNode"><p><span class="name">validGestures</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds the requested gestures that were found on the system.</p>
<!-- @@@validGestures -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$detected -->
<table class="qmlname"><tr valign="top" id="detected-signal"><td class="tblQmlFuncNode"><p><span class="name">detected</span>(<span class="type">string</span><i> gesture</i>)</p></td></tr></table><p>This signal is emitted whenever a gesture is detected. The gesture parameter contains the gesture that was detected.</p>
<p>The corresponding handler is <code>onDetected</code>.</p>
<!-- @@@detected -->
<br/>
