---
Title: QtQml.qtqml-index
---
        
Qt QML
======

<span class="subtitle"></span>
<span id="details"></span>
The Qt QML module provides a framework for developing applications and libraries with the QML language. It defines and implements the language and engine infrastructure, and provides an API to enable application developers to extend the QML language with custom types and integrate QML code with JavaScript and C++. The Qt QML module provides both a QML API and a C++ API.

Note that while the Qt QML module provides the language and infrastructure for QML applications, the Qt Quick module provides many visual components, model-view support, an animation framework, and much more for building user interfaces.

For those new to QML and Qt Quick, please see QML Applications for an introduction to writing QML applications.

<span id="getting-started"></span>
Getting Started
---------------

To include the definitions of the module's classes, use the following directive:

``` cpp
#include <QtQml>
```

The QML types in Qt QML are available through the `QtQML` import. To use the types, add the following import statement to your .qml file:

``` cpp
import QtQml 2.0
```

To link against the module, add this line to your qmake `.pro` file:

``` cpp
QT += qml
```

<span id="qml-and-qml-types"></span>
QML and QML Types
-----------------

The Qt QML module contains the QML framework and important QML types used in applications. The constructs of QML are described in the [The QML Reference](../QtQml.qmlreference.md).

In addition to the [QML Basic Types](../QtQml.qtqml-typesystem-basictypes.md), the module comes with the following QML object types:

-   [Component](../QtQml.Component.md)
-   [QtObject](../QtQml.QtObject.md)
-   [Binding](../QtQml.Binding.md)
-   [Connections](../QtQml.Connections.md)
-   [Timer](../QtQml.Timer.md)

The [Qt](../QtQml.Qt.md) global object provides useful enums and functions for various QML types.

<span id="lists-and-models"></span>
### Lists and Models

New in Qt 5.1, the model types are moved to a submodule, `QtQml.Models`. The Qt QML Models page has more information.

-   [DelegateModel](../QtQml.DelegateModel.md)
-   [DelegateModelGroup](../QtQml.DelegateModelGroup.md)
-   [ListElement](../QtQml.ListElement.md)
-   [ListModel](../QtQml.ListModel.md)
-   [ObjectModel](../QtQml.ObjectModel.md)

<span id="javascript-environment-for-qml-applications"></span>
JavaScript Environment for QML Applications
-------------------------------------------

JavaScript expressions allow QML code to contain application logic. Qt QML provides the framework for running JavaScript expressions in QML and from C++.

These sections are from [The QML Reference](../QtQml.qmlreference.md). [Integrating QML and JavaScript](../QtQml.qtqml-javascript-topic.md)

-   [Using JavaScript Expressions with QML](../QtQml.qtqml-javascript-expressions.md)
-   [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation.md)
-   [Defining JavaScript Resources In QML](../QtQml.qtqml-javascript-resources.md)
-   [Importing JavaScript Resources In QML](../QtQml.qtqml-javascript-imports.md)
-   [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment.md)

<span id="integrating-qml-with-c-applications"></span>
Integrating QML with C++ Applications
-------------------------------------

The module also provides the framework for running QML applications. The QML framework allows QML code to contain JavaScript expressions and for the QML code to interact with C++ code.

-   [Important C++ Classes Provided By The Qt QML Module](../QtQml.qtqml-cppclasses-topic.md)
-   [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic.md)

<span id="additional-frameworks"></span>
Additional Frameworks
---------------------

-   [The Declarative State Machine Framework](../QtQml.qmlstatemachine.md)

<span id="guides-and-other-information"></span>
Guides and Other Information
----------------------------

Further information for writing QML applications:

-   [The QML Reference](../QtQml.qmlreference.md)
-   QML Applications - essential information for application development with QML and Qt Quick
-   Qt Quick - a module which provides a set of QML types and C++ classes for building user interfaces and applications with QML
-   [Qt QML Release Notes](../QtQml.qtqml-releasenotes.md) - list of changes and additions in the Qt QML module

<span id="reference"></span>
### Reference

-   C++ Classes
-   QML Types

