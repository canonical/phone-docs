---
Title: QtQml.qtqml-documents-topic
---
        
QML Documents
=============

<span class="subtitle"></span>
<span id="details"></span>
A QML document is a string which conforms to QML document syntax. A document defines a QML object type. A document is generally loaded from a `".qml"` file stored either locally or remotely, but can be constructed manually in code. An instance of the object type defined by a document may be created using a Component in QML code, or a QQmlComponent in C++. Alternatively, if the object type is explicitly exposed to the QML type system with a particular type name, the type may be used directly in object declarations in other documents.

The ability to define re-usable QML object types in documents is an important enabler to allow clients to write modular, highly readable and maintainable code.

Since Qt 5.4, a document can also have the file extension `".ui.qml"`. The QML engine handles these files like standard .qml files and ignores the `.ui` part of the extension. Qt Creator handles those files as UI forms for the Qt Quick Designer. The files can contain only a subset of the QML language that is defined by Qt Creator.

<span id="structure-of-a-qml-document"></span>
Structure of a QML Document
---------------------------

A QML document consists of two sections: the imports section, and the object declaration section. The imports section in a document contains import statements that define which QML object types and JavaScript resources the document is able to use. The object declaration section defines the object tree to be created when instantiating the object type defined by the document.

An example of a simple document is as follows:

``` qml
import QtQuick 2.0
Rectangle {
    width: 300
    height: 200
    color: "blue"
}
```

See the [Structure of a QML Document](../QtQml.qtqml-documents-structure.md) for more information on the topic.

<span id="syntax-of-the-qml-language"></span>
### Syntax of the QML Language

The object declaration section of the document must specify a valid object hierarchy with appropriate [QML syntax](../QtQml.qtqml-syntax-basics.md). An object declaration may include the specification of custom [object attributes](../QtQml.qtqml-syntax-objectattributes.md). Object method attributes may be specified as JavaScript functions, and object property attributes may be assigned [property binding expressions](../QtQml.qtqml-syntax-propertybinding.md).

Please see the documentation about the [syntax of QML](../QtQml.qtqml-syntax-basics.md) for more information about valid syntax, and see the documentation about [integrating QML and JavaScript](../QtQml.qtqml-javascript-topic.md) for in-depth information on that topic.

<span id="defining-object-types-through-qml-documents"></span>
Defining Object Types through QML Documents
-------------------------------------------

As described briefly in the previous section, a document implicitly defines a QML object type. One of the core principles of QML is the ability to define and then re-use object types. This improves the maintainability of QML code, increases the readability of object hierarchy declarations, and promotes separation between UI definition and logic implementation.

In the following example, the client developer defines a `Button` type with a document in a file:

``` qml
// Button.qml
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

The `Button` type can then be used in an application:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>// application.qml
import QtQuick 2.0
Column {
    Button { width: 50; height: 50 }
    Button { x: 50; width: 100; height: 50; color: &quot;blue&quot; }
    Button { width: 50; height: 50; radius: 8 }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/a3fd3228-57ad-4aa3-ba24-ffa21eb87994-api/apps/qml/sdk-15.04.5/qtqml-documents-topic/images/button-types.png" /></p></td>
</tr>
</tbody>
</table>

Please see the documentation about [defining object types in documents](../QtQml.qtqml-documents-definetypes.md) for in-depth information on the topic.

<span id="resource-loading-and-network-transparency"></span>
Resource Loading and Network Transparency
-----------------------------------------

It is important to note that QML is network-transparent. Applications can import documents from remote paths just as simply as documents from local paths. In fact, any `url` property may be assigned a remote or local URL, and the QML engine will handle any network communication involved.

Please see the [Network Transparency](../QtQml.qtqml-documents-networktransparency.md) documentation for more information about network transparency in imports.

<span id="scope-and-naming-resolution"></span>
Scope and Naming Resolution
---------------------------

Expressions in documents usually involve objects or properties of objects, and since multiple objects may be defined and since different objects may have properties with the same name, some predefined symbol resolution semantics must be defined by QML. Please see the page on [scope and symbol resolution](../QtQml.qtqml-documents-scope.md) for in-depth information about the topic.

