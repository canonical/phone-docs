---
Title: QtSensors.SensorReading
---
        
SensorReading
=============

<span class="subtitle"></span>
The SensorReading element serves as a base type for sensor readings. More...

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
<td><p><a href="QtSensors.AccelerometerReading.md">AccelerometerReading</a>, <a href="QtSensors.AltimeterReading.md">AltimeterReading</a>, <a href="QtSensors.AmbientLightReading.md">AmbientLightReading</a>, <a href="QtSensors.AmbientTemperatureReading.md">AmbientTemperatureReading</a>, <a href="QtSensors.CompassReading.md">CompassReading</a>, <a href="QtSensors.DistanceReading.md">DistanceReading</a>, <a href="QtSensors.GyroscopeReading.md">GyroscopeReading</a>, <a href="QtSensors.HolsterReading.md">HolsterReading</a>, <a href="QtSensors.IRProximityReading.md">IRProximityReading</a>, <a href="QtSensors.LightReading.md">LightReading</a>, <a href="QtSensors.MagnetometerReading.md">MagnetometerReading</a>, <a href="QtSensors.OrientationReading.md">OrientationReading</a>, <a href="QtSensors.PressureReading.md">PressureReading</a>, <a href="QtSensors.ProximityReading.md">ProximityReading</a>, <a href="QtSensors.RotationReading.md">RotationReading</a>, <a href="QtSensors.TapReading.md">TapReading</a>, and <a href="QtSensors.TiltReading.md">TiltReading</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[timestamp](#timestamp-prop)**** : quint64

<span id="details"></span>
Detailed Description
--------------------

The [SensorReading](index.html) element serves as a base type for sensor readings.

This element wraps the QSensorReading class. Please see the documentation for QSensorReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timestamp-prop"></span><span class="name">timestamp</span> : <span class="type">quint64</span></p></td>
</tr>
</tbody>
</table>

A timestamp for the reading.

Please see QSensorReading::timestamp for information about this property.

