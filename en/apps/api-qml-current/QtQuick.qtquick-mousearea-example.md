---
Title: QtQuick.qtquick-mousearea-example
---
        
Qt Quick Examples - MouseArea
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/3bbdeebc-3712-4a22-8a74-1f56ba64cf6a-api/apps/qml/sdk-15.04.5/qtquick-mousearea-example/images/qml-mousearea-example.png)

*MouseArea* example shows how to respond to clicks and drags with a [MouseArea](../QtQuick.MouseArea.md). For more information, visit [Important Concepts In Qt Quick - User Input](../QtQuick.qtquick-input-topic.md).

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="mousearea-behavior"></span>
MouseArea Behavior
------------------

When you click inside the red square, the [Text](../QtQuick.qtquick-releasenotes.md#text) type will list several properties of that click which are available to QML. The opacity of the red square will be reduced while the mouse is pressed and remains inside the [MouseArea](../QtQuick.MouseArea.md).

Signals are emitted by the [MouseArea](../QtQuick.MouseArea.md) when clicks or other discrete operations occur within it.

``` qml
onPressAndHold: btn.text = 'Press and hold'
onClicked: btn.text = 'Clicked (wasHeld=' + mouse.wasHeld + ')'
onDoubleClicked: btn.text = 'Double clicked'
```

[MouseArea](../QtQuick.MouseArea.md) can also be used to drag items around. By setting the parameters of the drag property, the target item will be dragged around if the user starts to drag within the mouse area boundary.

``` qml
drag.target: blueSquare
drag.axis: Drag.XAndYAxis
drag.minimumX: 0
drag.maximumX: box.width - parent.width
drag.minimumY: 0
drag.maximumY: box.height - parent.width
```

Files:

-   mousearea/mousearea-wheel-example.qml
-   mousearea/mousearea.qml
-   mousearea/main.cpp
-   mousearea/mousearea.pro
-   mousearea/mousearea.qmlproject
-   mousearea/mousearea.qrc

