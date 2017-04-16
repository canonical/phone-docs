---
Title: QtSensors.TapReading
---

# QtSensors.TapReading

<span class="subtitle"></span>
<!-- $$$TapReading-brief -->
<p>The TapReading element holds the most recent TapSensor reading. More...</p>
<!-- @@@TapReading -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtSensors.SensorReading.md">SensorReading</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#doubleTap-prop">doubleTap</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#tapDirection-prop">tapDirection</a></b></b> : TapDirection</li>
</ul>
<!-- $$$TapReading-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">TapReading</a> element holds the most recent <a href="QtSensors.TapSensor.md">TapSensor</a> reading.</p>
<p>This element wraps the QTapReading class. Please see the documentation for QTapReading for details.</p>
<p>This element cannot be directly created.</p>
<!-- @@@TapReading -->
<h2>Property Documentation</h2>
<!-- $$$doubleTap -->
<table class="qmlname"><tr valign="top" id="doubleTap-prop"><td class="tblQmlPropNode"><p><span class="name">doubleTap</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a value indicating if there was a single or double tap.</p>
<p>Please see QTapReading::doubleTap for information about this property.</p>
<!-- @@@doubleTap -->
<br/>
<!-- $$$tapDirection -->
<table class="qmlname"><tr valign="top" id="tapDirection-prop"><td class="tblQmlPropNode"><p><span class="name">tapDirection</span> : <span class="type">TapDirection</span></p></td></tr></table><p>This property holds the direction of the tap.</p>
<p>Please see QTapReading::tapDirection for information about this property.</p>
<p>Note that TapDirection constants are exposed through the <a href="index.html">TapReading</a> class.</p>
<pre class="cpp">TapSensor {
onReadingChanged: {
<span class="keyword">if</span> ((reading<span class="operator">.</span>tapDirection <span class="operator">&amp;</span> TapReading<span class="operator">.</span>X_Both))
<span class="comment">// do something</span>
}
}</pre>
<!-- @@@tapDirection -->
<br/>
