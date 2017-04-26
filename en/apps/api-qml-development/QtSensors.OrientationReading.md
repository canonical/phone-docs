---
Title: QtSensors.OrientationReading
---

# QtSensors.OrientationReading

<span class="subtitle"></span>
<!-- $$$OrientationReading-brief -->
<p>The OrientationReading element holds the most recent OrientationSensor reading. More...</p>
<!-- @@@OrientationReading -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtSensors.SensorReading.md">SensorReading</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : Orientation</li>
</ul>
<!-- $$$OrientationReading-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">OrientationReading</a> element holds the most recent <a href="QtSensors.OrientationSensor.md">OrientationSensor</a> reading.</p>
<p>This element wraps the QOrientationReading class. Please see the documentation for QOrientationReading for details.</p>
<p>This element cannot be directly created.</p>
<!-- @@@OrientationReading -->
<h2>Property Documentation</h2>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="name">orientation</span> : <span class="type">Orientation</span></p></td></tr></table><p>This property holds the orientation of the device.</p>
<p>Please see QOrientationReading::orientation for information about this property.</p>
<p>Note that Orientation constants are exposed through the <a href="index.html">OrientationReading</a> class.</p>
<pre class="cpp">OrientationSensor {
onReadingChanged: {
<span class="keyword">if</span> (reading<span class="operator">.</span>orientation <span class="operator">=</span><span class="operator">=</span> OrientationReading<span class="operator">.</span>TopUp)
<span class="comment">// do something</span>
}
}</pre>
<!-- @@@orientation -->
<br/>
