---
Title: QtSensors.AmbientLightReading
---

# QtSensors.AmbientLightReading

<span class="subtitle"></span>
<!-- $$$AmbientLightReading-brief -->
<p>The AmbientLightReading element holds the most AmbientLightSensor reading. More...</p>
<!-- @@@AmbientLightReading -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtSensors.SensorReading.md">SensorReading</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#lightLevel-prop">lightLevel</a></b></b> : LightLevel</li>
</ul>
<!-- $$$AmbientLightReading-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AmbientLightReading</a> element holds the most <a href="QtSensors.AmbientLightSensor.md">AmbientLightSensor</a> reading.</p>
<p>This element wraps the QAmbientLightReading class. Please see the documentation for QAmbientLightReading for details.</p>
<p>This element cannot be directly created.</p>
<!-- @@@AmbientLightReading -->
<h2>Property Documentation</h2>
<!-- $$$lightLevel -->
<table class="qmlname"><tr valign="top" id="lightLevel-prop"><td class="tblQmlPropNode"><p><span class="name">lightLevel</span> : <span class="type">LightLevel</span></p></td></tr></table><p>This property holds the ambient light level.</p>
<p>Please see QAmbientLightReading::lightLevel for information about this property.</p>
<p>Note that LightLevel constants are exposed through the <a href="index.html">AmbientLightReading</a> class.</p>
<pre class="cpp">AmbientLightSensor {
onReadingChanged: {
<span class="keyword">if</span> (reading<span class="operator">.</span>lightLevel <span class="operator">=</span><span class="operator">=</span> AmbientLightReading<span class="operator">.</span>Dark)
<span class="comment">// do something</span>
}
}</pre>
<!-- @@@lightLevel -->
<br/>
