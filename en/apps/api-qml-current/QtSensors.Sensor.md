---
Title: QtSensors.Sensor
---
        
Sensor
======

<span class="subtitle"></span>
The Sensor element serves as a base type for sensors. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtSensors 5.0</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>QtSensors 5.0</td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="QtSensors.Accelerometer.md">Accelerometer</a>, <a href="QtSensors.Altimeter.md">Altimeter</a>, <a href="QtSensors.AmbientLightSensor.md">AmbientLightSensor</a>, <a href="QtSensors.AmbientTemperatureSensor.md">AmbientTemperatureSensor</a>, <a href="QtSensors.Compass.md">Compass</a>, <a href="QtSensors.DistanceSensor.md">DistanceSensor</a>, <a href="QtSensors.Gyroscope.md">Gyroscope</a>, <a href="QtSensors.HolsterSensor.md">HolsterSensor</a>, <a href="QtSensors.IRProximitySensor.md">IRProximitySensor</a>, <a href="QtSensors.LightSensor.md">LightSensor</a>, <a href="QtSensors.Magnetometer.md">Magnetometer</a>, <a href="QtSensors.OrientationSensor.md">OrientationSensor</a>, <a href="QtSensors.PressureSensor.md">PressureSensor</a>, <a href="QtSensors.ProximitySensor.md">ProximitySensor</a>, <a href="QtSensors.RotationSensor.md">RotationSensor</a>, <a href="QtSensors.TapSensor.md">TapSensor</a>, and <a href="QtSensors.TiltSensor.md">TiltSensor</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[active](#active-prop)**** : bool
-   ****[alwaysOn](#alwaysOn-prop)**** : bool
-   ****[availableDataRates](#availableDataRates-prop)**** : list&lt;Range&gt;
-   ****[axesOrientationMode](#axesOrientationMode-prop)**** : Sensor::AxesOrientationMode
-   ****[bufferSize](#bufferSize-prop)**** : int
-   ****[busy](#busy-prop)**** : bool
-   ****[connectedToBackend](#connectedToBackend-prop)**** : bool
-   ****[currentOrientation](#currentOrientation-prop)**** : int
-   ****[dataRate](#dataRate-prop)**** : int
-   ****[description](#description-prop)**** : string
-   ****[efficientBufferSize](#efficientBufferSize-prop)**** : int
-   ****[error](#error-prop)**** : int
-   ****[identifier](#identifier-prop)**** : string
-   ****[maxBufferSize](#maxBufferSize-prop)**** : int
-   ****[outputRange](#outputRange-prop)**** : int
-   ****[outputRanges](#outputRanges-prop)**** : list&lt;OutputRange&gt;
-   ****[reading](#reading-prop)**** : SensorReading
-   ****[skipDuplicates](#skipDuplicates-prop)**** : bool
-   ****[type](#type-prop)**** : string
-   ****[userOrientation](#userOrientation-prop)**** : int

<span id="methods"></span>
Methods
-------

-   bool ****[start](#start-method)****()
-   bool ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Sensor element serves as a base type for sensors.

This element wraps the QSensor class. Please see the documentation for QSensor for details.

This element cannot be directly created. Please use one of the sub-classes instead.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor is active.

Please see QSensor::active for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alwaysOn-prop"></span><span class="name">alwaysOn</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor should remain running when the screen is off.

Please see QSensor::alwaysOn for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableDataRates-prop"></span><span class="name">availableDataRates</span> : <span class="type">list</span>&lt;<span class="type">Range</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the data rates that the sensor supports.

Please see QSensor::availableDataRates for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="axesOrientationMode-prop"></span><span class="name">axesOrientationMode</span> : <span class="type">Sensor::AxesOrientationMode</span></p></td>
</tr>
</tbody>
</table>

This property holds the mode that affects how the screen orientation changes reading values.

Please see QSensor::axesOrientationMode for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bufferSize-prop"></span><span class="name">bufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the size of the buffer.

Please see QSensor::bufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="busy-prop"></span><span class="name">busy</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor is busy.

Please see QSensor::busy for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="connectedToBackend-prop"></span><span class="name">connectedToBackend</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value indicating if the sensor has connected to a backend.

Please see QSensor::connectedToBackend for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentOrientation-prop"></span><span class="name">currentOrientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the current orientation that is used for rotating the reading values.

Please see QSensor::currentOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataRate-prop"></span><span class="name">dataRate</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the data rate that the sensor should be run at.

Please see QSensor::dataRate for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a descriptive string for the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="efficientBufferSize-prop"></span><span class="name">efficientBufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the most efficient buffer size.

Please see QSensor::efficientBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error code set on the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="identifier-prop"></span><span class="name">identifier</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the backend identifier for the sensor.

Please see QSensor::identifier for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxBufferSize-prop"></span><span class="name">maxBufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum buffer size.

Please see QSensor::maxBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="outputRange-prop"></span><span class="name">outputRange</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the output range in use by the sensor.

Please see QSensor::outputRange for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="outputRanges-prop"></span><span class="name">outputRanges</span> : <span class="type">list</span>&lt;<span class="type">OutputRange</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of output ranges the sensor supports.

Please see QSensor::outputRanges for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reading-prop"></span><span class="name">reading</span> : <span class="type"><a href="QtSensors.SensorReading.md">SensorReading</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the reading class.

Please see QSensor::reading for information about this property.

**See also** QML Reading types.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="skipDuplicates-prop"></span><span class="name">skipDuplicates</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether duplicate reading values should be omitted.

Please see QSensor::skipDuplicates for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="userOrientation-prop"></span><span class="name">userOrientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the angle used for rotating the reading values in the UserOrientation mode.

Please see QSensor::userOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">bool</span> <span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Start retrieving values from the sensor. Returns true if the sensor was started, false otherwise.

Please see QSensor::start() for information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="type">bool</span> <span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stop retrieving values from the sensor.

Please see QSensor::stop() for information.

