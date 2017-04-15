---
Title: QtQml.qtqml-cppclasses-topic
---
        
Important C++ Classes Provided By The Qt QML Module
===================================================

<span class="subtitle"></span>
<span id="details"></span>
The [Qt QML](../QtQml.qtqml-index.md) module provides C++ classes which implement the QML framework. Clients can use these classes to interact with the QML run-time (for example, by injecting data or invoking methods on objects), and to instantiate a hierarchy of objects from a QML document. The Qt QML module provides more C++ API than just the classes listed here, however the classes listed here provide the foundations of the QML runtime and the core concepts of QML.

<span id="qml-runtime"></span>
QML Runtime
-----------

A typical QML application with a C++ entry-point will instantiate a QQmlEngine and then use a QQmlComponent to load a QML document. The engine provides a default QQmlContext which will be the top-level evaluation context used for evaluating functions and expressions defined in the QML document. The object hierarchy defined in the QML document will be instantiated by calling the create() function of the QQmlComponent instance, assuming that no errors were encountered during document loading.

The client may wish to modify the QQmlContext provided by the engine, by injecting properties or objects into the context. They can call the QQmlEngine::rootContext() function to access the top-level context.

After instantiating the object, the client will usually pass control to the application event loop so that user input events (like mouse-clicks) can be delivered and handled by the application.

**Note:** The Qt Quick module provides a convenience class, QQuickView, which provides a QML runtime and visual window for displaying a QML application.

<span id="the-qqmlengine-class"></span>
### The QQmlEngine Class

The QQmlEngine class provides an engine which can manage a hierarchy of objects which is defined in a QML document. It provides a root QML context within which expressions are evaluated, and ensures that properties of objects are updated correctly when required.

A QQmlEngine allows the configuration of global settings that apply to all of the objects it manages; for example, the QNetworkAccessManager to be used for network communications, and the file path to be used for persistent storage.

See the QQmlEngine class documentation for in-depth information about what the QQmlEngine class provides, and how it can be used in an application.

<span id="the-qqmlcontext-class"></span>
### The QQmlContext Class

The QQmlContext class provides a context for object instantiation and expression evaluation. All objects are instantiated in a particular context, and all of the expressions which are evaluated while an application is running are evaluated within a particular context. This context defines how symbols are resolved, and thus which values the expression operates on.

See the QQmlContext class documentation for in-depth information about how to modify the evaluation context of an object by adding or removing properties of a QQmlContext, and how to access the context for an object.

<span id="dynamic-object-instantiation-and-expression-evaluation"></span>
Dynamic Object Instantiation and Expression Evaluation
------------------------------------------------------

Dynamic object instantiation and dynamic expression evaluation are both core concepts in QML. QML documents define object types which can be instantiated at run-time using a QQmlComponent. An instance of the QQmlComponent class can be created in C++ directly, or via the Qt.createComponent() function in imperative QML code. Arbitrary expressions can be calculated in C++ via the QQmlExpression class, and such expressions can interact directly the QML context.

<span id="the-qqmlcomponent-class"></span>
### The QQmlComponent Class

The QQmlComponent class can be used to load a QML document. It requires a QQmlEngine in order to instantiate the hierarchy of objects defined in the QML document.

See the QQmlComponent class documentation for in-depth information about how to use QQmlComponent.

<span id="the-qqmlexpression-class"></span>
### The QQmlExpression Class

The QQmlExpression class provides a way for clients to evaluate JavaScript expressions from C++, using a particular QML evaluation context. This allows clients to access QML objects by id, for example. The result of evaluation is returned as a QVariant, and the conversion rules are defined by the QML engine.

See the QQmlExpression class documentation for in depth information about how to use QQmlExpression in an application.

<span id="usage-of-the-classes-within-qml-applications"></span>
Usage of the Classes within QML Applications
--------------------------------------------

These pages describe how to create QML applications which interact with the C++ classes:

-   [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic.md)
    -   [Exposing Attributes of C++ Classes to QML](../QtQml.qtqml-cppintegration-exposecppattributes.md)
    -   [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes.md)
    -   [Embedding C++ Objects into QML with Context Properties](../QtQml.qtqml-cppintegration-contextproperties.md)
    -   [Interacting with QML Objects from C++](../QtQml.qtqml-cppintegration-interactqmlfromcpp.md)
    -   [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data.md)

