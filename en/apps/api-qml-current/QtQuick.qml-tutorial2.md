---
Title: QtQuick.qml-tutorial2
---
        
QML Tutorial 2 - QML Components
===============================

<span class="subtitle"></span>
<span id="details"></span>
This chapter adds a color picker to change the color of the text.

![](https://developer.ubuntu.com/static/devportal_uploaded/d87f6062-33bb-4f49-ac24-394dfba82410-api/apps/qml/sdk-15.04.5/qml-tutorial2/images/declarative-tutorial2.png)

Our color picker is made of six cells with different colors. To avoid writing the same code multiple times for each cell, we create a new `Cell` component. A component provides a way of defining a new type that we can re-use in other QML files. A QML component is like a black-box and interacts with the outside world through properties, signals and functions and is generally defined in its own QML file. (For more details, see the Component documentation). The component's filename must always start with a capital letter.

Here is the QML code for `Cell.qml`:

``` qml
import QtQuick 2.0
Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)
    width: 40; height: 25
    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="the-cell-component"></span>
### The Cell Component

``` qml
Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)
    width: 40; height: 25
```

The root type of our component is an [Item](../QtQuick.Item.md) with the `id` *container*. An [Item](../QtQuick.Item.md) is the most basic visual type in QML and is often used as a container for other types.

``` qml
    property alias cellColor: rectangle.color
```

We declare a `cellColor` property. This property is accessible from *outside* our component, this allows us to instantiate the cells with different colors. This property is just an alias to an existing property - the color of the rectangle that compose the cell (see Property Binding).

``` qml
    signal clicked(color cellColor)
```

We want our component to also have a signal that we call *clicked* with a *cellColor* parameter of type *color*. We will use this signal to change the color of the text in the main QML file later.

``` qml
    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }
```

Our cell component is basically a colored rectangle with the `id` *rectangle*.

The `anchors.fill` property is a convenient way to set the size of a visual type. In this case the rectangle will have the same size as its parent (see [Anchor-Based Layout](../QtQuick.qtquick-positioning-anchors.md#anchor-layout)).

``` qml
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
```

In order to change the color of the text when clicking on a cell, we create a [MouseArea](../QtQuick.MouseArea.md) type with the same size as its parent.

A [MouseArea](../QtQuick.MouseArea.md) defines a signal called *clicked*. When this signal is triggered we want to emit our own *clicked* signal with the color as parameter.

<span id="the-main-qml-file"></span>
### The main QML file

In our main QML file, we use our `Cell` component to create the color picker:

``` qml
import QtQuick 2.0
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3
        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
    }
}
```

We create the color picker by putting 6 cells with different colors in a grid.

``` qml
        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
```

When the *clicked* signal of our cell is triggered, we want to set the color of the text to the *cellColor* passed as a parameter. We can react to any signal of our component through a property of the name *'onSignalName'* (see Signal Attributes).

<a href="QtQuick.qml-tutorial1.md" class="prevPage">QML Tutorial 1 - Basic Types</a> <a href="QtQuick.qml-tutorial3.md" class="nextPage">QML Tutorial 3 - States and Transitions</a>

