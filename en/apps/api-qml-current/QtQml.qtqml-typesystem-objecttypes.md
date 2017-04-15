---
Title: QtQml.qtqml-typesystem-objecttypes
---
        
QML Object Types
================

<span class="subtitle"></span>
<span id="details"></span>
A QML object type is a type from which a QML object can be instantiated.

In syntactic terms, a QML object type is one which can be used to declare an object by specifying the *type name* followed by a set of curly braces that encompasses the attributes of that object. This differs from *basic types*, which cannot be used in the same way. For example, Rectangle is a QML object type: it can be used to create `Rectangle` type objects. This cannot be done with primitive types such as `int` and `bool`, which are used to hold simple data types rather than objects.

Custom QML object types can be defined by creating a .qml file that defines the type, as discussed in [Documents as QML object type definitions](../QtQml.qtqml-documents-definetypes.md), or by defining a QML type from C++ and registering the type with the QML engine, as discussed in [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes.md).

<span id="defining-object-types-from-qml"></span>
Defining Object Types from QML
------------------------------

<span id="defining-object-types-through-qml-documents"></span>
### Defining Object Types through QML Documents

Plugin writers and application developers may provide types defined as QML documents. A QML document, when visible to the QML import system, defines a type identified by the name of the file minus the file extensions.

Thus, if a QML document named "MyButton.qml" exists, it provides the definition of the "MyButton" type, which may be used in a QML application.

See the documentation about [QML Documents](../QtQml.qtqml-documents-topic.md) for information on how to define a QML document, and the syntax of the QML language. Once you are familiar with the QML language and how to define QML documents, see the documentation which explains how to [define and use your own reusable QML types in QML documents](../QtQml.qtqml-documents-definetypes.md).

See [Defining Object Types through QML Documents](../QtQml.qtqml-documents-definetypes.md) for more information.

<span id="defining-anonymous-types-with-component"></span>
### Defining Anonymous Types with Component

Another method of creating object types from within QML is to use the [Component](../QtQml.Component.md) type. This allows a type to be defined inline within a QML document, instead of using a separate document in a `.qml` file.

``` qml
Item {
    id: root
    width: 500; height: 500
    Component {
        id: myComponent
        Rectangle { width: 100; height: 100; color: "red" }
    }
    Component.onCompleted: {
        myComponent.createObject(root)
        myComponent.createObject(root, {"x": 200})
    }
}
```

Here the `myComponent` object essentially defines an anonymous type that can be instantiated using [Component::createObject](../QtQml.Component.md#createObject-method) to create objects of this anonymous type.

Inline components share all the characteristics of regular top-level components and use the same `import` list as their containing QML document.

Note that each [Component](../QtQml.Component.md) object declaration creates its own *component scope*. Any *id* values used and referred to from within a [Component](../QtQml.Component.md) object declaration must be unique within that scope, but do not need to be unique within the document within which the inline component is declared. So, the Rectangle declared in the `myComponent` object declaration could have an *id* of `root` without conflicting with the `root` declared for the Item object in the same document, as these two *id* values are declared within different component scopes.

See [Scope and Naming Resolution](../QtQml.qtqml-documents-scope.md) for more details.

<span id="defining-object-types-from-c"></span>
Defining Object Types from C++
------------------------------

C++ plugin writers and application developers may register types defined in C++ through API provided by the Qt QML module. There are various registration functions which each allow different use-cases to be fulfilled. For more information about those registration functions, and the specifics of exposing custom C++ types to QML, see the documentation regarding [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes.md).

The QML type-system relies on imports, plugins and extensions being installed into a known import path. Plugins may be provided by third-party developers and reused by client application developers. Please see the documentation about [QML modules](../QtQml.qtqml-modules-topic.md) for more information about how to create and deploy a QML extension module.

