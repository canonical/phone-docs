---
Title: QtSensors.RotationReading
---
        
RotationReading
===============

<span class="subtitle"></span>
The RotationReading element holds the most recent RotationSensor reading. More...

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

-   ****[x](#x-prop)**** : qreal
-   ****[y](#y-prop)**** : qreal
-   ****[z](#z-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [RotationReading](index.html) element holds the most recent [RotationSensor](../QtSensors.RotationSensor.md) reading.

This element wraps the QRotationReading class. Please see the documentation for QRotationReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the rotation around the x axis.

Please see QRotationReading::x for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the rotation around the y axis.

Please see QRotationReading::y for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="z-prop"></span><span class="name">z</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the rotation around the z axis.

Please see QRotationReading::z for information about this property.

