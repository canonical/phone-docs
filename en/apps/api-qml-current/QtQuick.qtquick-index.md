---
Title: QtQuick.qtquick-index
---
        
Qt Quick
========

<span class="subtitle"></span>
<span id="details"></span>
The Qt Quick module is the standard library for writing QML applications. While the Qt QML module provides the QML engine and language infrastructure, the Qt Quick module provides all the basic types necessary for creating user interfaces with QML. It provides a visual canvas and includes types for creating and animating visual components, receiving user input, creating data models and views and delayed object instantiation.

The Qt Quick module provides both a QML API which supplies QML types for creating user interfaces with the QML language, and a C++ API for extending QML applications with C++ code.

**Note:** From Qt 5.1, a set of Qt Quick based UI controls is available to create user interfaces. Please see Qt Quick Controls for more information.

For those new to QML and Qt Quick, please see QML Applications for an introduction to writing QML applications.

<span id="important-concepts-in-qt-quick"></span>
Important Concepts in Qt Quick
------------------------------

Qt Quick provides everything needed to create a rich application with a fluid and dynamic user interface. It enables user interfaces to be built around the behavior of user interface components and how they connect with one another, and it provides a visual canvas with its own coordinate system and rendering engine. Animation and transition effects are a first class concept in Qt Quick, and visual effects can be supplemented through specialized components for particle and shader effects.

-   [The Visual Canvas](../QtQuick.qtquick-visualcanvas-topic.md)
-   [User Input](../QtQuick.qtquick-input-topic.md)
-   [Positioning](../QtQuick.qtquick-positioning-topic.md)
-   [States, Transitions And Animations](../QtQuick.qtquick-statesanimations-topic.md)
-   [Data - Models, Views and Data Storage](../QtQuick.qtquick-modelviewsdata-topic.md)
-   [Particles And Graphical Effects](../QtQuick.qtquick-effects-topic.md)
-   [Convenience Types](../QtQuick.qtquick-convenience-topic.md)

When using the `QtQuick` module, you will need to know how to write QML applications using the QML language. In particular, QML Basics and QML Essentials from the QML Applications page.

To find out more about using the QML language, see the Qt QML module documentation.

<span id="c-extension-points"></span>
C++ Extension Points
--------------------

-   [C++ Extension Points](../QtQuick.qtquick-cppextensionpoints.md)
    -   [Creating User-Defined QQuickItem-Derived Types](../QtQuick.qtquick-cppextensionpoints.md#user-defined-qquickitem-derived-types)
    -   [Scene Graph-Related Classes](../QtQuick.qtquick-cppextensionpoints.md#scene-graph-related-classes)
    -   [Pixmap and Threaded Image Support](../QtQuick.qtquick-cppextensionpoints.md#pixmap-and-threaded-image-support)

<span id="reference-documentation"></span>
Reference Documentation
-----------------------

Additional Qt Quick information:

-   Qt Quick C++ Classes - the C++ API provided by the Qt Quick module
-   Qt Quick QML Types - a list of QML types provided by the `QtQuick` import
    -   XML List Model - contains types for creating models from XML data
    -   Local Storage - a submodule containing a JavaScript interface for an SQLite database
    -   Particles - provides a particle system for Qt Quick
    -   Window - contains types for creating top-level windows and accessing screen information
    -   Dialogs - contains types for creating and interacting with system dialogs
    -   Tests - contains types for writing unit test for a QML application
-   [Qt Quick Release Notes](../QtQuick.qtquick-releasenotes.md) - list of changes and additions in the Qt Quick
-   [Qt Quick Examples and Tutorials](../QtQuick.qtquick-codesamples.md)

Further information for writing QML applications:

-   QML Applications - essential information for application development with QML and Qt Quick
-   Qt QML - documentation for the Qt QML module, which provides the QML engine and language infrastructure

