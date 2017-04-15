---
Title: QtSensors.AmbientLightReading
---
        
AmbientLightReading
===================

<span class="subtitle"></span>
The AmbientLightReading element holds the most AmbientLightSensor reading. More...

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

-   ****[lightLevel](#lightLevel-prop)**** : LightLevel

<span id="details"></span>
Detailed Description
--------------------

The [AmbientLightReading](index.html) element holds the most [AmbientLightSensor](../QtSensors.AmbientLightSensor.md) reading.

This element wraps the QAmbientLightReading class. Please see the documentation for QAmbientLightReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lightLevel-prop"></span><span class="name">lightLevel</span> : <span class="type">LightLevel</span></p></td>
</tr>
</tbody>
</table>

This property holds the ambient light level.

Please see QAmbientLightReading::lightLevel for information about this property.

Note that LightLevel constants are exposed through the [AmbientLightReading](index.html) class.

``` cpp
AmbientLightSensor {
    onReadingChanged: {
        if (reading.lightLevel == AmbientLightReading.Dark)
            // do something
    }
}
```

