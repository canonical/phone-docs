---
Title: QtSensors.SensorGlobal
---
        
SensorGlobal
============

<span class="subtitle"></span>
The SensorGlobal element provides the module API. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import QtSensors 5.0 |
| Since:            | QtSensors 5.0        |

<span id="methods"></span>
Methods
-------

-   string ****[defaultSensorForType](#defaultSensorForType-method)****(type)
-   list&lt;string&gt; ****[sensorTypes](#sensorTypes-method)****()
-   list&lt;string&gt; ****[sensorsForType](#sensorsForType-method)****(type)

<span id="details"></span>
Detailed Description
--------------------

The [SensorGlobal](index.html) element provides the module API.

This element cannot be directly created. It can only be accessed via a namespace import.

``` cpp
import QtSensors 5.0
import QtSensors 5.0 as Sensors
...
    Component.onCompleted: {
        var types = Sensors.QmlSensors.sensorTypes();
        console.log(types.join(", "));
    }
```

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultSensorForType-method"></span><span class="type">string</span> <span class="name">defaultSensorForType</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the default sensor identifier that has been registered for *type*.

Please see QSensor::defaultSensorForType() for information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sensorTypes-method"></span><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">sensorTypes</span>()</p></td>
</tr>
</tbody>
</table>

Returns a list of the sensor types that have been registered.

Please see QSensor::sensorTypes() for information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sensorsForType-method"></span><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">sensorsForType</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns a list of the sensor identifiers that have been registered for *type*.

Please see QSensor::sensorsForType() for information.

