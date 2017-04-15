---
Title: QtQuick.qtquick-threading-example
---
        
Qt Quick Examples - Threading
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/1a25804e-e751-4c33-89a7-b3bbc8660b9f-api/apps/qml/sdk-15.04.5/qtquick-threading-example/images/qml-threading-example.png)

*Threading* is a collection of QML multithreading examples.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="threaded-listmodel"></span>
Threaded ListModel
------------------

*Threaded [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel)* contains a [ListView](../QtQuick.ListView.md) and a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel). The [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) object is updated asynchronously in another thread, and the results propagate back to the main thread. A timer requests updates from the worker thread periodically:

``` qml
        Timer {
            id: timer
            interval: 2000; repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: {
                var msg = {'action': 'appendCurrentTime', 'model': listModel};
                worker.sendMessage(msg);
            }
        }
```

Inside the worker thread, the [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) is synchronized once the data is finished loading:

``` js
WorkerScript.onMessage = function(msg) {
    if (msg.action == 'appendCurrentTime') {
        var data = {'time': new Date().toTimeString()};
        msg.model.append(data);
        msg.model.sync();   // updates the changes to the list
    }
}
```

<span id="workerscript"></span>
WorkerScript
------------

*WorkerScript* contains an example of using a [WorkerScript](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.threading/#workerscript) to offload expensive calculations into another thread. This keeps the UI from being blocked. This example calculates numbers in Pascal's Triangle, and not in a very optimal way, so it will often take several seconds to complete the calculation. By doing this in a [WorkerScript](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.threading/#workerscript) in another thread, the UI is not blocked during this time.

When the UI needs another value, a request is sent to the [WorkerScript](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.threading/#workerscript):

``` qml
        Spinner {
            id: rowSpinner
            label: "Row"
            onValueChanged: {
                resultText.text = "Loading...";
                myWorker.sendMessage( { row: rowSpinner.value, column: columnSpinner.value } );
            }
        }
```

The workerscript then is free to take a really long time to calculate it:

``` js
WorkerScript.onMessage = function(message) {
    //Calculate result (may take a while, using a naive algorithm)
    var calculatedResult = triangle(message.row, message.column);
    //Send result back to main thread
    WorkerScript.sendMessage( { row: message.row,
                                column: message.column,
                                result: calculatedResult} );
}
```

When it's done, the result returns to the main scene via the [WorkerScript](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.threading/#workerscript) type:

``` qml
    WorkerScript {
        id: myWorker
        source: "workerscript.js"
        onMessage: {
            if (messageObject.row == rowSpinner.value && messageObject.column == columnSpinner.value){ //Not an old result
                if (messageObject.result == -1)
                    resultText.text = "Column must be <= Row";
                else
                    resultText.text = messageObject.result;
            }
        }
    }
```

Files:

-   threading/threading.qml
-   threading/threadedlistmodel/dataloader.js
-   threading/threadedlistmodel/timedisplay.qml
-   threading/workerscript/Spinner.qml
-   threading/workerscript/workerscript.js
-   threading/workerscript/workerscript.qml
-   threading/main.cpp
-   threading/threading.pro
-   threading/threading.qmlproject
-   threading/threading.qrc
-   threading/threadedlistmodel/threadedlistmodel.qmlproject
-   threading/workerscript/workerscript.qmlproject

