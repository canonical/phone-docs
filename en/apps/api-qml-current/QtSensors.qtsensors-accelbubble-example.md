---
Title: QtSensors.qtsensors-accelbubble-example
---
        
Qt Sensors - Accel Bubble
=========================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/33d4709d-3527-4e22-a76d-2e5a111691ce-api/apps/qml/sdk-15.04.5/qtsensors-accelbubble-example/images/accelbubble.png)

<span id="overview"></span>
Overview
--------

Writing a QML application that uses the Accelerometer QML sensors type requires the following steps:

Import the Sensors Declarative module.

``` qml
import QtSensors 5.0
```

Add an Accelerometer QML type.

``` qml
    Accelerometer {
        id: accel
        dataRate: 100
```

Use the 'active' property to start the sensor

``` qml
        active:true
```

Move the bubble according to a factor of the accelerator sensor

``` qml
        onReadingChanged: {
            var newX = (bubble.x + calcRoll(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
            var newY = (bubble.y - calcPitch(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
            if (isNaN(newX) || isNaN(newY))
                return;
            if (newX < 0)
                newX = 0
            if (newX > mainWindow.width - bubble.width)
                newX = mainWindow.width - bubble.width
            if (newY < 18)
                newY = 18
            if (newY > mainWindow.height - bubble.height)
                newY = mainWindow.height - bubble.height
                bubble.x = newX
                bubble.y = newY
        }
```

Files:

-   accelbubble/accelbubble.qml
-   accelbubble/android/AndroidManifest.xml
-   accelbubble/content/Bluebubble.svg
-   accelbubble/main.cpp
-   accelbubble/accelbubble.pro
-   accelbubble/accelbubble.qrc

