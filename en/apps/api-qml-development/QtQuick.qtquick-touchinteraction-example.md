---
Title: QtQuick.qtquick-touchinteraction-example
---
        
Qt Quick Examples - Touch Interaction
=====================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/22049371-c3cd-4ed2-9463-89b8674e8e03-api/apps/qml/sdk-15.04.6/qtquick-touchinteraction-example/images/qml-touchinteraction-example.png)

*Touch Interaction* is a collection of small QML examples relating to touch interaction methods. For more information, visit [Important Concepts In Qt Quick - User Input](../QtQuick.qtquick-input-topic.md).

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="multipoint-flames"></span>
Multipoint Flames
-----------------

*Multipoint Flames* demonstrates distinguishing different fingers in a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md), by assigning a different colored flame to each touch point.

The MultipointTouchArea sets up multiple touch points:

``` qml
    MultiPointTouchArea {
        anchors.fill: parent
        minimumTouchPoints: 1
        maximumTouchPoints: 5
        touchPoints: [
            TouchPoint { id: touch1 },
            TouchPoint { id: touch2 },
            TouchPoint { id: touch11 },
            TouchPoint { id: touch21 },
            TouchPoint { id: touch31 }
        ]
    }
```

The flames are then simply bound to the coordinates of the touch point, and whether it is currently pressed, as follows:

``` qml
    ParticleFlame {
        color: "red"
        emitterX: touch1.x
        emitterY: touch1.y
        emitting: touch1.pressed
    }
```

<span id="bear-whack"></span>
Bear-Whack
----------

*Bear-Whack* demonstrates using [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) to add multiple finger support to a simple game. The interaction with the game is done through a [SpriteGoal](../QtQuick.Particles.SpriteGoal.md) that follows the [TouchPoint](../QtQuick.TouchPoint.md). The TouchPoints added to the [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) are a component with the relevant logic embedded into it:

``` qml
TouchPoint {
    id: container
    property ParticleSystem system
    onPressedChanged: {
        if (pressed) {
            timer.restart();
            child.enabled = true;
            system.explode(x,y);
        }
    }
    property QtObject obj: Timer {
        id: timer
        interval: 100
        running: false
        repeat: false
        onTriggered: child.enabled = false
    }
    property Item child: SpriteGoal {
        enabled: false
        x: container.area.x - 16
        y: container.area.y - 16
        width: container.area.width + 32
        height: container.area.height + 32 //+32 so it doesn't have to hit the exact center
        system: container.system
        parent: container.system
        goalState: "falling"
    }
}
```

<span id="flick-resize"></span>
Flick Resize
------------

*Flick Resize* uses a [PinchArea](../QtQuick.PinchArea.md) to implement a *pinch-to-resize* behavior. This is easily achieved by listening to the [PinchArea](../QtQuick.PinchArea.md) signals and responding to user input.

``` qml
onPinchStarted: {
    initialWidth = flick.contentWidth
    initialHeight = flick.contentHeight
}
onPinchUpdated: {
    // adjust content pos due to drag
    flick.contentX += pinch.previousCenter.x - pinch.center.x
    flick.contentY += pinch.previousCenter.y - pinch.center.y
    // resize content
    flick.resizeContent(initialWidth * pinch.scale, initialHeight * pinch.scale, pinch.center)
}
onPinchFinished: {
    // Move its content within bounds.
    flick.returnToBounds()
}
```

<span id="flickable"></span>
Flickable
---------

*Flickable* is a simple example demonstrating the [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable) type.

``` qml
Rectangle {
width: 320
height: 480
Flickable {
    anchors.fill: parent
    contentWidth: 1200
    contentHeight: 1200
    Rectangle {
        width: 1000
        height: 1000
```

<span id="corkboards"></span>
Corkboards
----------

*Corkboards* shows another use for [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable), with QML types within the flickable object that respond to mouse and keyboard interaction. This behavior does not require special code as the Qt Quick types already cooperate with the Flickable type for accepting touch events.

Files:

-   touchinteraction/touchinteraction.qml
-   touchinteraction/flickable/basic-flickable.qml
-   touchinteraction/flickable/corkboards.qml
-   touchinteraction/flickable/content/Panel.qml
-   touchinteraction/multipointtouch/bearwhack.qml
-   touchinteraction/multipointtouch/multiflame.qml
-   touchinteraction/multipointtouch/content/AugmentedTouchPoint.qml
-   touchinteraction/multipointtouch/content/BearWhackParticleSystem.qml
-   touchinteraction/multipointtouch/content/ParticleFlame.qml
-   touchinteraction/pincharea/flickresize.qml
-   touchinteraction/main.cpp
-   touchinteraction/touchinteraction.pro
-   touchinteraction/touchinteraction.qmlproject
-   touchinteraction/touchinteraction.qrc

