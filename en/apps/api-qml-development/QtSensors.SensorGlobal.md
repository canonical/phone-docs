---
Title: QtSensors.SensorGlobal
---

# QtSensors.SensorGlobal

<span class="subtitle"></span>
<!-- $$$SensorGlobal-brief -->
<p>The SensorGlobal element provides the module API. More...</p>
<!-- @@@SensorGlobal -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#defaultSensorForType-method">defaultSensorForType</a></b></b>(type)</li>
<li class="fn">list&lt;string&gt; <b><b><a href="#sensorTypes-method">sensorTypes</a></b></b>()</li>
<li class="fn">list&lt;string&gt; <b><b><a href="#sensorsForType-method">sensorsForType</a></b></b>(type)</li>
</ul>
<!-- $$$SensorGlobal-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">SensorGlobal</a> element provides the module API.</p>
<p>This element cannot be directly created. It can only be accessed via a namespace import.</p>
<pre class="cpp">import <span class="type">QtSensors</span> <span class="number">5.0</span>
import <span class="type">QtSensors</span> <span class="number">5.0</span> as Sensors
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
Component<span class="operator">.</span>onCompleted: {
var types <span class="operator">=</span> Sensors<span class="operator">.</span>QmlSensors<span class="operator">.</span>sensorTypes();
console<span class="operator">.</span>log(types<span class="operator">.</span>join(<span class="string">&quot;, &quot;</span>));
}</pre>
<!-- @@@SensorGlobal -->
<h2>Method Documentation</h2>
<!-- $$$defaultSensorForType -->
<table class="qmlname"><tr valign="top" id="defaultSensorForType-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">defaultSensorForType</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns the default sensor identifier that has been registered for <i>type</i>.</p>
<p>Please see QSensor::defaultSensorForType() for information.</p>
<!-- @@@defaultSensorForType -->
<br/>
<!-- $$$sensorTypes -->
<table class="qmlname"><tr valign="top" id="sensorTypes-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">sensorTypes</span>()</p></td></tr></table><p>Returns a list of the sensor types that have been registered.</p>
<p>Please see QSensor::sensorTypes() for information.</p>
<!-- @@@sensorTypes -->
<br/>
<!-- $$$sensorsForType -->
<table class="qmlname"><tr valign="top" id="sensorsForType-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">sensorsForType</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns a list of the sensor identifiers that have been registered for <i>type</i>.</p>
<p>Please see QSensor::sensorsForType() for information.</p>
<!-- @@@sensorsForType -->
<br/>
