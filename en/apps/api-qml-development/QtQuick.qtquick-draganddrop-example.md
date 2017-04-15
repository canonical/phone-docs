---
Title: QtQuick.qtquick-draganddrop-example
---
        
Qt Quick Examples - Drag and Drop
=================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/04926f89-c69c-4395-810d-9d9dcc364ea9-api/apps/qml/sdk-15.04.6/qtquick-draganddrop-example/images/qml-draganddrop-example.png)

*Drag and Drop* is a collection of small QML examples relating to drag and drop functionality. For more information, visit the Drag and Drop page.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="tiles"></span>
Tiles
-----

*Tiles* adds drag and drop to simple rectangles, which you can drag into a specific grid.

It has a DragTile component which uses a [MouseArea](../QtQuick.MouseArea.md) to move an item when dragged:

``` qml
Item {
    id: root
    property string colorKey
    width: 64; height: 64
    MouseArea {
        id: mouseArea
        width: 64; height: 64
        anchors.centerIn: parent
        drag.target: tile
        onReleased: parent = tile.Drag.target !== null ? tile.Drag.target : root
        Rectangle {
            id: tile
            width: 64; height: 64
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: colorKey
            Drag.keys: [ colorKey ]
            Drag.active: mouseArea.drag.active
            Drag.hotSpot.x: 32
            Drag.hotSpot.y: 32
            states: State {
                when: mouseArea.drag.active
                ParentChange { target: tile; parent: root }
                AnchorChanges { target: tile; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }
            }
        }
    }
}
```

And a DropTile component which the dragged tiles can be dropped onto:

``` qml
DropArea {
    id: dragTarget
    property string colorKey
    property alias dropProxy: dragTarget
    width: 64; height: 64
    keys: [ colorKey ]
    Rectangle {
        id: dropRectangle
        anchors.fill: parent
        color: colorKey
        states: [
            State {
                when: dragTarget.containsDrag
                PropertyChanges {
                    target: dropRectangle
                    color: "grey"
                }
            }
        ]
    }
}
```

The keys property of the [DropArea](../QtQuick.DropArea.md) will only allow an item with a matching key in its Drag.keys property to be dropped on it.

<span id="gridview"></span>
GridView
--------

*GridView* adds drag and drop to a [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview), allowing you to reorder the list. It also uses a DelegateModel to move a delegate item to the position of another item it is dragged over.

``` qml
    model: DelegateModel {
        delegate: MouseArea {
            id: delegateRoot
            property int visualIndex: DelegateModel.itemsIndex
            width: 80; height: 80
            drag.target: icon
            Rectangle {
                id: icon
                width: 72; height: 72
                anchors {
                    horizontalCenter: parent.horizontalCenter;
                    verticalCenter: parent.verticalCenter
                }
                color: model.color
                radius: 3
                Drag.active: delegateRoot.drag.active
                Drag.source: delegateRoot
                Drag.hotSpot.x: 36
                Drag.hotSpot.y: 36
                states: [
                    State {
                        when: icon.Drag.active
                        ParentChange {
                            target: icon
                            parent: root
                        }
                        AnchorChanges {
                            target: icon;
                            anchors.horizontalCenter: undefined;
                            anchors.verticalCenter: undefined
                        }
                    }
                ]
            }
            DropArea {
                anchors { fill: parent; margins: 15 }
                onEntered: visualModel.items.move(drag.source.visualIndex, delegateRoot.visualIndex)
            }
        }
```

Files:

-   draganddrop/draganddrop.qml
-   draganddrop/tiles/DragTile.qml
-   draganddrop/tiles/DropTile.qml
-   draganddrop/tiles/tiles.qml
-   draganddrop/views/gridview.qml
-   draganddrop/main.cpp
-   draganddrop/draganddrop.pro
-   draganddrop/draganddrop.qmlproject
-   draganddrop/draganddrop.qrc

