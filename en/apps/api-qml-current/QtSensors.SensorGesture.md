---
Title: QtSensors.SensorGesture
---
        
SensorGesture
=============

<span class="subtitle"></span>
Provides notifications when sensor-based gestures are detected. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import QtSensors 5.0 |
| Since:            | QtSensors 5.0        |

<span id="properties"></span>
Properties
----------

-   ****[availableGestures](#availableGestures-prop)**** : stringlist
-   ****[enabled](#enabled-prop)**** : bool
-   ****[gestures](#gestures-prop)**** : stringlist
-   ****[invalidGestures](#invalidGestures-prop)**** : stringlist
-   ****[validGestures](#validGestures-prop)**** : stringlist

<span id="signals"></span>
Signals
-------

-   ****[detected](#detected-signal)****(string *gesture*)

<span id="details"></span>
Detailed Description
--------------------

This type provides notification when sensor gestures are triggered.

The following QML code creates a "shake" and "SecondCounter" [SensorGesture](index.html) QML type, and displays the detected gesture in a text type.

QtSensors.shake gesture is available with the Qt Sensors API, but the QtSensors.SecondCounter sensor gesture is provided as example code for the Qt Sensors - SensorGesture QML Type example

``` qml
Item {
   SensorGesture {
       id: sensorGesture
       enabled: false
       gestures : ["QtSensors.shake", "QtSensors.SecondCounter"]
       onDetected:{
           detectedText.text = gesture
       }
   }
   Text {
       id: detectedText
       x:5
       y:160
   }
}
```

Qt Sensor Gestures contains a list of currently supported sensor gestures and their descriptions.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableGestures-prop"></span><span class="name">availableGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property can be used to determine all available gestures on the system.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property can be used to activate or deactivate the sensor gesture. Default value is false;

**See also** [SensorGesture::detected](#detected-signal) and [detected](#detected-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gestures-prop"></span><span class="name">gestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

Set this property to a list of the gestures that the application is interested in detecting. This property cannot be changed while the type is enabled.

The properties [validGestures](#validGestures-prop) and [invalidGestures](#invalidGestures-prop) will be set as appropriate immediately. To determine all available getures on the system please use the [availableGestures](#availableGestures-prop) property.

**See also** QtSensorGestures Plugins.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="invalidGestures-prop"></span><span class="name">invalidGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested gestures that were not found on the system.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="validGestures-prop"></span><span class="name">validGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested gestures that were found on the system.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detected-signal"></span><span class="name">detected</span>(<span class="type">string</span> <em>gesture</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted whenever a gesture is detected. The gesture parameter contains the gesture that was detected.

The corresponding handler is `onDetected`.

