---
Title: QtSensors.qtsensorgestures-cpp
---
        
Sensor Gestures C++ Overview
============================

<span class="subtitle"></span>
details
Using QtSensorGestures
----------------------

With the Sensor Gestures classes, you are able to easily utilize device gesturing using sensors, such as the accelerometer and proximity.

A list of currently supported sensor gestures and their descriptions can be found here: Qt Sensor Gestures

Using `QtSensorGestures` is easy. There are two main classes you will need to use:

-   QSensorGestureManager: can be used for determining which sensor gestures are available.
-   QSensorGesture : for connecting the sensor gesture signals.

``` cpp
// Create a QSensorGestureManager
    QSensorGestureManager gestureManager;
// Get a list of known recognizers
    QStringList recognizersList = gestureManager.gestureIds();
// Create a QSensorGeture object for each of those gesture recognizers
        QSensorGesture *gesture = new QSensorGesture( gestureManager.gestureIds(), this);
// Connect the known signals up.
        connect(gesture, SIGNAL(detected(QString)), this, SLOT(gestureDetected(QString)));
```

More information about the sensor gesture recognizers can be found in QtSensorGestures Plugins.

<span id="main-classes"></span>
Main Classes
------------

The primary classes that make up the QtSensorGestures API:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QSensorGesture</p></td>
<td><p>Represents one or more sensor gesture recognizers</p></td>
</tr>
<tr class="even">
<td><p>QSensorGestureManager</p></td>
<td><p>Manages sensor gestures, registers and creates sensor gesture plugins</p></td>
</tr>
</tbody>
</table>

The primary classes that make up the `QtSensorGesturesRecognizers` API:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QSensorGesturePluginInterface</p></td>
<td><p>The pure virtual interface to sensor gesture plugins</p></td>
</tr>
<tr class="even">
<td><p>QSensorGestureRecognizer</p></td>
<td><p>The base class for a sensor gesture recognizer</p></td>
</tr>
</tbody>
</table>

Details of the `QSensorGesturePlugins` available

