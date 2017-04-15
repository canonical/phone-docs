---
Title: QtQuick.MouseArea
---
        
MouseArea
=========

<span class="subtitle"></span>
Enables simple mouse handling More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[acceptedButtons](#acceptedButtons-prop)**** : Qt::MouseButtons
-   ****[containsMouse](#containsMouse-prop)**** : bool
-   ****[containsPress](#containsPress-prop)**** : bool
-   ****[cursorShape](#cursorShape-prop)**** : Qt::CursorShape
-   ****[drag](#drag-prop)****
    -   ****[drag.target](#drag.target-prop)**** : Item
    -   ****[drag.active](#drag.active-prop)**** : bool
    -   ****[drag.axis](#drag.axis-prop)**** : enumeration
    -   ****[drag.minimumX](#drag.minimumX-prop)**** : real
    -   ****[drag.maximumX](#drag.maximumX-prop)**** : real
    -   ****[drag.minimumY](#drag.minimumY-prop)**** : real
    -   ****[drag.maximumY](#drag.maximumY-prop)**** : real
    -   ****[drag.filterChildren](#drag.filterChildren-prop)**** : bool
    -   ****[drag.threshold](#drag.threshold-prop)**** : real
-   ****[enabled](#enabled-prop)**** : bool
-   ****[hoverEnabled](#hoverEnabled-prop)**** : bool
-   ****[mouseX](#mouseX-prop)**** : real
-   ****[mouseY](#mouseY-prop)**** : real
-   ****[pressed](#pressed-prop)**** : bool
-   ****[pressedButtons](#pressedButtons-prop)**** : MouseButtons
-   ****[preventStealing](#preventStealing-prop)**** : bool
-   ****[propagateComposedEvents](#propagateComposedEvents-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[canceled](#canceled-signal)****()
-   ****[clicked](#clicked-signal)****(MouseEvent *mouse*)
-   ****[doubleClicked](#doubleClicked-signal)****(MouseEvent *mouse*)
-   ****[entered](#entered-signal)****()
-   ****[exited](#exited-signal)****()
-   ****[positionChanged](#positionChanged-signal)****(MouseEvent *mouse*)
-   ****[pressAndHold](#pressAndHold-signal)****(MouseEvent *mouse*)
-   ****[pressed](#pressed-signal)****(MouseEvent *mouse*)
-   ****[released](#released-signal)****(MouseEvent *mouse*)
-   ****[wheel](#wheel-signal)****(WheelEvent *wheel*)

<span id="details"></span>
Detailed Description
--------------------

A [MouseArea](index.html) is an invisible item that is typically used in conjunction with a visible item in order to provide mouse handling for that item. By effectively acting as a proxy, the logic for mouse handling can be contained within a [MouseArea](index.html) item.

The [enabled](#enabled-prop) property is used to enable and disable mouse handling for the proxied item. When disabled, the mouse area becomes transparent to mouse events.

The [pressed](#pressed-prop) read-only property indicates whether or not the user is holding down a mouse button over the mouse area. This property is often used in bindings between properties in a user interface. The [containsMouse](#containsMouse-prop) read-only property indicates the presence of the mouse cursor over the mouse area but, by default, only when a mouse button is held down; see the [containsMouse](#containsMouse-prop) documentation for details.

Information about the mouse position and button clicks are provided via signals for which event handler properties are defined. The most commonly used involved handling mouse presses and clicks: onClicked, onDoubleClicked, onPressed, onReleased and onPressAndHold. It's also possible to handle mouse wheel events via the onWheel signal.

If a [MouseArea](index.html) overlaps with the area of other [MouseArea](index.html) items, you can choose to propagate `clicked`, `doubleClicked` and `pressAndHold` events to these other items by setting [propagateComposedEvents](#propagateComposedEvents-prop) to true and rejecting events that should be propagated. See the [propagateComposedEvents](#propagateComposedEvents-prop) documentation for details.

By default, [MouseArea](index.html) items only report mouse clicks and not changes to the position of the mouse cursor. Setting the [hoverEnabled](#hoverEnabled-prop) property ensures that handlers defined for onPositionChanged, onEntered and onExited are used and that the [containsMouse](#containsMouse-prop) property is updated even when no mouse buttons are pressed.

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/6202bcd1-e22e-4412-a859-d131ad61016c-api/apps/qml/sdk-15.04.6/QtQuick.MouseArea/images/qml-mousearea-snippet.png)

The following example uses a [MouseArea](index.html) in a [Rectangle](../QtQuick.Rectangle.md) that changes the [Rectangle](../QtQuick.Rectangle.md) color to red when clicked:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "green"
    MouseArea {
        anchors.fill: parent
        onClicked: { parent.color = 'red' }
    }
}
```

Many [MouseArea](index.html) signals pass a [mouse](../QtQuick.MouseEvent.md) parameter that contains additional information about the mouse event, such as the position, button, and any key modifiers.

Here is an extension of the previous example that produces a different color when the area is right clicked:

``` qml
Rectangle {
    width: 100; height: 100
    color: "green"
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button == Qt.RightButton)
                parent.color = 'blue';
            else
                parent.color = 'red';
        }
    }
}
```

**See also** [MouseEvent](../QtQuick.MouseEvent.md), [MouseArea example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.mousearea/), and [Important Concepts In Qt Quick - User Input](../QtQuick.qtquick-input-topic.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptedButtons-prop"></span><span class="name">acceptedButtons</span> : <span class="type">Qt::MouseButtons</span></p></td>
</tr>
</tbody>
</table>

This property holds the mouse buttons that the mouse area reacts to.

To specify that the [MouseArea](index.html) will react to multiple buttons, Qt::MouseButtons flag values are combined using the "|" (or) operator:

``` cpp
MouseArea { acceptedButtons: Qt.LeftButton | Qt.RightButton }
```

To indicate that all possible mouse buttons are to be accepted, the special value 'Qt.AllButtons' may be used:

``` cpp
MouseArea { acceptedButtons: Qt.AllButtons }
```

The default value is `Qt.LeftButton`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsMouse-prop"></span><span class="name">containsMouse</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the mouse is currently inside the mouse area.

**Warning:** This property is not updated if the area moves under the mouse: *containsMouse* will not change. In addition, if [hoverEnabled](#hoverEnabled-prop) is false, containsMouse will only be valid when the mouse is pressed while the mouse cursor is inside the [MouseArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsPress-prop"></span><span class="name">containsPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This is a convenience property equivalent to `pressed && containsMouse`, i.e. it holds whether any of the [acceptedButtons](#acceptedButtons-prop) are currently pressed and the mouse is currently within the [MouseArea](index.html).

This property is particularly useful for highlighting an item while the mouse is pressed within its bounds.

This QML property was introduced in Qt 5.4.

**See also** [pressed](#pressed-prop) and [containsMouse](#containsMouse-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorShape-prop"></span><span class="name">cursorShape</span> : <span class="type">Qt::CursorShape</span></p></td>
</tr>
</tbody>
</table>

This property holds the cursor shape for this mouse area. Note that on platforms that do not display a mouse cursor this may have no effect.

The available cursor shapes are:

-   Qt.ArrowCursor
-   Qt.UpArrowCursor
-   Qt.CrossCursor
-   Qt.WaitCursor
-   Qt.IBeamCursor
-   Qt.SizeVerCursor
-   Qt.SizeHorCursor
-   Qt.SizeBDiagCursor
-   Qt.SizeFDiagCursor
-   Qt.SizeAllCursor
-   Qt.BlankCursor
-   Qt.SplitVCursor
-   Qt.SplitHCursor
-   Qt.PointingHandCursor
-   Qt.ForbiddenCursor
-   Qt.WhatsThisCursor
-   Qt.BusyCursor
-   Qt.OpenHandCursor
-   Qt.ClosedHandCursor
-   Qt.DragCopyCursor
-   Qt.DragMoveCursor
-   Qt.DragLinkCursor

In order to only set a mouse cursor shape for a region without reacting to mouse events set the [acceptedButtons](#acceptedButtons-prop) to none:

``` cpp
MouseArea { cursorShape: Qt.IBeamCursor; acceptedButtons: Qt.NoButton }
```

The default value is `Qt.ArrowCursor`.

**See also** Qt::CursorShape.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="drag-prop"></span><strong>drag group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="drag.target-prop"></span><span class="name">drag.target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.active-prop"></span><span class="name">drag.active</span> : <span class="type">bool</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="drag.axis-prop"></span><span class="name">drag.axis</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.minimumX-prop"></span><span class="name">drag.minimumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="drag.maximumX-prop"></span><span class="name">drag.maximumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.minimumY-prop"></span><span class="name">drag.minimumY</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="drag.maximumY-prop"></span><span class="name">drag.maximumY</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.filterChildren-prop"></span><span class="name">drag.filterChildren</span> : <span class="type">bool</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="drag.threshold-prop"></span><span class="name">drag.threshold</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

`drag` provides a convenient way to make an item draggable.

-   `drag.target` specifies the id of the item to drag.
-   `drag.active` specifies if the target item is currently being dragged.
-   `drag.axis` specifies whether dragging can be done horizontally (`Drag.XAxis`), vertically (`Drag.YAxis`), or both (`Drag.XAndYAxis`)
-   `drag.minimum` and `drag.maximum` limit how far the target can be dragged along the corresponding axes.

The following example displays a [Rectangle](../QtQuick.Rectangle.md) that can be dragged along the X-axis. The opacity of the rectangle is reduced when it is dragged to the right.

``` qml
Rectangle {
    id: container
    width: 600; height: 200
    Rectangle {
        id: rect
        width: 50; height: 50
        color: "red"
        opacity: (600.0 - rect.x) / 600
        MouseArea {
            anchors.fill: parent
            drag.target: rect
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: container.width - rect.width
        }
    }
}
```

**Note:** Items cannot be dragged if they are anchored for the requested `drag.axis`. For example, if `anchors.left` or `anchors.right` was set for `rect` in the above example, it cannot be dragged along the X-axis. This can be avoided by settng the anchor value to `undefined` in an [onPressed](#pressed-prop) handler.

If `drag.filterChildren` is set to true, a drag can override descendant MouseAreas. This enables a parent [MouseArea](index.html) to handle drags, for example, while descendants handle clicks:

`drag.threshold` determines the threshold in pixels of when the drag operation should start. By default this is bound to a platform dependent value. This property was added in Qt Quick 2.2.

If `drag.smoothed` is `true`, the target will be moved only after the drag operation has started. If set to `false`, the target will be moved straight to the current mouse position. By default, this property is `true`. This property was added in Qt Quick 2.4

``` qml
import QtQuick 2.0
Rectangle {
    width: 480
    height: 320
    Rectangle {
        x: 30; y: 30
        width: 300; height: 240
        color: "lightsteelblue"
        MouseArea {
            anchors.fill: parent
            drag.target: parent;
            drag.axis: "XAxis"
            drag.minimumX: 30
            drag.maximumX: 150
            drag.filterChildren: true
            Rectangle {
                color: "yellow"
                x: 50; y : 50
                width: 100; height: 100
                MouseArea {
                    anchors.fill: parent
                    onClicked: console.log("Clicked")
                }
            }
        }
    }
}
```

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

This property holds whether the item accepts mouse events.

**Note:** Due to historical reasons, this property is not equivalent to Item.enabled. It only affects mouse events, and its effect does not propagate to child items.

By default, this property is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hoverEnabled-prop"></span><span class="name">hoverEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether hover events are handled.

By default, mouse events are only handled in response to a button event, or when a button is pressed. Hover enables handling of all mouse events even when no mouse button is pressed.

This property affects the [containsMouse](#containsMouse-prop) property and the onEntered, onExited and onPositionChanged signals.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseX-prop"></span><span class="name">mouseX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the mouse cursor.

If the [hoverEnabled](#hoverEnabled-prop) property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.

By default, this property is false.

If [hoverEnabled](#hoverEnabled-prop) is true then these properties will be valid when:

-   no button is pressed, but the mouse is within the [MouseArea](index.html) ([containsMouse](#containsMouse-prop) is true).
-   a button is pressed and held, even if it has since moved out of the area.

The coordinates are relative to the [MouseArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseY-prop"></span><span class="name">mouseY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the mouse cursor.

If the [hoverEnabled](#hoverEnabled-prop) property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.

By default, this property is false.

If [hoverEnabled](#hoverEnabled-prop) is true then these properties will be valid when:

-   no button is pressed, but the mouse is within the [MouseArea](index.html) ([containsMouse](#containsMouse-prop) is true).
-   a button is pressed and held, even if it has since moved out of the area.

The coordinates are relative to the [MouseArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether any of the [acceptedButtons](#acceptedButtons-prop) are currently pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressedButtons-prop"></span><span class="name">pressedButtons</span> : <span class="type">MouseButtons</span></p></td>
</tr>
</tbody>
</table>

This property holds the mouse buttons currently pressed.

It contains a bitwise combination of:

-   Qt.LeftButton
-   Qt.RightButton
-   Qt.MiddleButton

The code below displays "right" when the right mouse buttons is pressed:

``` qml
Text {
    text: mouseArea.pressedButtons & Qt.RightButton ? "right" : ""
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
    }
}
```

**Note:** this property only handles buttons specified in [acceptedButtons](#acceptedButtons-prop).

**See also** [acceptedButtons](#acceptedButtons-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preventStealing-prop"></span><span class="name">preventStealing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the mouse events may be stolen from this [MouseArea](index.html).

If a [MouseArea](index.html) is placed within an item that filters child mouse events, such as Flickable, the mouse events may be stolen from the [MouseArea](index.html) if a gesture is recognized by the parent item, e.g. a flick gesture. If preventStealing is set to true, no item will steal the mouse events.

Note that setting preventStealing to true once an item has started stealing events will have no effect until the next press event.

By default this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="propagateComposedEvents-prop"></span><span class="name">propagateComposedEvents</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether composed mouse events will automatically propagate to other MouseAreas that overlap with this [MouseArea](index.html) but are lower in the visual stacking order. By default, this property is false.

[MouseArea](index.html) contains several composed events: `clicked`, `doubleClicked` and `pressAndHold`. These are composed of basic mouse events, like `pressed`, and can be propagated differently in comparison to basic events.

If propagateComposedEvents is set to true, then composed events will be automatically propagated to other MouseAreas in the same location in the scene. Each event is propagated to the next [enabled](#enabled-prop) [MouseArea](index.html) beneath it in the stacking order, propagating down this visual hierarchy until a [MouseArea](index.html) accepts the event. Unlike `pressed` events, composed events will not be automatically accepted if no handler is present.

For example, below is a yellow [Rectangle](../QtQuick.Rectangle.md) that contains a blue [Rectangle](../QtQuick.Rectangle.md). The blue rectangle is the top-most item in the hierarchy of the visual stacking order; it will visually rendered above the yellow rectangle. Since the blue rectangle sets propagateComposedEvents to true, and also sets [MouseEvent::accepted](../QtQuick.MouseEvent.md#accepted-prop) to false for all received `clicked` events, any `clicked` events it receives are propagated to the [MouseArea](index.html) of the yellow rectangle beneath it.

``` qml
import QtQuick 2.0
Rectangle {
    color: "yellow"
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("clicked yellow")
    }
    Rectangle {
        color: "blue"
        width: 50; height: 50
        MouseArea {
            anchors.fill: parent
            propagateComposedEvents: true
            onClicked: {
                console.log("clicked blue")
                mouse.accepted = false
            }
        }
    }
}
```

Clicking on the blue rectangle will cause the `onClicked` handler of its child [MouseArea](index.html) to be invoked; the event will then be propagated to the [MouseArea](index.html) of the yellow rectangle, causing its own `onClicked` handler to be invoked.

This property greatly simplifies the usecase of when you want to have overlapping MouseAreas handling the composed events together. For example: if you want one [MouseArea](index.html) to handle `clicked` signals and the other to handle `pressAndHold`, or if you want one [MouseArea](index.html) to handle `clicked` most of the time, but pass it through when certain conditions are met.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canceled-signal"></span><span class="name">canceled</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when mouse events have been canceled, either because an event was not accepted, or because another item stole the mouse event handling.

This signal is for advanced use: it is useful when there is more than one [MouseArea](index.html) that is handling input, or when there is a [MouseArea](index.html) inside a [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable). In the latter case, if you execute some logic in the `onPressed` signal handler and then start dragging, the [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable) will steal the mouse handling from the [MouseArea](index.html). In these cases, to reset the logic when the [MouseArea](index.html) has lost the mouse handling to the [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable), `canceled` should be handled in addition to [released](#released-signal).

The corresponding handler is `onCanceled`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="name">clicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when there is a click. A click is defined as a press followed by a release, both inside the [MouseArea](index.html) (pressing, moving outside the [MouseArea](index.html), and then moving back inside and releasing is also considered a click).

The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, changing the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter has no effect.

The corresponding handler is `onClicked`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="doubleClicked-signal"></span><span class="name">doubleClicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when there is a double-click (a press followed by a release followed by a press). The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, if the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter is set to false, the pressed/released/clicked signals will be emitted for the second click; otherwise they are suppressed. The `accepted` property defaults to true.

The corresponding handler is `onDoubleClicked`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="name">entered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the mouse enters the mouse area.

By default this signal is only emitted if a button is currently pressed. Set [hoverEnabled](#hoverEnabled-prop) to true to emit this signal even when no mouse button is pressed.

The corresponding handler is `onEntered`.

**See also** [hoverEnabled](#hoverEnabled-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the mouse exits the mouse area.

By default this signal is only emitted if a button is currently pressed. Set [hoverEnabled](#hoverEnabled-prop) to true to emit this signal even when no mouse button is pressed.

The example below shows a fairly typical relationship between two MouseAreas, with `mouseArea2` on top of `mouseArea1`. Moving the mouse into `mouseArea2` from `mouseArea1` will cause `mouseArea1` to emit the `exited` signal.

``` qml
Rectangle {
    width: 400; height: 400
    MouseArea {
        id: mouseArea1
        anchors.fill: parent
        hoverEnabled: true
    }
    MouseArea {
        id: mouseArea2
        width: 100; height: 100
        anchors.centerIn: parent
        hoverEnabled: true
    }
}
```

If instead you give the two MouseAreas a parent-child relationship, moving the mouse into `mouseArea2` from `mouseArea1` will **not** cause `mouseArea1` to emit `exited`. Instead, they will both be considered to be simultaneously hovered.

The corresponding handler is `onExited`.

**See also** [hoverEnabled](#hoverEnabled-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionChanged-signal"></span><span class="name">positionChanged</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the mouse position changes.

The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the mouse, including the x and y position, and any buttons currently pressed.

By default this signal is only emitted if a button is currently pressed. Set [hoverEnabled](#hoverEnabled-prop) to true to emit this signal even when no mouse button is pressed.

When handling this signal, changing the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter has no effect.

The corresponding handler is `onPositionChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAndHold-signal"></span><span class="name">pressAndHold</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when there is a long press (currently 800ms). The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the press, including the x and y position of the press, and which button is pressed.

When handling this signal, changing the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter has no effect.

The corresponding handler is `onPressAndHold`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-signal"></span><span class="name">pressed</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when there is a press. The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the press, including the x and y position and which button was pressed.

When handling this signal, use the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter to control whether this [MouseArea](index.html) handles the press and all future mouse events until release. The default is to accept the event and not allow other MouseAreas beneath this one to handle the event. If *accepted* is set to false, no further events will be sent to this [MouseArea](index.html) until the button is next pressed.

The corresponding handler is `onPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="released-signal"></span><span class="name">released</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span> <em>mouse</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when there is a release. The [mouse](../QtQuick.MouseEvent.md) parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, changing the [accepted](../QtQuick.MouseEvent.md#accepted-prop) property of the *mouse* parameter has no effect.

The corresponding handler is `onReleased`.

**See also** [canceled](#canceled-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wheel-signal"></span><span class="name">wheel</span>(<span class="type"><a href="QtQuick.WheelEvent.md">WheelEvent</a></span> <em>wheel</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted in response to both mouse wheel and trackpad scroll gestures.

The [wheel](../QtQuick.WheelEvent.md) parameter provides information about the event, including the x and y position, any buttons currently pressed, and information about the wheel movement, including angleDelta and pixelDelta.

The corresponding handler is `onWheel`.

