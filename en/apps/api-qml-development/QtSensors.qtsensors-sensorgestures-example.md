---
Title: QtSensors.qtsensors-sensorgestures-example
---
        
Qt Sensors - C++ Sensor Gestures Example
========================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/94c78a49-e4a3-4681-98c3-8ecd2e68b530-api/apps/qml/sdk-15.04.6/qtsensors-sensorgestures-example/images/sensorgesturecpp.png)

QSensorGestures class defines one predefined signal, `void detected(const QString &)`

As well, Sensor Gesture Recognizers may implement any number of their own custom signals.

Our shake recognizer defines one custom signal, `void shake()`, as well as the predefined detected signal.

<span id="sensorgestures-class-implementation"></span>
SensorGestures Class Implementation
-----------------------------------

In order to know about custom signals that may be available, we need to ask the QSensorGestureManager about them,

Using the QSensorGesture::gestureIds() function, the manager will return a QStringList of known and valid gesture Ids.

``` cpp
QSensorGestureManager manager;
Q_FOREACH (const QString &gesture, manager.gestureIds()) {
    QTreeWidgetItem *gestureId = new QTreeWidgetItem(ui->treeWidget);
    QStringList recognizerSignals =  manager.recognizerSignals(gesture);
    gestureId->setText(0,gesture);
    for (int i = 0; i < recognizerSignals.count(); i++) {
        QTreeWidgetItem *oneSignal = new QTreeWidgetItem(gestureId);
        oneSignal->setText(0,recognizerSignals.at(i));
    }
    ui->treeWidget->insertTopLevelItem(0,gestureId);
}
```

We can then use this to create a QSensorGesture object that we can use to connect signals to, and start the detection process. A QSensorGesture object will take a list of one or more recognizer ids in it's constructor.

``` cpp
QSensorGestureManager manager;
QSensorGesture *thisGesture = new QSensorGesture(QStringList() << currentRecognizer, this);
if (currentRecognizer.contains("QtSensors.shake")) {
    connect(thisGesture,SIGNAL(shake()),
            this,SLOT(onShake()));
}
connect(thisGesture,SIGNAL(detected(QString)),
        this,SLOT(detectedShake(QString)));
thisGesture->startDetection();
```

and later stop the detection process.

``` cpp
    recognizerMap[currentRecognizer]->stopDetection();
    if (currentRecognizer == "QtSensors.shake") {
        disconnect(recognizerMap[currentRecognizer],SIGNAL(shake()),
                   this,SLOT(onShake()));
    }
    disconnect(recognizerMap[currentRecognizer],SIGNAL(detected(QString)),
               this,SLOT(detectedShake(QString)));
```

The QSensorGesture object will contain all the signals of the valid requested recognizers found on the system.

You can discover which of the requested recognizer ID's that were not found by using QSensorGesture::invalidIds();

By using QSensorGesture::gestureSignals(), you can get a QStringList of usable signals.

Files:

-   sensorgestures/mainwindow.cpp
-   sensorgestures/mainwindow.h
-   sensorgestures/mainwindow.ui
-   sensorgestures/main.cpp
-   sensorgestures/sensorgestures.pro

