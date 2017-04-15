---
Title: QtSensors.OrientationReading
---
        
OrientationReading
==================

<span class="subtitle"></span>
The OrientationReading element holds the most recent OrientationSensor reading. More...

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

-   ****[orientation](#orientation-prop)**** : Orientation

<span id="details"></span>
Detailed Description
--------------------

The [OrientationReading](index.html) element holds the most recent [OrientationSensor](../QtSensors.OrientationSensor.md) reading.

This element wraps the QOrientationReading class. Please see the documentation for QOrientationReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">Orientation</span></p></td>
</tr>
</tbody>
</table>

This property holds the orientation of the device.

Please see QOrientationReading::orientation for information about this property.

Note that Orientation constants are exposed through the [OrientationReading](index.html) class.

``` cpp
OrientationSensor {
    onReadingChanged: {
        if (reading.orientation == OrientationReading.TopUp)
            // do something
    }
}
```

