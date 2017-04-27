---
title: "QML apps"
---

# QML - the best tool to unlock your creativity

QML is an extremely powerful JavaScript-based declarative language for designing intuitive, natural and responsive user interfaces.  The Ubuntu SDK provides fluid and natural user interface QML elements that blend into Ubuntu without getting in the way. And with a rich framework and APIs, based on the cross-platform Qt framework, QML features an extensive set of APIs that cover the needs of the most demanding developers.

[Read the API documentation&nbsp;&rsaquo;](https://developer.ubuntu.com/api/qml/)

## A powerful language to write compelling UIs

QML, the Qt Meta-Object Language, is a programming language with similarities
in syntax to JavaScript. Being a modern language designed with simplicity and
extensibility in mind it has borrowed syntax and paradigms from ubiquitous web
technologies, such as CSS and JavaScript. It is built upon and constitutes a
core component of the cross-platform Qt framework. In essence, QML coupled
with the underlying Qt libraries is a high-level UI technology that enables
developers to create animated, touch-enabled UIs and light-weight
applications. It differs from traditional procedural languages such as C or
Python in the sense that it is declarative at its core, that is, it is used to
describe UI elements and their interaction. As such, traditionally complex
visual motion transitions become a natural part of QML and are extremely easy
to implement.

``` qml
// Simple QML example
import QtQuick 2.0
Rectangle {
    width: 200 // this is a property
    height: 200
    color: "blue"
    Image {
        source: "pics/logo.png"
        anchors.centerIn: parent
    }
}
```

QML is also a scripting language, which does not require compilation or cross-
compilation and can instantly be run on any device. This provides a very rapid
development and testing workflow, where prototyping user interfaces in QML
becomes a very simple and agile process. Despite it being a scripting
language, QML can leverage the OpenGL support to provide near-game-performance
with gorgeous movements and transitions.


## Components at the core

Components and their elements are the main building blocks of a QML
application. Basic UI elements such as rectangles and circles can be used to
create the basic UX of an application, but become more useful when they are
grouped together and encapsulated into modular components to provide enhanced
functionality.

QML element or components usually have various properties that help define
them, which are declared with a similar syntax as CSS. As an example, a
rectangle element would have width and height properties that would define its
size. The Ubuntu SDK take advantage of QML's extensibility by offering a rich
set of user interface components that provide additional functionality, deep
integration into the OS and the native and distinctive Ubuntu look and feel.
While pure QML is fully supported, developing with the Ubuntu SDK components
is the recommended way to write apps for the platform.



## Deep JavaScript integration

One of the features that makes the language so powerful and flexible is the
ability to embed JavaScript to implement the high-level user interface logic.
Integrating JavaScript into a QML app can be done in a number of ways:

  * Embedding JavaScript expressions as property values in QML elements
  * Adding JavaScript functions in QML
  * Using external JavaScript files and importing them into a QML app

This enables developers leverage their existing JavaScript knowledge they have
of JavaScript to rapidly develop both user-interfaces and application logic.


## Extending QML with C++

While for most cases QML and JavaScript is all you need to write an app, there
are cases where computing-intensive tasks are required (e.g. complex image
manipulation, a physics engine) and you'll need to squeeze all available
performance from the processor. In these situations, QML lends itself to be
extended with C++ extensions to perform the resource-intensive tasks in the
backend, while still providing a clear separation between UI and application
logic. Since QML is built upon Qt, it inherits most of the functionality from
the Qt framework, particularly the signals and slots mechanism and the meta-
object system. Data created using C++ is directly accessible from QML, and QML
objects are also accessible from C++ code.


## Next steps

### Get started with the Ubuntu SDK

  1. [Follow these easy steps](../../platform/sdk/installing-the-sdk.md) to install the ubuntu sdk.
  2. Congrats! Now you're all set to [start writing a phone app](tutorials-building-your-first-qml-app.md).

### Design something beautiful

To enable you to design and build beautiful and usable apps for Ubuntu on the
phone, we've also prepared a set of clear guides with everything you need to
know about UX and visual design best practices. The App Design Guides are a
resource that keeps growing with new guides to make your apps stand out, so
stay tuned for new content!

[Check out the App Design Guides&nbsp;&rsaquo;](http://design.ubuntu.com/apps)

### Join the community!

The growing community of app developers and experts is here to
help you!

[Visit the community website&nbsp;&rsaquo;](http://community.ubuntu.com)

### Any questions?

If you have any questions about Ubuntu on mobile devices or developing apps for the phone, our experts are here to help. Ask Ubuntu is a free, community-driven Q&A site for Ubuntu users and developers.

[Ask a question on askubuntu.com&nbsp;&rsaquo;](http://www.askubuntu.com/questions/ask?tags=mobile,application-development)
