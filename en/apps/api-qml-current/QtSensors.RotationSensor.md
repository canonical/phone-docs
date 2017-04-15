---
Title: QtSensors.RotationSensor
---
        
RotationSensor
==============

<span class="subtitle"></span>
The RotationSensor element reports on device rotation around the X, Y and Z axes. More...

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
<td>Inherits:</td>
<td><p><a href="QtSensors.Sensor.md">Sensor</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[hasZ](#hasZ-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [RotationSensor](index.html) element reports on device rotation around the X, Y and Z axes.

This element wraps the QRotationSensor class. Please see the documentation for QRotationSensor for details.

**See also** [RotationReading](../QtSensors.RotationReading.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasZ-prop"></span><span class="name">hasZ</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds a value indicating if the z angle is available.

Please see QRotationSensor::hasZ for information about this property.

