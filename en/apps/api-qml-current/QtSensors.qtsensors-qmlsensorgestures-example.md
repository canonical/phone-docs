---
Title: QtSensors.qtsensors-qmlsensorgestures-example
---
        
Qt Sensors - SensorGesture QML Type example
===========================================

<span class="subtitle"></span>
details
Overview
--------

To write a QML application that will use the gesture plugin, following steps are needed:

Import the QtSensors 5.x module:

``` qml
import QtSensors 5.0
```

Add the [SensorGesture](../QtSensors.SensorGesture.md) QML type into your qml file.

``` qml
    SensorGesture {
        id: sensorGesture
        enabled: false
        onDetected: {
            if (gesture !== oldGesture)
                count = 0;
            valueText.text = gesture + " " + count;
            oldGesture = gesture;
            count++;
        }
        onEnabledChanged: {
            valueText.text = ""
        }
    }
```

Each [SensorGesture](../QtSensors.SensorGesture.md) QML type contains a property called gestures. This example uses an alias `gestureId` for this property.

``` qml
    property alias gestureId: sensorGesture.gestures
```

Then, the gesture or gestures to use can be specified using the alias:

``` qml
        onSelectedGestureChanged: {
            gesture.enabled = false;
            gesture.gestureId = gestureList.selectedGesture;
            ...
        }
```

A list of all available gestures is accessible through the `availableGestures` property:

``` qml
        ListView {
            id: gestureList
            model: gesture.availableGestures
            ...
        }
```

Files:

-   qmlsensorgestures/Button.qml
-   qmlsensorgestures/GestureList.qml
-   qmlsensorgestures/GestureView.qml
-   qmlsensorgestures/GesturesView.qml
-   qmlsensorgestures/Makefile.qml
-   qmlsensorgestures/qmlsensorgestures.qml
-   qmlsensorgestures/plugin/qcountergestureplugin.cpp
-   qmlsensorgestures/plugin/qcountergestureplugin.h
-   qmlsensorgestures/plugin/qcounterrecognizer.cpp
-   qmlsensorgestures/plugin/qcounterrecognizer.h
-   qmlsensorgestures/main.cpp
-   qmlsensorgestures/qml.pro
-   qmlsensorgestures/qml.qrc
-   qmlsensorgestures/qmlsensorgestures.pro
-   qmlsensorgestures/plugin/plugin.pro

**See also** Qt Sensors - ShakeIt QML Example and Qt Sensor Gestures.

