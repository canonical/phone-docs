---
Title: QtSensors.qtsensors-sensor-explorer-example
---
        
Qt Sensors - Explorer QML Example
=================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/5e30119d-76b3-45b6-8030-d9db149c05e8-api/apps/qml/sdk-15.04.5/qtsensors-sensor-explorer-example/images/qtsensors-examples-explorer.png)

This example is divided into two parts:

-   A [C++ plugin](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtSensors.sensor_explorer/#sensor-explorer-qml-import) that provides QML alternatives for `QSensorExplorer`, `QPropertyInfo` and `QSensorItem` C++ classes.
-   A [QML Application](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtSensors.sensor_explorer/#sensor-explorer-qml-application) that uses the QML types to read the sensor meta-data and present it.

This example is built as an executable with C++ code that runs the QML, but it can also be launched directly using the `qmlscene` tool. You should build the top-level *sensor\_explorer* project before trying to run this example or it will not be able to find its dependencies.

``` cpp
qmlscene -I . sensor_explorer.qml
```

Above, the -I . parameter adds the current directory as a module import path to locate the Explorer QML module.

<span id="sensor-explorer-qml-import"></span>
Sensor Explorer QML Import
--------------------------

The Sensor Explorer QML import defines the *Explorer* QML module, exporting `QSensorExplorer`, `QPropertyInfo` and `QSensorItem` C++ classes as QML types. The source code is available in the `sensor_explorer/import` subdirectory.

<span id="sensor-explorer-qml-application"></span>
Sensor Explorer QML Application
-------------------------------

To write a QML application that will use the QML types exposed by the Explorer module, following steps are needed:

Import the Explorer 1.0 declarative plugin:

``` qml
import Explorer 1.0
```

Create a SensorExplorer QML item:

``` qml
SensorExplorer {
    id: explorer
}
```

You can retrieve a list of all available sensors using `SensorExplorer.availableSensors`:

``` qml
model: explorer.availableSensors
```

The example uses the returned list as a model to populate a view of available sensors.

To retrieve the properties of a sensor, use `SensorItem.properties`:

``` qml
propertyList.model = explorer.selectedSensorItem.properties
```

The property list is used as a model for another view that displays the property names and values.

It is possible to edit the values of certain sensor properties. Selecting a writable property value will open an editor. `SensorExplorer` QML type allows you to pass a new value for a sensor property value as follows:

``` qml
explorer.selectedSensorItem.changePropertyValue(propertyList.selectedItem, loaderEditor.item.text);
```

Starting and stopping a sensor can be done by setting the `SensorItem.start` property:

``` qml
if (text === "Start") {
    explorer.selectedSensorItem.start = true;
    text = "Stop";
}
else {
    explorer.selectedSensorItem.start = false;
    text = "Start";
}
```

Files:

-   sensor\_explorer/Makefile.qml
-   sensor\_explorer/sensor\_explorer.qml
-   sensor\_explorer/import/explorer.cpp
-   sensor\_explorer/import/explorer.h
-   sensor\_explorer/import/propertyinfo.cpp
-   sensor\_explorer/import/propertyinfo.h
-   sensor\_explorer/import/sensoritem.cpp
-   sensor\_explorer/import/sensoritem.h
-   sensor\_explorer/main.cpp
-   sensor\_explorer/qml.pro
-   sensor\_explorer/qml.qrc
-   sensor\_explorer/sensor\_explorer.pro
-   sensor\_explorer/import/import.pro
-   sensor\_explorer/import/qmldir

