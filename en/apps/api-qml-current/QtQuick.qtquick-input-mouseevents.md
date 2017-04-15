---
Title: QtQuick.qtquick-input-mouseevents
---
        
Mouse Events
============

<span class="subtitle"></span>
details
Mouse Types
-----------

-   [MouseArea](../QtQuick.MouseArea.md) type
-   [MouseEvent](../QtQuick.MouseEvent.md) object

<span id="mouse-event-handling"></span>
Mouse Event Handling
--------------------

QML uses signals and handlers to deliver mouse interactions. Specifically, Qt Quick provides the [MouseArea](../QtQuick.MouseArea.md) and [MouseEvent](../QtQuick.MouseEvent.md) types which allow developers to define signal handlers which accept mouse events within a defined area.

<span id="defining-a-mouse-area"></span>
Defining a Mouse Area
---------------------

The [MouseArea](../QtQuick.MouseArea.md) type receives events within a defined area. One quick way to define this area is to anchor the `MouseArea` to its parent's area using the `anchors.fill` property. If the parent is a [Rectangle](../QtQuick.Rectangle.md) (or any [Item](../QtQuick.Item.md) component), then the [MouseArea](../QtQuick.MouseArea.md) will fill the area defined by the parent's dimensions. Alternatively, an area smaller or larger than the parent is definable.

``` qml
Rectangle {
    id: button
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("button clicked")
    }
    MouseArea {
        width:150; height: 75
        onClicked: console.log("irregular area clicked")
    }
}
```

<span id="receiving-events"></span>
Receiving Events
----------------

The [MouseArea](../QtQuick.MouseArea.md) type provides signals and handlers to detect different mouse events. The [MouseArea](../QtQuick.MouseArea.md) type documentation describes these gestures in greater detail:

-   canceled
-   clicked
-   doubleClicked
-   entered
-   exited
-   positionChanged
-   pressAndHold
-   pressed
-   released

These signals have signal handlers that are invoked when the signals are emitted.

``` qml
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("area clicked")
        onDoubleClicked: console.log("area double clicked")
        onEntered: console.log("mouse entered the area")
        onExited: console.log("mouse left the area")
    }
```

<span id="enabling-gestures"></span>
Enabling Gestures
-----------------

Some mouse gestures and button clicks need to be enabled before they send or receive events. Certain [MouseArea](../QtQuick.MouseArea.md) and [MouseEvent](../QtQuick.MouseEvent.md) properties enable these gestures.

To listen to (or explicitly ignore) a certain mouse button, set the appropriate mouse button to the [acceptedButtons](../QtQuick.MouseArea.md#acceptedButtons-prop) property.

Naturally, the mouse events, such as button presses and mouse positions, are sent during a mouse click. For example, the `containsMouse` property will only retrieve its correct value during a mouse press. The [hoverEnabled](../QtQuick.MouseArea.md#hoverEnabled-prop) will enable mouse events and positioning even when there are no mouse button presses. Setting the `hoverEnabled` property to `true`, in turn will enable the `entered`, `exited`, and `positionChanged` signal and their respective signal handlers.

``` qml
    MouseArea {
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onEntered: console.log("mouse entered the area")
        onExited: console.log("mouse left the area")
    }
```

Additionally, to disable the whole mouse area, set the [MouseArea](../QtQuick.MouseArea.md) `enabled` property to `false`.

<span id="mouseevent-object"></span>
MouseEvent Object
-----------------

Signals and their handlers receive a [MouseEvent](../QtQuick.MouseEvent.md) object as a parameter. The `mouse` object contain information about the mouse event. For example, the mouse button that started the event is queried through the [mouse.button](../QtQuick.MouseEvent.md#button-prop) property.

The `MouseEvent` object can also ignore a mouse event using its `accepted` property.

<span id="accepting-further-signals"></span>
### Accepting Further Signals

Many of the signals are sent multiple times to reflect various mouse events such as double clicking. To facilitate the classification of mouse clicks, the [MouseEvent](../QtQuick.MouseEvent.md) object has an `accepted` property to disable the event propagation.

To learn more about QML's event system, please read the signals and handlers, and event system document.

