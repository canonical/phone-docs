---
Title: QtQuick.qtquick-input-focus
---
        
Keyboard Focus in Qt Quick
==========================

<span class="subtitle"></span>
<span id="details"></span>
When a key is pressed or released, a key event is generated and delivered to the focused Qt Quick [Item](../QtQuick.Item.md). To facilitate the construction of reusable components and to address some of the cases unique to fluid user interfaces, the Qt Quick items add a scope based extension to Qt's traditional keyboard focus model.

<span id="key-handling-overview"></span>
Key Handling Overview
---------------------

When the user presses or releases a key, the following occurs:

1.  Qt receives the key action and generates a key event.
2.  If a QQuickWindow is the active window, the key event is delivered to it.
3.  The key event is delivered by the scene to the [Item](../QtQuick.Item.md) with *active focus*. If no item has active focus, the key event is ignored.
4.  If the QQuickItem with active focus accepts the key event, propagation stops. Otherwise the event is sent to the Item's parent until the event is accepted, or the root item is reached.

    If the `Rectangle` type in the following example has active focus and the `A` key is pressed, the event will not be propagated further. Upon pressing the `B` key, the event will propagate to the root item and thus be ignored.

    ``` qml
    Rectangle {
        width: 100; height: 100
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_A) {
                console.log('Key A was pressed');
                event.accepted = true;
            }
        }
    }
    ```

5.  If the root [Item](../QtQuick.Item.md) is reached, the key event is ignored and regular Qt key handling continues.

See also the [Keys attached property](../QtQuick.Keys.md) and [KeyNavigation attached property](../QtQuick.KeyNavigation.md).

<span id="querying-the-active-focus-item"></span>
Querying the Active Focus Item
------------------------------

Whether or not an [Item](../QtQuick.Item.md) has active focus can be queried through the property `Item::activeFocus` property. For example, here we have a [Text](../QtQuick.qtquick-releasenotes.md#text) type whose text is determined by whether or not it has active focus.

``` qml
    Text {
        text: activeFocus ? "I have active focus!" : "I do not have active focus"
    }
```

<span id="acquiring-focus-and-focus-scopes"></span>
Acquiring Focus and Focus Scopes
--------------------------------

An [Item](../QtQuick.Item.md) requests focus by setting the `focus` property to `true`.

For very simple cases simply setting the `focus` property is sometimes sufficient. If we run the following example with qmlscene, we see that the `keyHandler` type has active focus and pressing the `A`, `B`, or `C` keys modifies the text appropriately.

``` qml
Rectangle {
    color: "lightsteelblue"; width: 240; height: 25
    Text { id: myText }
    Item {
        id: keyHandler
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_A)
                myText.text = 'Key A was pressed'
            else if (event.key == Qt.Key_B)
                myText.text = 'Key B was pressed'
            else if (event.key == Qt.Key_C)
                myText.text = 'Key C was pressed'
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/923d4eaf-7ccf-424f-abc6-ed0ad269ef25-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus1.png)

However, were the above example to be used as a reusable or imported component, this simple use of the `focus` property is no longer sufficient.

To demonstrate, we create two instances of our previously defined component and set the first one to have focus. The intention is that when the `A`, `B`, or `C` keys are pressed, the first of the two components receives the event and responds accordingly.

The code that imports and creates two MyWidget instances:

``` qml
//Window code that imports MyWidget
Rectangle {
    id: window
    color: "white"; width: 240; height: 150
    Column {
        anchors.centerIn: parent; spacing: 15
        MyWidget {
            focus: true             //set this MyWidget to receive the focus
            color: "lightblue"
        }
        MyWidget {
            color: "palegreen"
        }
    }
}
```

The MyWidget code:

``` qml
Rectangle {
    id: widget
    color: "lightsteelblue"; width: 175; height: 25; radius: 10; antialiasing: true
    Text { id: label; anchors.centerIn: parent}
    focus: true
    Keys.onPressed: {
        if (event.key == Qt.Key_A)
            label.text = 'Key A was pressed'
        else if (event.key == Qt.Key_B)
            label.text = 'Key B was pressed'
        else if (event.key == Qt.Key_C)
            label.text = 'Key C was pressed'
    }
}
```

We would like to have the first MyWidget object to have the focus by setting its `focus` property to `true`. However, by running the code, we can confirm that the second widget receives the focus.

![](https://developer.ubuntu.com/static/devportal_uploaded/0dff8e1d-cdd4-493f-a29f-4538c809d53f-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus2.png)

Looking at both `MyWidget` and `window` code, the problem is evident - there are three types that set the `focus` property set to `true`. The two MyWidget sets the `focus` to `true` and the `window` component also sets the focus. Ultimately, only one type can have keyboard focus, and the system has to decide which type receives the focus. When the second MyWidget is created, it receives the focus because it is the last type to set its `focus` property to `true`.

This problem is due to visibility. The `MyWidget` component would like to have the focus, but it cannot control the focus when it is imported or reused. Likewise, the `window` component does not have the ability to know if its imported components are requesting the focus.

To solve this problem, the QML introduces a concept known as a *focus scope*. For existing Qt users, a focus scope is like an automatic focus proxy. A focus scope is created by declaring the [FocusScope](../QtQuick.FocusScope.md) type.

In the next example, a [FocusScope](../QtQuick.FocusScope.md) type is added to the component, and the visual result shown.

``` qml
FocusScope {
    //FocusScope needs to bind to visual properties of the Rectangle
    property alias color: rectangle.color
    x: rectangle.x; y: rectangle.y
    width: rectangle.width; height: rectangle.height
    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        color: "lightsteelblue"; width: 175; height: 25; radius: 10; antialiasing: true
        Text { id: label; anchors.centerIn: parent }
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_A)
                label.text = 'Key A was pressed'
            else if (event.key == Qt.Key_B)
                label.text = 'Key B was pressed'
            else if (event.key == Qt.Key_C)
                label.text = 'Key C was pressed'
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/c5310cf9-49e9-4d09-9104-1181dfefeb6c-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus3.png)

