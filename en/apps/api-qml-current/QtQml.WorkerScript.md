---
Title: QtQml.WorkerScript
---
        
WorkerScript
============

<span class="subtitle"></span>
Enables the use of threads in a Qt Quick application More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQuick . |

<span id="properties"></span>
Properties
----------

-   ****[source](#source-prop)**** : url

<span id="signals"></span>
Signals
-------

-   ****[message](#message-signal)****(jsobject *msg*)

<span id="methods"></span>
Methods
-------

-   ****[sendMessage](#sendMessage-method)****(jsobject *message*)

<span id="details"></span>
Detailed Description
--------------------

Use [WorkerScript](index.html) to run operations in a new thread. This is useful for running operations in the background so that the main GUI thread is not blocked.

Messages can be passed between the new thread and the parent thread using [sendMessage()](#sendMessage-method) and the `onMessage()` handler.

An example:

``` qml
import QtQuick 2.0
Rectangle {
    width: 300; height: 300
    Text {
        id: myText
        text: 'Click anywhere'
    }
    WorkerScript {
        id: myWorker
        source: "script.js"
        onMessage: myText.text = messageObject.reply
    }
    MouseArea {
        anchors.fill: parent
        onClicked: myWorker.sendMessage({ 'x': mouse.x, 'y': mouse.y })
    }
}
```

The above worker script specifies a JavaScript file, "script.js", that handles the operations to be performed in the new thread. Here is `script.js`:

``` cpp
WorkerScript.onMessage = function(message) {
    // ... long-running operations and calculations are done here
    WorkerScript.sendMessage({ 'reply': 'Mouse is at ' + message.x + ',' + message.y })
}
```

When the user clicks anywhere within the rectangle, `sendMessage()` is called, triggering the `WorkerScript.onMessage()` handler in `script.js`. This in turn sends a reply message that is then received by the `onMessage()` handler of `myWorker`.

<span id="restrictions"></span>
#### Restrictions

Since the `WorkerScript.onMessage()` function is run in a separate thread, the JavaScript file is evaluated in a context separate from the main QML engine. This means that unlike an ordinary JavaScript file that is imported into QML, the `script.js` in the above example cannot access the properties, methods or other attributes of the QML item, nor can it access any context properties set on the QML object through QQmlContext.

Additionally, there are restrictions on the types of values that can be passed to and from the worker script. See the [sendMessage()](#sendMessage-method) documentation for details.

Worker script can not use [.import](../QtQml.qtqml-javascript-imports.md) syntax.

**See also** Qt Quick Examples - Threading and Threaded ListModel Example.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This holds the url of the JavaScript file that implements the `WorkerScript.onMessage()` handler for threaded operations.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="message-signal"></span><span class="name">message</span>(<span class="type">jsobject</span> <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a message *msg* is received from a worker script in another thread through a call to [sendMessage()](#sendMessage-method).

The corresponding handler is `onMessage`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sendMessage-method"></span><span class="name">sendMessage</span>(<span class="type">jsobject</span> <em>message</em>)</p></td>
</tr>
</tbody>
</table>

Sends the given *message* to a worker script handler in another thread. The other worker script handler can receive this message through the onMessage() handler.

The `message` object may only contain values of the following types:

-   boolean, number, string
-   JavaScript objects and arrays
-   [ListModel](../QtQml.ListModel.md) objects (any other type of QObject\* is not allowed)

All objects and arrays are copied to the `message`. With the exception of [ListModel](../QtQml.ListModel.md) objects, any modifications by the other thread to an object passed in `message` will not be reflected in the original object.

