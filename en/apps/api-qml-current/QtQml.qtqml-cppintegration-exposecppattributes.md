---
Title: QtQml.qtqml-cppintegration-exposecppattributes
---
        
Exposing Attributes of C++ Types to QML
=======================================

<span class="subtitle"></span>
<span id="details"></span>
QML can easily be extended with functionality defined in C++ code. Due to the tight integration of the QML engine with the Qt meta-object system, any functionality that is appropriately exposed by a QObject-derived class is accessible from QML code. This enables C++ data and functions to be accessible directly from QML, often with little or no modification.

The QML engine has the ability to introspect QObject instances through the meta-object system. This means any QML code can access the following members of an instance of a QObject-derived class:

-   Properties
-   Methods (providing they are public slots or flagged with Q\_INVOKABLE)
-   Signals

(Additionally, enums are available if they have been declared with Q\_ENUMS. See [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data.md) for more details.)

In general, these are accessible from QML regardless of whether a QObject-derived class has been [registered with the QML type system](../QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system). However, if a class is to be used in a way that requires the engine to access additional type information — for example, if the class itself is to be used as a method parameter or property, or if one of its enum types is to be used in this way — then the class may need to be registered.

Also note that a number of the important concepts covered in this document are demonstrated in the [Writing QML Extensions with C++](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQml.tutorials-extending-qml/) tutorial.

<span id="data-type-handling-and-ownership"></span>
Data Type Handling and Ownership
--------------------------------

Any data that is transferred from C++ to QML, whether as a property value, a method parameter or return value, or a signal parameter value, must be of a type that is supported by the QML engine.

By default, the engine supports a number of Qt C++ types and can automatically convert them as appropriately when used from QML. Additionally, C++ classes that are [registered](../QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system) with the QML type system can be can be used as data types, as can their enums if appropriately registered. See [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data.md) for details for further information.

