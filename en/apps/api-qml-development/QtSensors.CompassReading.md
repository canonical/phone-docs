---
Title: QtSensors.CompassReading
---
        
CompassReading
==============

<span class="subtitle"></span>
The CompassReading element holds the most recent Compass reading. More...

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

-   ****[azimuth](#azimuth-prop)**** : qreal
-   ****[calibrationLevel](#calibrationLevel-prop)**** : qreal

<span id="details"></span>
Detailed Description
--------------------

The [CompassReading](index.html) element holds the most recent Compass reading.

This element wraps the QCompassReading class. Please see the documentation for QCompassReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="azimuth-prop"></span><span class="name">azimuth</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the azimuth of the device.

Please see QCompassReading::azimuth for information about this property.

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

This property holds the calibration level of the reading.

Please see QCompassReading::calibrationLevel for information about this property.

