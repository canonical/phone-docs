---
Title: QtSensors.PressureReading
---

# QtSensors.PressureReading

<span class="subtitle"></span>
<!-- $$$PressureReading-brief -->
<p>The PressureReading element holds the most recent PressureSensor reading. More...</p>
<!-- @@@PressureReading -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtSensors.SensorReading.md">SensorReading</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#pressure-prop">pressure</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#temperature-prop">temperature</a></b></b> : qreal</li>
</ul>
<!-- $$$PressureReading-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">PressureReading</a> element holds the most recent <a href="QtSensors.PressureSensor.md">PressureSensor</a> reading.</p>
<p>This element wraps the QPressureReading class. Please see the documentation for QPressureReading for details.</p>
<p>This element cannot be directly created.</p>
<!-- @@@PressureReading -->
<h2>Property Documentation</h2>
<!-- $$$pressure -->
<table class="qmlname"><tr valign="top" id="pressure-prop"><td class="tblQmlPropNode"><p><span class="name">pressure</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the atmospheric pressure value in Pascals.</p>
<p>Please see QPressureReading::pressure for information about this property.</p>
<!-- @@@pressure -->
<br/>
<!-- $$$temperature -->
<table class="qmlname"><tr valign="top" id="temperature-prop"><td class="tblQmlPropNode"><p><span class="name">temperature</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the pressure sensor's temperature value in degrees Celsius.</p>
<p>Please see QPressureReading::temperature for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.2.</p>
<!-- @@@temperature -->
<br/>
