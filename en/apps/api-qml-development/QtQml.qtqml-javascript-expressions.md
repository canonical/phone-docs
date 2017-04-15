---
Title: QtQml.qtqml-javascript-expressions
---
        
JavaScript Expressions in QML Documents
=======================================

<span class="subtitle"></span>
<span id="details"></span>
The [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment.md) provided by QML can run valid standard JavaScript constructs such as conditional operators, arrays, variable setting, loops. In addition to the standard JavaScript properties, the [QML Global Object](../QtQml.qtqml-javascript-qmlglobalobject.md) includes a number of helper methods that simplify building UIs and interacting with the QML environment.

The JavaScript environment provided by QML is stricter than that in a web browser. For example, in QML you cannot add to, or modify, members of the JavaScript global object. In regular JavaScript, it is possible to do this accidentally by using a variable without declaring it. In QML this will throw an exception, so all local variables must be explicitly declared. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions) for a complete description of the restrictions on JavaScript code executed from QML.

Various parts of [QML documents](../QtQml.qtqml-documents-topic.md) can contain JavaScript code:

1.  The body of [property bindings](../QtQml.qtqml-syntax-propertybinding.md). These JavaScript expressions describe relationships between QML object [properties](../QtQml.qtqml-syntax-objectattributes.md#property-attributes). When any of a property's *dependencies* change, the property is automatically updated too, according to the specified relationship.
2.  The body of [Signal handlers](../QtQml.qtqml-syntax-objectattributes.md#signal-attributes). These JavaScript statements are automatically evaluated whenever a QML object emits the associated signal.
3.  The definition of [custom methods](../QtQml.qtqml-syntax-objectattributes.md#method-attributes). JavaScript functions that are defined within the body of a QML object become methods of that object.
4.  Standalone [JavaScript resource (.js) files](../QtQml.qtqml-javascript-imports.md). These files are actually separate from QML documents, but they can be imported into QML documents. Functions and variables that are defined within the imported files can be used in property bindings, signal handlers, and custom methods.

<span id="javascript-in-property-bindings"></span>
JavaScript in Property Bindings
-------------------------------

In the following example, the Rectangle's `color` depends on the MouseArea's `pressed` property. This relationship is described using a conditional expression:

``` qml
import QtQuick 2.0
Rectangle {
    id: colorbutton
    width: 200; height: 80;
    color: mousearea.pressed ? "steelblue" : "lightsteelblue"
    MouseArea {
        id: mousearea
        anchors.fill: parent
    }
}
```

In fact, any JavaScript expression (no matter how complex) may be used in a property binding definition, as long as the result of the expression is a value whose type can be assigned to the property. This includes side effects. However, complex bindings and side effects are discouraged because they can reduce the performance, readability, and maintainability of the code.

There are two ways to define a property binding: the first (and most common) is, as previously shown, in a [property initialization](../QtQml.qtqml-syntax-objectattributes.md#value-assignment-on-initialization). The second (and much rarer) way is to assign the property a function returned from the [Qt.binding()](../QtQml.Qt.md#binding-method) function, from within imperative JavaScript code, as shown below:

``` qml
import QtQuick 2.0
Rectangle {
    id: colorbutton
    width: 200; height: 80;
    color: "red"
    MouseArea {
        id: mousearea
        anchors.fill: parent
    }
    Component.onCompleted: {
        color = Qt.binding(function() { return mousearea.pressed ? "steelblue" : "lightsteelblue" });
    }
}
```

See the [property bindings](../QtQml.qtqml-syntax-propertybinding.md) documentation for more information about how to define property bindings, and see the documentation about [Property Assignment versus Property Binding](../QtQml.qtqml-syntax-propertybinding.md#qml-javascript-assignment) for information about how bindings differ from value assignments.

<span id="javascript-in-signal-handlers"></span>
JavaScript in Signal Handlers
-----------------------------

QML object types can emit signals in reaction to certain events occurring. Those signals can be handled by signal handler functions, which can be defined by clients to implement custom program logic.

Suppose that a button represented by a Rectangle type has a MouseArea and a Text label. The MouseArea will emit its pressed signal when the user presses the defined interactive area, which will automatically trigger the `onPressed` handler, which can be defined by clients. The QML engine will execute the JavaScript expressions defined in the `onPressed` and `onReleased` handlers, as required. Typically, a signal handler is bound to JavaScript expressions to initiate other events or to simply assign property values.

``` qml
import QtQuick 2.0
Rectangle {
    id: button
    width: 200; height: 80; color: "lightsteelblue"
    MouseArea {
        id: mousearea
        anchors.fill: parent
        onPressed: {
            // arbitrary JavaScript expression
            label.text = "I am Pressed!"
        }
        onReleased: {
            // arbitrary JavaScript expression
            label.text = "Click Me!"
        }
    }
    Text {
        id: label
        anchors.centerIn: parent
        text: "Press Me!"
    }
}
```

Please see the [Signal and Handler Event System](../QtQml.qtqml-syntax-signals.md) documentation for in-depth discussion of signals and signal handlers, and see the [QML Object Attributes](../QtQml.qtqml-syntax-objectattributes.md) documentation for in-depth discussion of how to define the implementation of signal handlers in QML with JavaScript.

<span id="javascript-in-standalone-functions"></span>
JavaScript in Standalone Functions
----------------------------------

Program logic can also be defined in JavaScript functions. These functions can be defined inline in QML documents (as custom methods) or externally in imported JavaScript files.

<span id="javascript-in-custom-object-methods"></span>
### JavaScript in Custom Object Methods

Custom methods can be defined in QML documents and may be called from signal handlers, property bindings, or functions in other QML objects. Methods defined in this way are often referred to as *inline JavaScript functions* because their implementation is included in the QML object type definition (QML document), as opposed to an external JavaScript file.

An example of an inline custom method is as follows:

``` qml
import QtQuick 2.0
Item {
    function factorial(a) {
        a = parseInt(a);
        if (a <= 0)
            return 1;
        else
            return a * factorial(a - 1);
    }
    MouseArea {
        anchors.fill: parent
        onClicked: console.log(factorial(10))
    }
}
```

The factorial function will run whenever the MouseArea detects a `clicked` signal.

Importantly, custom methods defined inline in a QML document are exposed to other objects, and therefore inline functions on the root object in a QML component can be invoked by callers outside the component. If this is not desired, the method can be added to a non-root object or, preferably, written in an external JavaScript file.

See the [QML Object Attributes](../QtQml.qtqml-syntax-objectattributes.md) documentation for in-depth discussion of how to define custom methods in QML with JavaScript code implementations.

<span id="functions-in-imported-javascript-files"></span>
### Functions in Imported JavaScript Files

Non-trivial program logic is best separated into external JavaScript files. These files can be imported into QML files using an `import` statement, in the same way that [modules](../QtQml.qtqml-modules-topic.md) are imported.

For example, the `factorial()` method in the above example could be moved into an external file named `factorial.js`, and accessed like this:

``` qml
import "factorial.js" as MathFunctions
Item {
    MouseArea {
        anchors.fill: parent
        onClicked: console.log(MathFunctions.factorial(10))
    }
}
```

For more information about loading external JavaScript files into QML, read the section about [Importing JavaScript Resources in QML](../QtQml.qtqml-javascript-imports.md).

<span id="connecting-signals-to-javascript-functions"></span>
### Connecting Signals to JavaScript Functions

QML object types which emit signals also provide default signal handlers for their signals, as described in a previous section. Sometimes, however, a client will want to cause a signal emitted from one object to trigger a function defined in another object; and in that case, a signal connection is often preferable.

A signal emitted by a QML object may be connected to a JavaScript function by calling the signal's `connect()` method and passing the JavaScript function as an argument. For example, the following code connects the MouseArea `clicked` signal to the `jsFunction()` in `script.js`:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>import QtQuick 2.0
import &quot;script.js&quot; as MyScript
Item {
    id: item
    width: 200; height: 200
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    Component.onCompleted: {
        mouseArea.clicked.connect(MyScript.jsFunction)
    }
}</code></pre></td>
<td><pre class="js"><code>// script.js
function jsFunction() {
    console.log(&quot;Called JavaScript function!&quot;)
}</code></pre></td>
</tr>
</tbody>
</table>

The `jsFunction()` will now be called whenever MouseArea's `clicked` signal is emitted.

See [Connecting Signals to Methods and Signals](../QtQml.qtqml-syntax-signals.md) for more information.

<span id="javascript-in-application-startup-code"></span>
JavaScript in Application Startup Code
--------------------------------------

It is occasionally necessary to run some imperative code at application (or component instance) startup. While it is tempting to just include the startup script as *global code* in an external script file, this can have severe limitations as the QML environment may not have been fully established. For example, some objects might not have been created or some [property bindings](../QtQml.qtqml-syntax-propertybinding.md) may not have been established. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions) for the exact limitations of global script code.

A QML object will emit the `Component.completed` [attached signal](../QtQml.qtqml-syntax-signals.md#attached-signal-handlers) when its instantiation is complete. JavaScript code in the corresponding `Component.onCompleted` handler runs after the object is instantiated. Thus, the best place to write application startup code is in the `Component.onCompleted` handler of the top-level object, because this object emits `Component.completed` when the QML environment is fully established.

For example:

``` qml
import QtQuick 2.0
Rectangle {
    function startupFunction() {
        // ... startup code
    }
    Component.onCompleted: startupFunction();
}
```

Any object in a QML file - including nested objects and nested QML component instances - can use this attached property. If there is more than one `onCompleted()` handler to execute at startup, they are run sequentially in an undefined order.

Likewise, every `Component` will emit a [destruction()](../QtQml.Component.md#destruction-signal) signal just before being destroyed.

