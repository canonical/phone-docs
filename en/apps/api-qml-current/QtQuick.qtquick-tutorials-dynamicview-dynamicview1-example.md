---
Title: QtQuick.qtquick-tutorials-dynamicview-dynamicview1-example
---
        
QML Dynamic View Ordering Tutorial 1 - A Simple ListView and...
===============================================================

<span class="subtitle"></span>
<span id="details"></span>
We begin our application by defining a [ListView](../QtQuick.ListView.md), a model which will provide data to the view, and a delegate which provides a template for constructing items in the view.

The code for the [ListView](../QtQuick.ListView.md) and delegate looks like this:

``` qml
import QtQuick 2.0
Rectangle {
    id: root
    width: 300; height: 400
    Component {
        id: dragDelegate
        Rectangle {
            id: content
            anchors { left: parent.left; right: parent.right }
            height: column.implicitHeight + 4
            border.width: 1
            border.color: "lightsteelblue"
            radius: 2
            Column {
                id: column
                anchors { fill: parent; margins: 2 }
                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
        }
    }
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: PetsModel {}
        delegate: dragDelegate
        spacing: 4
        cacheBuffer: 50
    }
}
```

The model is defined in a separate QML file which looks like this:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Polly"
        type: "Parrot"
        age: 12
        size: "Small"
    }
    ListElement {
        name: "Penny"
        type: "Turtle"
        age: 4
        size: "Small"
    }
}
```

<span id="walkthrough"></span>
### Walkthrough

The first item defined within the application's root Rectangle is the delegate Component. This is the template from which each item in the [ListView](../QtQuick.ListView.md) is constructed.

The `name`, `age`, `type`, and `size` variables referenced in the delegate are sourced from the model data. The names correspond to roles defined in the model.

``` qml
    Component {
        id: dragDelegate
        Rectangle {
            id: content
            anchors { left: parent.left; right: parent.right }
            height: column.implicitHeight + 4
            border.width: 1
            border.color: "lightsteelblue"
            radius: 2
            Column {
                id: column
                anchors { fill: parent; margins: 2 }
                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
        }
    }
```

The second part of the application is the [ListView](../QtQuick.ListView.md) itself to which we bind the model and delegate.

``` qml
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: PetsModel {}
        delegate: dragDelegate
        spacing: 4
        cacheBuffer: 50
    }
```

Files:

-   tutorials/dynamicview/dynamicview1/PetsModel.qml
-   tutorials/dynamicview/dynamicview1/dynamicview.qml
-   tutorials/dynamicview/dynamicview1/dynamicview1.qmlproject

<a href="QtQuick.qml-dynamicview-tutorial.md" class="prevPage">QML Dynamic View Ordering Tutorial</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.tutorials-dynamicview-dynamicview2/" class="nextPage">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a>

