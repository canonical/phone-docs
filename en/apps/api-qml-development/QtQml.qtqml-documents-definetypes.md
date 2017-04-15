---
Title: QtQml.qtqml-documents-definetypes
---
        
Defining Object Types through QML Documents
===========================================

<span class="subtitle"></span>
<span id="details"></span>
One of the core features of QML is that it enables QML object types to be easily defined in a lightweight manner through QML documents to suit the needs of individual QML applications. The standard Qt Quick module provides various types like Rectangle, Text and Image for building a QML application; beyond these, you can easily define your own QML types to be reused within your application. This ability to create your own types forms the building blocks of any QML application.

<span id="defining-an-object-type-with-a-qml-file"></span>
Defining an Object Type with a QML File
---------------------------------------

To create an object type, a QML document should be placed into a text file named as *&lt;TypeName&gt;.qml* where *&lt;TypeName&gt;* is the desired name of the type, which must be comprised of alphanumeric characters or underscores and beginning with an uppercase letter. This document is then automatically recognized by the engine as a definition of a QML type. Additionally, a type defined in this manner is automatically made available to other QML files within the same directory as the engine searches within the immediate directory when resolving QML type names.

For example, below is a document that declares a Rectangle with a child MouseArea. The document has been saved to file named `SquareButton.qml`:

``` qml
// SquareButton.qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button clicked!")
    }
}
```

Since the file is named `SquareButton.qml`, **this can now be used as a type named `SquareButton` by any other QML file within the same directory**. For example, if there was a `myapplication.qml` file in the same directory, it could refer to the `SquareButton` type:

``` qml
// myapplication.qml
import QtQuick 2.0
SquareButton {}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/36fc4354-63aa-4e23-9cdb-e99c71165d01-api/apps/qml/sdk-15.04.6/qtqml-documents-definetypes/images/documents-definetypes-simple.png)

This creates a 100 x 100 red Rectangle with an inner MouseArea, as defined in `SquareButton.qml`. When this `myapplication.qml` document is loaded by the engine, it loads the SquareButton.qml document as a component and instantiates it to create a `SquareButton` object.

The `SquareButton` type encapsulates the tree of QML objects declared in `SquareButton.qml`. When the QML engine instantiates a `SquareButton` object from this type, it is instantiating an object from the Rectangle tree declared in `SquareButton.qml`.

**Note:** the letter case of the file name is significant on some (notably UNIX) filesystems. It is recommended the file name case matches the case of the desired QML type name exactly - for example, `Box.qml` and not `BoX.qml` - regardless of the platform to which the QML type will be deployed.

<span id="importing-types-defined-outside-the-current-directory"></span>
### Importing Types Defined Outside the Current Directory

If `SquareButton.qml` was not in the same directory as `myapplication.qml`, the `SquareButton` type would need to be specifically made available through an *import* statement in `myapplication.qml`. It could be imported from a relative path on the file system, or as an installed module; see [module](../QtQml.qtqml-modules-topic.md) for more details.

<span id="accessible-attributes-of-custom-types"></span>
Accessible Attributes of Custom Types
-------------------------------------

The **root object** definition in a .qml file **defines the attributes that are available for a QML type**. All properties, signals and methods that belong to this root object - whether they are custom declared, or come from the QML type of the root object - are externally accessible and can be read and modified for objects of this type.

For example, the root object type in the `SquareButton.qml` file above is Rectangle. This means any properties defined by the Rectangle type can be modified for a `SquareButton` object. The code below defines three `SquareButton` objects with customized values for some of the properties of the root Rectangle object of the `SquareButton` type:

``` qml
// application.qml
import QtQuick 2.0
Column {
    SquareButton { width: 50; height: 50 }
    SquareButton { x: 50; color: "blue" }
    SquareButton { radius: 10 }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/585b6717-ad86-4e23-a950-33b5a5e71ca1-api/apps/qml/sdk-15.04.6/qtqml-documents-definetypes/images/documents-definetypes-attributes.png)

The attributes that are accessible to objects of the custom QML type include any [custom properties](../QtQml.qtqml-syntax-objectattributes.md#defining-property-attributes), [methods](../QtQml.qtqml-syntax-objectattributes.md#defining-method-attributes) and [signals](../QtQml.qtqml-syntax-objectattributes.md#defining-signal-attributes) that have additionally been defined for an object. For example, suppose the Rectangle in `SquareButton.qml` had been defined as follows, with additional properties, methods and signals:

``` qml
// SquareButton.qml
import QtQuick 2.0
Rectangle {
    id: root
    property bool pressed: mouseArea.pressed
    signal buttonClicked(real xPos, real yPos)
    function randomizeColor() {
        root.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
    }
    width: 100; height: 100
    color: "red"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.buttonClicked(mouse.x, mouse.y)
    }
}
```

Any `SquareButton` object could make use of the `pressed` property, `buttonClicked` signal and `randomizeColor()` method that have been added to the root Rectangle:

``` qml
// application.qml
import QtQuick 2.0
SquareButton {
    id: squareButton
    onButtonClicked: {
        console.log("Clicked", xPos, yPos)
        randomizeColor()
    }
    Text { text: squareButton.pressed ? "Down" : "Up" }
}
```

Note that any of the `id` values defined in `SquareButton.qml` are not accessible to `SquareButton` objects, as id values are only accessible from within the component scope in which a component is declared. The `SquareButton` object definition above cannot refer to `mouseArea` in order to refer to the MouseArea child, and if it had an `id` of `root` rather than `squareButton`, this would not conflict with the `id` of the same value for the root object defined in `SquareButton.qml` as the two would be declared within separate scopes.

