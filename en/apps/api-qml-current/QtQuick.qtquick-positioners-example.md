---
Title: QtQuick.qtquick-positioners-example
---
        
Qt Quick Examples - Positioners
===============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/064a33f2-7b12-4afb-8f39-77838bdb21a8-api/apps/qml/sdk-15.04.5/qtquick-positioners-example/images/qml-positioners-example.png)

*Positioners* is a collection of small QML examples relating to positioners. Each example is a small QML file emphasizing a particular type or feature. For more information, visit [Important Concepts In Qt Quick - Positioning](../QtQuick.qtquick-positioning-topic.md).

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="transitions"></span>
Transitions
-----------

*Transitions* shows animated transitions when showing or hiding items in a positioner. It consists of a scene populated with items in a variety of positioners: [Column](../QtQuick.qtquick-positioning-layouts.md#column), [Row](../QtQuick.qtquick-positioning-layouts.md#row), [Grid](../QtQuick.qtquick-positioning-layouts.md#grid), and [Flow](../QtQuick.qtquick-positioning-layouts.md#flow). Each positioner has animations described as Transitions.

``` qml
move: Transition {
    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
}
```

The move transition specifies how items inside a positioner will animate when they are displaced by the appearance or disappearance of other items.

``` qml
add: Transition {
    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
}
```

The add transition specifies how items will appear when they are added to a positioner.

``` qml
populate: Transition {
    NumberAnimation { properties: "x,y"; from: 200; duration: 100; easing.type: Easing.OutBounce }
}
```

The populate transition specifies how items will appear when their parent positioner is first created.

<span id="attached-properties"></span>
Attached Properties
-------------------

*Attached Properties* shows how the Positioner attached property can be used to determine where an item is within a positioner.

``` qml
Rectangle {
    id: green
    color: "#80c342"
    width: 100 * ratio
    height: 100 * ratio
    Text {
      anchors.left: parent.right
      anchors.leftMargin: 20
      anchors.verticalCenter: parent.verticalCenter
      text: "Index: " + parent.Positioner.index
      + (parent.Positioner.isFirstItem ? " (First)" : "")
      + (parent.Positioner.isLastItem ? " (Last)" : "")
    }
    // When mouse is clicked, display the values of the positioner
    MouseArea {
    anchors.fill: parent
    onClicked: column.showInfo(green.Positioner)
    }
}
```

Files:

-   positioners/positioners-attachedproperties.qml
-   positioners/positioners-transitions.qml
-   positioners/positioners.qml
-   positioners/main.cpp
-   positioners/positioners.pro
-   positioners/positioners.qmlproject
-   positioners/positioners.qrc

