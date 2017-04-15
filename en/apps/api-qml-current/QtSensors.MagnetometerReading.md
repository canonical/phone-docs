---
Title: QtSensors.MagnetometerReading
---
        
MagnetometerReading
===================

<span class="subtitle"></span>
The MagnetometerReading element holds the most recent Magnetometer reading. More...

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

-   ****[calibrationLevel](#calibrationLevel-prop)**** : qreal
-   ****[x](#x-prop)**** : qreal
-   ****[y](#y-prop)**** : qreal
-   ****[z](#z-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [MagnetometerReading](index.html) element holds the most recent Magnetometer reading.

This element wraps the QMagnetometerReading class. Please see the documentation for QMagnetometerReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="calibrationLevel-prop"></span><span class="name">calibrationLevel</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the accuracy of the reading.

Please see QMagnetometerReading::calibrationLevel for information about this property.

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

This property holds the raw magnetic flux density on the X axis.

Please see QMagnetometerReading::x for information about this property.

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

This property holds the raw magnetic flux density on the Y axis.

Please see QMagnetometerReading::y for information about this property.

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

This property holds the raw magnetic flux density on the Z axis.

Please see QMagnetometerReading::z for information about this property.

