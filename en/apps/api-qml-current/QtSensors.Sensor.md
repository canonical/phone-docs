---
Title: QtSensors.Sensor
---

# QtSensors.Sensor

<span class="subtitle"></span>
<!-- $$$Sensor-brief -->
<p>The Sensor element serves as a base type for sensors. More...</p>
<!-- @@@Sensor -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  QtSensors 5.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtSensors.Accelerometer.md">Accelerometer</a>, <a href="QtSensors.Altimeter.md">Altimeter</a>, <a href="QtSensors.AmbientLightSensor.md">AmbientLightSensor</a>, <a href="QtSensors.AmbientTemperatureSensor.md">AmbientTemperatureSensor</a>, <a href="QtSensors.Compass.md">Compass</a>, <a href="QtSensors.DistanceSensor.md">DistanceSensor</a>, <a href="QtSensors.Gyroscope.md">Gyroscope</a>, <a href="QtSensors.HolsterSensor.md">HolsterSensor</a>, <a href="QtSensors.IRProximitySensor.md">IRProximitySensor</a>, <a href="QtSensors.LightSensor.md">LightSensor</a>, <a href="QtSensors.Magnetometer.md">Magnetometer</a>, <a href="QtSensors.OrientationSensor.md">OrientationSensor</a>, <a href="QtSensors.PressureSensor.md">PressureSensor</a>, <a href="QtSensors.ProximitySensor.md">ProximitySensor</a>, <a href="QtSensors.RotationSensor.md">RotationSensor</a>, <a href="QtSensors.TapSensor.md">TapSensor</a>, and <a href="QtSensors.TiltSensor.md">TiltSensor</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#alwaysOn-prop">alwaysOn</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#availableDataRates-prop">availableDataRates</a></b></b> : list&lt;Range&gt;</li>
<li class="fn"><b><b><a href="#axesOrientationMode-prop">axesOrientationMode</a></b></b> : Sensor::AxesOrientationMode</li>
<li class="fn"><b><b><a href="#bufferSize-prop">bufferSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#busy-prop">busy</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#connectedToBackend-prop">connectedToBackend</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#currentOrientation-prop">currentOrientation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#dataRate-prop">dataRate</a></b></b> : int</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#efficientBufferSize-prop">efficientBufferSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : int</li>
<li class="fn"><b><b><a href="#identifier-prop">identifier</a></b></b> : string</li>
<li class="fn"><b><b><a href="#maxBufferSize-prop">maxBufferSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#outputRange-prop">outputRange</a></b></b> : int</li>
<li class="fn"><b><b><a href="#outputRanges-prop">outputRanges</a></b></b> : list&lt;OutputRange&gt;</li>
<li class="fn"><b><b><a href="#reading-prop">reading</a></b></b> : SensorReading</li>
<li class="fn"><b><b><a href="#skipDuplicates-prop">skipDuplicates</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : string</li>
<li class="fn"><b><b><a href="#userOrientation-prop">userOrientation</a></b></b> : int</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn">bool <b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$Sensor-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Sensor element serves as a base type for sensors.</p>
<p>This element wraps the QSensor class. Please see the documentation for QSensor for details.</p>
<p>This element cannot be directly created. Please use one of the sub-classes instead.</p>
<!-- @@@Sensor -->
<h2>Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a value to indicate if the sensor is active.</p>
<p>Please see QSensor::active for information about this property.</p>
<!-- @@@active -->
<br/>
<!-- $$$alwaysOn -->
<table class="qmlname"><tr valign="top" id="alwaysOn-prop"><td class="tblQmlPropNode"><p><span class="name">alwaysOn</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a value to indicate if the sensor should remain running when the screen is off.</p>
<p>Please see QSensor::alwaysOn for information about this property.</p>
<!-- @@@alwaysOn -->
<br/>
<!-- $$$availableDataRates -->
<table class="qmlname"><tr valign="top" id="availableDataRates-prop"><td class="tblQmlPropNode"><p><span class="name">availableDataRates</span> : <span class="type">list</span>&lt;<span class="type">Range</span>&gt;</p></td></tr></table><p>This property holds the data rates that the sensor supports.</p>
<p>Please see QSensor::availableDataRates for information about this property.</p>
<!-- @@@availableDataRates -->
<br/>
<!-- $$$axesOrientationMode -->
<table class="qmlname"><tr valign="top" id="axesOrientationMode-prop"><td class="tblQmlPropNode"><p><span class="name">axesOrientationMode</span> : <span class="type">Sensor::AxesOrientationMode</span></p></td></tr></table><p>This property holds the mode that affects how the screen orientation changes reading values.</p>
<p>Please see QSensor::axesOrientationMode for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@axesOrientationMode -->
<br/>
<!-- $$$bufferSize -->
<table class="qmlname"><tr valign="top" id="bufferSize-prop"><td class="tblQmlPropNode"><p><span class="name">bufferSize</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the size of the buffer.</p>
<p>Please see QSensor::bufferSize for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@bufferSize -->
<br/>
<!-- $$$busy -->
<table class="qmlname"><tr valign="top" id="busy-prop"><td class="tblQmlPropNode"><p><span class="name">busy</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a value to indicate if the sensor is busy.</p>
<p>Please see QSensor::busy for information about this property.</p>
<!-- @@@busy -->
<br/>
<!-- $$$connectedToBackend -->
<table class="qmlname"><tr valign="top" id="connectedToBackend-prop"><td class="tblQmlPropNode"><p><span class="name">connectedToBackend</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds a value indicating if the sensor has connected to a backend.</p>
<p>Please see QSensor::connectedToBackend for information about this property.</p>
<!-- @@@connectedToBackend -->
<br/>
<!-- $$$currentOrientation -->
<table class="qmlname"><tr valign="top" id="currentOrientation-prop"><td class="tblQmlPropNode"><p><span class="name">currentOrientation</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the current orientation that is used for rotating the reading values.</p>
<p>Please see QSensor::currentOrientation for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@currentOrientation -->
<br/>
<!-- $$$dataRate -->
<table class="qmlname"><tr valign="top" id="dataRate-prop"><td class="tblQmlPropNode"><p><span class="name">dataRate</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the data rate that the sensor should be run at.</p>
<p>Please see QSensor::dataRate for information about this property.</p>
<!-- @@@dataRate -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a descriptive string for the sensor.</p>
<!-- @@@description -->
<br/>
<!-- $$$efficientBufferSize -->
<table class="qmlname"><tr valign="top" id="efficientBufferSize-prop"><td class="tblQmlPropNode"><p><span class="name">efficientBufferSize</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the most efficient buffer size.</p>
<p>Please see QSensor::efficientBufferSize for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@efficientBufferSize -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the last error code set on the sensor.</p>
<!-- @@@error -->
<br/>
<!-- $$$identifier -->
<table class="qmlname"><tr valign="top" id="identifier-prop"><td class="tblQmlPropNode"><p><span class="name">identifier</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the backend identifier for the sensor.</p>
<p>Please see QSensor::identifier for information about this property.</p>
<!-- @@@identifier -->
<br/>
<!-- $$$maxBufferSize -->
<table class="qmlname"><tr valign="top" id="maxBufferSize-prop"><td class="tblQmlPropNode"><p><span class="name">maxBufferSize</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the maximum buffer size.</p>
<p>Please see QSensor::maxBufferSize for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@maxBufferSize -->
<br/>
<!-- $$$outputRange -->
<table class="qmlname"><tr valign="top" id="outputRange-prop"><td class="tblQmlPropNode"><p><span class="name">outputRange</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the output range in use by the sensor.</p>
<p>Please see QSensor::outputRange for information about this property.</p>
<!-- @@@outputRange -->
<br/>
<!-- $$$outputRanges -->
<table class="qmlname"><tr valign="top" id="outputRanges-prop"><td class="tblQmlPropNode"><p><span class="name">outputRanges</span> : <span class="type">list</span>&lt;<span class="type">OutputRange</span>&gt;</p></td></tr></table><p>This property holds a list of output ranges the sensor supports.</p>
<p>Please see QSensor::outputRanges for information about this property.</p>
<!-- @@@outputRanges -->
<br/>
<!-- $$$reading -->
<table class="qmlname"><tr valign="top" id="reading-prop"><td class="tblQmlPropNode"><p><span class="name">reading</span> : <span class="type"><a href="QtSensors.SensorReading.md">SensorReading</a></span></p></td></tr></table><p>This property holds the reading class.</p>
<p>Please see QSensor::reading for information about this property.</p>
<p><b>See also </b>QML Reading types.</p>
<!-- @@@reading -->
<br/>
<!-- $$$skipDuplicates -->
<table class="qmlname"><tr valign="top" id="skipDuplicates-prop"><td class="tblQmlPropNode"><p><span class="name">skipDuplicates</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether duplicate reading values should be omitted.</p>
<p>Please see QSensor::skipDuplicates for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@skipDuplicates -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the type of the sensor.</p>
<!-- @@@type -->
<br/>
<!-- $$$userOrientation -->
<table class="qmlname"><tr valign="top" id="userOrientation-prop"><td class="tblQmlPropNode"><p><span class="name">userOrientation</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the angle used for rotating the reading values in the UserOrientation mode.</p>
<p>Please see QSensor::userOrientation for information about this property.</p>
<p>This QML property was introduced in  QtSensors 5.1.</p>
<!-- @@@userOrientation -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">start</span>()</p></td></tr></table><p>Start retrieving values from the sensor. Returns true if the sensor was started, false otherwise.</p>
<p>Please see QSensor::start() for information.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">stop</span>()</p></td></tr></table><p>Stop retrieving values from the sensor.</p>
<p>Please see QSensor::stop() for information.</p>
<!-- @@@stop -->
<br/>