Additionally, data ownership rules are taken into consideration when data is transferred from C++ to QML. See [Data Ownership](../QtQml.qtqml-cppintegration-data.md#data-ownership) for more details.

<span id="exposing-properties"></span>
Exposing Properties
-------------------

A *property* can be specified for any QObject-derived class using the Q\_PROPERTY() macro. A property is a class data member with an associated read function and optional write function.

All properties of a QObject-derived class are accessible from QML.

For example, below is a `Message` class with an `author` property. As specified by the Q\_PROPERTY macro call, this property is readable through the `author()` method, and writable through the `setAuthor()` method:

``` cpp
class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)
public:
    void setAuthor(const QString &a) {
        if (a != m_author) {
            m_author = a;
            emit authorChanged();
        }
    }
    QString author() const {
        return m_author;
    }
signals:
    void authorChanged();
private:
    QString m_author;
};
```

If an instance of this class was [set as a context property](../QtQml.qtqml-cppintegration-contextproperties.md) when loading a file named `MyItem.qml` from C++:

``` cpp
 int main(int argc, char *argv[]) {
     QCoreApplication app(argc, argv);
     QQmlEngine engine;
     Message msg;
     engine.rootContext()->setContextProperty("msg", &msg);
     QQmlComponent component(&engine, QUrl::fromLocalFile("MyItem.qml"));
     component.create();
     return app.exec();
 }
```

Then, the `author` property could be read from `MyItem.qml`:

``` qml
// MyItem.qml
import QtQuick 2.0
Text {
    width: 100; height: 100
    text: msg.author    // invokes Message::author() to get this value
    Component.onCompleted: {
        msg.author = "Jonah"  // invokes Message::setAuthor()
    }
}
```

For maximum interoperability with QML, **any property that is writable should have an associated NOTIFY signal** that is emitted whenever the property value has changed. This allows the property to be used with [property binding](../QtQml.qtqml-syntax-propertybinding.md), which is an essential feature of QML that enforces relationships between properties by automatically updating a property whenever any of its dependencies change in value.

In the above example, the associated NOTIFY signal for the `author` property is `authorChanged`, as specified in the Q\_PROPERTY() macro call. This means that whenever the signal is emitted — as it is when the author changes in Message::setAuthor() — this notifies the QML engine that any bindings involving the `author` property must be updated, and in turn, the engine will update the `text` property by calling `Message::author()` again.

If the `author` property was writable but did not have an associated NOTIFY signal, the `text` value would be initialized with the initial value returned by `Message::author()` but would not be updated with any later changes to this property. In addition, any attempts to bind to the property from QML will produce a runtime warning from the engine.

**Note:** It is recommended that the NOTIFY signal be named *&lt;property&gt;Changed* where `<property>` is the name of the property. The associated property change signal handler generated by the QML engine will always take the form `on<Property>Changed`, regardless of the name of the related C++ signal, so it is recommended that the signal name follows this convention to avoid any confusion.

<span id="notes-on-use-of-notify-signals"></span>
#### Notes on Use of Notify Signals

To prevent loops or excessive evaluation, developers should ensure that the property change signal is only emitted when the property value has actually changed. Also, if a property or group of properties is infrequently used, it is permitted to use the same NOTIFY signal for several properties. This should be done with care to ensure that performance doesn't suffer.

The presence of a NOTIFY signal does incur a small overhead. There are cases where a property's value is set at object construction time, and does not subsequently change. The most common case of this is when a type uses [Grouped Properties](../QtQml.qtqml-syntax-objectattributes.md#grouped-properties), and the grouped property object is allocated once, and only freed when the object is deleted. In these cases, the CONSTANT attribute may be added to the property declaration instead of a NOTIFY signal.

The CONSTANT attribute should only be used for properties whose value is set, and finalized, only in the class constructor. All other properties that want to be used in bindings should have a NOTIFY signal instead.

<span id="properties-with-object-types"></span>
### Properties with Object Types

Object-type properties are accessible from QML providing that the object type has been appropriately [registered](../QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system) with the QML type system.

For example, the `Message` type might have a `body` property of type `MessageBody*`:

``` cpp
class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(MessageBody* body READ body WRITE setBody NOTIFY bodyChanged)
public:
    MessageBody* body() const;
    void setBody(MessageBody* body);
};
class MessageBody : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE text NOTIFY textChanged)
// ...
}
```

Suppose the `Message` type was [registered](../QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system) with the QML type system, allowing it to be used as an object type from QML code:

``` qml
Message {
    // ...
}
```

If the `MessageBody` type was also registered with the type system, it would be possible to assign `MessageBody` to the `body` property of a `Message`, all from within QML code:

``` qml
Message {
    body: MessageBody {
        text: "Hello, world!"
    }
}
```

<span id="properties-with-object-list-types"></span>
### Properties with Object-List Types

Properties containing lists of QObject-derived types can also be exposed to QML. For this purpose, however, one should use QQmlListProperty rather than QList&lt;T&gt; as the property type. This is because QList is not a QObject-derived type, and so cannot provide the necessary QML property characteristics through the Qt meta object system, such as signal notifications when a list is modified.

QQmlListProperty is a template class that can be conveniently constructed from a QList value.

For example, the `MessageBoard` class below has a `messages` property of type QQmlListProperty that stores a list of `Message` instances:

``` cpp
class MessageBoard : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<Message> messages READ messages)
public:
    QQmlListProperty<Message> messages() const;
private:
    static void append_message(QQmlListProperty<Message> *list, Message *msg);
    QList<Message *> m_messages;
};
```

The MessageBoard::messages() function simply creates and returns a QQmlListProperty from its QList&lt;T&gt; `m_messages` member, passing the appropriate list modification functions as required by the QQmlListProperty constructor:

``` cpp
QQmlListProperty<Message> MessageBoard::messages()
{
    return QQmlListProperty<Message>(this, 0, &MessageBoard::append_message);
}
void MessageBoard::append_message(QQmlListProperty<Message> *list, Message *msg)
{
    MessageBoard *msgBoard = qobject_cast<MessageBoard *>(list->object);
    if (msg)
        msgBoard->m_messages.append(msg);
}
```

Note that the template class type for the QQmlListProperty — in this case, `Message` — must be registered with the QML type system.

<span id="grouped-properties"></span>
### Grouped Properties

Any read-only object-type property is accessible from QML code as a *grouped property*. This can be used to expose a group of related properties that describe a set of attributes for a type.

For example, suppose the `Message::author` property was of type `MessageAuthor` rather than a simple string, with sub-properties of `name` and `email`:

``` cpp
class MessageAuthor : public QObject
{
    Q_PROPERTY(QString name READ name WRITE setName)
    Q_PROPERTY(QString email READ email WRITE setEmail)
public:
    ...
};
class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(MessageAuthor* author READ author)
public:
    Message(QObject *parent)
        : QObject(parent), m_author(new MessageAuthor(this))
    {
    }
    Message *author() const {
        return m_author;
    }
private:
    Message *m_author;
};
```

The `author` property could be written to using the [grouped property syntax](../QtQml.qtqml-syntax-objectattributes.md#grouped-properties) in QML, like this:

``` qml
Message {
    author.name: "Alexandra"
    author.email: "alexandra@mail.com"
}
```

A type that is exposed as a grouped property differs from an [object-type property](#properties-with-object-types) in that the grouped property is read-only, and is initialized to a valid value by the parent object at construction. The grouped property's sub-properties may be modified from QML but the grouped property object itself will never change, whereas an object-type property may be assigned a new object value from QML at any time. Thus, the lifetime of a grouped property object is controlled strictly by the C++ parent implementation, whereas an object-type property can be freely created and destroyed through QML code.

<span id="exposing-methods-including-qt-slots"></span>
Exposing Methods (Including Qt Slots)
-------------------------------------

Any method of a QObject-derived type is accessible from QML code if it is:

-   A public method flagged with the Q\_INVOKABLE() macro
-   A method that is a public Qt slot

For example, the `MessageBoard` class below has a `postMessage()` method that has been flagged with the Q\_INVOKABLE macro, as well as a `refresh()` method that is a public slot:

``` cpp
 class MessageBoard : public QObject
 {
     Q_OBJECT
 public:
     Q_INVOKABLE bool postMessage(const QString &msg) {
         qDebug() << "Called the C++ method with" << msg;
         return true;
     }
 public slots:
     void refresh() {
         qDebug() << "Called the C++ slot";
     }
 };
```

If an instance of `MessageBoard` was set as the context data for a file `MyItem.qml`, as shown below left, then `MyItem.qml` could invoke the two methods, as shown below right:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code> int main(int argc, char *argv[]) {
     QGuiApplication app(argc, argv);
     MessageBoard msgBoard;
     QQuickView view;
     view.engine()-&gt;rootContext()-&gt;setContextProperty(&quot;msgBoard&quot;, &amp;msgBoard);
     view.setSource(QUrl::fromLocalFile(&quot;MyItem.qml&quot;));
     view.show();
     return app.exec();
 }</code></pre></td>
<td><pre class="qml"><code>// MyItem.qml
import QtQuick 2.0
Item {
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            var result = msgBoard.postMessage(&quot;Hello from QML&quot;)
            console.log(&quot;Result of postMessage():&quot;, result)
            msgBoard.refresh();
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

If a C++ method has a parameter with a `QObject*` type, the parameter value can be passed from QML using an object `id` or a JavaScript var value that references the object.

QML supports the calling of overloaded C++ functions. If there are multiple C++ functions with the same name but different arguments, the correct function will be called according to the number and the types of arguments that are provided.

Values returned from C++ methods are converted to JavaScript values when accessed from JavaScript expressions in QML.

<span id="exposing-signals"></span>
Exposing Signals
----------------

Any public signal of a QObject-derived type is accessible from QML code.

The QML engine automatically creates a [signal handler](../QtQml.qtqml-syntax-signals.md) for any signal of a QObject-derived type that is used from QML. Signal handlers are always named *on&lt;Signal&gt;* where `<Signal>` is the name of the signal, with the first letter capitalized. All parameters passed by the signal are available in the signal handler through the parameter names.

For example, suppose the `MessageBoard` class has a `newMessagePosted()` signal with a single parameter, `subject`:

``` cpp
 class MessageBoard : public QObject
 {
     Q_OBJECT
 public:
    // ...
 signals:
    void newMessagePosted(const QString &subject);
 };
```

If the `MessageBoard` type was [registered](../QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system) with the QML type system, then a `MessageBoard` object declared in QML could receive the `newMessagePosted()` signal using a signal handler named `onNewMessagePosted`, and examine the `subject` parameter value:

``` qml
MessageBoard {
    onNewMessagePosted: console.log("New message received:", subject)
}
```

As with property values and method parameters, a signal parameter must have a type that is supported by the QML engine; see [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data.md). (Using an unregistered type will not generate an error, but the parameter value will not be accessible from the handler.)

Classes may have multiple signals with the same name, but only the final signal is accessible as a QML signal. Note that signals with the same name but different parameters cannot be distinguished from one another.

