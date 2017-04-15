---
Title: QtSensors.TapReading
---
        
TapReading
==========

<span class="subtitle"></span>
The TapReading element holds the most recent TapSensor reading. More...

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

-   ****[doubleTap](#doubleTap-prop)**** : bool
-   ****[tapDirection](#tapDirection-prop)**** : TapDirection

<span id="details"></span>
Detailed Description
--------------------

The [TapReading](index.html) element holds the most recent [TapSensor](../QtSensors.TapSensor.md) reading.

This element wraps the QTapReading class. Please see the documentation for QTapReading for details.

This element cannot be directly created.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="doubleTap-prop"></span><span class="name">doubleTap</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value indicating if there was a single or double tap.

Please see QTapReading::doubleTap for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tapDirection-prop"></span><span class="name">tapDirection</span> : <span class="type">TapDirection</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the tap.

Please see QTapReading::tapDirection for information about this property.

Note that TapDirection constants are exposed through the [TapReading](index.html) class.

``` cpp
TapSensor {
    onReadingChanged: {
        if ((reading.tapDirection & TapReading.X_Both))
            // do something
    }
}
```

