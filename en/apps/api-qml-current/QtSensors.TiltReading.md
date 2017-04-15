---
Title: QtSensors.TiltReading
---
        
TiltReading
===========

<span class="subtitle"></span>
The TiltReading element holds the most recent TiltSensor reading. More...

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
<td><p><a href="QtSensors.SensorReading.md">SensorReading</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[xRotation](#xRotation-prop)**** : qreal
-   ****[yRotation](#yRotation-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [TiltReading](index.html) element holds the most recent [TiltSensor](../QtSensors.TiltSensor.md) reading.

This element wraps the QTiltReading class. Please see the documentation for QTiltReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xRotation-prop"></span><span class="name">xRotation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the amount of tilt on the X axis.

Please see QTiltReading::xRotation for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yRotation-prop"></span><span class="name">yRotation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the amount of tilt on the Y axis.

Please see QTiltReading::yRotation for information about this property.

