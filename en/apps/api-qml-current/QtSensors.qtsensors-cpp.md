---
Title: QtSensors.qtsensors-cpp
---

# QtSensors.qtsensors-cpp

<span class="subtitle"></span>
<!-- $$$qtsensors-cpp.html-description -->
<h2 id="sensor-types">Sensor Types</h2>
<p>On a device there can be many types of sensors. Not all of the types that the Qt Sensors API supports may be available. There may also be types available that are not defined in the Qt Sensors API. The types of sensors available on a device is found using the QSensor::sensorTypes() function.</p>
<p>For a list of built-in sensor types, see the <a href="#sensor-classes">Sensor Classes</a> section below.</p>
<h2 id="common-conventions">Common Conventions</h2>
<p>Unless specified otherwise, Qt Sensors uses the <a href="http://en.wikipedia.org/wiki/Cartesian_coordinate_system">Right Hand Cartesian coordinate system</a>.</p>
<p class="centerAlign"><img src="../../../../media/sensors-coordinates.jpg" alt="" /></p><p>To allow for measurements in all 6 directions, negative values are used.</p>
<p class="centerAlign"><img src="../../../../media/sensors-coordinates2.jpg" alt="" /></p><p>Where rotation around an axis is used, the rotation shall be expressed as a Right Hand rotation.</p>
<p class="centerAlign"><img src="../../../../media/sensors-coordinates3.jpg" alt="" /></p><p>In general, sensor data is oriented relative to QPlatformScreen::nativeOrientation, that is to the top of the device when the device is held in its natural orientation (normally when the device logo appears the right side up). If values are to be displayed on the screen, the values may need to be transformed so that they match the user interface orientation. A sensor may define its data as being oriented to the UI. This will be noted in the documentation for the sensor.</p>
<p class="centerAlign"><img src="../../../../media/sensors-sides2.jpg" alt="" /></p>
<h2 id="using-a-sensor">Using a Sensor</h2>
<p>The life cycle of a QSensor is typically:</p>
<ul>
<li>Create an instance of QSensor or one of its sub-classes on the stack or heap.</li>
<li>Setup as required by the application.</li>
<li>Start receiving values.</li>
<li>Sensor data is used by the application.</li>
<li>Stop receiving values.</li>
</ul>
<p>Here is an example of creating a sensor on the heap and on the stack.</p>
<pre class="cpp"><span class="comment">// On the heap (deleted when this object is deleted)</span>
<span class="type">QAccelerometer</span> <span class="operator">*</span>sensor <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAccelerometer</span>(<span class="keyword">this</span>);
<span class="comment">// On the stack (deleted when the current scope ends)</span>
<span class="type">QOrientationSensor</span> orient_sensor;</pre>
<h2 id="accessing-sensor-data-in-a-generic-fashion">Accessing Sensor Data in a Generic Fashion</h2>
<p>The preferred way to deal with sensor data is via the <a href="#reading-classes">Reading Classes</a>. However, sometimes this may not be possible. For example, you may be deploying an application to a device that has a new sensor type but no C++ header describing the reading class is available.</p>
<p>Thanks to Qt's property system you can still access the sensor data. You need to know 3 pieces of information in order to do this:</p>
<ul>
<li>The sensor type.</li>
<li>The property name or index.</li>
<li>The property type or a comparable type.</li>
</ul>
<p>For example, here is an example of how you can access a property of the accelerometer. This code does not require any compile-time links to QAccelerometer or QAccelerometerReading.</p>
<pre class="cpp"><span class="comment">// start the sensor</span>
<span class="type">QSensor</span> sensor(<span class="string">&quot;QAccelerometer&quot;</span>);
sensor<span class="operator">.</span>start();
<span class="comment">// later</span>
<span class="type">QSensorReading</span> <span class="operator">*</span>reading <span class="operator">=</span> sensor<span class="operator">.</span>reading();
<span class="type">qreal</span> x <span class="operator">=</span> reading<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;x&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">qreal</span><span class="operator">&gt;</span>();
<span class="type">qreal</span> y <span class="operator">=</span> reading<span class="operator">-</span><span class="operator">&gt;</span>value(<span class="number">1</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">qreal</span><span class="operator">&gt;</span>();</pre>
<p>You can discover all of this information at runtime too. The <a href="QtSensors.qtsensors-sensor-explorer-example.md">sensor_explorer</a> example shows you information about available sensors.</p>
<h2 id="front-end-back-end">Front End, Back End</h2>
<p>The Qt Sensors API has a front end, for application developers to use and a back end, where device implementors write code to access their hardware. As an application developer you do not need to access the back end though it may be useful to understand how it works.</p>
<p>Commands from the application are delivered through QSensor and then down to the device plugin. Data comes back through the QSensorReading class.</p>
<p class="centerAlign"><img src="../../../../media/sensors-overview.png" alt="" /></p><p>More information about the back end can be found in Qt Sensors Backend.</p>
<h2 id="main-classes">Main Classes</h2>
<p>The primary classes that make up the Qt Sensors API.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QSensor</p></td><td class="tblDescr"><p>Represents a single hardware sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QSensorFilter</p></td><td class="tblDescr"><p>Efficient callback facility for asynchronous notifications of sensor changes</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QSensorReading</p></td><td class="tblDescr"><p>Holds the readings from the sensor</p></td></tr>
</table>
<h2 id="reading-classes">Reading Classes</h2>
<p>The best way to access sensor data is via one of these classes.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAccelerometerReading</p></td><td class="tblDescr"><p>Reports on linear acceleration along the X, Y and Z axes</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAltimeterReading</p></td><td class="tblDescr"><p>Holds readings from the altimeter sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAmbientLightReading</p></td><td class="tblDescr"><p>Represents one reading from the ambient light sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAmbientTemperatureReading</p></td><td class="tblDescr"><p>Holds readings of the ambient temperature</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCompassReading</p></td><td class="tblDescr"><p>Represents one reading from a compass</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QDistanceReading</p></td><td class="tblDescr"><p>Holds distance reading in cm from the proximity sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGyroscopeReading</p></td><td class="tblDescr"><p>Represents one reading from the gyroscope sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QHolsterReading</p></td><td class="tblDescr"><p>Holds readings from the holster sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QIRProximityReading</p></td><td class="tblDescr"><p>Holds readings from the IR proximity sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QLightReading</p></td><td class="tblDescr"><p>Represents one reading from the light sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMagnetometerReading</p></td><td class="tblDescr"><p>Represents one reading from the magnetometer</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QOrientationReading</p></td><td class="tblDescr"><p>Represents one reading from the orientation sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPressureReading</p></td><td class="tblDescr"><p>Holds readings from the pressure sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QProximityReading</p></td><td class="tblDescr"><p>Represents one reading from the proximity sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QRotationReading</p></td><td class="tblDescr"><p>Represents one reading from the rotation sensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QTapReading</p></td><td class="tblDescr"><p>Represents one reading from the tap sensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QTiltReading</p></td><td class="tblDescr"><p>Holds readings from the tilt sensor</p></td></tr>
</table>
<h2 id="sensor-classes">Sensor Classes</h2>
<p>These classes provide convenience wrappers that reduce the need for casting. Each of these classes represents a sensor type that the Qt Sensors API knows about. Note that additional types may be made available at run-time. See <a href="#sensor-types">Sensor Types</a> for more information.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAccelerometer</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAltimeter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAmbientLightSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAmbientTemperatureSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCompass</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QDistanceSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGyroscope</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QHolsterSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QIRProximitySensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QLightSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMagnetometer</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QOrientationSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPressureSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QProximitySensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QRotationSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QTapSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QTiltSensor</p></td><td class="tblDescr"><p>Convenience wrapper around QSensor</p></td></tr>
</table>
<h2 id="filter-classes">Filter Classes</h2>
<p>As with the sensor classes, these provide convenience wrappers that reduce the need for casting.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAccelerometerFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAltimeterFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAmbientLightFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAmbientTemperatureFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCompassFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QDistanceFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QGyroscopeFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QHolsterFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QIRProximityFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QLightFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMagnetometerFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QOrientationFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QPressureFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QProximityFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QRotationFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QTapFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QTiltFilter</p></td><td class="tblDescr"><p>Convenience wrapper around QSensorFilter</p></td></tr>
</table>
<!-- @@@qtsensors-cpp.html -->
