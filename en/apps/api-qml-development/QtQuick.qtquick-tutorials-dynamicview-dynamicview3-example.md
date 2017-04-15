---
Title: QtQuick.qtquick-tutorials-dynamicview-dynamicview3-example
---
        
QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items
===========================================================

<span class="subtitle"></span>
<span id="details"></span>
The next step in our application to move items within the list as they're dragged so that we can re-order the list. To achieve this we introduce three new types to our application; DelegateModel, [Drag](../QtQuick.Drag.md) and [DropArea](../QtQuick.DropArea.md).

``` qml
Rectangle {
    id: root
    width: 300; height: 400
    Component {
        id: dragDelegate
        MouseArea {
            id: dragArea
            property bool held: false
            anchors { left: parent.left; right: parent.right }
            height: content.height
            drag.target: held ? content : undefined
            drag.axis: Drag.YAxis
            onPressAndHold: held = true
            onReleased: held = false
            Rectangle {
                id: content
                Drag.active: dragArea.held
                Drag.source: dragArea
                Drag.hotSpot.x: width / 2
                Drag.hotSpot.y: height / 2
            }
            DropArea {
                anchors { fill: parent; margins: 10 }
                onEntered: {
                    visualModel.items.move(
                            drag.source.DelegateModel.itemsIndex,
                            dragArea.DelegateModel.itemsIndex)
                }
            }
        }
    }
}
```

<span id="walkthrough"></span>
### Walkthrough

In order to re-order the view we need to determine when one item has been dragged over another. With the Drag attached property we can generate events that are sent to the scene graph whenever the item it is attached to moves.

``` qml
                Drag.active: dragArea.held
                Drag.source: dragArea
                Drag.hotSpot.x: width / 2
                Drag.hotSpot.y: height / 2
```

Drag events are only sent while the active property is true, so in this example the first event would be sent when the delegate was held with additional event sents when dragging. The [hotSpot](../QtQuick.Drag.md#hotSpot-attached-prop) property specifies the relative position of the drag events within the dragged item, the center of the item in this instance.

Then we use a [DropArea](../QtQuick.DropArea.md) in each view item to determine when the hot spot of the dragged item intersects another item, when a drag enters one of these DropAreas we can move the dragged item to the index of the item it was dragged over.

``` qml
            DropArea {
                anchors { fill: parent; margins: 10 }
                onEntered: {
                    visualModel.items.move(
                            drag.source.DelegateModel.itemsIndex,
                            dragArea.DelegateModel.itemsIndex)
                }
            }
```

To move the items within the view we use a DelegateModel. The DelegateModel type is used by the view types to instantiate delegate items from model data and when constructed explicitly can be used to filter and re-order the model items provided to [ListView](../QtQuick.ListView.md). The items property of DelegateModel provides access to the view's items and allows us to change the visible order without modifying the source model. To determine the current visible index of the items we use itemsIndex property on the DelegateModel attached property of the delegate item.

To utilize a DelegateModel with a [ListView](../QtQuick.ListView.md) we bind it to the [model](../QtQuick.ListView.md#model-prop) property of the view and bind the model and delegate to the DelegateModel.

``` qml
    DelegateModel {
        id: visualModel
        model: PetsModel {}
        delegate: dragDelegate
    }
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: visualModel
        spacing: 4
        cacheBuffer: 50
    }
```

Files:

-   tutorials/dynamicview/dynamicview3/PetsModel.qml
-   tutorials/dynamicview/dynamicview3/dynamicview.qml
-   tutorials/dynamicview/dynamicview3/dynamicview3.qmlproject

<a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.tutorials-dynamicview-dynamicview2/" class="prevPage">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a> <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.tutorials-dynamicview-dynamicview4/" class="nextPage">QML Dynamic View Ordering Tutorial 4 - Sorting Items</a>

