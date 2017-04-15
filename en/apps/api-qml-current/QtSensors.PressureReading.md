---
Title: QtSensors.PressureReading
---
        
PressureReading
===============

<span class="subtitle"></span>
The PressureReading element holds the most recent PressureSensor reading. More...

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
<td>QtSensors 5.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtSensors.SensorReading.md">SensorReading</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[pressure](#pressure-prop)**** : qreal
-   ****[temperature](#temperature-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [PressureReading](index.html) element holds the most recent [PressureSensor](../QtSensors.PressureSensor.md) reading.

This element wraps the QPressureReading class. Please see the documentation for QPressureReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressure-prop"></span><span class="name">pressure</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the atmospheric pressure value in Pascals.

Please see QPressureReading::pressure for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="temperature-prop"></span><span class="name">temperature</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the pressure sensor's temperature value in degrees Celsius.

Please see QPressureReading::temperature for information about this property.

This QML property was introduced in QtSensors 5.2.