Conceptually *focus scopes* are quite simple.

-   Within each focus scope one object may have `Item::focus` set to `true`. If more than one [Item](../QtQuick.Item.md) has the `focus` property set, the last type to set the `focus` will have the focus and the others are unset, similar to when there are no focus scopes.
-   When a focus scope receives active focus, the contained type with `focus` set (if any) also gets the active focus. If this type is also a [FocusScope](../QtQuick.FocusScope.md), the proxying behavior continues. Both the focus scope and the sub-focused item will have `activeFocus` property set.

Note that, since the [FocusScope](../QtQuick.FocusScope.md) type is not a visual type, the properties of its children need to be exposed to the parent item of the [FocusScope](../QtQuick.FocusScope.md). Layouts and positioning types will use these visual and styling properties to create the layout. In our example, the `Column` type cannot display the two widgets properly because the [FocusScope](../QtQuick.FocusScope.md) lacks visual properties of its own. The MyWidget component directly binds to the `rectangle` properties to allow the `Column` type to create the layout containing the children of the [FocusScope](../QtQuick.FocusScope.md).

So far, the example has the second component statically selected. It is trivial now to extend this component to make it clickable, and add it to the original application. We still set one of the widgets as focused by default. Now, clicking either MyClickableWidget gives it focus and the other widget loses the focus.

The code that imports and creates two MyClickableWidget instances:

``` qml
Rectangle {
    id: window
    color: "white"; width: 240; height: 150
    Column {
        anchors.centerIn: parent; spacing: 15
        MyClickableWidget {
            focus: true             //set this MyWidget to receive the focus
            color: "lightblue"
        }
        MyClickableWidget {
            color: "palegreen"
        }
    }
}
```

The MyClickableWidget code:

``` qml
FocusScope {
    id: scope
    //FocusScope needs to bind to visual properties of the children
    property alias color: rectangle.color
    x: rectangle.x; y: rectangle.y
    width: rectangle.width; height: rectangle.height
    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        color: "lightsteelblue"; width: 175; height: 25; radius: 10; antialiasing: true
        Text { id: label; anchors.centerIn: parent }
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_A)
                label.text = 'Key A was pressed'
            else if (event.key == Qt.Key_B)
                label.text = 'Key B was pressed'
            else if (event.key == Qt.Key_C)
                label.text = 'Key C was pressed'
        }
    }
    MouseArea { anchors.fill: parent; onClicked: { scope.focus = true } }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/c8318dd9-84f8-4ccf-b727-144ca8b19b74-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus4.png)

When a QML [Item](../QtQuick.Item.md) explicitly relinquishes focus (by setting its `focus` property to `false` while it has active focus), the system does not automatically select another type to receive focus. That is, it is possible for there to be no currently active focus.

See [Qt Quick Examples - Key Interaction](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.keyinteraction/) for a demonstration of moving keyboard focus between multiple areas using [FocusScope](../QtQuick.FocusScope.md) types.

<span id="advanced-uses-of-focus-scopes"></span>
Advanced Uses of Focus Scopes
-----------------------------

Focus scopes allow focus to allocation to be easily partitioned. Several QML items use it to this effect.

[ListView](../QtQuick.ListView.md), for example, is itself a focus scope. Generally this isn't noticeable as [ListView](../QtQuick.ListView.md) doesn't usually have manually added visual children. By being a focus scope, [ListView](../QtQuick.ListView.md) can focus the current list item without worrying about how that will effect the rest of the application. This allows the current item delegate to react to key presses.

This contrived example shows how this works. Pressing the `Return` key will print the name of the current list item.

``` qml
Rectangle {
    color: "lightsteelblue"; width: 100; height: 50
    ListView {
        anchors.fill: parent
        focus: true
        model: ListModel {
            ListElement { name: "Bob" }
            ListElement { name: "John" }
            ListElement { name: "Michael" }
        }
        delegate: FocusScope {
                width: childrenRect.width; height: childrenRect.height
                x:childrenRect.x; y: childrenRect.y
                TextInput {
                    focus: true
                    text: name
                    Keys.onReturnPressed: console.log(name)
                }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/bb6249d4-f5e3-4a68-95d4-0156eb33ca80-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus5.png)

While the example is simple, there are a lot going on behind the scenes. Whenever the current item changes, the [ListView](../QtQuick.ListView.md) sets the delegate's `Item::focus` property. As the [ListView](../QtQuick.ListView.md) is a focus scope, this doesn't affect the rest of the application. However, if the [ListView](../QtQuick.ListView.md) itself has active focus this causes the delegate itself to receive active focus. In this example, the root type of the delegate is also a focus scope, which in turn gives active focus to the `Text` type that actually performs the work of handling the `Return` key.

All of the QML view classes, such as [PathView](../QtQuick.PathView.md) and [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview), behave in a similar manner to allow key handling in their respective delegates.

