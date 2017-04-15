---
Title: QtQml.Connections
---
        
Connections
===========

<span class="subtitle"></span>
Describes generalized connections to signals More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[ignoreUnknownSignals](#ignoreUnknownSignals-prop)**** : bool
-   ****[target](#target-prop)**** : Object

<span id="details"></span>
Detailed Description
--------------------

A Connections object creates a connection to a QML signal.

When connecting to signals in QML, the usual way is to create an "on&lt;Signal&gt;" handler that reacts when a signal is received, like this:

``` qml
MouseArea {
    onClicked: { foo(parameters) }
}
```

However, it is not possible to connect to a signal in this way in some cases, such as when:

-   Multiple connections to the same signal are required
-   Creating connections outside the scope of the signal sender
-   Connecting to targets not defined in QML

When any of these are needed, the Connections type can be used instead.

For example, the above code can be changed to use a Connections object, like this:

``` qml
MouseArea {
    Connections {
        onClicked: foo(parameters)
    }
}
```

More generally, the Connections object can be a child of some object other than the sender of the signal:

``` qml
MouseArea {
    id: area
}
// ...
```

``` qml
Connections {
    target: area
    onClicked: foo(parameters)
}
```

**See also** [Qt QML](../QtQml.qtqml-index.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ignoreUnknownSignals-prop"></span><span class="name">ignoreUnknownSignals</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Normally, a connection to a non-existent signal produces runtime errors.

If this property is set to `true`, such errors are ignored. This is useful if you intend to connect to different types of objects, handling a different set of signals for each object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the object that sends the signal.

If this property is not set, the `target` defaults to the parent of the Connection.

If set to null, no connection is made and any signal handlers are ignored until the target is not null.

